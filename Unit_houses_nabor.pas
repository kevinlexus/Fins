unit Unit_houses_nabor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Grids, 
  wwSpeedButton, wwDBNavigator, ExtCtrls, StdCtrls, Utils,
  Buttons, wwcheckbox, wwdblook, DBCtrls, ComCtrls,
  Menus, Oracle, cxControls,

  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGrid, cxPropertiesStore,
  cxGridCardView, cxGraphics,

  Uni, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxDBLookupComboBox, cxCheckBox, MemDS, DBAccess, cxGridCustomLayoutView,
  wwclearpanel, Wwdbigrd, cxGridCustomView, Wwdatsrc, Wwdbgrid;

type
  TForm_houses_nabor = class(TForm)
    OD_houses: TOracleDataSet;
    DS_houses: TwwDataSource;
    GroupBox1: TGroupBox;
    OD_housesHOUSE_TYPE: TFloatField;
    OD_housesID: TFloatField;
    OD_housesNAME: TStringField;
    OD_housesND: TStringField;
    OD_housesN_ND: TStringField;
    OD_housesMINLSK: TStringField;
    OD_housesMAXLSK: TStringField;
    OD_housesUCH: TFloatField;
    OD_housesKUL: TStringField;
    Button4: TButton;
    DS_sprorg: TDataSource;
    OD_sprorg: TOracleDataSet;
    OD_sprorg2: TOracleDataSet;
    DS_sprorg2: TDataSource;
    OD_housesPSCH: TFloatField;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    OD_vvod: TOracleDataSet;
    DS_vvod: TwwDataSource;
    OD_vvodRN: TFloatField;
    OD_vvodHOUSE_ID: TFloatField;
    OD_vvodUSL: TStringField;
    OD_vvodNPP: TFloatField;
    OD_vvodNM: TStringField;
    wwDBGrid4: TwwDBGrid;
    wwDBGrid5: TwwDBGrid;
    OD_k_vvod: TOracleDataSet;
    StringField1: TStringField;
    StringField3: TStringField;
    DS_k_vvod: TwwDataSource;
    OD_k_vvodFK_VVOD: TFloatField;
    OD_k_vvodVVOD_NUM: TFloatField;
    OD_vvodFK_VVOD: TFloatField;
    wwExpandButton2: TwwExpandButton;
    OD_vvodVVOD_NUM: TStringField;
    OD_vvod2: TOracleDataSet;
    FloatField1: TFloatField;
    OD_vvodID: TFloatField;
    DS_vvod2: TDataSource;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_pasp: TOracleDataSet;
    OD_paspID: TFloatField;
    OD_paspNAME: TStringField;
    DS_pasp: TDataSource;
    OD_housesFK_PASP_ORG: TFloatField;
    OD_housesPASP_NAME: TStringField;
    Splitter1: TSplitter;
    OD_housesKRAN1: TFloatField;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CheckBox2: TCheckBox;
    GroupBox3: TGroupBox;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    wwNavButton18: TwwNavButton;
    wwNavButton19: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    wwNavButton22: TwwNavButton;
    wwNavButton23: TwwNavButton;
    wwNavButton24: TwwNavButton;
    wwNavButton25: TwwNavButton;
    wwNavButton26: TwwNavButton;
    wwNavButton27: TwwNavButton;
    wwNavButton28: TwwNavButton;
    OD_house_status: TOracleDataSet;
    DS_house_status: TwwDataSource;
    OD_house_statusSTATUS: TIntegerField;
    OD_house_statusSTATUS_NAME: TStringField;
    wwDBGrid6: TwwDBGrid;
    OD_k_status: TOracleDataSet;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    DS_k_status: TwwDataSource;
    OD_house_statusHOUSE_ID: TFloatField;
    wwExpandButton3: TwwExpandButton;
    OD_house_statusRN: TStringField;
    wwDBGrid7: TwwDBGrid;
    OD_k_statusKW: TStringField;
    OD_status: TOracleDataSet;
    StringField4: TStringField;
    FloatField2: TFloatField;
    DS_status: TDataSource;
    wwDBLookupCombo5: TwwDBLookupCombo;
    OD_housexlist: TOracleDataSet;
    DS_housexlist: TwwDataSource;
    TabSheet4: TTabSheet;
    wwDBGrid8: TwwDBGrid;
    TabSheet1: TTabSheet;
    OD_housesK_LSK_ID: TFloatField;
    DS_objxpar: TDataSource;
    DS_par_value: TDataSource;
    OD_other: TOracleDataSet;
    StringField5: TStringField;
    FloatField3: TFloatField;
    DS_other: TDataSource;
    OD_housesOTHER_NAME: TStringField;
    OD_housesFK_OTHER_ORG: TFloatField;
    btn1: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PARNAME: TcxGridDBColumn;
    cxGrid1DBTableView1VAL: TcxGridDBColumn;
    cxGrid1DBTableView1NM: TcxGridDBColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid2: TcxGrid;
    cxGrid1CardView1: TcxGridCardView;
    cxGrid1TableView1: TcxGridTableView;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1N_ND: TcxGridDBColumn;
    cxGridDBTableView1HOUSE_TYPE: TcxGridDBColumn;
    cxGridDBTableView1UCH: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1KRAN1: TcxGridDBColumn;
    cxGridDBTableView1K_LSK_ID: TcxGridDBColumn;
    cxGridDBTableView1MINLSK: TcxGridDBColumn;
    cxGridDBTableView1MAXLSK: TcxGridDBColumn;
    cxGridDBTableView1ND: TcxGridDBColumn;
    cxGridDBTableView1KUL: TcxGridDBColumn;
    OD_housesFK_TYPESPAY: TFloatField;
    cxGridDBTableView1TYPESPAY: TcxGridDBColumn;
    OD_typespay: TOracleDataSet;
    DS_typespay: TDataSource;
    cxGridDBTableView1PASP: TcxGridDBColumn;
    cxGridDBTableView1OTHER: TcxGridDBColumn;
    TabSheet5: TTabSheet;
    OD_usl_bills_house: TOracleDataSet;
    DS_usl_bills_house: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2FK_BILL_ID: TcxGridDBColumn;
    cxGridDBTableView2FK_HOUSE: TcxGridDBColumn;
    cxGridDBTableView2MG1: TcxGridDBColumn;
    cxGridDBTableView2MG2: TcxGridDBColumn;
    cxGridDBTableView2ISVOL: TcxGridDBColumn;
    OD_housesPOSTCODE: TStringField;
    cxGridDBTableView1POSTCODE: TcxGridDBColumn;
    Uni_objxpar: TUniQuery;
    Uni_par_value: TUniQuery;
    OD_housesFK_K_LSK: TFloatField;
    OD_housesGUID: TStringField;
    cxGridDBTableView1GUID: TcxGridDBColumn;
    cxGridDBTableView1PSCH: TcxGridDBColumn;
    OD_k_vvodK_LSK_ID: TFloatField;
    OD_housesIS_PRIVATE: TFloatField;
    cxGridDBTableView1IS_PRIVATE: TcxGridDBColumn;
    chkIsEdit: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure exit_ok;
    procedure wwDBGrid3KeyPress(Sender: TObject; var Key: Char);
//    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
//    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
     // State: TGridDrawState; Highlight: Boolean; AFont: TFont;
    //  ABrush: TBrush);
    procedure CheckBox2Click(Sender: TObject);
    procedure OD_vvodAfterScroll(DataSet: TDataSet);
    procedure OD_k_vvodAfterPost(DataSet: TDataSet);
    procedure wwExpandButton2AfterCollapse(Sender: TObject);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3NotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
//    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure wwDBLookupCombo4NotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
    procedure OD_housesBeforePost(DataSet: TDataSet);
    procedure OD_housesAfterPost(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure wwDBLookupCombo5CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo5Exit(Sender: TObject);
    procedure wwDBGrid6DblClick(Sender: TObject);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure wwDBGrid8DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure wwDBGrid8DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo1Exit(Sender: TObject);
    procedure wwDBLookupCombo1NotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
    procedure OD_housesBeforeEdit(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure OD_usl_bills_houseBeforeEdit(DataSet: TDataSet);
    procedure chkIsEditClick(Sender: TObject);
    //    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
  private
  public
    procedure SetFilter(var_: Integer);
  end;

var
  Form_houses_nabor: TForm_houses_nabor;

implementation

uses DM_module1, Unit_find_adr, Unit_Mainform,
  Unit_add_lsk, Unit_status, Unit_change_house_status,
  Unit_change_house_vvod, Unit_list_kart, Unit_spr_props, Unit_par_edit;

{$R *.dfm}

procedure TForm_houses_nabor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxPropertiesStore1.StoreTo(True);
  exit_ok;
  Action := caFree;
end;

procedure TForm_houses_nabor.Button1Click(Sender: TObject);
begin
  {    if FF('Form_change_house_nabor', 1) = 0 then
        Application.CreateForm(TForm_change_house_nabor2,
          Form_change_house_nabor2);
      Form_change_house_nabor.setState(4, '', 1, 0);
      Form_change_house_nabor.ShowModal;}
end;

procedure TForm_houses_nabor.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  // виды приоритетного платежа по дому
  OD_typespay.Active := true;

  OD_house_status.Active := true;
  //зачем вообще эта таблица нужна если есть t_objxpar??? вопр. 23.05.2013
  OD_housexlist.Active := true;
  //
  Uni_objxpar.Active := true;
  Uni_par_value.Active := true;

  OD_k_status.Active := true;
  OD_status.Active := true;

  OD_pasp.Active := true;
  OD_other.Active := true;

  OD_usl_bills_house.Active := true;
  // два одинаковых order by ... мдааа
  if Form_main.org_var_ = 0 then
  begin
    OD_houses.SQL.Add('order by s.name, scott.utils.f_order(t.nd,6)');
  end
  else
  begin
    OD_houses.SQL.Add('order by s.name, scott.utils.f_order(t.nd,6)');
  end;
  Form_Main.cl_flt;
  SetFilter(0);
  //откл. фильтр по фонду
  OD_houses.SetVariable('var1_', 1);
  OD_houses.Active := true;
  OD_vvod.Active := true;
  OD_vvod2.Active := true;
  OD_k_vvod.Active := true;

  if FF('Form_list_kart', 0) = 1 then
  begin
    //если открыта форма карточек, то сразу профильтровать
    Form_Main.flt_house_ :=
      Form_list_kart.OD_list_kart.FieldByName('HOUSE_ID').AsInteger;
    SetFilter(1);
  end;

  //Настройки расположения формы
  cxPropertiesStore1.Active := True;
  cxPropertiesStore1.RestoreFrom;
end;

procedure TForm_houses_nabor.SetFilter(var_: Integer);
begin
  //Фильтр по дому
  with OD_houses do
  begin
    SetVariable('flt_reu_', Form_Main.flt_reu_);
    SetVariable('flt_kul_', Form_Main.flt_kul_);
    SetVariable('flt_house_', Form_Main.flt_house_);
    SetVariable('flt_nd_', Form_Main.flt_nd_);
    if var_ = 1 then
    begin
      Active := False;
      Active := True;
    end;
  end;
end;

procedure TForm_houses_nabor.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  Form_find_adr.wwDBLookupCombo4.Enabled := false;
  Form_find_adr.SetAccess(1, 1, 1, 0);
  if Form_find_adr.ShowModal = mrOk then
  begin
    SetFilter(1);
  end;
end;

procedure TForm_houses_nabor.SpeedButton2Click(Sender: TObject);
begin
  Form_Main.cl_flt;
  SetFilter(1);
end;

procedure TForm_houses_nabor.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TForm_add_lsk, Form_add_lsk);
end;

procedure TForm_houses_nabor.Button4Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_houses_nabor.wwDBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

{procedure TForm_houses_nabor.wwDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
  Application.CreateForm(TForm_par_edit,
    Form_par_edit);
  Form_par_edit.SetData(Uni_objxpar, Uni_par_value, Key);
  Form_par_edit.ShowModal
end;}

{procedure TForm_houses_nabor.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
end;
 }
procedure TForm_houses_nabor.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then
  begin
    OD_houses.active := false;
    OD_houses.SetVariable('var1_', 1);
    OD_houses.active := true;
  end
  else
  begin
    OD_houses.active := false;
    OD_houses.SetVariable('var1_', 0);
    OD_houses.active := true;
  end;

end;

procedure TForm_houses_nabor.OD_vvodAfterScroll(DataSet: TDataSet);
begin
  OD_k_vvod.Active := False;
  OD_k_vvod.SetVariable('fk_vvod_', OD_vvod.FieldByName('fk_vvod').AsInteger);
  OD_k_vvod.SetVariable('house_id_', OD_vvod.FieldByName('house_id').AsInteger);
  OD_k_vvod.SetVariable('usl_', OD_vvod.FieldByName('usl').AsString);
  OD_k_vvod.Active := true;
  OD_vvod2.Active := False;
  OD_vvod2.SetVariable('house_id_', OD_vvod.FieldByName('house_id').AsInteger);
  OD_vvod2.SetVariable('usl_', OD_vvod.FieldByName('usl').AsString);
  OD_vvod2.Active := true;
end;

procedure TForm_houses_nabor.OD_k_vvodAfterPost(DataSet: TDataSet);
var
  a: Integer;
begin
  //Перерасчет начисления после метода post
  a :=
    DataModule1.OraclePackage1.CallFloatFunction('SCOTT.P_JAVA.GEN',
    [0, null, null, null,
    OD_k_vvod.FieldByName('k_lsk_id').AsString, null, Form_Main.cur_dt, 0,
      Form_main.javaServer]);

  //  DataModule1.OraclePackage1.CallIntegerFunction(
//    'scott.c_charges.gen_charges', [OD_k_vvod.FieldByName('lsk').AsString,
//    OD_k_vvod.FieldByName('lsk').AsString, null, null, 1, 0]);
end;

procedure TForm_houses_nabor.wwExpandButton2AfterCollapse(Sender: TObject);
var
  bm_: TBookmark;
begin
  //Сохранить то что ввели по л.с.
  if not (OD_k_vvod.State in [dsBrowse]) then
    OD_k_vvod.Post;

  bm_ := OD_vvod.GetBookmark;
  OD_vvod.Active := False;
  OD_vvod.Active := True;
  try
    OD_vvod.GotoBookmark(bm_);
  except
  end;

end;

procedure TForm_houses_nabor.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_k_vvod.FieldByName('FK_VVOD').AsInteger :=
    OD_vvod2.FieldByName('ID').AsInteger;
end;

procedure TForm_houses_nabor.wwDBLookupCombo3NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
begin
  msg2('Данный ввод не найден!', 'Ошибка', MB_ICONERROR + MB_OK);
  OD_k_vvod.FieldByName('FK_VVOD').AsVariant :=
    null;
  wwDBLookupCombo3.Text := '';
end;

procedure TForm_houses_nabor.wwDBLookupCombo3Exit(Sender: TObject);
begin
  if wwDBLookupCombo3.Text = '' then
    OD_k_vvod.FieldByName('FK_VVOD').AsVariant :=
      null
  else if OD_vvod2.SearchRecord('VVOD_NUM', StrToInt(wwDBLookupCombo3.Text),
    [srFromBeginning]) = true then
  begin
    OD_k_vvod.FieldByName('FK_VVOD').AsInteger :=
      OD_vvod2.FieldByName('ID').AsInteger;
  end;
end;

{procedure TForm_houses_nabor.wwDBGrid2DblClick(Sender: TObject);
begin
  Application.CreateForm(TForm_par_edit,
    Form_par_edit);
  Form_par_edit.SetData(Uni_objxpar, Uni_par_value, ' ');
  Form_par_edit.ShowModal
end;
}

procedure TForm_houses_nabor.wwDBLookupCombo4CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_houses.FieldByName('FK_PASP_ORG').AsInteger :=
    OD_pasp.FieldByName('ID').AsInteger;

end;

procedure TForm_houses_nabor.wwDBLookupCombo4Exit(Sender: TObject);
begin
  {  if wwDBLookupCombo4.Text='' then
      OD_houses.FieldByName('FK_PASP_ORG').AsVariant:=
        null
    else if OD_pasp.SearchRecord('NAME', wwDBLookupCombo4.Text,
      [srFromBeginning]) = true then
    begin
      OD_houses.FieldByName('FK_PASP_ORG').AsInteger:=
        OD_pasp.FieldByName('ID').AsInteger;
    end;}

end;

procedure TForm_houses_nabor.wwDBLookupCombo4NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
begin
  {  msg2('Данный Паспортный стол не найден!', 'Ошибка', MB_OK+MB_ICONERROR);
    OD_houses.FieldByName('FK_PASP_ORG').AsVariant:=
      null;
    wwDBLookupCombo4.Text:='';
   }
end;

procedure TForm_houses_nabor.OD_housesBeforePost(DataSet: TDataSet);
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

end;

procedure TForm_houses_nabor.OD_housesAfterPost(DataSet: TDataSet);
begin
  btn1.Enabled := False;
  Form_status.Close;
end;

procedure TForm_houses_nabor.exit_ok;
begin
  if not (OD_k_vvod.State in [dsBrowse]) then
    OD_k_vvod.Post;
  //не менять порядок Expand, иначе не отрабатывает post выше!
  wwExpandButton2.Expanded := False;

  if not (OD_houses.State in [dsBrowse]) then
    OD_houses.Post;

  OD_house_status.Active := False;
  OD_house_status.Active := True;
end;

procedure TForm_houses_nabor.Button3Click(Sender: TObject);
begin
  exit_ok;
end;

procedure TForm_houses_nabor.wwDBLookupCombo5CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_k_status.FieldByName('status').AsInteger :=
    OD_status.FieldByName('ID').AsInteger;
end;

procedure TForm_houses_nabor.wwDBLookupCombo5Exit(Sender: TObject);
begin
  if OD_status.SearchRecord('NAME', wwDBLookupCombo5.Text,
    [srFromBeginning]) <> true then
  begin
    msg2('Данный статус не найден!', 'Ошибка', MB_OK + MB_ICONERROR);
  end;
end;

procedure TForm_houses_nabor.wwDBGrid6DblClick(Sender: TObject);
begin
  Application.CreateForm(TForm_change_house_status,
    Form_change_house_status);
  Form_change_house_status.ShowModal;
end;

procedure TForm_houses_nabor.wwDBGrid4DblClick(Sender: TObject);
begin
  Application.CreateForm(TForm_change_house_vvod,
    Form_change_house_vvod);
  Form_change_house_vvod.ShowModal;
end;

procedure TForm_houses_nabor.wwDBGrid8DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if FF('Form_spr_props', 0) = 1 then
  begin
    if Form_spr_props.wwDBLookupCombo1.LookupValue = 'Участок' then
    begin
      Accept := True;
    end
    else
    begin
      Accept := False;
    end;

  end
end;

procedure TForm_houses_nabor.wwDBGrid8DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  l_err: string;
begin
  if FF('Form_spr_props', 0) = 1 then
  begin
    DataModule1.OraclePackage1.CallProcedure(
      'scott.P_HOUSES.add_house_list',
      [parString, OD_houses.FieldByName('ID').AsInteger,
      Form_spr_props.l_fk_list]);
    l_err := DataModule1.OraclePackage1.GetParameter(0);
    if l_err <> '' then
    begin
      msg2(l_err,
        'Внимание', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;

    OD_housexlist.Active := false;
    OD_housexlist.Active := True;
  end;
end;

procedure TForm_houses_nabor.N3Click(Sender: TObject);
begin
  DataModule1.OraclePackage1.CallProcedure(
    'scott.P_HOUSES.del_house_list',
    [OD_houses.FieldByName('ID').AsInteger,
    OD_housexlist.FieldByName('FK_LIST').AsInteger]);

  OD_housexlist.Active := false;
  OD_housexlist.Active := True;

end;

{procedure TForm_houses_nabor.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
Var P: TPoint;
begin
  If Msg.Message = Wm_MouseMove then      // Отлавливаем движение мыши
  begin
    P:= ScreenToClient(Msg.Pt);          // Координаты экрана переводим в координаты формы
    Form_houses_nabor.Caption:= 'X= '+ IntToStr(P.X) + ' : ' + 'Y= '+IntToStr(P.Y); // Вывод координат
  end;
End;}

procedure TForm_houses_nabor.N1Click(Sender: TObject);
begin
  DataModule1.OraclePackage1.CallProcedure(
    'scott.P_HOUSES.del_house_list',
    [OD_housexlist.FieldByName('ID').AsInteger]);
  OD_housexlist.Active := false;
  OD_housexlist.Active := True;
end;

procedure TForm_houses_nabor.btn1Click(Sender: TObject);
begin
  if not (OD_k_vvod.State in [dsBrowse]) then
    OD_k_vvod.Post;
  if not (OD_houses.State in [dsBrowse]) then
    OD_houses.Post;
  if not (OD_usl_bills_house.State in [dsBrowse]) then
    OD_usl_bills_house.Post;
end;

procedure TForm_houses_nabor.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_houses.FieldByName('FK_OTHER_ORG').AsInteger :=
    OD_other.FieldByName('ID').AsInteger;
end;

procedure TForm_houses_nabor.wwDBLookupCombo1Exit(Sender: TObject);
begin
  {  if wwDBLookupCombo1.Text='' then
      OD_houses.FieldByName('FK_OTHER_ORG').AsVariant:=
        null
    else if OD_other.SearchRecord('NAME', wwDBLookupCombo1.Text,
      [srFromBeginning]) = true then
    begin
      OD_houses.FieldByName('FK_OTHER_ORG').AsInteger:=
        OD_other.FieldByName('ID').AsInteger;
    end;
   }
end;

procedure TForm_houses_nabor.wwDBLookupCombo1NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
begin
  {  msg2('Данная организация не найдена!', 'Ошибка', MB_OK+MB_ICONERROR);
    OD_houses.FieldByName('FK_OTHER_ORG').AsVariant:=
      null;
    wwDBLookupCombo1.Text:='';
   }
end;

procedure TForm_houses_nabor.OD_housesBeforeEdit(DataSet: TDataSet);
begin
  btn1.Enabled := True;
end;

procedure TForm_houses_nabor.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
  Application.CreateForm(TForm_par_edit,
    Form_par_edit);
  Form_par_edit.SetData(Uni_objxpar, Uni_par_value, Key);
  Form_par_edit.ShowModal
end;

procedure TForm_houses_nabor.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Application.CreateForm(TForm_par_edit,
    Form_par_edit);
  Form_par_edit.SetData(Uni_objxpar, Uni_par_value, '');
  Form_par_edit.ShowModal
end;

procedure TForm_houses_nabor.OD_usl_bills_houseBeforeEdit(
  DataSet: TDataSet);
begin
  btn1.Enabled := True;

end;

procedure TForm_houses_nabor.chkIsEditClick(Sender: TObject);
begin
  if chkIsEdit.Checked then
  begin
    OD_houses.ReadOnly := False;
    Uni_par_value.ReadOnly := False;
  end
  else
  begin
    OD_houses.ReadOnly := True;
    Uni_par_value.ReadOnly := True;
  end;

end;

end.

