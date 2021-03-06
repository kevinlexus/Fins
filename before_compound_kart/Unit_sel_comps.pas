unit Unit_sel_comps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DBGridEh, StdCtrls, Oracle, ExtCtrls,
  Mask, DBCtrlsEh, GridsEh, wwdbedit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator;

type
  TForm_sel_comps = class(TForm)
    DS_sel_comps: TDataSource;
    OD_sel_comps: TOracleDataSet;
    Button1: TButton;
    GroupBox1: TGroupBox;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    GroupBox2: TGroupBox;
    wwDBEdit1: TwwDBEdit;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NKOM: TcxGridDBColumn;
    cxGrid1DBTableView1PERIOD: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure OD_sel_compsAfterScroll(DataSet: TDataSet);
  private
    procedure sel_comp;
  public
    { Public declarations }
  end;

var
  Form_sel_comps: TForm_sel_comps;
  nkom_: string;

implementation

uses DM_module1, Unit_Mainform, Utils, Unit_recv_pay_bank;

{$R *.dfm}

procedure enter_app;
var
  l_val: Integer;
begin
  if (DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.INIT.get_login_acc', parNone)) > 1 then
  begin
    msg2('��������� �������� �� ������ ����������, ����������',
      '��������', MB_OK + MB_ICONINFORMATION);
    Application.Terminate;
  end;

  DataModule1.OraclePackage1.CallProcedure
    ('scott.INIT.set_nkom',
      [Form_sel_comps.OD_sel_comps.FieldByName('nkom').asString]);
  Form_main.nkom_ := Form_sel_comps.OD_sel_comps.FieldByName('nkom').asString;

  Form_main.default_reu_ := DataModule1.OraclePackage1.CallStringFunction
    ('scott.INIT.get_def_reu', [parNone]);

  Form_main.cur_mg_ := DataModule1.OraclePackage1.CallStringFunction
    ('scott.INIT.get_cur_period', [parNone]);
  l_val := DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.INIT.set_date', [Form_sel_comps.DBDateTimeEditEh1.Value]);
  if l_val = 3 then
    msg2('���� �� ������������� �������� �������!', '��������!', MB_OK +
      MB_ICONSTOP)
  else if (l_val = 1) then
  begin
    Form_Main.OD_spr.Active := true;
    Form_main.Caption := Application.Title + ' Ver ' + inttostr(Form_Main.Versia)
      + ' ����:' + DateToStr(Form_sel_comps.DBDateTimeEditEh1.Value) + ' User:' +
      Form_main.user;
    Form_Main.cur_dt:=Form_sel_comps.DBDateTimeEditEh1.Value;
    Form_main.Caption := Form_main.Caption + ': ' +
      DataModule1.OraclePackage1.CallStringFunction
      ('scott.INIT.get_fio', [parNone]) + '-' +
      DataModule1.OraclePackage1.CallStringFunction
      ('scott.INIT.get_role', [parNone]);
    Form_sel_comps.Close;
  end;

  if FF('Form_recv_pay_bank', 0) = 1 then
    Form_recv_pay_bank.Recalc;
end;

procedure TForm_sel_comps.Button1Click(Sender: TObject);
begin
  enter_app;
end;

procedure TForm_sel_comps.Button2Click(Sender: TObject);
var
  nkom_: string;
begin
  nkom_ := DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.INIT.get_nkom', [parNone]);
  // ���� ��������� ���� � �� ������ ������������-����
  if nkom_ = '' then
    Application.Terminate
  else
    Close;
end;

procedure TForm_sel_comps.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_sel_comps.sel_comp;
begin
  nkom_ := OD_sel_comps.FieldByName('nkom').AsString;
  DBDateTimeEditEh1.Value := DataModule1.OraclePackage1.CallDateFunction(
    'scott.INIT.get_period_date', [nkom_]);
  wwDBEdit1.Text := DataModule1.OraclePackage1.CallStringFunction(
    'scott.INIT.get_fio', parNone);
end;

procedure TForm_sel_comps.FormCreate(Sender: TObject);
begin
  OD_sel_comps.Active := True;
  nkom_ := DataModule1.OraclePackage1.CallStringFunction(
    'scott.INIT.get_nkom', parNone);
  OD_sel_comps.SearchRecord('nkom', nkom_, [srFromBeginning]);
  sel_comp;
end;

procedure TForm_sel_comps.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    enter_app;
end;

procedure TForm_sel_comps.OD_sel_compsAfterScroll(DataSet: TDataSet);
begin
  sel_comp;
end;

end.

