unit Unit_list_kart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Oracle, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Utils,
  Wwintl, wwfltdlg, Mask, wwdbedit, StrUtils, 
  Buttons, wwdblook, wwcheckbox, Wwdbdlg, frxClass, frxDBSet, Menus,
  wwDataInspector, DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPropertiesStore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxMRUEdit, cxSplitter, cxLabel;

type
  TForm_list_kart = class(TForm)
    OD_list_kart: TOracleDataSet;
    OD_list_kartLSK: TStringField;
    OD_list_kartKUL: TStringField;
    OD_list_kartNAME: TStringField;
    OD_list_kartN_ND: TStringField;
    OD_list_kartN_KW: TStringField;
    OD_list_kartN_STATUS: TStringField;
    OD_list_kartFIO: TStringField;
    OD_list_kartET: TIntegerField;
    OD_list_kartKPR: TIntegerField;
    OD_list_kartKPR_OT: TIntegerField;
    OD_list_kartKPR_WR: TIntegerField;
    OD_list_kartOPL: TFloatField;
    OD_list_kartEKSUB1: TFloatField;
    OD_list_kartEKSUB2: TFloatField;
    OD_list_kartSGKU: TFloatField;
    OD_list_kartDOPPL: TFloatField;
    OD_list_kartSUBS_COR: TFloatField;
    OD_list_kartSUBS_CUR: TFloatField;
    OD_list_kartKRAN1: TIntegerField;
    OD_list_kartEL: TFloatField;
    OD_list_kartEL1: TFloatField;
    OD_list_kartSUBS_VAL: TFloatField;
    OD_list_kartKW: TStringField;
    OD_list_kartSTATUS: TIntegerField;
    OD_list_kartND: TStringField;
    OD_list_kartNKOM: TStringField;
    OD_list_kartPSCH: TIntegerField;
    OD_list_kartMGW: TFloatField;
    OD_list_kartMHW: TFloatField;
    OD_list_kartPPL: TFloatField;
    OD_list_kartKOMN: TIntegerField;
    DS_list_kart: TDataSource;
    wwDBGrid1: TwwDBGrid;
    OD_list_kartKI: TIntegerField;
    OD_list_kartSUB_DATA: TDateTimeField;
    OD_list_kartPSCH_NAME: TStringField;
    OD_list_kartC_LSK_ID: TFloatField;
    OD_list_kartMG1: TStringField;
    OD_list_kartMG2: TStringField;
    OD_list_kartNAME_REU: TStringField;
    OD_list_kartHOUSE_ID: TFloatField;
    OD_list_kartKAN_SCH: TFloatField;
    OD_list_kartK_LSK_ID: TFloatField;
    OD_list_kartMEL: TFloatField;
    OD_list_kartPGW: TFloatField;
    OD_list_kartPHW: TFloatField;
    OD_list_kartPEL: TFloatField;
    LK: TStringField;
    OD_list_kartSCHEL_DT: TDateTimeField;
    OD_list_kartTEXT: TStringField;
    OD_list_kartSCHEL_END: TDateTimeField;
    OD_list_kartREU: TStringField;
    OD_list_kartKFG: TIntegerField;
    OD_debits_org: TOracleDataSet;
    OD_debits_orgID: TFloatField;
    OD_debits_orgNAME: TStringField;
    DS_debits_org: TDataSource;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_list_kartFK_DEB_ORG: TFloatField;
    us: TStringField;
    OD_list_kartSCH_EL: TIntegerField;
    OD_list_kartK_IM: TStringField;
    OD_list_kartK_OT: TStringField;
    OD_list_kartK_FAM: TStringField;
    OD_list_kartMEMO: TStringField;
    OD_list_kartFK_DISTR: TFloatField;
    OD_list_kartLAW_DOC: TStringField;
    OD_rep1: TOracleDataSet;
    DS_rep1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport_base: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    DS_rep2: TDataSource;
    OD_rep2: TOracleDataSet;
    OD_list_kartFK_PASP_ORG: TFloatField;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    OD_list_kartDEB_ORG: TStringField;
    Memo1: TMemo;
    N1: TMenuItem;
    N2: TMenuItem;
    frxDBDataset3: TfrxDBDataset;
    DS_rep3: TDataSource;
    OD_rep3: TOracleDataSet;
    OD_list_kartLAW_DOC_DT: TDateTimeField;
    OD_list_kartPRVT_DOC: TStringField;
    OD_list_kartPRVT_DOC_DT: TDateTimeField;
    OD_list_kartCPN: TFloatField;
    OD_list_kartKPR_WRP: TFloatField;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    Panel3: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Panel4: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    OD_list_kartPSCH_DT: TDateTimeField;
    k_l: TDateTimeField;
    OD_deb_kart_pr: TOracleDataSet;
    OD_deb_kart_prID: TFloatField;
    OD_deb_kart_prLSK: TStringField;
    OD_deb_kart_prFIO: TStringField;
    OD_deb_kart_prFK_DEB_ORG: TFloatField;
    OD_deb_kart_prDEB_ORG_NAME: TStringField;
    DS_deb_kart_pr: TDataSource;
    OD_list_kartBTN: TStringField;
    wwExpandButton1: TwwExpandButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1DEB_ORG_NAME: TcxGridDBColumn;
    OD_list_kartADR: TStringField;
    cxPropertiesStore1: TcxPropertiesStore;
    OD_list_kartLSK_EXT: TStringField;
    OD_list_kartLSK_TP: TStringField;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    OD_list_kartLSK_TP_CD: TStringField;
    chk1: TCheckBox;
    OD_list_kartSEL1: TFloatField;
    OD_rep_lsk: TOracleDataSet;
    frxdbdtstDBD_rep_lsk: TfrxDBDataset;
    cxmskdt1: TcxMaskEdit;
    OD_list_kartENTR: TFloatField;
    OD_list_kartPOT: TFloatField;
    OD_list_kartMOT: TFloatField;
    OD_list_kartELSK: TStringField;
    OD_list_kartPARENT_LSK: TStringField;
    Panel5: TPanel;
    CheckBox3: TCheckBox;
    GroupBox1: TGroupBox;
    cxLabel1: TcxLabel;
    wwDBEdit1: TwwDBEdit;
    cxLabel2: TcxLabel;
    wwDBEdit2: TwwDBEdit;
    Button2: TButton;
    wwDBEdit3: TwwDBEdit;
    cxLabel3: TcxLabel;
    GroupBox2: TGroupBox;
    cxLabel4: TcxLabel;
    wwDBEdit4: TwwDBEdit;
    cxLabel5: TcxLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    cxLabel6: TcxLabel;
    BitBtn2: TBitBtn;
    OD_list_kartFK_KLSK_OBJ: TFloatField;
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_list_kartAfterScroll(DataSet: TDataSet);
    procedure OD_list_kartAfterRefreshRecord(Sender: TOracleDataSet);
    procedure refresh_data;
    procedure Button1Click(Sender: TObject);
    procedure wwIncrementalSearch1DblClick(Sender: TObject);
    procedure wwIncrementalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OD_list_kartBeforeScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure setAllowEdit_list;
    procedure setAllowEdit_kart;
    procedure state_arch2(mgold_: String);
    procedure CheckBox1Click(Sender: TObject);
    procedure OD_list_kartAfterPost(DataSet: TDataSet);
    procedure OD_list_kartApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure OD_list_kartBeforeInsert(DataSet: TDataSet);
    procedure CheckBox2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Realign;
    procedure FormPaint(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SetFields;
    procedure SetFields2;
    procedure OD_list_kartAfterOpen(DataSet: TDataSet);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure OD_list_kartEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SetFilter;
    procedure CheckBox3Click(Sender: TObject);
    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure wwExpandButton1BeforeCollapse(Sender: TObject);
    procedure save_deb_kart_pr;
    procedure chk1Click(Sender: TObject);
    procedure cxmskdt1DblClick(Sender: TObject);
    procedure cxmskdt1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
  private
    bm:  TBookmark;
  public
    isAllowEdit_: Integer;
    isAllowEdit_k_: Integer;
    isAllowEdit_k2_: Integer;
    isAllowEdit_k3_: Integer;
    isAllowEdit_l_: Integer;
  end;

var
  Form_list_kart: TForm_list_kart;

implementation

uses Unit_form_kart, Unit_Mainform, DM_module1, Unit_find_adr,
  Unit_month_payments, Unit_changes_lsk, Unit_form_kart_pr,
  Unit_form_subsidii, Unit_chargepay, Unit_find_fio,
  Unit_find_contr, Unit_det_chrg, Unit_log_actions, Unit_houses_nabor,
  Unit_house_vvod, Unit_list_set, Unit_form_bills, Unit_sch_history,
  Unit_lk_acc, u_frmPenCorr;

{$R *.dfm}


procedure TForm_list_kart.setAllowEdit_kart;
begin
  //проверка прав на доступ к объекту в Form_kart
  isAllowEdit_k_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.UTILS.allow_edit_lsk', [OD_list_kart.FieldByName('lsk').AsString, 'доступ к пасп.столу']);
  isAllowEdit_k2_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.UTILS.allow_edit_lsk', [OD_list_kart.FieldByName('lsk').AsString, 'доступ к карт.площадь']);
  isAllowEdit_k3_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.UTILS.allow_edit_lsk', [OD_list_kart.FieldByName('lsk').AsString, 'доступ к карт.статус']);
  isAllowEdit_l_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.UTILS.allow_edit_lsk', [OD_list_kart.FieldByName('lsk').AsString, 'доступ к льготам']);

end;

procedure TForm_list_kart.setAllowEdit_list;
begin
  //проверка прав на доступ к объекту в Form_list_kart
  isAllowEdit_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.UTILS.allow_edit_lsk', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 'доступ к карт.рэу']);

  if (Form_main.arch_mg_ = '') then
    begin
      Caption:='Карточки';
      wwDBGrid1.ReadOnly:=false;
    end
  else if Form_main.arch_mg_ <> '' then
    begin
      Caption:='Карточки - Архив';
      wwDBGrid1.ReadOnly:=true;
    end;


  //isAllowEdit_k_ -стояло почему то... ред.02.02.2012
  if isAllowEdit_ <> 0 then
  begin
  //доступ к правке счетчика по эл.эн.
  if OD_list_kart.FieldByName('sch_el').AsInteger = 0 then
  begin
     OD_list_kart.FieldByName('mel').ReadOnly:=true;
  end
  else
  begin
     OD_list_kart.FieldByName('mel').ReadOnly:=false;
  end;

  //доступ к правке счетчика по х.в.г.в.
  if OD_list_kart.FieldByName('psch').AsInteger = 0 then
  begin
     OD_list_kart.FieldByName('mhw').ReadOnly:=true;
     OD_list_kart.FieldByName('mgw').ReadOnly:=true;
  end
  else if OD_list_kart.FieldByName('psch').AsInteger = 1 then
  begin
     OD_list_kart.FieldByName('mhw').ReadOnly:=false;
     OD_list_kart.FieldByName('mgw').ReadOnly:=false;
  end
  else if OD_list_kart.FieldByName('psch').AsInteger = 2 then
  begin
     OD_list_kart.FieldByName('mhw').ReadOnly:=false;
     OD_list_kart.FieldByName('mgw').ReadOnly:=true;
  end
  else if OD_list_kart.FieldByName('psch').AsInteger = 3 then
  begin
     OD_list_kart.FieldByName('mhw').ReadOnly:=true;
     OD_list_kart.FieldByName('mgw').ReadOnly:=false;
  end
  else
  begin
     OD_list_kart.FieldByName('mhw').ReadOnly:=true;
     OD_list_kart.FieldByName('mgw').ReadOnly:=true;
  end;
  end
  else
  begin
     OD_list_kart.FieldByName('mhw').ReadOnly:=true;
     OD_list_kart.FieldByName('mgw').ReadOnly:=true;
     OD_list_kart.FieldByName('mel').ReadOnly:=true;

  end;

    // отключить возможность корректировки счетчиков в новой версии
  if DataModule1.OraclePackage1.CallIntegerFunction
               ('scott.Utils.get_int_param', ['VER_METER1']) <> 0 then
  begin
     OD_list_kart.FieldByName('mhw').ReadOnly:=true;
     OD_list_kart.FieldByName('mgw').ReadOnly:=true;
     OD_list_kart.FieldByName('mel').ReadOnly:=true;
     OD_list_kart.FieldByName('mot').ReadOnly:=true;

     OD_list_kart.FieldByName('phw').ReadOnly:=true;
     OD_list_kart.FieldByName('pgw').ReadOnly:=true;
     OD_list_kart.FieldByName('pel').ReadOnly:=true;
     OD_list_kart.FieldByName('pot').ReadOnly:=true;
  end;

end;

procedure TForm_list_kart.refresh_data;
begin
  if FF('Form_chargepay', 0) = 1 then
     Form_chargepay.recalc;

  if FF('Form_kart', 0) = 1 then
  begin
    //обновим форму карточек
    Form_kart.refresh_kart;
    Form_kart.setAllowEdit(0);
  end;

  if FF('Form_kart_pr', 0) = 1 then
  begin
    Form_kart_pr.setAllowEdit;
  end;

  if FF('Form_changes_lsk', 0) = 1 then
  begin
    Form_changes_lsk.setAllowEdit;
  end;

  if FF('Form_subsidii', 0) = 1 then
    Form_subsidii.setAllowEdit;

  if FF('Form_sch_history', 0) = 1 then
  begin
    Form_sch_history.setKlsk(Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger, '');
  end;

  // Обновить расход в панели правки расхода
  wwDBEdit4.Text:=OD_list_kart.FieldByName('MHW').asString;
  wwDBEdit5.Text:=OD_list_kart.FieldByName('MGW').asString;
  wwDBEdit6.Text:=OD_list_kart.FieldByName('MEL').asString;

end;

procedure TForm_list_kart.state_arch2(mgold_: String);
begin // смена состояний формы
with Form_list_kart do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
      change_alias(OD_list_kart,'scott.kart',
        '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')', False);
      //поменять алиас ELSK
      change_alias(OD_list_kart,'k.elsk',
        'null as elsk');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
      change_alias(OD_list_kart,
        '(select * from scott.arch_kart where mg='''+mgold_+''')',
        'scott.kart', False);
      //поменять алиас ELSK
      change_alias(OD_list_kart, 'null as elsk',
        'k.elsk');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
      change_alias(OD_list_kart,
        '(select * from scott.arch_kart where mg='''+mgold_+''')',
        '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
  end;
end;
end;

procedure TForm_list_kart.wwDBGrid1DblClick(Sender: TObject);
begin
  if (wwDBGrid1.SelectedField.FieldName <> 'SUBS_CUR') and
   (wwDBGrid1.SelectedField.FieldName <> 'KRAN1')  and
   (wwDBGrid1.SelectedField.FieldName <> 'KAN_SCH')
   then
  begin
    if FF('Form_kart', 1) = 0 then
       begin
         setAllowEdit_kart;
         Application.CreateForm(TForm_kart, Form_kart);
       end;

    refresh_data;
  end;
end;

procedure TForm_list_kart.Realign;
begin
//  Button3.Left:=GroupBox1.Width-Button3.Width-10;
//  CheckBox2.Left:=GroupBox1.Width-Button3.Width-CheckBox2.Width-10;
//  CheckBox1.Left:=CheckBox2.Left-CheckBox2.Width-25;
//  wwDBNavigator1.Left:=CheckBox1.Left-wwDBNavigator1.Width-30;
end;

procedure TForm_list_kart.setFields;
begin
  if (Form_main.org_var_ = 1) then
  begin
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'N_STATUS')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'ET')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KPR')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KPR_OT')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KPR_WR')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KPR_WRP')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KI')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'OPL')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KRAN1')].Visible:=false;
//    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'EL')].Visible:=false;
//    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'EL1')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUB_DATA')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MEL')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MHW')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MGW')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'PSCH_NAME')].Visible:=false;
//    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KAN_SCH')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MG1')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MG2')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'DEB_ORG')].Visible:=false;
//    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUBS_COR')].Visible:=false;
//    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUBS_CUR')].Visible:=false;
//    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'ADR')].Visible:=false;

    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'NAME')].DisplayWidth:=30;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'FIO')].DisplayWidth:=43;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'TEXT')].DisplayLabel:='Телефон';
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'PARENT_LSK')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'ELSK')].Visible:=false;
    CheckBox1.Visible:=false;
    CheckBox2.Visible:=false;
  end
  else
  begin
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUB_DATA')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KI')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'TEXT')].DisplayLabel:='Примечание';
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'DOG_NUM')].Visible:=false;
//    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'ADR')].Visible:=false;
    CheckBox1.Visible:=true;
    CheckBox2.Visible:=true;
    SpeedButton5.Visible:=false;
    // отобразить расход по счетчикам, без возможности правки
    if DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.INIT.get_is_cnt_sch', [parNone]) = 1 then
    begin
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MHW')].Visible:=false;
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MGW')].Visible:=false;
    end;
//    setFields2;
  end;

end;

procedure TForm_list_kart.setFields2;
begin
{  if (Form_main.org_var_ = 0) then
  begin
    if CheckBox3.Checked = True then
    begin
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUB_DATA')].Visible:=true;
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUBS_COR')].Visible:=true;
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUBS_CUR')].Visible:=true;
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KI')].Visible:=true;
    end
    else
    begin
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUB_DATA')].Visible:=false;
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUBS_COR')].Visible:=false;
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'SUBS_CUR')].Visible:=false;
      wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'KI')].Visible:=false;
    end;
  end;}
end;

procedure TForm_list_kart.FormCreate(Sender: TObject);
begin
  //Настройки расположения формы
  cxPropertiesStore1.Active:=True;
  cxPropertiesStore1.RestoreFrom;

  SetMenuItem(3, N3, 'drn62_Услуги_по_домам');
  SetMenuItem(3, N2, 'drn105_Ввод_объемов_по_лс');

  OD_rep1.Active:=false;
  OD_rep2.Active:=false;
  OD_debits_org.Active:=true;
  Form_main.ToolButton25.Visible:=true;
  Form_main.ToolButton26.Visible:=true;
  Form_main.ToolButton10.Visible:=true;
  Form_main.ToolButton21.Visible:=true;
  try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drn59_Просмотр_перерасчетов', [parNone]);
  except
    Form_main.ToolButton21.Visible:=false;
  end;

  Form_main.Refresh;
  state_arch2('');
  setAllowEdit_list;
  Form_Main.cl_flt;
  SetFilter;
  // Пока отменил - возможно тормозит открытие формы (проверить) 03.09.2017
  //OD_list_kart.Locate('lsk', cxmskdt1.Text, [])
end;

procedure TForm_list_kart.SetFilter;
begin
//Фильтр по дому
 with OD_list_kart do
  begin
    Active:=false;
    SetVariable('flt_reu_', Form_Main.flt_reu_);
    SetVariable('flt_kul_', Form_Main.flt_kul_);
    SetVariable('flt_nd_', Form_Main.flt_nd_);
    SetVariable('flt_kw_', Form_Main.flt_kw_);
    SetVariable('flt_k_lsk_id_', Form_Main.flt_k_lsk_id_);

    if Form_Main.search_type_ <> 0 then
    begin
       //удаляем последнюю строчку
       SQL.Delete(OD_list_kart.SQL.Count-1);
       //устанавливаем порядок
       SQL.Add('order by s.name, k.nd, k.kw, u.npp, decode(k.psch,8,1,9,1,0)');
    end;
    Active:=true;
 end;

end;

procedure TForm_list_kart.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
   OD_list_kart.Next;
  end;
end;

procedure TForm_list_kart.save_deb_kart_pr;
begin
//Сохранить сотояние датасета орг. по проживающим - задолжникам
  if not (OD_deb_kart_pr.State in [dsBrowse, dsInactive]) then
     OD_deb_kart_pr.Post;

  if OD_deb_kart_pr.UpdatesPending then
  begin
    DataModule1.OracleSession1.ApplyUpdates([OD_deb_kart_pr], true);
  end;
end;

procedure TForm_list_kart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  save_deb_kart_pr;
  Form_main.ToolButton25.Visible:=false;
  Form_main.ToolButton26.Visible:=false;
  Form_main.ToolButton21.Visible:=false;
  Form_main.ToolButton10.Visible:=false;


 if (FF('Form_month_payments',0) = 1)
  and (Form_month_payments.OD_c_kwtp.MasterFields <> '') then
 begin
    Form_month_payments.CheckBox1.Checked:=False;
    Form_month_payments.show_all(False);

    Form_month_payments.Caption:='Поступления за месяц';
    with Form_month_payments.OD_c_kwtp do
    begin
      Master:=nil;
      MasterFields:='';
      DetailFields:='';
      SetVariable('var', 0);
      Active:=false;
      Active:=true;
    end;
    with Form_month_payments.OD_c_kwtp_mg do
    begin
      Master:=nil;
      MasterFields:='';
      DetailFields:='';
      SetVariable('var', 0);
      Active:=false;
      Active:=true;
    end;
 end;

  if FF('Form_chargepay',0) = 1 then
    Form_chargepay.Close;

  if FF('Form_sch_history', 0) =1 then
    Form_sch_history.Close;

  if (FF('Form_kart', 0) = 1) then
   Form_kart.Close;

  if FF('Form_changes_lsk',0) = 1 then
    Form_changes_lsk.Close;

  if FF('frmPenCorr',0) = 1 then
    frmPenCorr.Close;

  if FF('Form_log_actions', 0) =1 then
    Form_log_actions.Close;

 Form_main.ToolButton23.Visible:=false;
 Form_main.ToolButton24.Visible:=false;
 Action:=caFree;
end;

procedure TForm_list_kart.OD_list_kartAfterScroll(DataSet: TDataSet);
begin
  setAllowEdit_list;
  refresh_data;

  if FF('Form_kart', 0) = 1 then
  begin
//    setAllowEdit_kart;
    Form_kart.calcFooter;
  end;

  if FF('Form_kart', 0) = 1 then
  begin
    try
      Form_kart.OD_charge.GotoBookmark(bm);
    except
    end
  end;

  if FF('frmPenCorr', 0) =1 then
  begin
     frmPenCorr.OD_data.SetVariable('k_lsk_id',
       Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger);
     frmPenCorr.OD_data.Active:=false;
     frmPenCorr.OD_data.Active:=true;
  end;

  if FF('Form_lk_acc', 0) =1 then
    Form_lk_acc.exit_cancel;

  if FF('Form_det_chrg', 0) =1 then
    Form_det_chrg.recalc;

  if FF('Form_print_bills', 0) =1 then
    Form_print_bills.sel_lsk;
end;

procedure TForm_list_kart.OD_list_kartAfterRefreshRecord(
  Sender: TOracleDataSet);
begin
  refresh_data;
end;

procedure TForm_list_kart.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_list_kart.wwIncrementalSearch1DblClick(Sender: TObject);
begin
    Application.CreateForm(TForm_find_adr, Form_find_adr);
    if Form_find_adr.ShowModal = mrOk then
    begin
      OD_list_kart.Active:=false;
      //удаляем последнюю строчку
      OD_list_kart.SQL.Delete(OD_list_kart.SQL.Count-1);
      //устанавливаем порядок
      OD_list_kart.SQL.Add('order by s.name, k.nd, k.kw, u.npp, decode(k.psch,8,1,9,1,0)');
      OD_list_kart.Active:=true;
      OD_list_kart.SearchRecord('lsk', Form_Main.Lsk_, [srFromBeginning]);
    end;
end;

procedure TForm_list_kart.wwIncrementalSearch1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=34 then
  begin
    Application.CreateForm(TForm_find_adr, Form_find_adr);
    if Form_find_adr.ShowModal = mrOk then
    begin
      OD_list_kart.Active:=false;
      //удаляем последнюю строчку
      OD_list_kart.SQL.Delete(OD_list_kart.SQL.Count-1);
      //устанавливаем порядок
      OD_list_kart.SQL.Add('order by s.name, k.nd, k.kw, u.npp, decode(k.psch,8,1,9,1,0)');
      OD_list_kart.Active:=true;
      OD_list_kart.SearchRecord('lsk', Form_Main.Lsk_, [srFromBeginning]);
    end;
  end;
end;

procedure TForm_list_kart.OD_list_kartBeforeScroll(DataSet: TDataSet);
var
cnt_: Integer;
begin
  if FF('Form_kart', 0) = 1 then
    bm:=Form_kart.OD_charge.GetBookmark;

  save_deb_kart_pr;

  if FF('Form_kart', 0) = 1 then
    Form_kart.save_changes(1)
  else
  begin
    if not (OD_list_kart.State in [dsBrowse]) then
       OD_list_kart.Post;
   
    if OD_list_kart.UpdatesPending then
    begin
      DataModule1.OracleSession1.ApplyUpdates([OD_list_kart], true);
      if FF('Form_kart',0) = 0 then
        cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
         'scott.C_CHARGES.gen_charges',
         [OD_list_kart.FieldByName('lsk').AsString, null, null, null, 1, 0]);
    end;
  end;
end;

procedure TForm_list_kart.FormActivate(Sender: TObject);
begin
  Form_main.ToolButton23.Visible:=true;
  Form_main.ToolButton24.Visible:=true;
end;

procedure TForm_list_kart.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
   wwDBGrid1.FixedCols:=wwDBGrid1.SelectedField.Index
  else
   wwDBGrid1.FixedCols:=0;

end;

procedure TForm_list_kart.OD_list_kartAfterPost(DataSet: TDataSet);
var
 cnt_: Integer;
begin

end;

procedure TForm_list_kart.OD_list_kartApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
var
cnt_: Integer;
begin
end;

procedure TForm_list_kart.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_list_kart.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (OD_list_kart.FieldByName('psch').AsInteger = 8) and
     (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_MAIN')
    then
  begin
    ABrush.Color := clSilver;
    AFont.Color := clBlack;
  end
  else if (OD_list_kart.FieldByName('psch').AsInteger = 9) and
     (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_MAIN')
    then
  begin
    ABrush.Color := clGray;
    AFont.Color := clBlack;
  end
  else if (OD_list_kart.FieldByName('psch').AsInteger = 8) and
     (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_ADDIT')
    then
  begin
    ABrush.Color := clGreen;
    AFont.Color := clBlack;
  end
  else if (OD_list_kart.FieldByName('psch').AsInteger = 9) and
     (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_ADDIT')
    then
  begin
    ABrush.Color := clOlive;
    AFont.Color := clBlack;
  end
  else if (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_ADDIT')
    then
  begin
    ABrush.Color := clMoneyGreen;
    AFont.Color := clBlack;
  end;
end;

procedure TForm_list_kart.OD_list_kartBeforeInsert(DataSet: TDataSet);
begin
  //Запрещено добавлять записи прямо в гриде
  Abort;
end;

procedure TForm_list_kart.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = true then
begin
  OD_list_kart.active:=false;
  OD_list_kart.SetVariable('var1_', 1);
  OD_list_kart.active:=true;
end
else
begin
  OD_list_kart.active:=false;
  OD_list_kart.SetVariable('var1_', 0);
  OD_list_kart.active:=true;
end;

end;

procedure TForm_list_kart.SpeedButton2Click(Sender: TObject);
begin
  OD_list_kart.SetVariable('var_', 0);
  Form_Main.cl_flt;
  SetFilter;
end;

procedure TForm_list_kart.SpeedButton1Click(Sender: TObject);
begin
{    Form_main.k_lsk_id_:=DataModule1.OraclePackage1.CallIntegerFunction(
     'scott.utils.get_k_lsk_id_by_lsk',
      [RightStr('00000000'+wwDBEdit1.Text, 8)]);
              }
    Form_Main.cl_flt;
    Form_Main.flt_k_lsk_id_:=DataModule1.OraclePackage1.CallIntegerFunction(
     'scott.utils.get_k_lsk_id_by_lsk',
      [RightStr('00000000'+cxmskdt1.Text, 8)]);
    SetFilter;

{    OD_list_kart.active:=false;
    OD_list_kart.SetVariable('k_lsk_id_', Form_main.k_lsk_id_);
    OD_list_kart.SetVariable('var_', 4);
    OD_list_kart.active:=true;}
    cxmskdt1.Text:=RightStr('00000000'+cxmskdt1.Text, 8);
end;

procedure TForm_list_kart.SpeedButton3Click(Sender: TObject);
begin
 Application.CreateForm(TForm_find_fio, Form_find_fio);
 Form_find_fio.ShowModal;
 if Form_main.search_type_ = 4 then
 begin
   OD_list_kart.active:=false;
   OD_list_kart.SetVariable('str1_', Form_main.last_name_);
   OD_list_kart.SetVariable('var_', 6);
   OD_list_kart.active:=true;
 end;
 if Form_main.search_type_ = 5 then
 begin
   OD_list_kart.active:=false;
   OD_list_kart.SetVariable('str1_', Form_main.last_name_);
   OD_list_kart.SetVariable('var_', 7);
   OD_list_kart.active:=true;
 end;
end;

procedure TForm_list_kart.FormPaint(Sender: TObject);
begin
  Realign;
end;

procedure TForm_list_kart.SpeedButton5Click(Sender: TObject);
begin
 Application.CreateForm(TForm_find_contr, Form_find_contr);
 Form_find_contr.ShowModal;
 if Form_main.search_type_ = 6 then
 begin
   OD_list_kart.active:=false;
   OD_list_kart.SetVariable('str1_', Form_main.last_name_);
   OD_list_kart.SetVariable('var_', 5);
   OD_list_kart.active:=true;
 end;
end;

procedure TForm_list_kart.OD_list_kartAfterOpen(DataSet: TDataSet);
begin
  setFields;

  //Если нет критерия поиска - убрать возможность вытянуть все записи
  if OD_list_kart.GetVariable('var_') = 0 then
    begin
    if FF('Form_kart',0) =1 then
    begin
       Form_kart.wwDBNavigator1Last.Visible:=False;
    end;
    wwDBNavigator1Last.Visible:=False;
    end
    else
    begin
    if FF('Form_kart',0) =1 then
    begin
       Form_kart.wwDBNavigator1Last.Visible:=True;
    end;
    wwDBNavigator1Last.Visible:=True;
    end;

end;

procedure TForm_list_kart.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
//  OD_list_kart.FieldByName('FK_DEB_ORG').AsInteger:=
//    OD_debits_org.FieldByName('ID').AsInteger;
end;

procedure TForm_list_kart.wwDBLookupCombo3Exit(Sender: TObject);
begin
  if wwDBLookupCombo3.Text='' then
  begin
    if (OD_list_kart.State = dsBrowse) then
      OD_list_kart.Edit;
    OD_list_kart.FieldByName('FK_DEB_ORG').AsVariant:=null;
    OD_list_kart.Post;
  end;

//  if OD_debits_org.SearchRecord('NAME', wwDBLookupCombo3.Text,
//    [srFromBeginning]) <> true then
//  begin
//    msg2('Данная организация не найдена!', 'Ошибка', MB_OK);
//  end;
end;

procedure TForm_list_kart.BitBtn1Click(Sender: TObject);
begin
  if FF('Form_log_actions', 0) =0 then
    Application.CreateForm(TForm_log_actions, Form_log_actions);
end;

procedure TForm_list_kart.wwDBLookupCombo4Exit(Sender: TObject);
begin
//Оставить для примера
{  if wwDBLookupCombo4.Text='' then
    OD_list_kart.FieldByName('C_VVOD_EL_ID').AsVariant:=
      null
  else if OD_c_vvod_el.SearchRecord('VVOD_NUM', StrToInt(wwDBLookupCombo4.Text),
    [srFromBeginning]) = true then
  begin
    OD_list_kart.FieldByName('C_VVOD_EL_ID').AsInteger:=
      OD_c_vvod_el.FieldByName('ID').AsInteger;
  end
  else
  begin
    msg2('Данный ввод не найден!', 'Ошибка', MB_OK);
  end;
 }
end;

procedure TForm_list_kart.OD_list_kartEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin

  if Pos('another', E.Message) > 1 then
  begin
    msg2('Карточка данного Л/C уже редактируется другим пользователем, откройте позже заново!',
     'Внимание!', MB_OK+MB_ICONWARNING);
    Action := daAbort;
  end;
end;

procedure TForm_list_kart.wwDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

procedure TForm_list_kart.N3Click(Sender: TObject);
begin
  if FF('Form_houses_nabor',1) =0 then
    Application.CreateForm(TForm_houses_nabor, Form_houses_nabor);
  Form_Main.flt_house_:=OD_list_kart.FieldByName('HOUSE_ID').AsInteger;
  Form_houses_nabor.SetFilter(1);
end;

procedure TForm_list_kart.N1Click(Sender: TObject);
begin
  if FF('Form_house_vvod',1) =0 then
    Application.CreateForm(TForm_house_vvod, Form_house_vvod);
  Form_Main.flt_house_:=OD_list_kart.FieldByName('HOUSE_ID').AsInteger;
  Form_house_vvod.SetFilter;
end;

procedure TForm_list_kart.N2Click(Sender: TObject);
begin
  if FF('Form_house_vvod',1) =0 then
    Application.CreateForm(TForm_list_set, Form_list_set);

  Form_Main.cl_flt;
  Form_Main.flt_house_:=OD_list_kart.FieldByName('House_id').AsInteger;
  Form_list_set.SetFilter(1);
{  with Form_list_set.OD_list_kart do
  begin
  Active:=false;
  SetVariable('house_id_',
    OD_list_kart.FieldByName('House_id').AsInteger);
  SetVariable('var_', 8);
  Active:=true;
  end;}

end;

procedure TForm_list_kart.CheckBox3Click(Sender: TObject);
begin
//  setFields2;
  if CheckBox3.Checked then
  begin
     Panel5.Visible:=true;
  end
  else
  begin
     Panel5.Visible:=false;
  end;
end;

procedure TForm_list_kart.wwExpandButton1BeforeExpand(Sender: TObject);
begin
  OD_deb_kart_pr.SetVariable('P_LSK',
    OD_list_kart.FieldByName('LSK').AsString);
  OD_deb_kart_pr.Active:=False;
  OD_deb_kart_pr.Active:=True;
end;

procedure TForm_list_kart.wwExpandButton1BeforeCollapse(Sender: TObject);
begin
  OD_deb_kart_pr.Active:=False;
end;

procedure TForm_list_kart.chk1Click(Sender: TObject);
begin
if chk1.Checked = true then
begin
  OD_list_kart.active:=false;
  OD_list_kart.SetVariable('var3_', 1);
  OD_list_kart.active:=true;
end
else
begin
  OD_list_kart.active:=false;
  OD_list_kart.SetVariable('var3_', 0);
  OD_list_kart.active:=true;
end;

end;

procedure TForm_list_kart.cxmskdt1DblClick(Sender: TObject);
begin
  if not (OD_list_kart.State in [dsBrowse]) then
     OD_list_kart.Post;

  Application.CreateForm(TForm_find_adr, Form_find_adr);
  Form_find_adr.SetAccess(1,1,1,1);
  if Form_find_adr.ShowModal = mrOk then
  begin
   SetFilter;
  end;

end;

procedure TForm_list_kart.cxmskdt1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Form_Main.cl_flt;
    Form_Main.flt_k_lsk_id_:=DataModule1.OraclePackage1.CallIntegerFunction(
     'scott.utils.get_k_lsk_id_by_lsk',
      [RightStr('00000000'+Trim(cxmskdt1.Text), 8)]);
    SetFilter;
    cxmskdt1.Text:=RightStr('00000000'+Trim(cxmskdt1.Text), 8);
  end;

end;

procedure TForm_list_kart.SpeedButton4Click(Sender: TObject);
begin
  if not (OD_list_kart.State in [dsBrowse]) then
     OD_list_kart.Post;

  Application.CreateForm(TForm_find_adr, Form_find_adr);
  Form_find_adr.SetAccess(1,1,1,1);
  if Form_find_adr.ShowModal = mrOk then
  begin
   SetFilter;
  end;

end;

procedure TForm_list_kart.wwDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    // нажат Enter - перейти к другому полю
    wwDBEdit2.SetFocus;
  end;
end;

procedure TForm_list_kart.wwDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 38 then
  begin
    OD_list_kart.Prior;
  end
  else if Key = 40 then
  begin
    OD_list_kart.Next;
  end;

end;

procedure TForm_list_kart.wwDBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    // нажат Enter - перейти к другому полю
    wwDBEdit3.SetFocus;
  end;
end;

procedure TForm_list_kart.Button2Click(Sender: TObject);
Var vol: Double;
  ret: Integer;
begin
  // х.в.
  if wwDBEdit1.Text <> '' then
    vol:=StrToFloat(wwDBEdit1.Text)
  else
    vol:=0;
  if vol <> 0 then
  begin
    ret:=DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.p_meter.ins_vol_meter', [null, OD_list_kart.FieldByName('lsk').AsString,
        '011', vol, null, 0]);
    if ret = 0 then
    begin
      DataModule1.OraclePackage1.Session.Commit;
    end
    else
    begin
      msg2('Попытка передать объем по закрытому счетчику Х.В.!','Внимание!', MB_OK+MB_ICONERROR);
      Exit;
    end;
  end;

  // г.в.
  if wwDBEdit2.Text <> '' then
    vol:=StrToFloat(wwDBEdit2.Text)
  else
    vol:=0;
  if vol <> 0 then
  begin
    ret:=DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.p_meter.ins_vol_meter', [null, OD_list_kart.FieldByName('lsk').AsString,
        '015', vol, null, 0]);
    if ret = 0 then
    begin
      DataModule1.OraclePackage1.Session.Commit;
    end
    else
    begin
      msg2('Попытка передать объем по закрытому счетчику Г.В.!','Внимание!', MB_OK+MB_ICONERROR);
      Exit;
    end;
  end;

  // эл.эн.
  if wwDBEdit3.Text <> '' then
    vol:=StrToFloat(wwDBEdit3.Text)
  else
    vol:=0;
  if vol <> 0 then
  begin
    ret:=DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.p_meter.ins_vol_meter', [null, OD_list_kart.FieldByName('lsk').AsString,
        '038', vol, null, 0]);
    if ret = 0 then
    begin
      DataModule1.OraclePackage1.Session.Commit;
    end
    else
    begin
      msg2('Попытка передать объем по закрытому счетчику Эл.эн.!','Внимание!', MB_OK+MB_ICONERROR);
      Exit;
    end;
  end;
  // занулить объем
  wwDBEdit1.Text:='';
  wwDBEdit2.Text:='';
  wwDBEdit3.Text:='';

  // обновить запись
  OD_list_kart.RefreshRecord;
  OD_list_kart.Next;
  wwDBEdit1.SetFocus;
end;

procedure TForm_list_kart.wwDBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
    // нажат Enter - перейти к другому полю
    Button2.SetFocus;
  end;
end;

procedure TForm_list_kart.BitBtn2Click(Sender: TObject);
begin
  if FF('Form_sch_history', 1) = 0 then
  begin
    Application.CreateForm(TForm_sch_history, Form_sch_history);
  end;
  Form_sch_history.setKlsk(Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger, '');
  Form_sch_history.setTp(0);
end;

end.
