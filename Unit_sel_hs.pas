unit Unit_sel_hs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, ExtCtrls, DBCtrls, 
  StdCtrls, DM_module1, Buttons, 
  cxGraphics, cxControls, 
  cxCustomData, cxFilter, 
  cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Menus, cxVariants, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox;

type
  TcxGridTableControllerAccess = class (TcxGridTableController);

  TMycxGridDBTableView = class (TcxGridDBTableView)
  protected
    function GetViewDataClass: TcxCustomGridViewDataClass; override;
  end;

  TMycxGridViewData = class (TcxGridViewData)
  protected
    function GetFilterRowClass: TcxGridFilterRowClass; override;
  end;

  TMycxGridFilterRow = class (TcxGridFilterRow)
  protected
    procedure SetValue(Index: Integer; const Value: Variant); override;
  end;

  TcxGridDBTableView = class (TMycxGridDBTableView);

  TForm_sel_hs = class(TForm)
    DS_list_choice: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ADR: TcxGridDBColumn;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    id_: Integer;
  end;

var
  Form_sel_hs: TForm_sel_hs;

implementation

uses Unit_status;

{$R *.dfm}

procedure TMycxGridFilterRow.SetValue(Index: Integer;
  const Value: Variant);
var
  AGridView: TcxGridTableView;
  AColumn: TcxGridColumn;
  AValue: Variant;
begin
  AGridView := GridView;
  TcxGridTableControllerAccess(AGridView.Controller).KeepFilterRowFocusing := True;
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
    TcxGridTableControllerAccess(AGridView.Controller).KeepFilterRowFocusing := False;
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

procedure TForm_sel_hs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_sel_hs.Button1Click(Sender: TObject);
var
  sqlStr: string;
begin
  if (DataModule1.OD_list_choice.State = dsEdit) then
    DataModule1.OD_list_choice.Post;
  try
    if id_ = 1 then
      id_ := 1;
  except
    id_ := 0;
  end;

  if id_ = 1 then
  begin
    sqlStr := DataModule1.OD_list_choice.Filter;
    DataModule1.OD_list_choice.Filter := ' (sel = 0) ';
    DataModule1.OD_list_choice.Filtered := true;
    if DataModule1.OD_list_choice.RecordCount > 1 then
    begin
      Application.MessageBox('Можно выбрать только один дом', 'Внимание!', 16 +
        MB_APPLMODAL);
      exit;
    end;
    DataModule1.OD_list_choice.Filter := sqlStr;
    DataModule1.OD_list_choice.Filtered := true;
  end;

  Close;
end;

procedure TForm_sel_hs.Button2Click(Sender: TObject);
begin
  {  DataModule1.OD_list_choice.SearchRecord('name;nd',
      VarArrayOf([AnsiUpperCase(Edit2.Text + '*'),
      AnsiUpperCase(Edit3.Text + '*')]),
        [srFromBeginning, srWildCards]);}
end;

procedure TForm_sel_hs.SpeedButton1Click(Sender: TObject);
begin
  DataModule1.OraclePackage1.CallProcedure
    ('scott.generator.list_choice_set', [0]);
  DataModule1.OD_list_choice.First;
  while not DataModule1.OD_list_choice.Eof do
  begin
    DataModule1.OD_list_choice.FieldByName('sel').AsInteger := 0;
    DataModule1.OD_list_choice.Next;
  end;
end;

procedure TForm_sel_hs.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  LockWindowUpdate(handle);
  DataModule1.OD_list_choice.First;
  while not DataModule1.OD_list_choice.Eof do
  begin
    if (DataModule1.OD_list_choice.State = dsBrowse) then
      DataModule1.OD_list_choice.Edit;
    DataModule1.OD_list_choice.FieldByName('sel').AsInteger := 1;
    DataModule1.OD_list_choice.Next;
  end;
  LockWindowUpdate(0);
  Form_status.Close;
end;

procedure TForm_sel_hs.Edit1Change(Sender: TObject);
var
  sqlStr: string;
begin
  {  sqlStr := sqlStr + ' (name =''' + AnsiUpperCase(Edit2.Text) + '*'')';
    sqlStr := sqlStr + ' and (nd =''' + AnsiUpperCase(Edit3.Text) + '*'')';
    if (DataModule1.OD_list_choice.State = dsEdit) then
      DataModule1.OD_list_choice.Post;
    DataModule1.OD_list_choice.Filter := sqlStr;
    DataModule1.OD_list_choice.Filtered := true;}
end;

procedure TForm_sel_hs.BitBtn3Click(Sender: TObject);
begin
  {  Edit2.Text := '';
    Edit3.Text := '';}
end;

procedure TForm_sel_hs.FormShow(Sender: TObject);
begin
  DataModule1.OD_list_choice.Active := true;
end;


procedure TForm_sel_hs.N1Click(Sender: TObject);
var
  l_recno: Integer;
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  LockWindowUpdate(handle);
  with DataModule1.OD_list_choice do
  begin
    DisableControls;
    l_recno := RecNo;
    if State = dsEdit then
      Post;
    First;
    while not Eof do
    begin
      if (FieldByName('sel').AsInteger = 0) then
      begin
        // снять отметку с прочих объектов
        Edit;
        FieldByName('sel').AsInteger := 1;
        Post;
      end;

      Next;
    end;
    RecNo := l_recno;
    EnableControls;
  end;
  LockWindowUpdate(0);
  Form_status.Close;
end;

procedure TForm_sel_hs.N2Click(Sender: TObject);
var
  l_recno: Integer;
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  LockWindowUpdate(handle);
  with DataModule1.OD_list_choice do
  begin
    DisableControls;
    l_recno := RecNo;
    if State = dsEdit then
      Post;
    First;
    while not Eof do
    begin
      if (FieldByName('sel').AsInteger = 1) then
      begin
        // установить отметку
        Edit;
        FieldByName('sel').AsInteger := 0;
        Post;
      end;

      Next;
    end;
    RecNo := l_recno;
    EnableControls;
  end;
  LockWindowUpdate(0);
  Form_status.Close;

end;

end.

