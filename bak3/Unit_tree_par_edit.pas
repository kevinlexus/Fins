unit Unit_tree_par_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, wwdbdatetimepicker, ComCtrls, DB,
  wwdblook, OracleData, Grids, Wwdbigrd, Wwdbgrid, wwcheckbox,
  wwclearbuttongroup, wwradiogroup, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Menus, cxControls,

  cxFilter, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxData, cxDataStorage, cxNavigator, cxCheckBox;

const
  CM_APPLYFILTER = WM_USER + 1;

type
  TForm_tree_par_edit = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    TabSheet3: TTabSheet;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    TabSheet4: TTabSheet;
    OD_list: TOracleDataSet;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DS_list: TDataSource;
    TabSheet5: TTabSheet;
    wwRadioGroup1: TwwRadioGroup;
    TabSheet6: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
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
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBDateTimePicker1CloseUp(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormShow(Sender: TObject);
    procedure wwDBDateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SetAccess(OD_src: TOracleDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxGrid1DBTableView1InitEditValue(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var AValue: Variant);
    procedure cxGrid1DBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
  private
    OD_dst: TOracleDataSet;
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

procedure TForm_tree_par_edit.SetAccess(OD_src: TOracleDataSet);
begin
  //установка способа вызова (из формы Form_tree_objects или из другой)
  OD_dst := OD_src;
  OD_list.active := false;
  OD_list.Master := OD_dst;
  OD_list.active := true;

  DS_par.DataSet := OD_dst;
  OD_dst.Edit;
end;

procedure TForm_tree_par_edit.Button1Click(Sender: TObject);
var
  id_: Integer;
begin

  // на выходе по Ок из формы - применил кэшированое update, иначе тормозит сильно ред.18.07.2019
  if not (OD_list.State in [dsBrowse]) then
    OD_list.Post;

  with OD_dst do
  begin
    if FieldByName('CDTP').AsInteger = 4 then
    begin
      DataModule1.OraclePackage1.CallProcedure('scott.utils.set_list_c',
        [FieldByName('id').AsInteger, OD_list.FieldByName('id').AsInteger]);
    end;

    if not (State in [dsBrowse]) then
      Post;

    id_ := FieldByName('id').AsInteger;
    Active := False;
    Active := True;
    Locate('id', id_, []);
  end;

  DataModule1.OracleSession1.ApplyUpdates([OD_list], true);

  close;

end;

procedure TForm_tree_par_edit.Button2Click(Sender: TObject);
begin
  if not (OD_dst.State in [dsBrowse]) then
    OD_dst.Cancel;
  close;
end;

procedure TForm_tree_par_edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_tree_par_edit.wwDBDateTimePicker1CloseUp(Sender: TObject);
begin
  //  Button1.SetFocus;
  Windows.SetFocus(Button1.Handle);
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

procedure TForm_tree_par_edit.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  //    Button1.SetFocus;
  Windows.SetFocus(Button1.Handle);

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

  with OD_dst do
  begin
    if FieldByName('CDTP').AsInteger = 1 then
    begin
      //параметр - varchar2
      PageControl1.ActivePageIndex := 1;
      TabSheet2.TabVisible := true;
      //      DBEdit1.SetFocus;
      Windows.SetFocus(DBEdit1.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 2 then
    begin
      //параметр - date
      PageControl1.ActivePageIndex := 0;
      TabSheet1.TabVisible := true;
      //      wwDBDateTimePicker1.SetFocus;
      Windows.SetFocus(wwDBDateTimePicker1.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 0 then
    begin
      //параметр - number
      PageControl1.ActivePageIndex := 2;
      TabSheet3.TabVisible := true;
      //      DBEdit2.SetFocus;
      Windows.SetFocus(DBEdit2.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 3 then
    begin
      //параметр - Logical
      PageControl1.ActivePageIndex := 4;
      TabSheet5.TabVisible := true;
      //      wwRadioGroup1.SetFocus;
      Windows.SetFocus(wwRadioGroup1.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 4 then
    begin
      //параметр - список из SQL запроса-выбор одного значения
      OD_list.Active := True;
      OD_list.Locate('sel', 1, []);
      wwDBLookupCombo1.LookupValue := OD_list.FieldByName('name').AsString;
      PageControl1.ActivePageIndex := 3;
      TabSheet4.TabVisible := true;
      //      wwDBLookupCombo1.SetFocus;
      Windows.SetFocus(wwDBLookupCombo1.Handle);
    end
    else if FieldByName('CDTP').AsInteger = 5 then
    begin
      //параметр - список из SQL запроса-выбор нескольких значений
      OD_list.Active := True;
      TabSheet7.TabVisible := true;
      //      cxGrid1.SetFocus;
      Windows.SetFocus(cxGrid1.Handle);
      Form_tree_par_edit.Height := 600;
    end
    else if FieldByName('CDTP').AsInteger = 6 then
    begin
      //параметр - список пользовательских значений (например ФИО)
      OD_list.Active := True;
      PageControl1.ActivePageIndex := 5;
      TabSheet6.TabVisible := true;
      //      cxGrid1.SetFocus;
      Windows.SetFocus(cxGrid1.Handle);
    end;
  end;

end;

procedure TForm_tree_par_edit.wwDBDateTimePicker1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    //    Button1.SetFocus;
    Windows.SetFocus(Button1.Handle);

end;

procedure TForm_tree_par_edit.wwDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    //    Button1.SetFocus;
    Windows.SetFocus(Button1.Handle);

end;

procedure TForm_tree_par_edit.N1Click(Sender: TObject);
begin
  OD_list.DisableControls;
  OD_list.First;
  while not OD_list.Eof do
  begin
    OD_list.Edit;
    OD_list.FieldByName('sel').AsInteger := 1;
    OD_list.Post;
    OD_list.Next;
  end;
  // на выходе по Ок из формы - применил кэшированое update, иначе тормозит сильно ред.18.07.2019
  OD_list.EnableControls;
end;

procedure TForm_tree_par_edit.N2Click(Sender: TObject);
begin
  OD_list.DisableControls;
  OD_list.First;
  while not OD_list.Eof do
  begin
    OD_list.Edit;
    OD_list.FieldByName('sel').AsInteger := 0;
    OD_list.Post;
    OD_list.Next;
  end;
  // на выходе по Ок из формы - применил кэшированое update, иначе тормозит сильно ред.18.07.2019
  OD_list.EnableControls;
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

end.

