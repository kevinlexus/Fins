unit Unit_spr_sprorg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, OracleData, StdCtrls, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, Utils,
  DBGridEh, Mask, DBCtrlsEh, DBLookupEh, wwDialog, wwrcdvw, wwdblook,
  OracleNavigator, Oracle, DBGrids, DBConsts, cxGraphics, cxControls,
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
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxSplitter, cxTextEdit,
  ComCtrls, cxDBLookupComboBox;

type
  TForm_spr_sprorg = class(TForm)
    DS_sprorg: TwwDataSource;
    OD_org_tp: TOracleDataSet;
    DS_org_tp: TwwDataSource;
    OD_org_tp2: TOracleDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    DS_org_tp2: TwwDataSource;
    OD_t_orgp: TOracleDataSet;
    wwDBLookupCombo2: TwwDBLookupCombo;
    DS_t_orgp: TwwDataSource;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_sprorg: TOracleDataSet;
    OD_sprorgID: TFloatField;
    OD_sprorgCD: TStringField;
    OD_sprorgFK_ORGTP: TFloatField;
    OD_sprorgNAME: TStringField;
    OD_sprorgNPP: TFloatField;
    OD_sprorgV: TFloatField;
    OD_sprorgPARENT_ID: TFloatField;
    OD_sprorgREU: TStringField;
    OD_sprorgTREST: TStringField;
    OD_sprorgUCH: TFloatField;
    OD_sprorgADR: TStringField;
    OD_sprorgINN: TStringField;
    OD_sprorgMANAGER: TStringField;
    OD_sprorgBUH: TStringField;
    OD_sprorgRASCHET_SCHET: TStringField;
    OD_sprorgK_SCHET: TStringField;
    OD_sprorgKOD_OKONH: TStringField;
    OD_sprorgKOD_OGRN: TStringField;
    OD_sprorgBIK: TStringField;
    OD_sprorgPHONE: TStringField;
    OD_sprorgKPP: TStringField;
    OD_sprorgBANK: TStringField;
    OD_sprorgID_EXP: TFloatField;
    OD_sprorgADR_RECIP: TStringField;
    OD_sprorgAUTHORIZED_DIR: TStringField;
    OD_sprorgAUTHORIZED_BUH: TStringField;
    OD_sprorgAUTH_DIR_DOC: TStringField;
    OD_sprorgAUTH_BUH_DOC: TStringField;
    OD_sprorgOKPO: TStringField;
    OD_sprorgVER_CD: TStringField;
    OD_sprorgFULL_NAME: TStringField;
    OD_sprorgPHONE2: TStringField;
    OD_sprorgPARENT_ID2: TFloatField;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    OD_sprorgLKTP: TStringField;
    OD_sprorgLKPAR: TStringField;
    OD_t_orgp2: TOracleDataSet;
    DS_t_orgp2: TwwDataSource;
    OD_sprorgLKPAR2: TStringField;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Memo1: TMemo;
    OD_sprorgLVL: TStringField;
    OD_sprorgBANK_CD: TStringField;
    OD_sprorgADR_WWW: TStringField;
    OD_sprorgEMAIL: TStringField;
    OD_sprorgHEAD_NAME: TStringField;
    OD_sprorgRASCHET_SCHET2: TStringField;
    OD_sprorgPOST_INDX: TStringField;
    OD_sprorgR_SCH_ADDIT: TStringField;
    OD_sprorgCODE_DEB: TStringField;
    OD_sprorgDOLG_NAME: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1LVL: TcxGridDBColumn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NPP: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1LKTP: TcxGridDBColumn;
    cxGrid1DBTableView1LKPAR: TcxGridDBColumn;
    cxGrid1DBTableView1LKPAR2: TcxGridDBColumn;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1TREST: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_CD: TcxGridDBColumn;
    cxGrid1DBTableView1ADR_WWW: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1RASCHET_SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1RASCHET_SCHET2: TcxGridDBColumn;
    cxGrid1DBTableView1R_SCH_ADDIT: TcxGridDBColumn;
    cxGrid1DBTableView1CODE_DEB: TcxGridDBColumn;
    cxGrid1DBTableView1DOLG_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1FK_ORGTP: TcxGridDBColumn;
    cxGrid1DBTableView1V: TcxGridDBColumn;
    cxGrid1DBTableView1UCH: TcxGridDBColumn;
    cxGrid1DBTableView1ADR: TcxGridDBColumn;
    cxGrid1DBTableView1INN: TcxGridDBColumn;
    cxGrid1DBTableView1MANAGER: TcxGridDBColumn;
    cxGrid1DBTableView1BUH: TcxGridDBColumn;
    cxGrid1DBTableView1K_SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1KOD_OKONH: TcxGridDBColumn;
    cxGrid1DBTableView1KOD_OGRN: TcxGridDBColumn;
    cxGrid1DBTableView1BIK: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE: TcxGridDBColumn;
    cxGrid1DBTableView1KPP: TcxGridDBColumn;
    cxGrid1DBTableView1BANK: TcxGridDBColumn;
    cxGrid1DBTableView1ID_EXP: TcxGridDBColumn;
    cxGrid1DBTableView1ADR_RECIP: TcxGridDBColumn;
    cxGrid1DBTableView1AUTHORIZED_DIR: TcxGridDBColumn;
    cxGrid1DBTableView1AUTHORIZED_BUH: TcxGridDBColumn;
    cxGrid1DBTableView1AUTH_DIR_DOC: TcxGridDBColumn;
    cxGrid1DBTableView1AUTH_BUH_DOC: TcxGridDBColumn;
    cxGrid1DBTableView1OKPO: TcxGridDBColumn;
    cxGrid1DBTableView1VER_CD: TcxGridDBColumn;
    cxGrid1DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE2: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT_ID2: TcxGridDBColumn;
    cxGrid1DBTableView1HEAD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1POST_INDX: TcxGridDBColumn;
    OD_usl_bills: TOracleDataSet;
    DS_usl_bills: TDataSource;
    cxSplitter1: TcxSplitter;
    OD_sprorgFK_BILL_VAR: TFloatField;
    cxGrid1DBTableView1FK_BILL_VAR: TcxGridDBColumn;
    OD_sprorgBANK_FNAME: TStringField;
    cxGrid1DBTableView1BANK_FNAME: TcxGridDBColumn;
    cxGrid1DBTableView1GRP: TcxGridDBColumn;
    OD_sprorgGRP: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1USL_ID: TcxGridDBColumn;
    cxGridDBTableView1MG1: TcxGridDBColumn;
    cxGridDBTableView1MG2: TcxGridDBColumn;
    cxGridDBTableView1IS_VOL: TcxGridDBColumn;
    cxGridDBTableView1FK_TP: TcxGridDBColumn;
    cxGridDBTableView1FK_BILL_VAR: TcxGridDBColumn;
    cxGridDBTableView1FRC_GET_PRICE: TcxGridDBColumn;
    cxGridDBTableView1BILL_AGG: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    TabSheet2: TTabSheet;
    OD_usl_round: TOracleDataSet;
    DS_usl_round: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2USL: TcxGridDBColumn;
    OD_usl: TOracleDataSet;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    DS_usl: TDataSource;
    Memo2: TMemo;
    OD_sprorgR_SCH_GIS: TStringField;
    cxGrid1DBTableView1R_SCH_GIS: TcxGridDBColumn;
    TabSheet3: TTabSheet;
    Memo3: TMemo;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    OD_usl_tree: TOracleDataSet;
    DS_usl_tree: TDataSource;
    cxGridDBTableView3USL: TcxGridDBColumn;
    cxGridDBTableView3PARENT_USL: TcxGridDBColumn;
    cxGridDBTableView3TP: TcxGridDBColumn;
    cxGridDBTableView3FK_BILL_VAR: TcxGridDBColumn;
    cxGridDBTableView3FK_HOUSE: TcxGridDBColumn;
    cxGridDBTableView3NPP: TcxGridDBColumn;
    cxGridDBTableView3HIDE_PRICE: TcxGridDBColumn;
    cxGridDBTableView3HIDE_VOL: TcxGridDBColumn;
    cxGridDBTableView3HIDE_ROW: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_sprorgAfterScroll(DataSet: TDataSet);
  private
    flt_:string;
  public
    { Public declarations }
  end;

var
  Form_spr_sprorg: TForm_spr_sprorg;

implementation

{$R *.dfm}


procedure TForm_spr_sprorg.FormCreate(Sender: TObject);
begin
  OD_sprorg.Active:=True;
  OD_t_orgp.Active:=True;
  OD_t_orgp2.Active:=True;
  OD_org_tp.Active:=True;
  OD_org_tp.First;
  OD_org_tp2.Active:=True;
  OD_usl_bills.Active:=True;
  OD_usl.Active:=True;
  OD_usl_tree.Active:=True;
  OD_usl_round.Active:=True;
end;

procedure TForm_spr_sprorg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure TForm_spr_sprorg.OD_sprorgAfterScroll(DataSet: TDataSet);
begin
  OD_usl_bills.SetVariable('fk_bill_var',
    OD_sprorg.FieldByName('fk_bill_var').AsInteger);
  OD_usl_bills.Active:=false;
  OD_usl_bills.Active:=true;
  OD_usl_tree.SetVariable('fk_bill_var',
    OD_sprorg.FieldByName('fk_bill_var').AsInteger);
  OD_usl_tree.Active:=false;
  OD_usl_tree.Active:=true;
end;

end.
