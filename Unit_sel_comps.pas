unit Unit_sel_comps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Oracle, ExtCtrls,
  Mask, cxControls,

  
  cxGridDBTableView, cxGridLevel, cxClasses,
  cxGrid, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridCustomView,
  cxContainer, ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_sel_comps = class(TForm)
    DS_sel_comps: TDataSource;
    OD_sel_comps: TOracleDataSet;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NKOM: TcxGridDBColumn;
    cxGrid1DBTableView1PERIOD: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn;
    cxdtdt1: TcxDateEdit;
    cxtxtUser: TcxTextEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure OD_sel_compsAfterScroll(DataSet: TDataSet);
  private
    procedure sel_comp;
  public
    { Public declarations }
  end;

var
  Form_sel_comps: TForm_sel_comps;
  nkom_: string;
  isLoaded: Boolean;

implementation

uses DM_module1, Unit_Mainform, Utils, Unit_recv_pay_bank;

{$R *.dfm}

procedure enter_app;
var
  l_val: Integer;
begin
  DataModule1.OraclePackage1.CallProcedure
    ('scott.INIT.set_nkom',
    [Form_sel_comps.OD_sel_comps.FieldByName('nkom').asString]);

  DataModule1.UniStoredProc1.StoredProcName := 'scott.INIT.set_nkom';
  DataModule1.UniStoredProc1.Params.Clear;
  DataModule1.UniStoredProc1.Params.CreateParam(ftString, 'nkom_',
    ptInput).AsString :=
    Form_sel_comps.OD_sel_comps.FieldByName('nkom').asString;
  DataModule1.UniStoredProc1.ExecProc;

  // № текущего комп.
  Form_main.nkom_ := Form_sel_comps.OD_sel_comps.FieldByName('nkom').asString;
  // № текущей ККМ
  Form_main.cur_cash_num :=
    Form_sel_comps.OD_sel_comps.FieldByName('cash_num').asInteger;
  if Form_main.cur_cash_num = 1 then
    Form_main.cur_ECR := Form_main.selECR               
  else
    Form_main.cur_ECR := Form_main.selECR2;

  Form_main.default_reu_ := DataModule1.OraclePackage1.CallStringFunction
    ('scott.INIT.get_def_reu', [parNone]);

  Form_main.cur_mg_ := DataModule1.OraclePackage1.CallStringFunction
    ('scott.INIT.get_cur_period', [parNone]);
  l_val := DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.INIT.set_date', [Form_sel_comps.cxdtdt1.EditValue]);

  if l_val = 3 then
    msg2('Дата не соответствует текущему периоду!', 'Внимание!', MB_OK +
      MB_ICONSTOP)
  else if (l_val = 1) then
  begin
    DataModule1.UniStoredProc1.StoredProcName := 'scott.INIT.set_date';
    DataModule1.UniStoredProc1.SQL.Clear;
    DataModule1.UniStoredProc1.SQL.Add('begin ');
    DataModule1.UniStoredProc1.SQL.Add(':RESULT := scott.INIT.set_date(:dat_);');
    DataModule1.UniStoredProc1.SQL.Add('end;');
    DataModule1.UniStoredProc1.Params.Clear;
    DataModule1.UniStoredProc1.Params.CreateParam(ftDate, 'dat_',
      ptInput).AsDate := Form_sel_comps.cxdtdt1.EditValue;
    DataModule1.UniStoredProc1.Params
      .CreateParam(ftInteger, 'RESULT', ptResult);
    DataModule1.UniStoredProc1.ExecProc;
    // очистить SQL и параметры, для других вызовов (только при вызове функций)
    DataModule1.UniStoredProc1.SQL.Clear;
    DataModule1.UniStoredProc1.Params.Clear;

    Form_main.cur_dt := Form_sel_comps.cxdtdt1.EditValue;
    Form_Main.OD_spr.Active := true;
    Form_main.Caption := Application.Title
      + ' Дата:' + DateToStr(Form_sel_comps.cxdtdt1.EditValue) + ' User:'
      +
      Form_main.user;
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
  // если начальный вход и не выбран пользователь-комп
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
  cxdtdt1.EditValue := DataModule1.OraclePackage1.CallDateFunction(
    'scott.INIT.get_period_date', [nkom_]);
  cxtxtUser.Text := DataModule1.OraclePackage1.CallStringFunction(
    'scott.INIT.get_fio', parNone);
end;

procedure TForm_sel_comps.FormCreate(Sender: TObject);
begin
  isLoaded:=false;
  OD_sel_comps.Active := True;
  nkom_ := DataModule1.OraclePackage1.CallStringFunction(
    'scott.INIT.get_nkom', parNone);
  OD_sel_comps.SearchRecord('nkom', nkom_, [srFromBeginning]);
  sel_comp;
  isLoaded:=true;
end;

procedure TForm_sel_comps.OD_sel_compsAfterScroll(DataSet: TDataSet);
begin
  if isLoaded then sel_comp;
end;

end.

