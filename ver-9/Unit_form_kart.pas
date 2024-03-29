unit Unit_form_kart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, OracleData, Oracle, DBCtrlsEh,
  DBLookupEh, ExtCtrls, Grids, DBGridEh, Buttons, wwcheckbox, wwSpeedButton,
  wwDBNavigator, wwclearpanel, wwdbedit, ComCtrls, Utils, wwfltdlg, Wwdbigrd,
  Wwdbgrid, GridsEh, wwdbdatetimepicker, wwdblook, Wwdotdot, frxClass, frxDBSet,
  MemTableDataEh, MemTableEh, DataDriverEh, Menus, DBGrids, Wwdbcomb, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter, dxStatusBar, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxContainer,
  cxEdit, cxCheckBox, cxDBEdit, cxClasses, cxPropertiesStore, cxTextEdit;

type
  TForm_kart = class(TForm)
    OD_spul: TOracleDataSet;
    DS_spul: TDataSource;
    OD_status: TOracleDataSet;
    DS_status: TDataSource;
    OD_kart_pr: TOracleDataSet;
    DS_kart_pr: TDataSource;
    OD_kart_prFIO: TStringField;
    OD_kart_prDAT_PROP: TDateTimeField;
    OD_kart_prN_POL: TStringField;
    OD_kart_prSTATUS: TFloatField;
    OD_charge: TOracleDataSet;
    DS_charge: TDataSource;
    OD_kart_prDAT_ROG: TDateTimeField;
    OD_kart_prID: TFloatField;
    OD_chargeLSK: TStringField;
    OD_chargeTARIF: TFloatField;
    OD_chargePRIVS: TFloatField;
    OD_chargeSUBSID: TFloatField;
    OD_chargeCHANGES: TFloatField;
    OD_chargeITOGN: TFloatField;
    OD_chargeKOEFF: TFloatField;
    OD_chargeNORM: TFloatField;
    OD_sprorg: TOracleDataSet;
    DS_sprorg: TDataSource;
    OD_chargeorg_name: TStringField;
    OD_kart_prLSK: TStringField;
    OD_psch: TOracleDataSet;
    DS_psch: TDataSource;
    OD_kart_prRN: TFloatField;
    OD_kart_prPOL: TFloatField;
    OD_chargeCENA: TFloatField;
    OD_chargeNM: TStringField;
    OD_chargeUSL: TStringField;
    OD_usl: TOracleDataSet;
    DS_usl: TDataSource;
    OD_uslUSL: TStringField;
    OD_uslNM: TStringField;
    OD_kart_prRELAT_ID: TFloatField;
    OD_saldo: TOracleDataSet;
    DS_saldo: TDataSource;
    OD_saldoLSK: TStringField;
    OD_saldoMG: TStringField;
    OD_saldoSUMMA: TFloatField;
    OD_chargeVOLUME: TStringField;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEditEh1: TDBEditEh;
    DBEdit5: TDBEdit;
    Panel4: TPanel;
    OD_s_reu_trest: TOracleDataSet;
    DS_reu_trest: TDataSource;
    OD_s_reu_trestREU: TStringField;
    OD_s_reu_trestNAME_TR: TStringField;
    OD_s_reu_trestNAME_REU: TStringField;
    OD_chargeFK_TARIF: TFloatField;
    OD_tarif: TOracleDataSet;
    DS_tarif: TDataSource;
    OD_tarifID: TFloatField;
    OD_tarifUSL: TStringField;
    OD_tarifNAME: TStringField;
    OD_tarifTARIF_NAME: TStringField;
    OD_chargeTARIF_CENA: TStringField;
    OD_kfg: TOracleDataSet;
    DS_kfg: TDataSource;
    OD_kfgID: TFloatField;
    OD_kfgKOEFF: TFloatField;
    OD_kart_prSTATUS_DAT: TDateTimeField;
    OD_kart_prSTATUS_CHNG: TDateTimeField;
    OD_pschID: TFloatField;
    OD_pschNAME: TStringField;
    OD_sch_el: TOracleDataSet;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DS_sch_el: TDataSource;
    OD_vvod: TOracleDataSet;
    DS_vvod: TDataSource;
    OD_vvodID: TFloatField;
    OD_vvodVVOD_NUM: TFloatField;
    OD_chargeFK_VVOD: TFloatField;
    OD_chargeVVOD_NUM: TFloatField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
    OD_distr: TOracleDataSet;
    DS_distr: TDataSource;
    OD_kart_prDAT_UB: TDateTimeField;
    OD_distrID: TFloatField;
    OD_distrCD: TStringField;
    OD_distrNAME: TStringField;
    OD_distrNM: TStringField;
    OD_distrFK_LISTTP: TFloatField;
    OD_distrNPP: TFloatField;
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
    TabSheet7: TTabSheet;
    wwDBEdit5: TwwDBEdit;
    Label19: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label38: TLabel;
    Label37: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBEdit6: TwwDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit28: TDBEdit;
    Label58: TLabel;
    DBEdit29: TDBEdit;
    Label57: TLabel;
    Label59: TLabel;
    DBEdit30: TDBEdit;
    DBEdit12: TDBEdit;
    Label42: TLabel;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    Label22: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label7: TLabel;
    Label4: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    Label3: TLabel;
    Panel1: TPanel;
    DBLookupComboboxEh9: TDBLookupComboboxEh;
    Label1: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
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
    PageControl3: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    OD_nabor_p: TOracleDataSet;
    DS_nabor_p: TDataSource;
    OD_spr_tarif: TOracleDataSet;
    DS_spr_tarif: TDataSource;
    Mem_spr_tarif: TMemTableEh;
    OD_chargeFK_DVB: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label43: TLabel;
    DBLookupComboboxEh5: TDBLookupComboboxEh;
    DS_pasp: TDataSource;
    OD_pasp: TOracleDataSet;
    OD_paspID: TFloatField;
    OD_paspNAME: TStringField;
    OD_chargeVOL_ADD: TFloatField;
    wwDBComboBox1: TwwDBComboBox;
    Splitter1: TSplitter;
    OD_nabor_pID_DVB: TFloatField;
    OD_nabor_pNAME: TStringField;
    OD_nabor_pFK_TARIF: TFloatField;
    OD_nabor_pCENA: TFloatField;
    OD_nabor_pLSK: TStringField;
    N2: TMenuItem;
    OD_kart_prSTATUS_DATB: TDateTimeField;
    Label47: TLabel;
    OD_states_sch: TOracleDataSet;
    DS_states_sch: TDataSource;
    OD_states_schSTATUS_NM: TStringField;
    OD_states_schDT1: TDateTimeField;
    OD_states_schDT2: TDateTimeField;
    OD_states_schFK_STATUS: TFloatField;
    OD_states_schLSK: TStringField;
    OD_chargeKF_KPR: TFloatField;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    dbedtENTR: TDBEdit;
    DBCheckBoxEh1: TDBCheckBoxEh;
    OD_chargeSCH_AUTO: TFloatField;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label30: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    DBEdit_mhw: TDBEdit;
    DBEdit_mgw: TDBEdit;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    wwCheckBox2: TwwCheckBox;
    wwCheckBox1: TwwCheckBox;
    DBLookupComboboxEh13: TDBLookupComboboxEh;
    DBEdit_mel: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    TabSheet3: TTabSheet;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label44: TLabel;
    Label32: TLabel;
    DBEdit_mhw2: TDBEdit;
    DBEdit_mgw2: TDBEdit;
    DBLookupComboboxEh6: TDBLookupComboboxEh;
    DBEdit_phw: TDBEdit;
    DBEdit_pgw: TDBEdit;
    DBEdit_pel: TDBEdit;
    DBEdit_mel2: TDBEdit;
    wwCheckBox3: TwwCheckBox;
    DBLookupComboboxEh16: TDBLookupComboboxEh;
    wwCheckBox4: TwwCheckBox;
    TabSheet4: TTabSheet;
    Label40: TLabel;
    wwDBGrid1: TwwDBGrid;
    TabSheet1: TTabSheet;
    GroupBox9: TGroupBox;
    Label39: TLabel;
    DBLookupComboboxEh10: TDBLookupComboboxEh;
    GroupBox10: TGroupBox;
    Label41: TLabel;
    DBLookupComboboxEh11: TDBLookupComboboxEh;
    TabSheet11: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwDBLookupCombo4: TwwDBLookupCombo;
    TabSheet10: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit13: TDBEdit;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit17: TDBEdit;
    OD_chargeVOL: TFloatField;
    OD_chargeNRM_KPR: TFloatField;
    CheckBox3: TCheckBox;
    wwDBGrid4: TwwDBGrid;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label48: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    DBEdit18: TDBEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label49: TLabel;
    Label50: TLabel;
    Button1: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    CheckBox4: TCheckBox;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    OD_kart_prST_DT1: TDateTimeField;
    OD_kart_prST_DT2: TDateTimeField;
    OD_kart_prST_NAME: TStringField;
    wwCheckBox5: TwwCheckBox;
    fltfldOD_chargeORG: TFloatField;
    fltfldOD_chargeTP: TFloatField;
    fltfldOD_chargeSPTARN: TFloatField;
    PopupMenu3: TPopupMenu;
    mnu1: TMenuItem;
    mnu2: TMenuItem;
    OD_chargeKF_KPR_SCH: TFloatField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label51: TLabel;
    DBEdit19: TDBEdit;
    Panel5: TPanel;
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
    DSDriver_tarif: TDataSetDriverEh;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    OD_houses: TOracleDataSet;
    DS_houses: TDataSource;
    DBLookupComboboxEh12: TDBLookupComboboxEh;
    Label52: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    dxStatusBar1: TdxStatusBar;
    Label53: TLabel;
    wwDBEdit1: TwwDBEdit;
    OD_chargeNRM_KPR2: TFloatField;
    OD_kart_prPRIV_PROC: TStringField;
    TabSheet12: TTabSheet;
    cxDBCheckBox1: TcxDBCheckBox;
    pnl1: TPanel;
    Button2: TButton;
    Button3: TButton;
    cxprprtstr1: TcxPropertiesStore;
    lbl1: TLabel;
    dbedtPOT: TDBEdit;
    dbedtMOT: TDBEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    lbl2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure OD_kartAfterPost(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure OD_kart_prSTATUSValidate(Sender: TField);
    procedure Button2Click(Sender: TObject);
    procedure save_changes(ask_: Integer);
    procedure wwDBEdit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure setAllowEdit(admin_: Integer);
    procedure refresh_kart;
    procedure recalc_kart;
    procedure state_arch2(mgold_: string);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure DBCheckBoxEh1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure OD_kart_prAfterScroll(DataSet: TDataSet);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_melKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mhwKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mgwKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure wwCheckBox3Click(Sender: TObject);
    procedure DBEdit_pgwKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mhw2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mgw2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_pelKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_mel2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2Columns12EditButtonDown(Sender: TObject; TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure calcFooter;
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure setFields;
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure DBEdit_phwKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure DBLookupComboboxEh13CloseUp(Sender: TObject; Accept: Boolean);
    procedure DBLookupComboboxEh16CloseUp(Sender: TObject; Accept: Boolean);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3NotInList(Sender: TObject; LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure DBGridEh2DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridEh3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBGridEh3DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBGridEh3DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure N1Click(Sender: TObject);
    procedure wwDBLookupCombo3BeforeDropDown(Sender: TObject);
    procedure CMDialogKey(var Msg: TWMKey); message CM_DIALOGKEY;
    procedure wwDBComboBox1DropDown(Sender: TObject);
    procedure GroupBox7Exit(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4Exit(Sender: TObject);
    procedure OD_states_schAfterInsert(DataSet: TDataSet);
    procedure wwNavButton6Click(Sender: TObject);
    procedure OD_states_schBeforePost(DataSet: TDataSet);
    procedure OD_chargeBeforeClose(DataSet: TDataSet);
    procedure OD_chargeAfterOpen(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure wwDBGrid4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure OD_chargeAfterScroll(DataSet: TDataSet);
    procedure mnu1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBLookupComboboxEh12DropDown(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet4Hide(Sender: TObject);
    procedure dbedtPOTKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtMOTKeyPress(Sender: TObject; var Key: Char);
//    procedure change_size;
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
  Unit_form_kart_pr, Unit_form_subsidii, Unit_Mainform, Unit_list_kart,
  Unit_new_lsk, DM_module1, Unit_chargepay, Unit_det_chrg, Unit_log_actions,
  Unit_sel_lsk_contr, Unit_set_krt_psch, Unit_change_house_nabor2,
  Unit_sch_history, Unit_reg_sch;

type
  EPasswordInvalid = class(Exception);

{$R *.dfm}

procedure TForm_kart.setAllowEdit(admin_: Integer);
var
  a: Integer;
begin

  //��������� �� �������������� �������� �����
  OD_kart_pr.Active := false;
  OD_charge.Active := false;

  //��������� �� ������������� ����������� (���������� ����)
  if (admin_ <> 1) and (Form_list_kart.isAllowEdit_k_ = 0) and (Form_main.arch_mg_ = '') then
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


   //���������� �� ������ ��������
  OD_charge.readonly := true;

  GroupBox1.Enabled := false;
  DBEdit4.Enabled := false;
  DBEdit6.Enabled := false;
  DBLookupComboboxEh2.Enabled := false;

  DBEdit5.Enabled := false;
  DBEditEh1.Enabled := false;

  TabSheet2.Enabled := false;
  TabSheet3.Enabled := false;
  TabSheet4.Enabled := false;
  TabSheet1.Enabled := false;
  DBLookupComboboxEh5.Enabled := false;
  Button1.Enabled := false;
  Button4.Enabled := false;
  mnu1.Enabled := false;
  mnu2.Enabled := false;
   //�� ���� ��������� TabSheet10 ��� �������� � ��� �� ������� �������
   //TabSheet10.Enabled:=true;
   //TabSheet10.Enabled:=false;
  TabSheet11.Enabled := false;

  wwDBComboDlg1.Enabled := false;

  DBLookupComboboxEh1.Enabled := false;

//   wwDBEdit1.Enabled:=false;
  DBLookupComboboxEh12.Enabled := false;

  wwDBEdit2.Enabled := false;
  DBLookupComboboxEh4.Enabled := false;
  DBEdit12.Enabled := false;

  DBEdit15.Enabled := false;

  DBEdit18.Enabled := false;
  wwDBDateTimePicker3.Enabled := false;
  wwDBDateTimePicker4.Enabled := false;

  DBEdit16.Enabled := false;
  wwDBEdit6.Enabled := false;
  wwDBEdit7.Enabled := false;
  wwDBDateTimePicker1.Enabled := false;
  wwDBDateTimePicker2.Enabled := false;
  wwDBEdit5.Enabled := false;

   //������ ������ ��������� �� (��� ����� �����)
  N1.Enabled := False;
  N2.Enabled := False;
  allow_dtv_ := 0;

  if (admin_ <> 1) and (Form_list_kart.isAllowEdit_ = 0) and (Form_main.arch_mg_ = '') then
  begin
    Caption := '�������� ��������';
  end
  else if Form_main.arch_mg_ <> '' then
  begin
    Caption := '�������� �������� - �����';
  end
  else
  begin
    Caption := '�������� ��������';
    OD_charge.readonly := false;

    GroupBox1.Enabled := true;
    DBEdit5.Enabled := true;
    DBEditEh1.Enabled := true;
    Button1.Enabled := true;
    Button4.Enabled := true;
    mnu1.Enabled := true;
    mnu2.Enabled := true;
    DBLookupComboboxEh5.Enabled := true;

     //�������
    DBEdit4.Enabled := true;
    DBEdit6.Enabled := true;
     //������ ��������
    DBLookupComboboxEh2.Enabled := true;

    TabSheet2.Enabled := true;
    TabSheet3.Enabled := true;
    TabSheet4.Enabled := true;
    TabSheet1.Enabled := true;
     //�� ���� ��������� TabSheet10 ��� �������� � ��� �� ������� �������
     //TabSheet10.Enabled:=true;
    TabSheet11.Enabled := true;

    wwDBComboDlg1.Enabled := true;
    DBLookupComboboxEh1.Enabled := true;
//     wwDBEdit1.Enabled:=true;
    DBLookupComboboxEh12.Enabled := true;
    wwDBEdit2.Enabled := true;
    DBLookupComboboxEh4.Enabled := true;
    DBEdit12.Enabled := true;

    DBEdit15.Enabled := true;
    DBEdit18.Enabled := true;
    wwDBDateTimePicker3.Enabled := true;
    wwDBDateTimePicker4.Enabled := true;

    DBEdit16.Enabled := true;
    wwDBEdit6.Enabled := true;
    wwDBEdit7.Enabled := true;
    wwDBDateTimePicker1.Enabled := true;
    wwDBDateTimePicker2.Enabled := true;
    wwDBEdit5.Enabled := true;

    //���������� ������ ��������� ��(��� ����� �����)
    N1.Enabled := True;
    N2.Enabled := True;
    allow_dtv_ := 1;
  end;

  if (Form_list_kart.isAllowEdit_k2_ = 1) and (Form_main.arch_mg_ = '') then
  begin
       //������� ���������� ������������
       //�������
    GroupBox1.Enabled := true;
    DBEdit4.Enabled := true;
    DBEdit6.Enabled := true;
    DBEdit5.Enabled := true;
  end;

  if (Form_list_kart.isAllowEdit_k3_ = 1) and (Form_main.arch_mg_ = '') then
  begin
       //������� ���������� ������������
       //������ ��������
    GroupBox1.Enabled := true;
    DBLookupComboboxEh2.Enabled := true;
  end;

  OD_kart_pr.Active := true;
  OD_charge.Active := true;
end;

procedure TForm_kart.calcFooter;
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

  wwDBGrid2.ColumnByName('NM').FooterValue := '�����:';
  wwDBGrid2.ColumnByName('TARIF').FooterValue := FloatToStrF(tarif_, ffFixed, 10, 2);
  wwDBGrid2.ColumnByName('PRIVS').FooterValue := FloatToStrF(privs_, ffFixed, 10, 2);
  wwDBGrid2.ColumnByName('SUBSID').FooterValue := FloatToStrF(subsid_, ffFixed, 10, 2);
  wwDBGrid2.ColumnByName('CHANGES').FooterValue := FloatToStrF(changes_, ffFixed, 10, 2);
  wwDBGrid2.ColumnByName('ITOGN').FooterValue := FloatToStrF(itogn_, ffFixed, 10, 2);
end;

procedure TForm_kart.save_changes(ask_: Integer);
var
  err_: string;
begin
  LockControl(wwDBGrid2, true);
  LockControl(wwDBGrid4, true);
//  LockControl(DBGridEh1, true);
 //���������� ��������
  if not (Form_kart.OD_charge.State in [dsBrowse]) then
    Form_kart.OD_charge.Post;

  if (Form_main.org_var_ = 1) then
  begin
    if not (Form_kart.OD_nabor_p.State in [dsBrowse]) then
      Form_kart.OD_nabor_p.Post;
  end;

  if not (Form_kart.OD_states_sch.State in [dsBrowse]) then
    Form_kart.OD_states_sch.Post;
  if not (Form_list_kart.OD_list_kart.State in [dsBrowse]) then
    Form_list_kart.OD_list_kart.Post;

  if (Form_list_kart.OD_list_kart.UpdateStatus in [usInserted, usModified, usDeleted]) or (Form_kart.OD_charge.UpdatesPending = true) or (Form_kart.OD_nabor_p.UpdatesPending = true) or (Form_kart.OD_states_sch.UpdatesPending = true) or (updates_ = 1) then
  begin

    if ask_ = 0 then //���������� ��� ��������
    begin
      DataModule1.OracleSession1.ApplyUpdates([Form_kart.OD_charge], true);
      DataModule1.OracleSession1.ApplyUpdates([Form_kart.OD_nabor_p], true);
      DataModule1.OracleSession1.ApplyUpdates([Form_kart.OD_states_sch], true);
      DataModule1.OracleSession1.ApplyUpdates([Form_list_kart.OD_list_kart], true);

    //�������� ������������ �������� ���������, �������� �����������
    //� ���������� �������� ���������� ��������
      err_ := DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.tst_krt', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 1]);

    //��� ������������� ���������, ��������� � �������
      DataModule1.OracleSession1.Commit;
      recalc_kart;
    end
    else if ask_ = 2 then //�������� ��� ��������
    begin
      Form_kart.OD_states_sch.CancelUpdates;
      Form_kart.OD_nabor_p.CancelUpdates;
      Form_kart.OD_charge.CancelUpdates;
      Form_list_kart.OD_list_kart.CancelUpdates;

    //��� ������ ���������, ��������� � �������
      DataModule1.OracleSession1.Rollback;

      recalc_kart;
    end
    else if (ask_ = 1) then
    begin
      if (Msg3('��������� ������� ��������?', '�������������', MB_ICONQUESTION + MB_YESNO) = IDYES) then // ��������� � ��������
      begin
      //��� ������������� ���������, ��������� � �������
        DataModule1.OracleSession1.Commit;
        DataModule1.OracleSession1.ApplyUpdates([Form_kart.OD_charge], true);
        DataModule1.OracleSession1.ApplyUpdates([Form_kart.OD_nabor_p], true);
        DataModule1.OracleSession1.ApplyUpdates([Form_kart.OD_states_sch], true);
        DataModule1.OracleSession1.ApplyUpdates([Form_list_kart.OD_list_kart], true);

      //�������� ������������ �������� ���������, �������� �����������
      //� ���������� �������� ���������� ��������
        err_ := DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.tst_krt', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 1]);

        recalc_kart;
      end
      else
      begin
      //��� ������ ���������, ��������� � �������
        DataModule1.OracleSession1.Rollback;

        Form_list_kart.OD_list_kart.CancelUpdates;
        OD_charge.CancelUpdates;
        OD_states_sch.CancelUpdates;
        OD_nabor_p.CancelUpdates;
        recalc_kart;
      end
    end;
  end
  else //�����������, ���� ���� �� ���� ���������
  begin
    if ask_ = 0 then //���������� ��� ��������
    begin
    //�������� ������������ �������� ���������, �������� �����������
    //� ���������� �������� ���������� ��������
      err_ := DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.tst_krt', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 1]);
      recalc_kart;
    end;
  end;

  //��������� ����� �� ������ ������� ��������� ����, �������� MHW
  Form_list_kart.setAllowEdit_list;
  Form_list_kart.setAllowEdit_kart;
  //�������� ����, ���������� ������� �/c
  refresh_kart;

  calcFooter;
  //����� �������� ������� ����������
  updates_ := 0;
  LockControl(wwDBGrid2, false);
  LockControl(wwDBGrid4, false);
//  LockControl(DBGridEh1, false);
end;

procedure changes_sch_el(var_: Integer);
var
  psch_new: Extended;
  psch_old: Extended;
begin
  with Form_kart do
  begin
    if var_ = 0 then
      psch_new := DBLookupComboboxEh13.KeyValue
    else
      psch_new := DBLookupComboboxEh16.KeyValue;

    psch_old := Form_list_kart.OD_list_kart.FieldByName('sch_el').asFloat;

    if (psch_old = 0) and (psch_new = 1) then
    begin
      DBEdit_mel.Enabled := true;
      DBEdit_mel.Text := '0';
      DBEdit_pel.Enabled := true;
      DBEdit_mel2.Text := '0';
      Form_list_kart.OD_list_kart.FieldByName('mel').asFloat := 0;
    end
    else if (psch_old = 1) and (psch_new = 0) then
    begin
      DBEdit_mel.Enabled := false;
      DBEdit_mel.Text := '0';
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
//���������� ��������
  LockWindowUpdate(handle);
  //�������� ������������ �������� ���������, �������� �����������
  //��� ��������� �������� ���������� ��������
  if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param', ['SHOW_ALERT1']) = 1 then
  begin
    err_ := DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.tst_krt', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 0]);
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

  with Form_kart do
  begin
    wwDBEdit2.text := Form_list_kart.OD_list_kart.FieldByName('n_kw').AsString;
//  wwDBEdit1.text:=
//    Form_list_kart.OD_list_kart.FieldByName('n_nd').AsString;
    with OD_vvod do
    begin
      Active := false;
      SetVariable('house_id', Form_list_kart.OD_list_kart.FieldByName('house_id').AsInteger);
    end;

  //�������� �/�
    with Form_list_kart do
    begin
      if ((OD_list_kart.FieldByName('psch').AsInteger = 8) or (OD_list_kart.FieldByName('psch').AsInteger = 9)) and (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_MAIN') then
      begin
        Label47.Caption := '������';
        Label47.Font.Color := clRed;
      end
      else if ((OD_list_kart.FieldByName('psch').AsInteger = 8) or (OD_list_kart.FieldByName('psch').AsInteger = 9)) and (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_ADDIT') then
      begin
        Label47.Caption := '���.������';
        Label47.Font.Color := clRed;
      end
      else if (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_MAIN') then
      begin
        Label47.Caption := '��������';
        Label47.Font.Color := clBlack;
      end
      else if (OD_list_kart.FieldByName('lsk_tp_cd').AsString = 'LSK_TP_ADDIT') then
      begin
        Label47.Caption := '��������.';
        Label47.Font.Color := clGreen;
      end;
    end;

  //��.��. �������
    if DBLookupComboboxEh13.KeyValue = 1 then
    begin
      // �������
      DBEdit_mel.Enabled := true;
      DBEdit_mel2.Enabled := false;
      DBEdit_pel.Enabled := true;
    end
    else
    begin
      // ��������
      DBEdit_mel.Enabled := false;
      DBEdit_mel2.Enabled := false;
      DBEdit_pel.Enabled := false;
    end;

  //�.�. �.�. �������
    if DBLookupComboboxEh3.KeyValue = 0 then
    begin
      DBEdit_mhw.Enabled := false;
      DBEdit_mgw.Enabled := false;
      DBEdit_phw.Enabled := false;
      DBEdit_pgw.Enabled := false;
    end
    else if DBLookupComboboxEh3.KeyValue = 1 then
    begin
      DBEdit_mhw.Enabled := true;
      DBEdit_mgw.Enabled := true;
      DBEdit_phw.Enabled := true;
      DBEdit_pgw.Enabled := true;
    end
    else if DBLookupComboboxEh3.KeyValue = 2 then
    begin
      DBEdit_mhw.Enabled := true;
      DBEdit_mgw.Enabled := false;
      DBEdit_phw.Enabled := true;
      DBEdit_pgw.Enabled := false;
    end
    else if DBLookupComboboxEh3.KeyValue = 3 then
    begin
      DBEdit_mhw.Enabled := false;
      DBEdit_mgw.Enabled := true;
      DBEdit_phw.Enabled := false;
      DBEdit_pgw.Enabled := true;
    end
    else
    begin
      DBEdit_mhw.Enabled := false;
      DBEdit_mgw.Enabled := false;
      DBEdit_phw.Enabled := false;
      DBEdit_pgw.Enabled := false;
    end
  end;

//��������� �� ������� ���� ��������� ��������
  if (DataModule1.OraclePackage1.CallIntegerFunction('scott.INIT.get_is_cnt_sch', [parNone]) = 1) or (DataModule1.OraclePackage1.CallIntegerFunction('scott.INIT.get_is_cnt_sch', [parNone]) = 0){ and   --���� ����� �� (������� ��������� ������ ��������� �� ����� ��?) 
         (DataModule1.OraclePackage1.CallStringFunction
         ('scott.c_obj_par.get_str_param',
             [Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger,
             null,
             'login']) <> '')} then
  begin
    PageControl1.ActivePageIndex := 1;
    TabSheet2.TabVisible := false;
  end
  else
  begin
    PageControl1.ActivePageIndex := 0;
    TabSheet3.TabVisible := false;
  end;

  with OD_houses do
  begin
    Active := false;
    SetVariable('reu', Form_list_kart.OD_list_kart.FieldByName('reu').AsString);
    SetVariable('kul', OD_spul.FieldByName('id').AsString);
    Active := true;
  end;

  LockWindowUpdate(0);
end;

procedure TForm_kart.recalc_kart;
var
  cnt_: Integer;
  err_: string;
begin
  LockWindowUpdate(handle);

  //�������� ��������
  with Form_kart do
  begin
     //����������� ����������
//    if (Form_list_kart.isAllowEdit_ <> 0) or (Form_main.arch_mg_ <> '') then
//    begin
    cnt_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.C_CHARGES.gen_charges', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, null, null, null, 1, 0]);
    DataModule1.OraclePackage1.CallProcedure('scott.C_CPENYA.gen_charge_pay', [Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 1]);
    DataModule1.OraclePackage1.CallProcedure('scott.C_CPENYA.gen_penya', [Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 0, 1]);
    Form_list_kart.OD_list_kart.RefreshRecord;
    OD_charge.Refresh;
    calcFooter;
//    end;
  end;
  if (Form_main.org_var_ = 1) then
  begin
    OD_nabor_p.Refresh;
  end;
  OD_states_sch.Refresh;
  if FF('Form_det_chrg', 0) = 1 then
    Form_det_chrg.recalc;
  LockWindowUpdate(0);
end;

procedure TForm_kart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form_main.ToolButton20.Visible := false;
  if FF('Form_subsidii', 0) = 1 then
    Form_subsidii.Close;
  if FF('Form_kart_pr', 0) = 1 then
    Form_kart_pr.Close;
  if FF('Form_new_lsk', 0) = 1 then
    Form_new_lsk.Close;
  if FF('Form_det_chrg', 0) = 1 then
    Form_det_chrg.Close;
  Action := caFree;
end;

procedure open_kart_pr;
begin
  with Form_kart do
  begin
    LockWindowUpdate(handle);
    kart_pr_id_ := OD_kart_pr.RecNo;
    save_changes(1);
//  OD_kart_pr.First;
//  OD_kart_pr.MoveBy(kart_pr_id_-1);
    if FF('Form_kart_pr', 1) = 0 then
      Application.CreateForm(TForm_kart_pr, Form_kart_pr);
    LockWindowUpdate(0);
  end;
end;

procedure TForm_kart.DBGridEh1DblClick(Sender: TObject);
begin
  open_kart_pr;
end;

procedure TForm_kart.OD_kartAfterPost(DataSet: TDataSet);
begin
  Form_kart.refresh_kart;
end;

procedure TForm_kart.Button3Click(Sender: TObject);
begin
  save_changes(1);
  Form_list_kart.OD_list_kart.RefreshRecord;
  Close;
end;

procedure TForm_kart.OD_kart_prSTATUSValidate(Sender: TField);
begin
  if sender.Text = '' then
    raise EPasswordInvalid.Create('��������� ������ �� ����������!');
end;

procedure TForm_kart.Button2Click(Sender: TObject);
begin
  save_changes(0);
end;

procedure TForm_kart.wwDBEdit2Exit(Sender: TObject);
begin
  Form_list_kart.OD_list_kart.Edit;
  Form_list_kart.OD_list_kart.FieldByName('kw').AsString := wwDBEdit2.text;
end;

procedure TForm_kart.state_arch2(mgold_: string);
begin // ����� ��������� �����
  if Form_list_kart.OD_list_kart.GetVariable('var_') = 0 then
  begin
    Form_kart.wwDBNavigator1Last.Visible := False;
    wwDBNavigator1Last.Visible := False;
  end;

  with Form_kart do
  begin
    if (Form_main.arch_mg_ <> '') and (mgold_ = '') then
    begin  // �� �������� � �����
      change_alias(OD_kart_pr, 'scott.c_kart_pr', '(select * from scott.a_kart_pr where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_kart_pr, 'scott.c_lg_docs', '(select * from scott.a_lg_docs where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_kart_pr, 'scott.c_lg_pr', '(select * from scott.a_lg_pr where mg=''' + Form_main.arch_mg_ + ''')');

      change_alias(OD_vvod, 'scott.c_vvod', '(select * from scott.a_vvod where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, 'scott.c_vvod', '(select * from scott.a_vvod where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, 'scott.c_charge', '(select * from scott.a_charge where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, 'scott.c_change', '(select * from scott.a_change where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, 'scott.nabor_progs', '(select * from scott.a_nabor_progs where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, 'scott.nabor', '(select * from scott.a_nabor where mg=''' + Form_main.arch_mg_ + ''')');
      wwDBGrid1.Visible := false;
    end
    else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
    begin  // �� ������ � �������
      change_alias(OD_kart_pr, '(select * from scott.a_kart_pr where mg=''' + mgold_ + ''')', 'scott.c_kart_pr');
      change_alias(OD_kart_pr, '(select * from scott.a_lg_docs where mg=''' + mgold_ + ''')', 'scott.c_lg_docs');
      change_alias(OD_kart_pr, '(select * from scott.a_lg_pr where mg=''' + mgold_ + ''')', 'scott.c_lg_pr');

      change_alias(OD_vvod, '(select * from scott.a_vvod where mg=''' + mgold_ + ''')', 'scott.c_vvod');
      change_alias(OD_charge, '(select * from scott.a_vvod where mg=''' + mgold_ + ''')', 'scott.c_vvod');
      change_alias(OD_charge, '(select * from scott.a_charge where mg=''' + mgold_ + ''')', 'scott.c_charge');
      change_alias(OD_charge, '(select * from scott.a_change where mg=''' + mgold_ + ''')', 'scott.c_change');
      change_alias(OD_charge, '(select * from scott.a_nabor_progs where mg=''' + mgold_ + ''')', 'scott.nabor_progs');
      change_alias(OD_charge, '(select * from scott.a_nabor where mg=''' + mgold_ + ''')', 'scott.nabor');
      wwDBGrid1.Visible := true;
    end
    else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
    begin  // �� ������ � �����
      change_alias(OD_kart_pr, '(select * from scott.a_kart_pr where mg=''' + mgold_ + ''')', '(select * from scott.a_kart_pr where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_kart_pr, '(select * from scott.a_lg_docs where mg=''' + mgold_ + ''')', '(select * from scott.a_lg_docs where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_kart_pr, '(select * from scott.a_lg_pr where mg=''' + mgold_ + ''')', '(select * from scott.a_lg_pr where mg=''' + Form_main.arch_mg_ + ''')');

      change_alias(OD_vvod, '(select * from scott.a_vvod where mg=''' + mgold_ + ''')', '(select * from scott.a_vvod where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, '(select * from scott.a_vvod where mg=''' + mgold_ + ''')', '(select * from scott.a_vvod where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, '(select * from scott.a_charge where mg=''' + mgold_ + ''')', '(select * from scott.a_charge where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, '(select * from scott.a_change where mg=''' + mgold_ + ''')', '(select * from scott.a_change where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, '(select * from scott.a_nabor_progs where mg=''' + mgold_ + ''')', '(select * from scott.a_nabor_progs where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_charge, '(select * from scott.a_nabor where mg=''' + mgold_ + ''')', '(select * from scott.a_nabor where mg=''' + Form_main.arch_mg_ + ''')');
      wwDBGrid1.Visible := false;
    end;
  end;
end;

procedure TForm_kart.FormCreate(Sender: TObject);
begin
  //��������� ������������ �����
  cxprprtstr1.Active:=True;
  cxprprtstr1.RestoreFrom;

  fld_state_ := 0;
  //��������� ����������� �����-����� ������ �������� �������� � �.�.
  CheckBox1.Visible := true;
  CheckBox4.Visible := true;
  DBDateTimeEditEh1.Visible := true;

  if (DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc', ['drx5_�����_������_�_����']) = 0) then
  begin
    CheckBox1.Visible := false;
    CheckBox4.Visible := false;
    DBDateTimeEditEh1.Visible := false;
  end;

{   try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drx5_�����_������_�_����', [parNone]);
   except
     CheckBox1.Visible:=false;
     CheckBox4.Visible:=false;
     DBDateTimeEditEh1.Visible:=false;
   end;}

//  width := 898;
  updates_ := 0;

  if (DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc', ['drx3_������_����_���']) = 0) then
    DBLookupComboboxEh9.Enabled := false;


{   try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drx3_������_����_���', [parNone]);
   except
     DBLookupComboboxEh9.Enabled:=false;
   end;}

  if (DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc', ['drx4_������_����_����_�����']) = 0) then
    DBLookupComboboxEh5.Enabled := false;

{   try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drx4_������_����_����_�����', [parNone]);
   except
     DBLookupComboboxEh5.Enabled:=false;
   end;}

  DecimalSeparator := '.';
  if Form_main.org_var_ = 0 then
  begin
  //����������� ���
    OD_tarif.Active := False;
    PageControl3.ActivePageIndex := 0;
    TabSheet9.TabVisible := False;

    PageControl2.ActivePageIndex := 0;

    TabSheet7.TabVisible := False;
    TabSheet6.TabVisible := True;
    wwDBComboDlg1.ShowButton := False;
    DBLookupComboboxEh9.Enabled := false;
    Panel2.Visible := true;
    Form_main.ToolButton20.Visible := true;
//    Height := PageControl3.Height + Panel2.Height + Panel4.Height + PageControl2.Height + 200;
    OD_spr_tarif.Active := False;
    Mem_spr_tarif.Active := False;
//     OD_vvod.Active:=true;
    OD_status.Active := True;
     //������ ������� ������� ��� �����+
    wwDBEdit1.Visible := false;
    Label53.Visible := false;
  end
  else
  begin
  //����� +
    OD_tarif.Active := True;
    PageControl3.ActivePageIndex := 0;
    TabSheet9.TabVisible := True;

    PageControl2.ActivePageIndex := 0;
    TabSheet5.Caption := '�����';

    TabSheet7.TabVisible := True;
    TabSheet6.TabVisible := False;
    wwDBComboDlg1.ShowButton := true;
    OD_charge.FieldByName('koeff').readonly := true;

    Form_main.ToolButton20.Visible := false;
    Label2.Caption := '������� �';
    Panel2.Visible := false;
//    Height := PageControl3.Height + Panel4.Height + PageControl2.Height + 40;

    OD_spr_tarif.Active := False;
    OD_spr_tarif.SetVariable('usl', '056');
    OD_spr_tarif.Active := true;

    Mem_spr_tarif.Active := False;
    Mem_spr_tarif.Active := true;
    OD_status.Active := False;
  end;

  //������� ��������� ���������
  OD_states_sch.Active := true;

  if (Form_main.org_var_ = 1) then
  begin
    //  �������� ������������� ������ ������ '056'  (23.04.2010)
    OD_nabor_p.Active := False;
    OD_nabor_p.SetVariable('usl', '056');
    OD_nabor_p.Active := true;
  end;

  Form_kart.Top := 5;
//  Form_kart.Left := trunc((Form_main.Width - Form_kart.Width) / 2);

  if DataModule1.OraclePackage1.CallIntegerFunction('scott.INIT.get_kart_ed1', [parNone]) = 1 then
  begin
    TabSheet1.TabVisible := true;
  end
  else
  begin
    TabSheet1.TabVisible := false;
  end;

{  if DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.INIT.get_is_cnt_sch', [parNone]) = 1 then
  begin
    PageControl1.ActivePageIndex:=1;
    TabSheet2.TabVisible:=false;
  end
  else
  begin
    PageControl1.ActivePageIndex:=0;
    TabSheet3.TabVisible:=false;
  end;}

  OD_kart_pr.SetVariable('var_', 0);
  OD_kart_pr.Active := true;
  OD_charge.Active := true;
  OD_s_reu_trest.Active := true;
  OD_spul.Active := true;
  OD_psch.Active := true;
  OD_kfg.Active := true;
  OD_sch_el.Active := true;
  OD_distr.Active := true;
  OD_pasp.Active := true;
  OD_sprorg.Active := true;
  OD_houses.Active := true;

  SetAllowEdit(0);
  state_arch2('');
  calcFooter;
end;

procedure TForm_kart.wwDBEdit1Exit(Sender: TObject);
begin
//  Form_list_kart.OD_list_kart.Edit;
//  Form_list_kart.OD_list_kart.FieldByName('nd').AsString:=wwDBEdit1.text;
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

procedure TForm_kart.DBCheckBoxEh1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  save_changes(1);
  if FF('Form_subsidii', 1) = 0 then
    Application.CreateForm(TForm_subsidii, Form_subsidii);

end;

procedure TForm_kart.OD_kart_prAfterScroll(DataSet: TDataSet);
begin
{ if FF('Form_kart_pr',0)=1 then
  begin
  with Form_kart_pr.OD_lg_pr do
  begin
    SetVariable('C_KART_PR_ID',
      OD_kart_pr.FieldByName('id').AsInteger);
    Active:=False;
    Active:=True;
  end;
  end;}
end;

procedure TForm_kart.wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
end;

procedure TForm_kart.DBEdit_melKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.DBGridEh1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    open_kart_pr;
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

  if Key = #13 then
  begin
    if DBEdit_mgw.Enabled = True then
      DBEdit_mgw.SetFocus
    else if Button2.Enabled = True then
      Button2.SetFocus;

  end;
end;

procedure TForm_kart.DBEdit_mgwKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

  if Key = #13 then
  begin
    if Button2.Enabled = True then
      Button2.SetFocus;
  end;
end;

procedure TForm_kart.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.wwCheckBox3Click(Sender: TObject);
var
  psch_old: Integer;
begin
  //�������� �� ������������� ������� (����� ��������� ������ �������� ���������)
  //save_changes(1);
  
  //��������� ����� �� ������ ������� ��������� ����, �������� MHW
  Form_list_kart.setAllowEdit_list;

  psch_old := Form_list_kart.OD_list_kart.FieldByName('psch').asInteger;

  //��.�.�. �.�.
  if wwCheckBox3.Checked = true then
  begin
    if (psch_old = 1) or (psch_old = 2) then
      DBEdit_mhw2.Enabled := true;
    if (psch_old = 1) or (psch_old = 3) then
      DBEdit_mgw2.Enabled := true;
  end
  else
  begin
    DBEdit_mhw2.Enabled := false;
    DBEdit_mgw2.Enabled := false;
  end;

  psch_old := Form_list_kart.OD_list_kart.FieldByName('sch_el').asInteger;

  //��.��.��
  if wwCheckBox3.Checked = true then
  begin
    if (psch_old = 1) then
      DBEdit_mel2.Enabled := true;
  end
  else
  begin
    DBEdit_mel2.Enabled := false;
  end;

  //��.���������
  if wwCheckBox3.Checked = true then
  begin
    dbedtMOT.Enabled := true;
  end
  else
  begin
    dbedtMOT.Enabled := false;
  end;

end;

procedure TForm_kart.DBEdit_pgwKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
{
  if Key = #13 then
  begin
    if DBEdit_pel.Enabled =True then
        DBEdit_pel.SetFocus
      else
       if Button2.Enabled =True then
         Button2.SetFocus;
  end;}
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
{
  if Key = #13 then
  begin
    if DBEdit_mel.Enabled =True then
       DBEdit_mel.SetFocus
      else
       if Button2.Enabled =True then
         Button2.SetFocus;
  end;}
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

procedure TForm_kart.DBGridEh2Columns12EditButtonDown(Sender: TObject; TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  with OD_tarif do
  begin
    Active := false;
    SetVariable('usl', OD_charge.FieldByName('usl').AsString);
    Active := true;
  end;
end;

procedure TForm_kart.wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_kart.setFields;
begin
  OD_charge.DisableControls;
  wwDBGrid2.Selected.Clear;
  if Form_main.org_var_ = 0 then
  begin
  //���
{    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'TARIF_CENA')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'FK_DVB')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'NRM_KPR')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'SCH_AUTO')].Visible:=false;
 }
    wwDBGrid2.Selected.Add('USL' + #9 + '3' + #9 + '���');
    wwDBGrid2.Selected.Add('NM' + #9 + '15' + #9 + '������');
    wwDBGrid2.Selected.Add('VOLUME' + #9 + '6' + #9 + '�����');
    wwDBGrid2.Selected.Add('CENA' + #9 + '7' + #9 + '��������');
    wwDBGrid2.Selected.Add('TARIF' + #9 + '7' + #9 + '�����');
    wwDBGrid2.Selected.Add('CHANGES' + #9 + '7' + #9 + '���������');

    wwDBGrid2.Selected.Add('ITOGN' + #9 + '7' + #9 + '�����');
    wwDBGrid2.Selected.Add('KOEFF' + #9 + '7' + #9 + '�����');
    wwDBGrid2.Selected.Add('NORM' + #9 + '7' + #9 + '�����');
    wwDBGrid2.Selected.Add('ORG_NAME' + #9 + '10' + #9 + '���������');
    wwDBGrid2.Selected.Add('VVOD_NUM' + #9 + '6' + #9 + '� �����');
    wwDBGrid2.Selected.Add('VOL' + #9 + '7' + #9 + '�����.~����.');
    wwDBGrid2.Selected.Add('VOL_ADD' + #9 + '7' + #9 + '�����.~�����.');
    if fld_state_ = 1 then
    begin
{      wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'NRM_KPR')].Visible:=false;
      wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'SCH_AUTO')].Visible:=false;}
//      wwDBGrid2.Selected.Add('NRM_KPR' + #9 + '7' + #9 + '������.~��� �������');
//      wwDBGrid2.Selected.Add('NRM_KPR2' + #9 + '7' + #9 + '������.~�� ����.');
//      wwDBGrid2.Selected.Add('KF_KPR' + #9 + '7' + #9 + '%������~����');
//      wwDBGrid2.Selected.Add('KF_KPR_SCH' + #9 + '7' + #9 + '%������~�����');
      wwDBGrid2.Selected.Add('SCH_AUTO' + #9 + '7' + #9 + '����~������.');
      wwDBGrid2.Selected.Add('PRIVS' + #9 + '7' + #9 + '������');
      wwDBGrid2.Selected.Add('SUBSID' + #9 + '7' + #9 + '��������');
    end;
  end
  else
  begin
  //������ �����������
    {wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'VOLUME')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'TARIF')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'PRIVS')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'SUBSID')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'KOEFF')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'NORM')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'ORG_NAME')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'VVOD_NUM')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'VOL')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'VOL_ADD')].Visible:=false;
    wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2,'KF_KPR')].Visible:=false;}
    wwDBGrid2.Selected.Add('USL' + #9 + '3' + #9 + '���');
    wwDBGrid2.Selected.Add('NM' + #9 + '10' + #9 + '������');
    wwDBGrid2.Selected.Add('CENA' + #9 + '3' + #9 + '��������');
    wwDBGrid2.Selected.Add('NORM' + #9 + '3' + #9 + '�����');
    wwDBGrid2.Selected.Add('CHANGES' + #9 + '7' + #9 + '���������');
    wwDBGrid2.Selected.Add('ITOGN' + #9 + '8' + #9 + '�����');
    wwDBGrid2.Selected.Add('TARIF_CENA' + #9 + '10' + #9 + '�����');
    wwDBGrid2.Selected.Add('FK_DVB' + #9 + '8' + #9 + '��������');
  end;
  wwDBGrid2.Fields[GetGridColumnByName(wwDBGrid2, 'USL')].readonly := True;
  wwDBGrid2.ApplySelected;
  OD_charge.EnableControls;
end;

procedure TForm_kart.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_charge.FieldByName('FK_TARIF').AsInteger := OD_tarif.FieldByName('ID').AsInteger;
end;

procedure TForm_kart.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_charge.FieldByName('ORG').AsInteger := OD_sprorg.FieldByName('KOD').AsInteger;
end;

procedure TForm_kart.DBEdit_phwKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
{
  if Key = #13 then
  begin
    if DBEdit_pgw.Enabled =True then
      DBEdit_pgw.SetFocus
      else
       if Button2.Enabled =True then
         Button2.SetFocus;
  end;}
end;

procedure TForm_kart.BitBtn1Click(Sender: TObject);
begin
  if FF('Form_det_chrg', 1) = 0 then
    Application.CreateForm(TForm_det_chrg, Form_det_chrg);
  Form_det_chrg.recalc;
end;

procedure TForm_kart.BitBtn2Click(Sender: TObject);
begin
  if FF('Form_log_actions', 1) = 0 then
    Application.CreateForm(TForm_log_actions, Form_log_actions);
end;

procedure TForm_kart.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
  if FF('Form_sel_lsk_contr', 0) = 0 then
    Application.CreateForm(TForm_sel_lsk_contr, Form_sel_lsk_contr);
  Form_sel_lsk_contr.ShowModal;
end;

procedure TForm_kart.DBLookupComboboxEh13CloseUp(Sender: TObject; Accept: Boolean);
begin
  changes_sch_el(0);
end;

procedure TForm_kart.DBLookupComboboxEh16CloseUp(Sender: TObject; Accept: Boolean);
begin
  changes_sch_el(1);
end;

procedure TForm_kart.wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_charge.FieldByName('FK_VVOD').AsInteger := OD_vvod.FieldByName('ID').AsInteger;
end;

procedure TForm_kart.wwDBLookupCombo3NotInList(Sender: TObject; LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
begin
  msg2('������ ���� �� ������!', '������', MB_OK + MB_ICONSTOP);
  OD_charge.FieldByName('FK_VVOD').AsVariant := null;
  wwDBLookupCombo3.Text := '';
end;

procedure TForm_kart.wwDBLookupCombo3Exit(Sender: TObject);
begin
  if not (OD_charge.State in [dsEdit]) then
    OD_charge.Edit;
  if wwDBLookupCombo3.Text = '' then
    OD_charge.FieldByName('FK_VVOD').AsVariant := null
  else if OD_vvod.SearchRecord('VVOD_NUM', StrToInt(wwDBLookupCombo3.Text), [srFromBeginning]) = true then
  begin
    OD_charge.FieldByName('FK_VVOD').AsInteger := OD_vvod.FieldByName('ID').AsInteger;
    if not (OD_charge.State in [dsBrowse]) then
      OD_charge.Post;

  end;
  OD_vvod.Active := False;
end;

procedure TForm_kart.DBGridEh2DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  AGrd: TGridCoord;
begin
  //���������/��������� ������
  if allow_dtv_ = 1 then
  begin
    Accept := True;
  end
  else
  begin
    Accept := False;
    Exit;
  end;

  TDBGridEh(Sender).SetFocus;
  AGrd := TDBGridEh(Sender).MouseCoord(X, Y);
  if AGrd.Y - 1 >= TDBGridEh(Sender).Row then
  begin
    TDBGridEh(Sender).DataSource.DataSet.MoveBy(1);
    TDBGridEh(Sender).Refresh;
    Sleep(10);
  end
  else if AGrd.Y < TDBGridEh(Sender).Row then
  begin
    TDBGridEh(Sender).DataSource.DataSet.MoveBy(-1);
    TDBGridEh(Sender).Refresh;
    Sleep(10);
  end;
end;

procedure TForm_kart.DBGridEh3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //���������� ��������� � ����� ��������
  action_ := 0;

  if Button = mbLeft then
  begin
  //��������� ID ��������� ��� ���������� � ����� ��������
    TDBGridEh(Sender).BeginDrag(False, 10);
    fk_tarif_ := TDBGridEh(Sender).DataSource.DataSet.FieldByName('ID').AsInteger;
  end;
end;

procedure TForm_kart.DBGridEh2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //�����������/�������� ��������� � ������ ��������
  action_ := 1;
  if Button = mbLeft then
  begin
    TDBGridEh(Sender).BeginDrag(False, 10);
    id_ := TDBGridEh(Sender).DataSource.DataSet.FieldByName('fk_tarif').AsInteger;
  end;
end;

procedure TForm_kart.DBGridEh2DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  cnt_: Integer;
  bm: TBookmark;
begin
  if action_ = 0 then
  begin
  //���������� ����� ��������� � �����
  //  �������� ������������� ������ ������ '056'  (23.04.2010)
    cnt_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.P_HOUSES.add_prog', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, fk_tarif_, '056', OD_nabor_p.FieldByName('id_dvb').AsVariant]);
    if cnt_ <> 0 then
      msg2('������ ���������/����� ��� ���������� � ������!', '��������!', MB_ICONASTERISK)
    else
      updates_ := 1;

  end;

  OD_nabor_p.Active := False;
  OD_nabor_p.Active := True;
end;

procedure TForm_kart.DBGridEh3DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  bm: TBookmark;
  cnt_: Integer;
begin
  if action_ = 1 then
  begin
    //�������� ��������� �� ������
    cnt_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.P_HOUSES.del_prog', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, id_]);
    OD_nabor_p.Active := False;
    OD_nabor_p.Active := True;
    updates_ := 1;
  end;
end;

procedure TForm_kart.DBGridEh3DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  //���������/��������� ������
  if allow_dtv_ = 1 then
  begin
    Accept := True;
  end
  else
  begin
    Accept := False;
    Exit;
  end;

end;

procedure TForm_kart.N1Click(Sender: TObject);
var
  cnt_: Integer;
begin
  //�������� ��������� �� ������
  cnt_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.P_HOUSES.del_prog', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, OD_nabor_p.FieldByName('fk_tarif').AsInteger]);
  OD_nabor_p.Active := False;
  OD_nabor_p.Active := True;
  updates_ := 1;
end;

procedure TForm_kart.wwDBLookupCombo3BeforeDropDown(Sender: TObject);
begin
  OD_vvod.Active := True;

end;

procedure TForm_kart.CMDialogKey(var Msg: TWMKey);
begin
// ������ ���� TAB �� Enter
  if not (ActiveControl is TButton) then
  begin
    if Msg.Charcode = 13 then
      Msg.Charcode := 9;
  end;
  inherited;
end;

procedure TForm_kart.wwDBComboBox1DropDown(Sender: TObject);
begin
  PageControl3.ActivePageIndex := 1;

end;

procedure TForm_kart.GroupBox7Exit(Sender: TObject);
begin
  if Button2.Enabled = True then
    Button2.SetFocus;
end;

procedure TForm_kart.N2Click(Sender: TObject);
var
  cnt_: Integer;
begin
  //�������� ��������� �� ������
  cnt_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.P_HOUSES.del_prog', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]);
  OD_nabor_p.Active := False;
  OD_nabor_p.Active := True;
  updates_ := 1;
end;

procedure TForm_kart.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
var
  access_: Integer;
begin
  access_ := 1;
  try
    DataModule1.OraclePackage1.CallProcedure('scott.drx_���������_��������_��', [parNone]);
  except
    access_ := 0;
  end;

  if (OD_psch.FieldByName('ID').AsInteger = 8) and (access_ = 0) then
  begin
    msg2('������ ������� ����� ��������� �������������!', '��������!', MB_OK + MB_ICONSTOP);
    OD_psch.Locate('ID', 0, []);
  end
  else
  begin
    OD_states_sch.FieldByName('FK_STATUS').AsInteger := OD_psch.FieldByName('ID').AsInteger;
  end;
end;

procedure TForm_kart.wwDBLookupCombo4Exit(Sender: TObject);
begin
  if OD_psch.SearchRecord('NAME', wwDBLookupCombo4.Text, [srFromBeginning]) <> true then
  begin
    msg2('������ ������ �� ������!', '������', MB_OK + MB_ICONSTOP);
  end;

end;

procedure TForm_kart.OD_states_schAfterInsert(DataSet: TDataSet);
begin
  OD_states_sch.FieldByName('LSK').AsString := Form_list_kart.OD_list_kart.FieldByName('LSK').AsString;
end;

procedure TForm_kart.wwNavButton6Click(Sender: TObject);
begin
  if msg3('������� ������ ������?', '��������!', MB_YESNO + MB_ICONQUESTION) <> IDYES then
  begin
    Abort;
  end;
end;

procedure TForm_kart.OD_states_schBeforePost(DataSet: TDataSet);
begin
  if OD_states_sch.FieldByName('FK_STATUS').AsString = '' then
  begin
    msg2('���� ������� ������ ���� ���������!', '��������!', MB_OK + MB_ICONSTOP);
    abort;
  end;

end;

{procedure TForm_kart.change_size;
begin
  //�������� ������ �����
  if size_=0 then
  begin
  size_:=1;
  PageControl1.Visible:=false;
  Panel2.Height:=161;
  GroupBox3.Height:=156;
  PageControl3.Height:=373;
  Panel4.Top:=PageControl3.Top+PageControl3.Height;
  end
  else
  begin
  PageControl1.Visible:=true;
  Panel2.Height:=249;
  GroupBox3.Height:=247;
  PageControl3.Height:=280;
  Panel4.Top:=PageControl3.Top+PageControl3.Height;
  size_:=0;
  end;
end;}

procedure TForm_kart.OD_chargeBeforeClose(DataSet: TDataSet);
begin
  usl_ := OD_charge.FieldByName('usl').AsString;
end;

procedure TForm_kart.OD_chargeAfterOpen(DataSet: TDataSet);
begin
  OD_charge.Locate('USL', usl_, []);
  setFields;
end;

procedure TForm_kart.CheckBox1Click(Sender: TObject);
begin
  //��������� Admin-������ (����������� ������ ���������, ���, � �������� ���������)
  if CheckBox1.Checked = True then
    setAllowEdit(1)
  else
    setAllowEdit(0);

end;

procedure TForm_kart.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = True then
  begin
    fld_state_ := 1;
    setFields;
  end
  else
  begin
    fld_state_ := 0;
    setFields;
  end;

end;

procedure TForm_kart.wwDBGrid4DblClick(Sender: TObject);
begin
  open_kart_pr;
end;

procedure TForm_kart.wwDBGrid4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    open_kart_pr;

end;

procedure TForm_kart.Button4Click(Sender: TObject);
begin
  Application.CreateForm(TForm_set_krt_psch, Form_set_krt_psch);
  if Form_set_krt_psch.ShowModal = mrOk then
  begin
    Update;
    save_changes(1);
  end;
end;

procedure TForm_kart.CheckBox4Click(Sender: TObject);
var
  err_: string;
begin
  str_ := '';
  if msg3('������� ������ ������� ����?', '��������!', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    str_ := DataModule1.OraclePackage1.CallStringFunction('scott.utils.del_lsk', [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]);
    if str_ <> '' then
    begin
      msg2(str_, '��������!', MB_OK + MB_ICONSTOP)
    end
    else
    begin
      msg2('������� ���� ������� ������!', '��������!', MB_OK + MB_ICONINFORMATION);
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
      //�� �������, ��� ���.��� ��������� ������� �����. � ����.
    if OD_charge.FieldByName('tp').AsInteger = 1 then
      OD_charge.readonly := True
    else
    begin
      OD_charge.readonly := False;
      if OD_charge.FieldByName('sptarn').AsInteger = 0 then
      begin
        OD_chargeNORM.readonly := True;
        OD_chargeKOEFF.readonly := False;
      end
      else if OD_charge.FieldByName('sptarn').AsInteger = 1 then
      begin
        OD_chargeNORM.readonly := False;
        OD_chargeKOEFF.readonly := True;
      end
      else
      begin
        OD_chargeNORM.readonly := False;
        OD_chargeKOEFF.readonly := False;
      end;
    end;
  end
  else
  begin
    OD_charge.readonly := True
  end;

end;

procedure TForm_kart.mnu1Click(Sender: TObject);
begin
  if FF('Form_change_house_nabor2', 1) = 0 then
    Application.CreateForm(TForm_change_house_nabor2, Form_change_house_nabor2);
  Form_change_house_nabor2.setState(4, Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 1, 0);
  if Form_change_house_nabor2.ShowModal = mrOk then
  begin
    OD_charge.Refresh;
  end;
end;

procedure TForm_kart.mnu2Click(Sender: TObject);
begin
  if (msg3('������� � ������ �/� ������: ' + OD_charge.FieldByName('NM').AsString + ' �� ���: ' + OD_charge.FieldByName('ORG_NAME').AsString + ' � �����:' + OD_charge.FieldByName('KOEFF').AsString + ' � ����:' + OD_charge.FieldByName('NORM').AsString + '?', '������������', MB_YESNO + MB_ICONQUESTION) = IDYES) then
  begin
    DataModule1.OraclePackage1.CallProcedure('scott.p_houses.house_del_usl', [4, Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, null, null, null, OD_charge.FieldByName('usl').AsString, OD_charge.FieldByName('org').AsInteger, OD_charge.FieldByName('koeff').AsFloat, OD_charge.FieldByName('norm').AsFloat, 1]);
    Form_kart.updates_ := 1;
    OD_charge.Refresh;
  end;
end;

procedure TForm_kart.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (OD_charge.FieldByName('tp').AsInteger = 2) then
  begin
    ABrush.Color := clSkyBlue;
    AFont.Color := clBlack;
  end;
end;

procedure TForm_kart.BitBtn3Click(Sender: TObject);
begin
  if FF('Form_sch_history', 1) = 0 then
    Application.CreateForm(TForm_sch_history, Form_sch_history);
end;

procedure TForm_kart.BitBtn4Click(Sender: TObject);
begin
  if FF('Form_sch_history', 1) = 0 then
    Application.CreateForm(TForm_sch_history, Form_sch_history);
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

procedure TForm_kart.DBLookupComboboxEh12DropDown(Sender: TObject);
begin
  with OD_houses do
  begin
    Active := false;
    SetVariable('reu', Form_list_kart.OD_list_kart.FieldByName('reu').AsString);
    SetVariable('kul', OD_spul.FieldByName('id').AsString);
    Active := true;
  end;
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

end.

