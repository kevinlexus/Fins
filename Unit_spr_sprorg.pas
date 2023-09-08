unit Unit_spr_sprorg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, ExtCtrls, DBCtrls, cxControls,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGrid, cxSplitter, ComCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
  cxTextEdit, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_spr_sprorg = class(TForm)
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
    cxGrid1DBTableView1LKPAR: TcxGridDBColumn;
    cxGrid1DBTableView1LKPAR2: TcxGridDBColumn;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_CD: TcxGridDBColumn;
    cxGrid1DBTableView1ADR_WWW: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1RASCHET_SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1RASCHET_SCHET2: TcxGridDBColumn;
    cxGrid1DBTableView1R_SCH_ADDIT: TcxGridDBColumn;
    cxGrid1DBTableView1CODE_DEB: TcxGridDBColumn;
    cxGrid1DBTableView1DOLG_NAME: TcxGridDBColumn;
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
    OD_sprorgBANK_FNAME: TStringField;
    cxGrid1DBTableView1BANK_FNAME: TcxGridDBColumn;
    cxGrid1DBTableView1GRP: TcxGridDBColumn;
    OD_sprorgGRP: TFloatField;
    OD_usl_round: TOracleDataSet;
    DS_usl_round: TDataSource;
    OD_usl: TOracleDataSet;
    DS_usl: TDataSource;
    OD_sprorgR_SCH_GIS: TStringField;
    cxGrid1DBTableView1R_SCH_GIS: TcxGridDBColumn;
    OD_usl_tree: TOracleDataSet;
    DS_usl_tree: TDataSource;
    OD_sprorgADR_CASH: TStringField;
    cxGrid1DBTableView1ADR_CASH: TcxGridDBColumn;
    OD_sprorgFK_ORG2: TFloatField;
    OD_sprorgIS_RSO: TFloatField;
    cxGrid1DBTableView1IS_RSO: TcxGridDBColumn;
    OD_sprorgIS_EXCHANGE_GIS: TFloatField;
    cxGrid1DBTableView1IS_EXCHANGE_GIS: TcxGridDBColumn;
    OD_sprorgFK_BILL_VAR: TFloatField;
    cxGrid1DBTableView1FK_BILL_VAR: TcxGridDBColumn;
    OD_sprorgGRP_DEB: TFloatField;
    cxGrid1DBTableView1GRP_DEB: TcxGridDBColumn;
    Panel1: TPanel;
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
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2USL: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Memo2: TMemo;
    TabSheet3: TTabSheet;
    Memo3: TMemo;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3NPP: TcxGridDBColumn;
    cxGridDBTableView3TP: TcxGridDBColumn;
    cxGridDBTableView3USL: TcxGridDBColumn;
    cxGridDBTableView3PARENT_USL: TcxGridDBColumn;
    cxGridDBTableView3HIDE_PRICE: TcxGridDBColumn;
    cxGridDBTableView3HIDE_VOL: TcxGridDBColumn;
    cxGridDBTableView3HIDE_ROW: TcxGridDBColumn;
    cxGridDBTableView3FK_BILL_VAR: TcxGridDBColumn;
    cxGridDBTableView3FK_HOUSE: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1FK_ORG2: TcxGridDBColumn;
    OD_sprorgSERVICE_NAME_GIS: TStringField;
    cxGrid1DBTableView1SERVICE_NAME_GIS: TcxGridDBColumn;
    TabSheet4: TTabSheet;
    OD_spr_bill_print: TOracleDataSet;
    DS_spr_bill_print: TDataSource;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1FILTER_REU: TcxGridDBColumn;
    cxGrid5DBTableView1IS_EXPORT_PDF: TcxGridDBColumn;
    cxGrid5DBTableView1PREFIX: TcxGridDBColumn;
    OD_reu: TOracleDataSet;
    DS_reu: TDataSource;
    cxGrid5DBTableView1UK: TcxGridDBColumn;
    OD_spr_bill_printID: TFloatField;
    OD_spr_bill_printREU: TStringField;
    OD_spr_bill_printFILTER_REU: TStringField;
    OD_spr_bill_printIS_EXPORT_PDF: TFloatField;
    OD_spr_bill_printPREFIX: TStringField;
    OD_spr_bill_printIS_EXPORT_EMAIL: TFloatField;
    cxGrid5DBTableView1IS_EXPORT_EMAIL: TcxGridDBColumn;
    DS_sprorg: TDataSource;
    OD_sprorgIS_AUTO_SEND_DEB_REQ: TFloatField;
    cxGrid1DBTableView1IS_AUTO_SEND_DEB_REQ: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_sprorgAfterScroll(DataSet: TDataSet);
    procedure OD_sprorgBeforeEdit(DataSet: TDataSet);
    procedure OD_sprorgAfterEdit(DataSet: TDataSet);
    procedure cxSplitter1AfterClose(Sender: TObject);
    procedure cxSplitter1AfterOpen(Sender: TObject);
  private
    flt_: string;
  public    { Public declarations }
  end;

var
  Form_spr_sprorg: TForm_spr_sprorg;


implementation

{$R *.dfm}

procedure TForm_spr_sprorg.FormCreate(Sender: TObject);
begin
  cxSplitter1.CloseSplitter;
  OD_sprorg.Active := True;
  OD_usl.Active := True;
  OD_spr_bill_print.Active := True;
  OD_reu.Active := True;
end;

procedure TForm_spr_sprorg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not (OD_sprorg.State in [dsBrowse]) then
    OD_sprorg.Post;
  Action := caFree;
end;

procedure TForm_spr_sprorg.OD_sprorgAfterScroll(DataSet: TDataSet);
begin
  if OD_usl_tree.Active = True then
  begin
    // если не в режиме добавления организации
    OD_usl_bills.SetVariable('fk_bill_var', OD_sprorg.FieldByName('fk_bill_var').AsInteger);
    OD_usl_bills.Active := false;
    OD_usl_bills.Active := true;
    OD_usl_tree.SetVariable('fk_bill_var', OD_sprorg.FieldByName('fk_bill_var').AsInteger);
    OD_usl_tree.Active := false;
    OD_usl_tree.Active := true;
  end;
end;

procedure TForm_spr_sprorg.OD_sprorgBeforeEdit(DataSet: TDataSet);
begin
  // закрыть датасеты - иначе не дает обновить ключевое поле fk_bill_var
  //OD_usl_bills.Active:=False;
  //OD_usl_tree.Active:=False;
end;

procedure TForm_spr_sprorg.OD_sprorgAfterEdit(DataSet: TDataSet);
begin
  // открыть закрытые датасеты - иначе не дает обновить ключевое поле fk_bill_var
  //OD_usl_bills.Active:=True;
  //OD_usl_tree.Active:=True;
end;

procedure TForm_spr_sprorg.cxSplitter1AfterClose(Sender: TObject);
begin
  OD_usl_bills.Active := false;
  OD_usl_round.Active := false;
  OD_usl_tree.Active := false;
end;

procedure TForm_spr_sprorg.cxSplitter1AfterOpen(Sender: TObject);
begin
  OD_usl_bills.Active := true;
  OD_usl_round.Active := true;
  OD_usl_tree.Active := true;
end;

end.

