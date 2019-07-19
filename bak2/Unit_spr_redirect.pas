unit Unit_spr_redirect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Utils, Oracle, cxPC, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxDBLookupComboBox,
  cxMaskEdit;

type
  TForm_spr_redirect = class(TForm)
    OD_redir_pay: TOracleDataSet;
    DS_redir_pay: TDataSource;
    OD_org_src: TOracleDataSet;
    DS_org_src: TDataSource;
    OD_usl_src: TOracleDataSet;
    DS_usl_src: TDataSource;
    OD_tp: TOracleDataSet;
    DS_tp: TDataSource;
    OD_reu: TOracleDataSet;
    DS_reu: TDataSource;
    grp1: TGroupBox;
    btn1: TButton;
    OD_org_dst: TOracleDataSet;
    DS_org_dst: TDataSource;
    OD_usl_dst: TOracleDataSet;
    DS_usl_dst: TDataSource;
    cxpgcntrl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Tp: TcxGridDBColumn;
    cxGrid1DBTableView1Reu: TcxGridDBColumn;
    cxGrid1DBTableView1UslSrc: TcxGridDBColumn;
    cxGrid1DBTableView1UslDst: TcxGridDBColumn;
    cxGrid1DBTableView1OrgSrc: TcxGridDBColumn;
    cxGrid1DBTableView1OrgDst: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1MG1: TcxGridDBColumn;
    cxGridDBTableView1MG2: TcxGridDBColumn;
    mmo1: TMemo;
    mmo2: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_redir_payAfterInsert(DataSet: TDataSet);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxpgcntrl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure OD_redir_payAfterPost(DataSet: TDataSet);
  private
    l_upd: Boolean;
  public
    { Public declarations }
  end;

var
  Form_spr_redirect: TForm_spr_redirect;

implementation

uses DM_module1;

{$R *.dfm}

procedure TForm_spr_redirect.FormCreate(Sender: TObject);
begin
  l_upd:=False;
  cxpgcntrl1.ActivePageIndex:=0;
  OD_redir_pay.Active:=False;
  OD_redir_pay.SetVariable('p_page',0);
  OD_redir_pay.Active:=true;
  OD_org_src.Active:=true;
  OD_usl_src.Active:=true;
  OD_org_dst.Active:=true;
  OD_usl_dst.Active:=true;
  OD_tp.Active:=true;
end;

function exit_ok: Integer;
var
  l_err: Integer;
begin
 with Form_spr_redirect do
 begin
  if not (OD_redir_pay.State in [dsBrowse]) then
   OD_redir_pay.Post;
  //OD_redir_pay.Session.ApplyUpdates([OD_redir_pay], False);
  l_err := DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.utils.check_redir_pay', [parNone]);
  if l_err = 1 then
  begin
    msg2('Обнаружены дубли записей в справочнике оплаты/пени!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
    cxpgcntrl1.ActivePageIndex:=0;
//    OD_redir_pay.Session.CancelUpdates([OD_redir_pay]);

    Result:=1;
  end
  else if l_err = 2 then
  begin
    msg2('Обнаружены дубли записей в справочнике статистики!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
    cxpgcntrl1.ActivePageIndex:=1;
//    OD_redir_pay.Session.CancelUpdates([OD_redir_pay]);
    Result:=1;
  end
  else
  begin
     OD_redir_pay.Session.Commit;
     l_upd:=False;
     Result:=0;
  end;
 end;
end;

function exit_cancel: Integer;
begin
 with Form_spr_redirect do
 begin
  if not (OD_redir_pay.State in [dsBrowse]) then
   OD_redir_pay.Post;
  if (l_upd) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      Result:=exit_ok;
    end
    else
    begin
    if not (OD_redir_pay.State in [dsBrowse]) then
      OD_redir_pay.Cancel;
      OD_redir_pay.Session.Rollback;
      Result:=0;
    end;
  end
  else
    Result:=0;
end;
end;

procedure TForm_spr_redirect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if exit_cancel = 0 then
    Action:=caFree
 else
  Abort;
end;

procedure TForm_spr_redirect.OD_redir_payAfterInsert(DataSet: TDataSet);
begin
  l_upd:=True;
  if cxpgcntrl1.ActivePageIndex=0 then
    OD_redir_pay.FieldByName('tp').AsInteger:=1
  else
    OD_redir_pay.FieldByName('tp').AsInteger:=2;
end;

procedure TForm_spr_redirect.btn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm_spr_redirect.btn1Click(Sender: TObject);
begin
  exit_ok;
end;

procedure TForm_spr_redirect.cxpgcntrl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  OD_redir_pay.SetVariable('p_page', NewPage.TabIndex);
  OD_redir_pay.Active:=False;
  OD_redir_pay.Active:=True;
end;

procedure TForm_spr_redirect.OD_redir_payAfterPost(DataSet: TDataSet);
begin
  l_upd:=True;
end;

end.
