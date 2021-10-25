unit u_frmSelObjects;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, cxVariants, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxMemo, cxCalc,
  cxPropertiesStore;

type
  TcxGridTableControllerAccess = class(TcxGridTableController);

  TMycxGridDBTableView = class(TcxGridDBTableView)
  protected
    function GetViewDataClass: TcxCustomGridViewDataClass; override;
  end;

  TMycxGridViewData = class(TcxGridViewData)
  protected
    function GetFilterRowClass: TcxGridFilterRowClass; override;
  end;

  TMycxGridFilterRow = class(TcxGridFilterRow)
  protected
    procedure SetValue(Index: Integer; const Value: Variant); override;
  end;

  TcxGridDBTableView = class(TMycxGridDBTableView);

  TfrmSelObjects = class(TForm)
    Uni_sel_objects: TUniQuery;
    DS_sel_objects: TDataSource;
    Panel1: TPanel;
    chkIsPremiseSearch: TCheckBox;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1KUL: TcxGridDBColumn;
    cxGrid1DBTableView1ADR: TcxGridDBColumn;
    cxGrid1DBTableView1K_LSK_ID_DIVIDED: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    cxTreeList1: TcxTreeList;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1ND: TcxGridDBColumn;
    cxGrid1DBTableView1KW: TcxGridDBColumn;
    cxGrid1DBTableView1K_LSK_ID: TcxGridDBColumn;
    cxGrid1DBTableView1TP: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure chkIsPremiseSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTreeList1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    function ReturnValue: string;
    function getSelectedObjectsJson: string;
    function getItemOutputString(ANode: TcxTreeListNode; colName: string):
      string;
  private
    selectedObjectsJson: string;
  public
  end;

var
  frmSelObjects: TfrmSelObjects;

implementation

{$R *.dfm}

procedure TfrmSelObjects.FormCreate(Sender: TObject);
var
  AColumn: TcxTreeListColumn;
begin
  // Id
  AColumn := cxTreeList1.CreateColumn();
  AColumn.DataBinding.ValueTypeClass := TcxStringValueType;
  AColumn.Visible := false;
  AColumn.Name := 'id';

  // kul
  AColumn := cxTreeList1.CreateColumn();
  AColumn.DataBinding.ValueTypeClass := TcxStringValueType;
  AColumn.Visible := false;
  AColumn.Name := 'kul';

  // nd
  AColumn := cxTreeList1.CreateColumn();
  AColumn.DataBinding.ValueTypeClass := TcxStringValueType;
  AColumn.Visible := false;
  AColumn.Name := 'nd';

  // k_lsk_id
  AColumn := cxTreeList1.CreateColumn();
  AColumn.DataBinding.ValueTypeClass := TcxStringValueType;
  AColumn.Visible := false;
  AColumn.Name := 'k_lsk_id';

  // адрес
  AColumn := cxTreeList1.CreateColumn();
  AColumn.DataBinding.ValueTypeClass := TcxStringValueType;
  AColumn.Visible := true;
  AColumn.Name := 'adr';

  // тип
  AColumn := cxTreeList1.CreateColumn();
  AColumn.DataBinding.ValueTypeClass := TcxStringValueType;
  AColumn.Visible := false;
  AColumn.Name := 'tp';

  Uni_sel_objects.MacroByName('tp').Value := '0';
  Uni_sel_objects.Active := true;

end;

procedure TfrmSelObjects.chkIsPremiseSearchClick(Sender: TObject);
begin
  if chkIsPremiseSearch.Checked then
    Uni_sel_objects.MacroByName('tp').Value := '0,1'
  else
    Uni_sel_objects.MacroByName('tp').Value := '0';

  Uni_sel_objects.Active := false;
  Uni_sel_objects.Active := true;
end;

procedure TMycxGridFilterRow.SetValue(Index: Integer;
  const Value: Variant);
var
  AGridView: TcxGridTableView;
  AColumn: TcxGridColumn;
  AValue: Variant;
begin
  AGridView := GridView;
  TcxGridTableControllerAccess(AGridView.Controller).KeepFilterRowFocusing :=
    True;
  try
    AColumn := AGridView.Columns[Index];
    if VarIsSoftNull(Value) then
      AColumn.DataBinding.Filtered := False
    else
    begin
      DataController.Filter.BeginUpdate;
      try
        DataController.Filter.Active := True;
        AValue := '%' + Value;
        AColumn.DataBinding.AddToFilter(nil,
          GetFilterOperatorKind(AValue, True), AValue,
          GetDisplayTextForValue(Index, AValue), True);
      finally
        DataController.Filter.EndUpdate;
      end;
    end;
  finally
    TcxGridTableControllerAccess(AGridView.Controller).KeepFilterRowFocusing :=
      False;
  end;
end;

{ TMycxGridViewData }

function TMycxGridViewData.GetFilterRowClass: TcxGridFilterRowClass;
begin
  Result := TMycxGridFilterRow;
end;

{ TMycxGridDBTableView }

function TMycxGridDBTableView.GetViewDataClass: TcxCustomGridViewDataClass;
begin
  Result := TMycxGridViewData;
end;

procedure TfrmSelObjects.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := mrOk;
end;

// удаление из грида выбранных объектов

procedure TfrmSelObjects.cxTreeList1DblClick(Sender: TObject);
begin
  cxTreeList1.FocusedNode.Delete;
end;

function TfrmSelObjects.getItemOutputString(ANode: TcxTreeListNode; colName:
  string): string;
begin
  Result := VarToStr(ANode.Values[cxTreeList1.ColumnByName(colName).ItemIndex]);
end;

// результат выбора объектов

function TfrmSelObjects.getSelectedObjectsJson: string;
var
  i: Integer;

begin
  selectedObjectsJson := '';
  for i := 0 to cxTreeList1.Root.Count - 1 do
  begin
    selectedObjectsJson := selectedObjectsJson + '{';
    selectedObjectsJson := selectedObjectsJson +
      '"id":"' + GetItemOutputString(cxTreeList1.Items[i], 'id') + '",' +
      '"kul":"' + GetItemOutputString(cxTreeList1.Items[i], 'kul') + '",' +
      '"nd":"' + GetItemOutputString(cxTreeList1.Items[i], 'nd') + '",' +
      '"klskId":"' + GetItemOutputString(cxTreeList1.Items[i], 'k_lsk_id') +
        '",' +
      '"tp":"' + GetItemOutputString(cxTreeList1.Items[i], 'tp') + '"';
    selectedObjectsJson := selectedObjectsJson + '}';
    if i < cxTreeList1.Root.Count - 1 then
      selectedObjectsJson := selectedObjectsJson + ', ';
  end;

  Result := '"selObjList":[' + selectedObjectsJson + ']';

end;
// добавление из грида поиска объектов в грид выбранных объектов

procedure TfrmSelObjects.cxGrid1DBTableView1DblClick(Sender: TObject);
  function getItemByColumnName(colName: string): string;
  var
    recIdx, colIdx: Integer;
    OutputVal: Variant;
  begin
    recIdx := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
    colIdx :=
      cxGrid1DBTableView1.DataController.GetItemByFieldName(colName).Index;
    OutputVal := cxGrid1DBTableView1.DataController.Values[recIdx, colIdx];
    Result := VarToStr(OutputVal);
  end;
var
  ANode: TcxTreeListNode;
  AColumn: TcxTreeListColumn;
begin
  AColumn := cxTreeList1.Columns[0];
  Anode := cxTreeList1.FindNodeByText(getItemByColumnName('id'), AColumn);
  if Anode = nil then
  begin
    ANode := cxTreeList1.Add;
    ANode.Values[0] := getItemByColumnName('id');
    ANode.Values[1] := getItemByColumnName('kul');
    ANode.Values[2] := getItemByColumnName('nd');
    ANode.Values[3] := getItemByColumnName('k_lsk_id');
    if getItemByColumnName('k_lsk_id_divided') <> '' then
      ANode.Values[4] := getItemByColumnName('adr') + ' (' +
        getItemByColumnName('k_lsk_id_divided') + ')'
    else
      ANode.Values[4] := getItemByColumnName('adr');
    ANode.Values[5] := getItemByColumnName('tp');
  end;
end;

function TfrmSelObjects.ReturnValue: string;
begin
  Result := getSelectedObjectsJson;
end;

end.

