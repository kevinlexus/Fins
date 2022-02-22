unit Unit_tree_par_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, DB,
  OracleData, Uni,
  
  Menus, cxControls,

  cxFilter, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGrid, cxTextEdit, cxGraphics,
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  MemDS,
  DBAccess, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxData, cxDataStorage, cxNavigator, cxCheckBox, cxGridCustomView,
  Grids,  Mask, cxContainer,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, 
  cxCalendar, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

const
  CM_APPLYFILTER = WM_USER + 1;

type
  TForm_tree_par_edit = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    TabSheet3: TTabSheet;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    TabSheet4: TTabSheet;
    DS_list: TDataSource;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DS_par: TDataSource;
    TabSheet7: TTabSheet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    Uni_List: TUniQuery;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxYesNo: TcxDBRadioGroup;
    DS_Uni_List: TDataSource;
    cbbList: TcxLookupComboBox;
    cxDate: TcxDBDateEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SetAccess(OD_src: TDataSource);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxGrid1DBTableView1InitEditValue(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var AValue: Variant);
    procedure cxGrid1DBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure cbbOrgPropertiesCloseUp(Sender: TObject);
    procedure cbbListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBDateEdit1PropertiesCloseUp(Sender: TObject);
    procedure cxDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    OD_dst: TDataSource;
    FilterString: string;
    procedure CMApplyFilter(var Msg: TMessage); message CM_APPLYFILTER;
  public
    { Public declarations }
  end;

var
  Form_tree_par_edit: TForm_tree_par_edit;

implementation

uses DM_module1;

{$R *.dfm}

procedure TForm_tree_par_edit.CMApplyFilter(var Msg: TMessage);
begin
  if TObject(Msg.WParam) is TcxDBDataFilterCriteria then
    with TObject(Msg.WParam) as TcxDBDataFilterCriteria do
    begin
      Clear;
      FilterString := '%' + FilterString + '%';
      Root.AddItem(TObject(Msg.LParam), foLike, FilterString, FilterString);
    end;
end;

procedure TForm_tree_par_edit.SetAccess(OD_src: TDataSource);
begin
  //установка способа вызова (из формы Form_tree_objects или из другой)
  OD_dst := OD_src;
  Uni_List.active := false;
  Uni_List.MasterSource := OD_dst;
  Uni_List.active := true;

  DS_par.DataSet := OD_dst.DataSet;
  OD_dst.Edit;
end;

procedure TForm_tree_par_edit.Button1Click(Sender: TObject);
var
  id_: Integer;
begin

  if not (Uni_list.State in [dsBrowse]) then
    Uni_list.Post;

  with OD_dst.DataSet do
  begin

    if FieldByName('CDTP').AsInteger = 4 then
    begin
      DataModule1.UniStoredProc1.StoredProcName := 'scott.utils.set_list_c';
      DataModule1.UniStoredProc1.Params.Clear;
      DataModule1.UniStoredProc1.Params
        .CreateParam(ftInteger, 'fk_par_', ptInput).AsInteger :=
          FieldByName('id').AsInteger;
      DataModule1.UniStoredProc1.Params
        .CreateParam(ftInteger, 'id_', ptInput).AsInteger :=
          Uni_list.FieldByName('id').AsInteger;
      DataModule1.UniStoredProc1.ExecProc;
    end;

    if not (State in [dsBrowse]) then
      Post;

    id_ := FieldByName('id').AsInteger;
    Active := False;
    Active := True;
    Locate('id', id_, []);
  end;
  close;
end;

procedure TForm_tree_par_edit.Button2Click(Sender: TObject);
begin
  if not (OD_dst.DataSet.State in [dsBrowse]) then
    OD_dst.DataSet.Cancel;
  close;
end;

procedure TForm_tree_par_edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_tree_par_edit.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    //    Button1.SetFocus;
    Windows.SetFocus(Button1.Handle);
end;

procedure TForm_tree_par_edit.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    Button1.SetFocus;

end;

procedure TForm_tree_par_edit.FormShow(Sender: TObject);
begin
  TabSheet1.TabVisible := false;
  TabSheet2.TabVisible := false;
  TabSheet3.TabVisible := false;
  TabSheet4.TabVisible := false;
  TabSheet5.TabVisible := false;
  TabSheet6.TabVisible := false;
  TabSheet7.TabVisible := false;

  with OD_dst.DataSet do
  begin
    if FieldByName('CDTP').AsInteger = 1 then
    begin
      //параметр - varchar2
      PageControl1.ActivePageIndex := 1;
      TabSheet2.TabVisible := true;
      Windows.SetFocus(DBEdit1.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 2 then
    begin
      //параметр - date
      PageControl1.ActivePageIndex := 0;
      TabSheet1.TabVisible := true;
      Windows.SetFocus(cxDate.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 0 then
    begin
      //параметр - number
      PageControl1.ActivePageIndex := 2;
      TabSheet3.TabVisible := true;
      Windows.SetFocus(DBEdit2.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 3 then
    begin
      //параметр - Logical
      PageControl1.ActivePageIndex := 4;
      TabSheet5.TabVisible := true;
      Windows.SetFocus(cxYesNo.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 4 then
    begin
      //параметр - список из SQL запроса-выбор одного значения
      Uni_list.Active := True;
      Uni_list.Locate('sel', 1, []);
      cbbList.EditValue := Uni_list.FieldByName('name').AsString;
      PageControl1.ActivePageIndex := 3;
      TabSheet4.TabVisible := true;
      Windows.SetFocus(cbbList.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 5 then
    begin
      //параметр - список из SQL запроса-выбор нескольких значений
      Uni_list.Active := True;
      TabSheet7.TabVisible := true;
      Windows.SetFocus(cxGrid1.Handle);
      Form_tree_par_edit.Height := 600;
    end
    else if FieldByName('CDTP').AsInteger = 6 then
    begin
      //параметр - список пользовательских значений (например ФИО)
      Uni_list.Active := True;
      PageControl1.ActivePageIndex := 5;
      TabSheet6.TabVisible := true;
      Windows.SetFocus(cxGrid1.Handle);
    end;
  end;

end;

procedure TForm_tree_par_edit.N1Click(Sender: TObject);
begin
  Uni_list.DisableControls;
  Uni_list.First;
  while not Uni_list.Eof do
  begin
    Uni_list.Edit;
    Uni_list.FieldByName('sel').AsInteger := 1;
    Uni_list.Post;
    Uni_list.Next;
  end;
  // на выходе по Ок из формы - применил кэшированое update, иначе тормозит сильно ред.18.07.2019
  Uni_list.EnableControls;
end;

procedure TForm_tree_par_edit.N2Click(Sender: TObject);
begin
  Uni_list.DisableControls;
  Uni_list.First;
  while not Uni_list.Eof do
  begin
    Uni_list.Edit;
    Uni_list.FieldByName('sel').AsInteger := 0;
    Uni_list.Post;
    Uni_list.Next;
  end;
  // на выходе по Ок из формы - применил кэшированое update, иначе тормозит сильно ред.18.07.2019
  Uni_list.EnableControls;
end;

procedure TForm_tree_par_edit.cxGrid1DBTableView1InitEditValue(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var AValue: Variant);
var
  EditingText: string;
begin
  if Sender.Controller.FocusedRecord is TcxGridFilterRow then
    // Filter row is focused
  begin
    EditingText := TcxTextEdit(AEdit).EditingText;
    StringReplace(EditingText, '%', '', [rfReplaceAll, rfIgnoreCase]);
    TcxTextEdit(AEdit).EditingText := EditingText;
  end;

end;

procedure TForm_tree_par_edit.cxGrid1DBTableView1EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  if Sender.Controller.FocusedRecord is TcxGridFilterRow then
    // Filter row is focused
  begin
    FilterString :=
      TcxTextEdit(Sender.Controller.EditingController.Edit).EditValue;
    PostMessage(Handle, CM_APPLYFILTER, Integer(Sender.DataController.Filter),
      Integer(AItem));
  end;
end;

procedure TForm_tree_par_edit.cbbOrgPropertiesCloseUp(Sender: TObject);
begin
  Windows.SetFocus(Button1.Handle);

end;

procedure TForm_tree_par_edit.cbbListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    Windows.SetFocus(Button1.Handle);

end;

procedure TForm_tree_par_edit.cxDBDateEdit1PropertiesCloseUp(
  Sender: TObject);
begin
  Windows.SetFocus(Button1.Handle);
end;

procedure TForm_tree_par_edit.cxDateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    Windows.SetFocus(Button1.Handle);

end;

end.

