unit Unit_houses_nabor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Grids, 
  ExtCtrls, StdCtrls, Utils,
  Buttons,  DBCtrls, ComCtrls,
  Menus, Oracle, cxControls,

  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGrid, cxPropertiesStore,
  cxGridCardView, cxGraphics,

  Uni, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxDBLookupComboBox, cxCheckBox, MemDS, DBAccess, cxGridCustomLayoutView,
  cxGridCustomView;

type
  TForm_houses_nabor = class(TForm)
    OD_houses: TOracleDataSet;
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
    OD_vvodRN: TFloatField;
    OD_vvodHOUSE_ID: TFloatField;
    OD_vvodUSL: TStringField;
    OD_vvodNPP: TFloatField;
    OD_vvodNM: TStringField;
    OD_k_vvod: TOracleDataSet;
    StringField1: TStringField;
    StringField3: TStringField;
    OD_k_vvodFK_VVOD: TFloatField;
    OD_k_vvodVVOD_NUM: TFloatField;
    OD_vvodFK_VVOD: TFloatField;
    OD_vvodVVOD_NUM: TStringField;
    OD_vvod2: TOracleDataSet;
    FloatField1: TFloatField;
    OD_vvodID: TFloatField;
    DS_vvod2: TDataSource;
    OD_pasp: TOracleDataSet;
    OD_paspID: TFloatField;
    OD_paspNAME: TStringField;
    DS_pasp: TDataSource;
    OD_housesFK_PASP_ORG: TFloatField;
    OD_housesPASP_NAME: TStringField;
    Splitter1: TSplitter;
    OD_housesKRAN1: TFloatField;
    Panel2: TPanel;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CheckBox2: TCheckBox;
    OD_status: TOracleDataSet;
    StringField4: TStringField;
    FloatField2: TFloatField;
    DS_status: TDataSource;
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
    cxGridHouseVvodDBTableView1: TcxGridDBTableView;
    cxGridHouseVvodLevel1: TcxGridLevel;
    cxGridHouseVvod: TcxGrid;
    cxGridHouseVvodDBTableView1KW: TcxGridDBColumn;
    cxGridHouseVvodDBTableView1VVOD_NUM: TcxGridDBColumn;
    cxGridHouseVvodDBTableView2: TcxGridDBTableView;
    cxGridHouseVvodDBTableView2USL: TcxGridDBColumn;
    cxGridHouseVvodDBTableView2NM: TcxGridDBColumn;
    cxGridHouseVvodDBTableView2VVOD_NUM: TcxGridDBColumn;
    cxGridHouseVvodLevel3: TcxGridLevel;
    cxGridHouseVvodDBTableView3: TcxGridDBTableView;
    cxGridHouseVvodDBTableView3KW: TcxGridDBColumn;
    cxGridHouseVvodDBTableView3VVOD_NUM: TcxGridDBColumn;
    DS_houses: TDataSource;
    DS_vvod: TDataSource;
    DS_k_vvod: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure exit_ok;
    procedure CheckBox2Click(Sender: TObject);
    procedure OD_vvodAfterScroll(DataSet: TDataSet);
    procedure OD_k_vvodAfterPost(DataSet: TDataSet);
    procedure OD_housesBeforePost(DataSet: TDataSet);
    procedure OD_housesAfterPost(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
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

procedure TForm_houses_nabor.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  // виды приоритетного платежа по дому
  OD_typespay.Active := true;

  //
  Uni_objxpar.Active := true;
  Uni_par_value.Active := true;

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
  Form_find_adr.cbbKw.Enabled := false;
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

  if not (OD_houses.State in [dsBrowse]) then
    OD_houses.Post;
end;

procedure TForm_houses_nabor.Button3Click(Sender: TObject);
begin
  exit_ok;
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

