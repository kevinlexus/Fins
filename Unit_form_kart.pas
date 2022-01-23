unit Unit_form_kart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, OracleData, Oracle, 
 ExtCtrls, Grids, Buttons, 
  ComCtrls, Utils, 
   frxClass, frxDBSet,
Menus, cxGraphics,
  cxControls,
  dxStatusBar,

  cxContainer,
  cxEdit, cxCheckBox, cxDBEdit, cxClasses, cxPropertiesStore, cxTextEdit,

  cxNavigator, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxDBNavigator,

  cxCustomData,
  cxFilter, cxDBData, cxDBLookupComboBox,

  cxMaskEdit, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxData,
  cxDataStorage, cxCalendar, dxBarBuiltInMenu, cxPC, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit;

type
  TForm_kart = class(TForm)
    DS_spul: TDataSource;
    DS_status: TDataSource;
    OD_kart_pr: TOracleDataSet;
    DS_kart_pr: TDataSource;
    OD_kart_prFIO: TStringField;
    OD_kart_prDAT_PROP: TDateTimeField;
    OD_kart_prN_POL: TStringField;
    OD_kart_prSTATUS: TFloatField;
    OD_charge: TOracleDataSet;
    OD_kart_prDAT_ROG: TDateTimeField;
    OD_kart_prID: TFloatField;
    OD_chargeLSK: TStringField;
    OD_chargeTARIF: TFloatField;
    OD_chargePRIVS: TFloatField;
    OD_chargeSUBSID: TFloatField;
    OD_chargeCHANGES: TFloatField;
    OD_chargeITOGN: TFloatField;
    DS_sprorg: TDataSource;
    OD_chargeorg_name: TStringField;
    OD_kart_prLSK: TStringField;
    DS_psch: TDataSource;
    OD_kart_prRN: TFloatField;
    OD_kart_prPOL: TFloatField;
    OD_chargeCENA: TFloatField;
    OD_chargeNM: TStringField;
    OD_chargeUSL: TStringField;
    DS_usl: TDataSource;
    OD_kart_prRELAT_ID: TFloatField;
    OD_saldo: TOracleDataSet;
    DS_saldo: TDataSource;
    OD_saldoLSK: TStringField;
    OD_saldoMG: TStringField;
    OD_saldoSUMMA: TFloatField;
    Panel2: TPanel;
    Panel4: TPanel;
    DS_reu_trest: TDataSource;
    DS_kfg: TDataSource;
    OD_kart_prSTATUS_DAT: TDateTimeField;
    OD_kart_prSTATUS_CHNG: TDateTimeField;
    DS_sch_el: TDataSource;
    OD_vvod: TOracleDataSet;
    DS_vvod: TDataSource;
    OD_kart_prK_FAM: TStringField;
    OD_kart_prK_IM: TStringField;
    OD_kart_prK_OT: TStringField;
    OD_kart_prFK_DOC_TP: TFloatField;
    OD_kart_prFK_NAC: TFloatField;
    OD_kart_prB_PLACE: TStringField;
    OD_kart_prDOK_C: TStringField;
    OD_kart_prDOK_N: TStringField;
    OD_kart_prDOK_D: TDateTimeField;
    OD_kart_prDOK_V: TStringField;
    DS_distr: TDataSource;
    OD_kart_prDAT_UB: TDateTimeField;
    OD_kart_prFK_FRM_CNTR: TFloatField;
    OD_kart_prFK_FRM_REGN: TFloatField;
    OD_kart_prFK_FRM_DISTR: TFloatField;
    OD_kart_prFRM_TOWN: TStringField;
    OD_kart_prFRM_DAT: TDateTimeField;
    OD_kart_prFRM_ND: TStringField;
    OD_kart_prFRM_KW: TStringField;
    OD_kart_prW_PLACE: TStringField;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBEdit12: TDBEdit;
    Label42: TLabel;
    Label22: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    Label21: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit16: TDBEdit;
    OD_kart_prFK_UB: TFloatField;
    OD_kart_prFK_TO_CNTR: TFloatField;
    OD_kart_prFK_TO_REGN: TFloatField;
    OD_kart_prFK_TO_DISTR: TFloatField;
    OD_kart_prTO_TOWN: TStringField;
    OD_kart_prTO_ND: TStringField;
    OD_kart_prTO_KW: TStringField;
    OD_kart_prFK_CITIZ: TFloatField;
    OD_kart_prFK_FRM_KUL: TStringField;
    OD_kart_prFK_TO_KUL: TStringField;
    OD_kart_prFK_MILIT: TFloatField;
    OD_kart_prFK_MILIT_REGN: TFloatField;
    OD_spr_tarif: TOracleDataSet;
    DS_spr_tarif: TDataSource;
    Label43: TLabel;
    DS_pasp: TDataSource;
    OD_kart_prSTATUS_DATB: TDateTimeField;
    Label47: TLabel;
    OD_states_sch: TOracleDataSet;
    DS_states_sch: TDataSource;
    Label48: TLabel;
    DBEdit18: TDBEdit;
    Label49: TLabel;
    Label50: TLabel;
    Button4: TButton;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    OD_kart_prST_DT1: TDateTimeField;
    OD_kart_prST_DT2: TDateTimeField;
    OD_kart_prST_NAME: TStringField;
    fltfldOD_chargeTP: TFloatField;
    PopupMenu3: TPopupMenu;
    mnu2: TMenuItem;
    OD_houses: TOracleDataSet;
    DS_houses: TDataSource;
    dxStatusBar1: TdxStatusBar;
    OD_kart_prPRIV_PROC: TStringField;
    TabSheet12: TTabSheet;
    cxDBCheckBox1: TcxDBCheckBox;
    cxprprtstr1: TcxPropertiesStore;
    DS_psch2: TDataSource;
    Label54: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label55: TLabel;
    Label24: TLabel;
    Label60: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    OD_chargeREU: TStringField;
    OD_chargeCD_TP: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxDBNavigator1: TcxDBNavigator;
    chk1: TCheckBox;
    OD_chargePSCH: TIntegerField;
    lbl4: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    btn1: TButton;
    OD_eolink: TOracleDataSet;
    DS_eolink: TDataSource;
    Label53: TLabel;
    DBEdit3: TDBEdit;
    mnu1: TMenuItem;
    DS_close_reason: TDataSource;
    OD_states_schID: TFloatField;
    OD_states_schDT1: TDateTimeField;
    OD_states_schDT2: TDateTimeField;
    OD_states_schLSK: TStringField;
    OD_states_schFK_STATUS: TFloatField;
    OD_states_schFK_CLOSE_REASON: TFloatField;
    Button2: TButton;
    Label61: TLabel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label44: TLabel;
    lbl1: TLabel;
    DBEdit_mhw2: TDBEdit;
    DBEdit_mgw2: TDBEdit;
    DBEdit_phw: TDBEdit;
    DBEdit_pgw: TDBEdit;
    DBEdit_pel: TDBEdit;
    DBEdit_mel2: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    dbedtPOT: TDBEdit;
    dbedtMOT: TDBEdit;
    TabSheet4: TTabSheet;
    TabSheet1: TTabSheet;
    GroupBox9: TGroupBox;
    Label39: TLabel;
    GroupBox10: TGroupBox;
    Label41: TLabel;
    TabSheet11: TTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1PSCH_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1CLOSE_REASON: TcxGridDBColumn;
    cxGrid2DBTableView1DT1: TcxGridDBColumn;
    cxGrid2DBTableView1DT2: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    TabSheet10: TTabSheet;
    Label25: TLabel;
    Label27: TLabel;
    Label46: TLabel;
    Label52: TLabel;
    Label56: TLabel;
    Label62: TLabel;
    DBEdit1: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit17: TDBEdit;
    CheckBox1: TCheckBox;
    CheckBox4: TCheckBox;
    DBEdit8: TDBEdit;
    DBEdit20: TDBEdit;
    CheckBox2: TCheckBox;
    DS_doc: TDataSource;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label51: TLabel;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    dbedtENTR: TDBEdit;
    DBEdit19: TDBEdit;
    GroupBox3: TGroupBox;
    OD_kart_prDOK_SNILS: TStringField;
    TabSheet8: TTabSheet;
    GroupBox2: TGroupBox;
    cxDBCheckBox2: TcxDBCheckBox;
    Label63: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    OD_kart_prUSE_GIS_DIVIDE_ELS: TFloatField;
    OD_kart_prDOK_DIV: TStringField;
    OD_kart_prDOK_INN: TStringField;
    OD_kart_prDOK_DEATH_C: TStringField;
    OD_kart_prDOK_DEATH_N: TStringField;
    OD_nabor: TOracleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField5: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1USL: TcxGridDBColumn;
    cxGrid1DBTableView1NM: TcxGridDBColumn;
    cxGrid1DBTableView1VOLUME: TcxGridDBColumn;
    cxGrid1DBTableView1CENA: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES: TcxGridDBColumn;
    cxGrid1DBTableView1ITOGN: TcxGridDBColumn;
    cxGrid1DBTableView1ORG_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1CD_TP: TcxGridDBColumn;
    cxGrid1DBTableView1PSCH: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumnREU: TcxGridDBColumn;
    cxGridDBColumnLSK: TcxGridDBColumn;
    cxGridDBColumnUSL: TcxGridDBColumn;
    cxGridDBColumnNM: TcxGridDBColumn;
    cxGridDBColumnKOEFF: TcxGridDBColumn;
    cxGridDBColumnNORM: TcxGridDBColumn;
    cxGridDBColumnORG: TcxGridDBColumn;
    cxGridDBColumnFK_VVOD: TcxGridDBColumn;
    cxGridDBColumnVOL: TcxGridDBColumn;
    cxGridDBColumnVOL_ADD: TcxGridDBColumn;
    cxGridDBColumnCD_TP: TcxGridDBColumn;
    cxGridDBColumnPSCH: TcxGridDBColumn;
    cxGridDBColumnDT1: TcxGridDBColumn;
    cxGridDBColumnDT2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    DS_charge: TDataSource;
    DS_nabor: TDataSource;
    OD_naborORG: TIntegerField;
    OD_chargeVOLUME: TFloatField;
    OD_chargeUNITS: TStringField;
    cxGrid1DBTableView1UNITS: TcxGridDBColumn;
    chk2: TCheckBox;
    SpeedButton1: TSpeedButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2RN: TcxGridDBColumn;
    cxGridDBTableView2FIO: TcxGridDBColumn;
    cxGridDBTableView2DAT_PROP: TcxGridDBColumn;
    cxGridDBTableView2DAT_UB: TcxGridDBColumn;
    cxGridDBTableView2ST_DT1: TcxGridDBColumn;
    cxGridDBTableView2ST_DT2: TcxGridDBColumn;
    cxGridDBTableView2STATUS: TcxGridDBColumn;
    cxGridDBTableView2USE_GIS_DIVIDE_ELS: TcxGridDBColumn;
    cxGridDBTableView2PROC_PRIV: TcxGridDBColumn;
    cxdbtxEdit4OPL: TcxDBTextEdit;
    cxdbtxEdit6PPL: TcxDBTextEdit;
    cxdbtxEdit1ET: TcxDBTextEdit;
    cbb2STATUS: TcxDBLookupComboBox;
    cbb1FK_DEB_ORG: TcxDBLookupComboBox;
    cbb1KUL: TcxDBLookupComboBox;
    cbb12HOUSE_ID: TcxDBLookupComboBox;
    cbb4FK_DISTR: TcxDBLookupComboBox;
    cbb2KFG: TcxDBLookupComboBox;
    cbb9REU: TcxDBLookupComboBox;
    cxdbdtdtPN_DT: TcxDBDateEdit;
    cbb5FK_PASP_ORG: TcxDBLookupComboBox;
    cxtxtKw2: TcxTextEdit;
    cxdbdtdt3LAW_DOC_DT: TcxDBDateEdit;
    cxdbdtdt4PRVT_DOC_DT: TcxDBDateEdit;
    cxdbchckbxCPN: TcxDBCheckBox;
    cxdbchckbxKRAN1: TcxDBCheckBox;
    cxdbchckbxKAN_SCH: TcxDBCheckBox;
    cxchckbx3: TcxCheckBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3SUMMA: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_kartAfterPost(DataSet: TDataSet);
    procedure OD_kart_prSTATUSValidate(Sender: TField);
    procedure Button2Click(Sender: TObject);
    procedure saveOrRollbackKart(ask_: Integer; isCommit: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure setAllowEdit(admin_: Integer);
    procedure refresh_kart;
    procedure recalc_kart;
    procedure state_arch2(mgold_: string);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure OD_kart_prAfterScroll(DataSet: TDataSet);
    procedure DBEdit_melKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mhwKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mgwKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_pgwKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mhw2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mgw2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_pelKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mel2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_phwKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CMDialogKey(var Msg: TWMKey); message CM_DIALOGKEY;
    procedure OD_states_schAfterInsert(DataSet: TDataSet);
    procedure OD_states_schBeforePost(DataSet: TDataSet);
    procedure OD_chargeBeforeClose(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure OD_chargeAfterScroll(DataSet: TDataSet);
    procedure mnu1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet4Hide(Sender: TObject);
    procedure dbedtPOTKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtMOTKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure chk1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cxGrid2DBTableView1PSCH_NAMEPropertiesCloseUp(
      Sender: TObject);
    procedure cxGrid2DBTableView1PSCH_NAMEPropertiesInitPopup(
      Sender: TObject);
    procedure check_kart_correct;
    procedure CheckBox2Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxtxtKw2Exit(Sender: TObject);
  private
    tarif_, privs_, subsid_, changes_, itogn_: Double;
    size_, allow_dtv_, id_, action_, fk_tarif_: Integer;
    usl_: string;
    fld_state_: Integer;
  public
    kart_pr_id_, updates_: Integer;
  end;

var
  Form_kart: TForm_kart;

implementation

uses
  Unit_form_kart_pr, Unit_Mainform, Unit_list_kart,
  Unit_new_lsk, DM_module1, Unit_chargepay, Unit_log_actions,
  Unit_set_krt_psch, Unit_change_house_nabor2,
  Unit_sch_history, Unit_reg_sch;

type
  EPasswordInvalid = class(Exception);

{$R *.dfm}

procedure TForm_kart.setAllowEdit(admin_: Integer);
var
  a: Integer;
begin
  // возможность корректировать показание и расход счетчиков отопления
  // (потом закрыть, когда будут счетчики в scott.meter
  if admin_ = 1 then
  begin
    dbedtPOT.Enabled := true;
    dbedtMOT.Enabled := true;
    dbedtPOT.ReadOnly := false;
    dbedtMOT.ReadOnly := false;
  end
  else
  begin
    dbedtPOT.Enabled := false;
    dbedtMOT.Enabled := false;
    dbedtPOT.ReadOnly := True;
    dbedtMOT.ReadOnly := True;
  end;

  //разрешить ли редактирование лицевого счета
  OD_kart_pr.Active := false;
  OD_charge.Active := false;
  OD_nabor.Active := false;

  //Разрешено ли редактировать проживающих (паспортный стол)
  if (admin_ <> 1) and (Form_list_kart.isAllowEdit_k_ = 0) and
    (Form_main.arch_mg_ = '') then
  begin
    OD_kart_pr.readonly := true;
    DBEdit2.Enabled := false;
    DBEdit7.Enabled := false;
    DBEdit14.Enabled := false;
  end
  else if Form_main.arch_mg_ <> '' then
  begin
    OD_kart_pr.readonly := true;
    DBEdit2.Enabled := false;
    DBEdit7.Enabled := false;
    DBEdit14.Enabled := false;
  end
  else
  begin
    OD_kart_pr.readonly := false;
    DBEdit2.Enabled := true;
    DBEdit7.Enabled := true;
    DBEdit14.Enabled := true;
  end;

  //Разрешение на правку карточки
  OD_nabor.readonly := true;

  GroupBox1.Enabled := false;
  cxdbtxEdit4OPL.Enabled := false;
  cxdbtxEdit6PPL.Enabled := false;
  cbb2STATUS.Enabled := false;

  DBEdit5.Enabled := false;
  cxdbtxEdit1ET.Enabled := false;

  TabSheet3.Enabled := false;
  TabSheet4.Enabled := false;
  TabSheet1.Enabled := false;
  cbb5FK_PASP_ORG.Enabled := false;
  Button4.Enabled := false;
  mnu1.Enabled := false;
  mnu2.Enabled := false;
  //не надо запрещать TabSheet10 все контролы и так по доступу сделаны
  //TabSheet10.Enabled:=true;
  //TabSheet10.Enabled:=false;
  TabSheet11.Enabled := false;


  cbb1KUL.Enabled := false;

  cbb12HOUSE_ID.Enabled := false;

  cxtxtKw2.Enabled := false;
  cbb4FK_DISTR.Enabled := false;
  DBEdit12.Enabled := false;

  DBEdit15.Enabled := false;

  DBEdit18.Enabled := false;
  cxdbdtdt3LAW_DOC_DT.Enabled := false;
  cxdbdtdt4PRVT_DOC_DT.Enabled := false;

  DBEdit16.Enabled := false;

  if (admin_ <> 1) and (Form_list_kart.isAllowEdit_ = 0) and (Form_main.arch_mg_
    = '') then
  begin
    Caption := 'Карточка лиц.счета';
  end
  else if Form_main.arch_mg_ <> '' then
  begin
    Caption := 'Карточка лиц.счета - Архив';
  end
  else
  begin
    Caption := 'Карточка лиц.счета';
    OD_nabor.readonly := false;

    GroupBox1.Enabled := true;
    DBEdit5.Enabled := true;
    cxdbtxEdit1ET.Enabled := true;
    Button4.Enabled := true;
    mnu1.Enabled := true;
    mnu2.Enabled := true;
    cbb5FK_PASP_ORG.Enabled := true;

    //площади
    cxdbtxEdit4OPL.Enabled := true;
    cxdbtxEdit6PPL.Enabled := true;
    //статус квартиры
    cbb2STATUS.Enabled := true;

    TabSheet3.Enabled := true;
    TabSheet4.Enabled := true;
    TabSheet1.Enabled := true;
    //не надо запрещать TabSheet10 все контролы и так по доступу сделаны
    //TabSheet10.Enabled:=true;
    TabSheet11.Enabled := true;

    cbb1KUL.Enabled := true;
    cbb12HOUSE_ID.Enabled := true;
    cxtxtKw2.Enabled := true;
    cbb4FK_DISTR.Enabled := true;
    DBEdit12.Enabled := true;

    DBEdit15.Enabled := true;
    DBEdit18.Enabled := true;
    cxdbdtdt3LAW_DOC_DT.Enabled := true;
    cxdbdtdt4PRVT_DOC_DT.Enabled := true;

    DBEdit16.Enabled := true;
  end;

  if (Form_list_kart.isAllowEdit_k2_ = 1) and (Form_main.arch_mg_ = '') then
  begin
    //открыть отдельными привелегиями
    //площади
    GroupBox1.Enabled := true;
    cxdbtxEdit4OPL.Enabled := true;
    cxdbtxEdit6PPL.Enabled := true;
    DBEdit5.Enabled := true;
  end;

  if (Form_list_kart.isAllowEdit_k3_ = 1) and (Form_main.arch_mg_ = '') then
  begin
    //открыть отдельными привелегиями
    //статус квартиры
    GroupBox1.Enabled := true;
    cbb2STATUS.Enabled := true;
  end;

  OD_kart_pr.Active := true;
  OD_charge.Active := true;
  OD_nabor.Active := true;
end;

{procedure TForm_kart.calcFooter;
begin
  tarif_ := 0;
  privs_ := 0;
  subsid_ := 0;
  changes_ := 0;
  itogn_ := 0;

  OD_charge.First;
  while not OD_charge.Eof do
  begin
    tarif_ := tarif_ + OD_charge.FieldByName('tarif').AsFloat;
    privs_ := privs_ + OD_charge.FieldByName('privs').AsFloat;
    subsid_ := subsid_ + OD_charge.FieldByName('subsid').AsFloat;
    changes_ := changes_ + OD_charge.FieldByName('changes').AsFloat;
    itogn_ := itogn_ + OD_charge.FieldByName('itogn').AsFloat;
    OD_charge.Next;
  end;
  if usl_ = '' then
    OD_charge.First
  else
    OD_charge.Locate('USL', usl_, []);
end;
 }
// сохранить или откатить изменения

procedure TForm_kart.saveOrRollbackKart(ask_: Integer; isCommit: Boolean);
begin
  LockControl(cxGrid4, true);
  if isCommit <> true then
  begin
    // отменить изменения, без вопросов
    if not (OD_nabor.State in [dsBrowse]) then
      Form_kart.OD_nabor.Cancel;
    if not (Form_list_kart.OD_kart_detail.State in [dsBrowse]) then
      Form_list_kart.OD_kart_detail.Cancel;
    if not (OD_states_sch.State in [dsBrowse]) then
      Form_kart.OD_states_sch.Cancel;
    if not (Form_list_kart.OD_list_kart.State in [dsBrowse]) then
      Form_list_kart.OD_list_kart.Cancel;
    DataModule1.OracleSession1.CancelUpdates([Form_list_kart.OD_list_kart,
      OD_nabor, OD_states_sch]);
    // отмена изменений, сделанных в пакетах
    DataModule1.OracleSession1.Rollback;
  end
  else
  begin
    // сохранить изменения
    if not (OD_nabor.State in [dsBrowse]) then
      OD_nabor.Post;
    if not (OD_states_sch.State in [dsBrowse]) then
      OD_states_sch.Post;
    if not (Form_list_kart.OD_kart_detail.State in [dsBrowse]) then
      Form_list_kart.OD_kart_detail.Post;
    if not (Form_list_kart.OD_list_kart.State in [dsBrowse]) then
      Form_list_kart.OD_list_kart.Post;

    if (Form_list_kart.OD_list_kart.UpdateStatus in [usInserted, usModified,
      usDeleted])
      or (OD_nabor.UpdatesPending = true)
      or (Form_list_kart.OD_kart_detail.UpdatesPending = true)
      or (OD_states_sch.UpdatesPending = true) or (updates_ = 1) then
    begin
      if ask_ = 0 then
      begin
        // сохранить без вопросов
        DataModule1.OracleSession1.ApplyUpdates([Form_list_kart.OD_list_kart,
          Form_list_kart.OD_kart_detail,
            OD_nabor, OD_states_sch], true);
        check_kart_correct;
        // подтверждение изменений, сделанных в пакетах
        DataModule1.OracleSession1.Commit;
      end
      else if (ask_ = 1) then
      begin
        if (Msg3('Сохранить измения карточки?', 'Подтверждение', MB_ICONQUESTION
          +
          MB_YESNO) = IDYES) then
        begin
          // сохранить с вопросом
          DataModule1.OracleSession1.ApplyUpdates([Form_list_kart.OD_list_kart,
            Form_list_kart.OD_kart_detail,
              OD_nabor, OD_states_sch], true);
          check_kart_correct;
          //для подтверждения изменений, сделанных в пакетах
          DataModule1.OracleSession1.Commit;
        end
        else
        begin
          // отменить изменения
          if not (OD_nabor.State in [dsBrowse]) then
            OD_nabor.Cancel;
          if not (OD_states_sch.State in [dsBrowse]) then
            OD_states_sch.Cancel;
          if not (Form_list_kart.OD_list_kart.State in [dsBrowse]) then
            Form_list_kart.OD_list_kart.Cancel;
          if not (Form_list_kart.OD_kart_detail.State in [dsBrowse]) then
            Form_list_kart.OD_kart_detail.Cancel;
          DataModule1.OracleSession1.CancelUpdates([Form_list_kart.OD_list_kart,
            Form_list_kart.OD_kart_detail,
              OD_nabor, OD_states_sch]);
          // отмена изменений, сделанных в пакетах
          DataModule1.OracleSession1.Rollback;
        end;
      end;
    end;
  end;

  //Проверить можно ли теперь править некоторые поля, например MHW
  Form_list_kart.setAllowEdit_list;

  //  Form_list_kart.setAllowEdit_kart; ### вернуть 

  //обновить поля, отражающие статусы л/c
  refresh_kart;
  //  calcFooter;

    //сброс признака наличия обновления
  updates_ := 0;
  LockControl(cxGrid4, false);

end;

// проверка корректности статусов счетчиков, статусов проживающих

procedure TForm_kart.check_kart_correct;
var
  err_: string;
begin
  if getDoublePar(Form_main.paramList, 'SHOW_ALERT1') = 1 then
  begin
    err_ := DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.tst_krt',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 1]);
    if err_ <> '' then
    begin
      dxStatusBar1.Panels[0].Text := err_;
    end
    else
    begin
      dxStatusBar1.Panels[0].Text := '';
    end;
  end
  else
  begin
    dxStatusBar1.Panels[0].Text := '';
  end;
end;

procedure changes_sch_el(var_: Integer);
var
  psch_new: Extended;
  psch_old: Extended;
begin
  with Form_kart do
  begin
    psch_old := Form_list_kart.OD_list_kart.FieldByName('sch_el').asFloat;

    if (psch_old = 0) and (psch_new = 1) then
    begin
      //DBEdit_mel.Enabled := true;
//      DBEdit_mel.Text := '0';
      DBEdit_pel.Enabled := true;
      DBEdit_mel2.Text := '0';
      Form_list_kart.OD_list_kart.FieldByName('mel').asFloat := 0;
    end
    else if (psch_old = 1) and (psch_new = 0) then
    begin
      //      DBEdit_mel.Enabled := false;
      //      DBEdit_mel.Text := '0';
      DBEdit_pel.Enabled := false;
      DBEdit_mel2.Text := '0';

      Form_list_kart.OD_list_kart.FieldByName('mel').asFloat := 0;
    end;
  end;
end;

procedure TForm_kart.refresh_kart;
var
  err_: string;
begin
  //Обновление карточки
//  LockWindowUpdate(handle);
  with Form_kart do
  begin
    cxtxtKw2.text := Form_list_kart.OD_list_kart.FieldByName('n_kw').AsString;
    with OD_vvod do
    begin
      Active := false;
      SetVariable('house_id',
        Form_list_kart.OD_list_kart.FieldByName('house_id').AsInteger);
      Active := true;
    end;

    //Закрытый Л/С
    with Form_list_kart do
    begin
      if (OD_list_kart.FieldByName('parent_lsk').AsString <> '') then
      begin
        Label55.Caption := 'Привязка';
        Label55.ShowHint := True;
      end
      else
      begin
        Label55.Caption := '        ';
        Label55.ShowHint := false;
      end;

      if ((OD_list_kart.FieldByName('psch').AsInteger = 8)
        or (OD_list_kart.FieldByName('psch').AsInteger = 9))
        and (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_MAIN')
          then
      begin
        Label47.Caption := 'Закрыт';
        Label47.Font.Color := clRed;
      end
      else if ((OD_list_kart.FieldByName('psch').AsInteger = 8)
        or (OD_list_kart.FieldByName('psch').AsInteger = 9))
        and (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_ADDIT')
          then
      begin
        Label47.Caption := 'Доп.закрыт';
        Label47.Font.Color := clRed;
      end
      else if ((OD_list_kart.FieldByName('psch').AsInteger = 8)
        or (OD_list_kart.FieldByName('psch').AsInteger = 9))
        and (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_RSO') then
      begin
        Label47.Caption := 'РСО.закрыт';
        Label47.Font.Color := clRed;
      end
      else if (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_MAIN')
        then
      begin
        Label47.Caption := 'Основной';
        Label47.Font.Color := clBlack;
      end
      else if (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_ADDIT')
        then
      begin
        Label47.Caption := 'Дополнит.';
        Label47.Font.Color := clGreen;
      end
      else if (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_RSO')
        then
      begin
        Label47.Caption := 'РСО';
        Label47.Font.Color := clGreen;
      end;
    end;
  end;
end;

procedure TForm_kart.recalc_kart;
var
  cnt_: Integer;
  err_: string;
  l_dummy: Double;
begin
  LockWindowUpdate(handle);

  //Пересчет карточки
  with Form_kart do
  begin
    // рассчитать начисление
    if getDoublePar(Form_main.paramList, 'JAVA_CHARGE') = 1 then
    begin
      // в Java
      l_dummy :=
        DataModule1.OraclePackage1.CallFloatFunction('SCOTT.P_JAVA.GEN',
        [0, null, null, null,
        Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger,
          null, Form_Main.cur_dt, 0, Form_main.javaServer]);
    end
    else
    begin
      // старый вариант (ТСЖ)
      cnt_ :=
        DataModule1.OraclePackage1.CallIntegerFunction('scott.C_CHARGES.gen_charges',
        [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, null, null,
        null, 1, 0]);
    end;

    Form_list_kart.OD_list_kart.RefreshRecord;
    OD_charge.Refresh;
    //    calcFooter;
  end;
  OD_states_sch.Refresh;
//  if FF('Form_det_chrg', 0) = 1 then
//    Form_det_chrg.recalc;
  LockWindowUpdate(0);
end;

procedure TForm_kart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxprprtstr1.StoreTo(True);

  Form_kart.saveOrRollbackKart(1, True);
  Form_list_kart.OD_list_kart.RefreshRecord;

  Form_main.ToolButton20.Visible := false;
  if FF('Form_kart_pr', 0) = 1 then
    Form_kart_pr.Close;
  if FF('Form_new_lsk', 0) = 1 then
    Form_new_lsk.Close;
//  if FF('Form_det_chrg', 0) = 1 then
//    Form_det_chrg.Close;
  Action := caFree;
end;

procedure open_kart_pr;
begin
  with Form_kart do
  begin
    LockWindowUpdate(handle);
    kart_pr_id_ := OD_kart_pr.RecNo;
    Form_kart.saveOrRollbackKart(1, True);
    // save_changes(1);
    if FF('Form_kart_pr', 1) = 0 then
      Application.CreateForm(TForm_kart_pr, Form_kart_pr);
    LockWindowUpdate(0);
  end;
end;

procedure TForm_kart.OD_kartAfterPost(DataSet: TDataSet);
begin
  Form_kart.refresh_kart;
end;

procedure TForm_kart.OD_kart_prSTATUSValidate(Sender: TField);
begin
  if sender.Text = '' then
    raise EPasswordInvalid.Create('Указанный статус не существует!');
end;

procedure TForm_kart.Button2Click(Sender: TObject);
begin
  // отменить изменения, без вопроса
  //cancel_changes(0);
  saveOrRollbackKart(0, False);
end;

procedure TForm_kart.state_arch2(mgold_: string);
begin
  // смена состояний формы

  with Form_kart do
  begin
    if (Form_main.arch_mg_ <> '') and (mgold_ = '') then
    begin // из текущего в архив
      change_alias(OD_kart_pr, 'scott.c_kart_pr',
        '(select * from scott.a_kart_pr2 where ''' + Form_main.arch_mg_ +
        ''' between mgFrom and mgTo)');
      //      change_alias(OD_kart_pr, 'scott.c_lg_docs',
      //        '(select * from scott.a_lg_docs where mg=''' + Form_main.arch_mg_ +
      //        ''')');
      //      change_alias(OD_kart_pr, 'scott.c_lg_pr',
      //        '(select * from scott.a_lg_pr where mg=''' + Form_main.arch_mg_ +
      //        ''')');

      change_alias(OD_vvod, 'scott.c_vvod',
        '(select * from scott.a_vvod where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, 'scott.c_vvod',
        '(select * from scott.a_vvod where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, 'scott.c_charge',
        '(select * from scott.a_charge2 where ''' + Form_main.arch_mg_ +
        ''' between mgfrom and mgto)');
      change_alias(OD_charge, 'scott.c_change',
        '(select * from scott.a_change where mg=''' + Form_main.arch_mg_ +
        ''')');
      change_alias(OD_charge, 'scott.nabor',
        '(select * from scott.a_nabor2 where ''' + Form_main.arch_mg_ +
        ''' between mgfrom and mgto)');
      cxGrid2.Visible := false;
    end
    else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
    begin // из архива в текущее
      change_alias(OD_kart_pr, '(select * from scott.a_kart_pr2 where ''' +
        mgold_ +
        ''' between mgFrom and mgTo)', 'scott.c_kart_pr');
      //      change_alias(OD_kart_pr, '(select * from scott.a_lg_docs where mg=''' +
      //        mgold_ + ''')', 'scott.c_lg_docs');
      //      change_alias(OD_kart_pr, '(select * from scott.a_lg_pr where mg=''' +
      //        mgold_ + ''')', 'scott.c_lg_pr');

      change_alias(OD_vvod, '(select * from scott.a_vvod where mg=''' + mgold_ +
        ''')', 'scott.c_vvod');
      change_alias(OD_charge, '(select * from scott.a_vvod where mg=''' + mgold_
        + ''')', 'scott.c_vvod');
      change_alias(OD_charge, '(select * from scott.a_charge2 where ''' + mgold_
        + ''' between mgfrom and mgto)', 'scott.c_charge');
      change_alias(OD_charge, '(select * from scott.a_change where mg=''' +
        mgold_ + ''')', 'scott.c_change');
      change_alias(OD_charge, '(select * from scott.a_nabor2 where ''' + mgold_
        +
        ''' between mgfrom and mgto)', 'scott.nabor');
      cxGrid2.Visible := true;
    end
    else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
    begin // из архива в архив
      change_alias(OD_kart_pr, '(select * from scott.a_kart_pr2 where ''' +
        mgold_ +
        ''' between mgFrom and mgTo)', '(select * from scott.a_kart_pr2 where '''
        + Form_main.arch_mg_ +
        ''' between mgFrom and mgTo)');
      //      change_alias(OD_kart_pr, '(select * from scott.a_lg_docs where mg=''' +
      //        mgold_ + ''')', '(select * from scott.a_lg_docs where mg=''' +
      //        Form_main.arch_mg_ + ''')');
      //      change_alias(OD_kart_pr, '(select * from scott.a_lg_pr where mg=''' +
      //        mgold_ + ''')', '(select * from scott.a_lg_pr where mg=''' +
      //        Form_main.arch_mg_ + ''')');

      change_alias(OD_vvod, '(select * from scott.a_vvod where mg=''' + mgold_ +
        ''')', '(select * from scott.a_vvod where mg=''' + Form_main.arch_mg_ +
        ''')');
      change_alias(OD_charge, '(select * from scott.a_vvod where mg=''' + mgold_
        + ''')', '(select * from scott.a_vvod where mg=''' + Form_main.arch_mg_
        +
        ''')');
      change_alias(OD_charge, '(select * from scott.a_charge2 where ''' + mgold_
        + ''' between mgfrom and mgto)',
        '(select * from scott.a_charge2 where '''
        + Form_main.arch_mg_ + ''' between mgfrom and mgto)');
      change_alias(OD_charge, '(select * from scott.a_change where mg=''' +
        mgold_ + ''')', '(select * from scott.a_change where mg=''' +
        Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, '(select * from scott.a_nabor2 where ''' + mgold_
        +
        ''' between mgfrom and mgto)', '(select * from scott.a_nabor2 where '''
        +
        Form_main.arch_mg_ + ''' between mgfrom and mgto)');
      cxGrid2.Visible := false;
    end;
  end;
end;

procedure TForm_kart.FormCreate(Sender: TObject);
begin
  // отключить возможность корректировки счетчиков в новой версии
  if getDoublePar(Form_main.paramList, 'VER_METER1') <> 0 then
    cxchckbx3.Enabled := False;

  //Настройки расположения формы
  cxprprtstr1.Active := True;
  cxprprtstr1.RestoreFrom;

  fld_state_ := 0;
  //Включение возможности Админ-опции правки признака счетчика и т.п.
  CheckBox1.Visible := true;
  CheckBox4.Visible := true;
  cxdbdtdtPN_DT.Visible := true;

  if not Form_Main.isAdmin then
  begin
    CheckBox1.Visible := false;
    CheckBox4.Visible := false;
    cxdbdtdtPN_DT.Visible := false;
  end;

  if Form_Main.isEditKlsk then
    CheckBox2.Enabled := True
  else
    CheckBox2.Enabled := false;

  updates_ := 0;

  if not Form_Main.isEditPasp then
    cbb5FK_PASP_ORG.Enabled := false;

  DecimalSeparator := '.';

  cxPageControl1.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 1;
  PageControl2.ActivePageIndex := 0;

  TabSheet6.TabVisible := True;

  cbb9REU.Enabled := false;

  Panel2.Visible := true;
  Form_main.ToolButton20.Visible := true;
  //    Height := PageControl3.Height + Panel2.Height + Panel4.Height + PageControl2.Height + 200;
  OD_spr_tarif.Active := False;
//  Mem_spr_tarif.Active := False;
  OD_vvod.Active := true;
  //OD_status.Active := True;

  // история состояний счета
  OD_states_sch.Active := true;

  // причины закрытия счета
  //OD_close_reason.Active := true;

  Form_kart.Top := 5;
  //  Form_kart.Left := trunc((Form_main.Width - Form_kart.Width) / 2);

  if Form_Main.isKartEd1 then
  begin
    TabSheet1.TabVisible := true;
  end
  else
  begin
    TabSheet1.TabVisible := false;
  end;

  OD_kart_pr.SetVariable('var_', 0);
  OD_kart_pr.Active := true;
  OD_nabor.Active := true;
  OD_houses.Active := true;
  OD_eolink.Active := true;

  OD_charge.SetVariable('k_lsk_id',
    Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger);
  OD_charge.Active := True;
  OD_nabor.SetVariable('k_lsk_id',
    Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger);
  OD_nabor.Active := True;

  SetAllowEdit(0);
  state_arch2('');
  //  calcFooter;
end;

procedure TForm_kart.ToolButton5Click(Sender: TObject);
begin
  if FF('Form_chargepay', 1) = 0 then
    Application.CreateForm(TForm_chargepay, Form_chargepay);
end;

procedure TForm_kart.ToolButton6Click(Sender: TObject);
begin
  if FF('Form_chargepay', 1) = 0 then
    Application.CreateForm(TForm_chargepay, Form_chargepay);

end;

procedure TForm_kart.OD_kart_prAfterScroll(DataSet: TDataSet);
begin
  if FF('Form_kart_pr', 0) = 1 then
    Form_kart_pr.setFieldsDokDeath(False, True);
end;

procedure TForm_kart.DBEdit_melKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.DBEdit_mhwKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.DBEdit_mgwKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
end;


procedure TForm_kart.DBEdit_pgwKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
end;

procedure TForm_kart.DBEdit_mhw2KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
end;

procedure TForm_kart.DBEdit_mgw2KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
end;

procedure TForm_kart.DBEdit_pelKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
  {
    if Key = #13 then
    begin
      if Button2.Enabled =True then
        Button2.SetFocus;
    end;
   }
end;

procedure TForm_kart.DBEdit_mel2KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
  {
    if Key = #13 then
    begin
      if Button2.Enabled =True then
        Button2.SetFocus;
    end;}
end;


procedure TForm_kart.DBEdit_phwKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
end;

procedure TForm_kart.BitBtn1Click(Sender: TObject);
begin
  ShowMessage('Обратиться к разработчику, функция отключена');
end;

procedure TForm_kart.BitBtn2Click(Sender: TObject);
begin
  if FF('Form_log_actions', 1) = 0 then
    Application.CreateForm(TForm_log_actions, Form_log_actions);
end;


procedure TForm_kart.CMDialogKey(var Msg: TWMKey);
begin
  // Замена кода TAB на Enter
  if not (ActiveControl is TButton) then
  begin
    if Msg.Charcode = 13 then
      Msg.Charcode := 9;
  end;
  inherited;
end;


procedure TForm_kart.OD_states_schAfterInsert(DataSet: TDataSet);
var
  R: TRect;
  HW: THintWindow;
begin
  OD_states_sch.FieldByName('LSK').AsString :=
    Form_list_kart.OD_list_kart.FieldByName('LSK').AsString;

end;

procedure TForm_kart.OD_states_schBeforePost(DataSet: TDataSet);
begin
  if OD_states_sch.FieldByName('FK_STATUS').AsString = '' then
  begin
    msg2('Поле статуса должно быть заполнено!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
    abort;
  end;

  if ((OD_states_sch.FieldByName('FK_STATUS').AsInteger = 8) or
    (OD_states_sch.FieldByName('FK_STATUS').AsInteger = 9))
    and (OD_states_sch.FieldByName('FK_CLOSE_REASON').AsInteger = 0) then
  begin
    Application.MessageBox('При закрытии лицевого счета должна быть заполнена '
      +
      'причина закрытия в колонке "Закрыт.сч.ГИС ЖКХ"!',
      'Внимание!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    abort;
  end;

end;


procedure TForm_kart.OD_chargeBeforeClose(DataSet: TDataSet);
begin
  usl_ := OD_charge.FieldByName('usl').AsString;
end;


procedure TForm_kart.CheckBox1Click(Sender: TObject);
begin
  //Включение Admin-режима (возможности правки счетчиков, ФИО, в закрытых карточках)
  if CheckBox1.Checked = True then
    setAllowEdit(1)
  else
    setAllowEdit(0);

end;


procedure TForm_kart.Button4Click(Sender: TObject);
begin
  Application.CreateForm(TForm_set_krt_psch, Form_set_krt_psch);
  if Form_set_krt_psch.ShowModal = mrOk then
  begin
    Update;
    saveOrRollbackKart(1, True);
  end;
end;

procedure TForm_kart.CheckBox4Click(Sender: TObject);
var
  err_: string;
begin
  str_ := '';
  if msg3('Удалить данный лицевой счет?', 'Внимание!', MB_YESNO +
    MB_ICONQUESTION) = IDYES then
  begin
    str_ := DataModule1.OraclePackage1.CallStringFunction('scott.utils.del_lsk',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]);
    if str_ <> '' then
    begin
      msg2(str_, 'Внимание!', MB_OK + MB_ICONSTOP)
    end
    else
    begin
      msg2('Лицевой счет успешно удален!', 'Внимание!', MB_OK +
        MB_ICONINFORMATION);
      Form_list_kart.OD_list_kart.Active := False;
      Form_list_kart.OD_list_kart.Active := True;
    end;
  end;
end;

procedure TForm_kart.N3Click(Sender: TObject);
begin
  if N4.Checked = True then
  begin
    N3.Checked := False;
    OD_kart_pr.Active := false;
    OD_kart_pr.SetVariable('var_', 0);
    OD_kart_pr.Active := true;
  end
  else
  begin
    N4.Checked := False;
    OD_kart_pr.Active := false;
    OD_kart_pr.SetVariable('var_', 1);
    OD_kart_pr.Active := true;
  end;

end;

procedure TForm_kart.N4Click(Sender: TObject);
begin
  if N4.Checked = True then
  begin
    N3.Checked := False;
    OD_kart_pr.Active := false;
    OD_kart_pr.SetVariable('var_', 0);
    OD_kart_pr.Active := true;
  end
  else
  begin
    N4.Checked := False;
    OD_kart_pr.Active := false;
    OD_kart_pr.SetVariable('var_', 1);
    OD_kart_pr.Active := true;
  end;

end;

procedure TForm_kart.OD_chargeAfterScroll(DataSet: TDataSet);
begin
  if (Form_list_kart.isAllowEdit_ = 1) and (Form_main.arch_mg_ = '') then
  begin
    OD_nabor.readonly := False;
  end
  else
  begin
    OD_nabor.readonly := True;
  end;

end;

procedure TForm_kart.mnu1Click(Sender: TObject);
begin
  if FF('Form_change_house_nabor2', 1) = 0 then
    Application.CreateForm(TForm_change_house_nabor2, Form_change_house_nabor2);
  Form_change_house_nabor2.setState(4,
    Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 1, 0);
  if Form_change_house_nabor2.ShowModal = mrOk then
  begin
    OD_charge.Refresh;
    OD_nabor.Refresh;
  end;
end;

procedure TForm_kart.mnu2Click(Sender: TObject);
begin
  if (msg3('Удалить в лиц.сч:' +
    OD_nabor.FieldByName('LSK').AsString + ' услугу: ' +
    OD_nabor.FieldByName('NM').AsString + ' по орг: ' +
    OD_nabor.FieldByName('ORG').AsString + ' с коэфф:' +
    OD_nabor.FieldByName('KOEFF').AsString + ' и норм:' +
    OD_nabor.FieldByName('NORM').AsString + '?', 'Подверждение', MB_YESNO +
    MB_ICONQUESTION) = IDYES) then
  begin
    DataModule1.OraclePackage1.CallProcedure('scott.p_houses.house_del_usl',
      [4, OD_nabor.FieldByName('LSK').AsString, null, null,
      null,
        OD_nabor.FieldByName('USL').AsString,
        OD_nabor.FieldByName('ORG').AsInteger,
        OD_nabor.FieldByName('KOEFF').AsFloat,
        OD_nabor.FieldByName('NORM').AsFloat, 1,
        OD_nabor.FieldByName('DT1').AsDateTime,
        OD_nabor.FieldByName('DT2').AsDateTime
        ]);
    updates_ := 1;
    OD_nabor.Refresh;
  end;
end;

procedure TForm_kart.BitBtn3Click(Sender: TObject);
begin
  if FF('Form_sch_history', 1) = 0 then
    Application.CreateForm(TForm_sch_history, Form_sch_history);
  Form_sch_history.setKlsk(Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger, '');
  Form_sch_history.setTp(0);
end;

procedure TForm_kart.BitBtn4Click(Sender: TObject);
begin 
  // вызов формы по счетчикам

  // сохранить форму карточки
  if FF('Form_kart', 0) = 1 then
    saveOrRollbackKart(1, True);

  if FF('Form_sch_history', 1) = 0 then
  begin
    Application.CreateForm(TForm_sch_history, Form_sch_history);
  end;
  Form_sch_history.setKlsk(Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger, '');
  Form_sch_history.setTp(0);
end;

procedure TForm_kart.BitBtn6Click(Sender: TObject);
begin
  if FF('Form_reg_sch', 1) = 0 then
    Application.CreateForm(TForm_reg_sch, Form_reg_sch);
end;

procedure TForm_kart.BitBtn5Click(Sender: TObject);
begin
  if FF('Form_reg_sch', 1) = 0 then
    Application.CreateForm(TForm_reg_sch, Form_reg_sch);
end;


procedure TForm_kart.TabSheet4Show(Sender: TObject);
begin
  OD_saldo.Active := true;

end;

procedure TForm_kart.TabSheet4Hide(Sender: TObject);
begin
  OD_saldo.Active := false;

end;

procedure TForm_kart.dbedtPOTKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.dbedtMOTKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col: TcxGridDBColumn;
  s, psch: string;
begin
  // цвет записи лиц.счета
  col := cxGrid1DBTableView1.GetColumnByFieldName('CD_TP');
  s := AViewInfo.GridRecord.DisplayTexts[col.Index];
  col := cxGrid1DBTableView1.GetColumnByFieldName('PSCH');
  psch := AViewInfo.GridRecord.DisplayTexts[col.Index];

  if (psch = '8') or (psch = '9') then
  begin
    if AViewInfo.Item.Index <= 3 then
      ACanvas.Brush.Color := clSilver
  end
  else if (s = 'LSK_TP_RSO') or (s = 'LSK_TP_ADDIT') then
  begin
    if AViewInfo.Item.Index <= 3 then
      ACanvas.Brush.Color := clMoneyGreen;
  end;

end;

procedure TForm_kart.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
  begin
    OD_charge.SetVariable('p_closed', 1);
    OD_nabor.SetVariable('p_closed', 1);
  end
  else
  begin
    OD_charge.SetVariable('p_closed', 0);
    OD_nabor.SetVariable('p_closed', 0);
  end;
  OD_charge.Active := false;
  OD_charge.Active := true;
  OD_nabor.Active := false;
  OD_nabor.Active := true;

end;

procedure TForm_kart.btn1Click(Sender: TObject);
begin
  // сохранить изменения, без вопроса
  saveOrRollbackKart(0, True);
  recalc_kart;
end;

procedure TForm_kart.N1Click(Sender: TObject);
begin
  if FF('Form_change_house_nabor2', 1) = 0 then
    Application.CreateForm(TForm_change_house_nabor2, Form_change_house_nabor2);
  Form_change_house_nabor2.setState(4,
    Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 1, 0);
  if Form_change_house_nabor2.ShowModal = mrOk then
  begin
    OD_charge.Refresh;
    OD_nabor.Refresh;
  end;
end;


procedure TForm_kart.cxGrid2DBTableView1PSCH_NAMEPropertiesCloseUp(
  Sender: TObject);
begin
  TcxLookupComboBox(Sender).Properties.Grid.DataController.
    Filter.Root.Clear();
end;

procedure TForm_kart.cxGrid2DBTableView1PSCH_NAMEPropertiesInitPopup(
  Sender: TObject);
var
  LkupItem: TObject;
begin
  // ограничить выбор LookUp только 0,8,9 статусами
  LkupItem := TcxLookupComboBox(Sender).Properties.
    Grid.DataController.GetItemByFieldName('ID');
  TcxLookupComboBox(Sender).Properties.Grid.DataController.
    Filter.Active := true;
  TcxLookupComboBox(Sender).Properties.Grid.DataController.
    Filter.Root.Clear();
  TcxLookupComboBox(Sender).Properties.Grid.DataController.
    Filter.Root.BoolOperatorKind := fboOr;
  TcxLookupComboBox(Sender).Properties.Grid.DataController.
    Filter.Root.AddItem(LkupItem, foEqual, 0, '');
  TcxLookupComboBox(Sender).Properties.Grid.DataController.
    Filter.Root.AddItem(LkupItem, foEqual, 8, '');
  TcxLookupComboBox(Sender).Properties.Grid.DataController.
    Filter.Root.AddItem(LkupItem, foEqual, 9, '');
end;

procedure TForm_kart.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then
  begin
    Form_list_kart.OD_list_kartFK_KLSK_OBJ.ReadOnly := False;
    Form_list_kart.OD_list_kartK_LSK_ID.ReadOnly := False;
    Form_list_kart.OD_list_kartFK_KLSK_PREMISE.ReadOnly := False;
    Form_list_kart.OD_list_kartHOUSE_ID.ReadOnly := False;
  end
  else
  begin
    Form_list_kart.OD_list_kartFK_KLSK_OBJ.ReadOnly := True;
    Form_list_kart.OD_list_kartK_LSK_ID.ReadOnly := True;
    Form_list_kart.OD_list_kartFK_KLSK_PREMISE.ReadOnly := True;
    Form_list_kart.OD_list_kartHOUSE_ID.ReadOnly := True;
  end;
end;

procedure TForm_kart.chk2Click(Sender: TObject);
begin
  if chk2.Checked then
    cxGrid1DBTableView1.OptionsView.GroupByBox := True
  else
    cxGrid1DBTableView1.OptionsView.GroupByBox := False;

end;

procedure TForm_kart.SpeedButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Установить собственника автоматически?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    DataModule1.OraclePackage1.CallProcedure('scott.utils.set_krt_adm',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]);
    Form_list_kart.OD_list_kart.RefreshRecord;

  end;

end;

procedure TForm_kart.cxGridDBTableView2DblClick(Sender: TObject);
begin
  open_kart_pr;

end;

procedure TForm_kart.cxGridDBTableView2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    open_kart_pr;
end;

procedure TForm_kart.cxtxtKw2Exit(Sender: TObject);
begin
  Form_list_kart.OD_list_kart.Edit;
  Form_list_kart.OD_list_kart.FieldByName('kw').AsString := cxtxtKw2.text;
end;

end.

