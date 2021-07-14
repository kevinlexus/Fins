unit Unit_det_chrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdbigrd, Wwdbgrid, OracleData, frxClass, frxDBSet,
  StdCtrls, Utils, Grids;

type
  TForm_det_chrg = class(TForm)
    OD_c_charge: TOracleDataSet;
    wwDBGrid1: TwwDBGrid;
    DS_c_charge: TDataSource;
    GroupBox1: TGroupBox;
    Button4: TButton;
    Button1: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure recalc;
    procedure state_arch2(mgold_: String);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_det_chrg: TForm_det_chrg;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_det_chrg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_det_chrg.state_arch2(mgold_: String);
begin // смена состояний формы
with Form_det_chrg do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
    Form_det_chrg.Caption:='Детализация расчёта по Л/C - Архив';
    change_alias(OD_c_charge, 'scott.c_charge',
      '(select * from scott.a_charge2 where '''+Form_main.arch_mg_+''' between mgFrom and mgTo)');
    change_alias(OD_c_charge, 'scott.c_penya',
      '(select * from scott.a_penya where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
    Form_det_chrg.Caption:='Детализация расчёта по Л/C';
    change_alias(OD_c_charge,
      '(select * from scott.a_charge2 where '''+mgold_+''' between mgFrom and mgTo)',
      'scott.c_charge');
    change_alias(OD_c_charge, '(select * from scott.a_penya where mg='''+mgold_ +''')',
      'scott.c_penya');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
    Form_det_chrg.Caption:='Детализация расчёта - Архив';
    change_alias(OD_c_charge,
      '(select * from scott.a_charge2 where '''+mgold_+''' between mgFrom and mgTo)',
      '(select * from scott.a_charge2 where '''+Form_main.arch_mg_+''' between mgFrom and mgTo)');
    change_alias(OD_c_charge, '(select * from scott.a_penya where mg='''+mgold_ +''')',
      '(select * from scott.a_penya where mg='''+Form_main.arch_mg_ +''')');
  end;
end;
end;

procedure TForm_det_chrg.recalc;
var
  test_opl_, summa_tr_, summa_lg_, summa_subs_, summa_itg_: Double;
begin
  //Перерасчет
  OD_c_charge.Active:=false;
  OD_c_charge.Active:=true;

  test_opl_:=0;
  summa_tr_:=0;
  summa_lg_:=0;
  summa_subs_:=0;
  summa_itg_:=0;

  OD_c_charge.First;

  while not OD_c_charge.Eof do
  begin
    test_opl_:=test_opl_+OD_c_charge.FieldByName('test_opl').AsFloat;
    summa_tr_:=summa_tr_+OD_c_charge.FieldByName('summa_tr').AsFloat;
    summa_lg_:=summa_lg_+OD_c_charge.FieldByName('summa_lg').AsFloat;
    summa_subs_:=summa_subs_+OD_c_charge.FieldByName('summa_subs').AsFloat;
    summa_itg_:=summa_itg_+OD_c_charge.FieldByName('summa_itg').AsFloat;
    OD_c_charge.Next;
  end;
  OD_c_charge.First;
  wwDBGrid1.ColumnByName('NM').FooterValue :='Итого:';
  wwDBGrid1.ColumnByName('TEST_OPL').FooterValue :=FloatToStrF(test_opl_, ffFixed, 10, 2);
  wwDBGrid1.ColumnByName('SUMMA_TR').FooterValue :=FloatToStrF(summa_tr_, ffFixed, 10, 2);
  wwDBGrid1.ColumnByName('SUMMA_LG').FooterValue :=FloatToStrF(summa_lg_, ffFixed, 10, 2);
  wwDBGrid1.ColumnByName('SUMMA_SUBS').FooterValue :=FloatToStrF(summa_subs_, ffFixed, 10, 2);
  wwDBGrid1.ColumnByName('SUMMA_ITG').FooterValue :=FloatToStrF(summa_itg_, ffFixed, 10, 2);
  wwDBGrid1.RedrawGrid;
end;

procedure TForm_det_chrg.FormCreate(Sender: TObject);
begin
  state_arch2('');
  recalc;
end;

procedure TForm_det_chrg.Button1Click(Sender: TObject);
begin
  LockWindowUpdate(handle);
  frxReport1.PrepareReport(True);
  LockWindowUpdate(0);
  frxReport1.ShowPreparedReport;
end;

procedure TForm_det_chrg.Button4Click(Sender: TObject);
begin
  Close;
end;

end.
