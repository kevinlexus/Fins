unit Unit_gen_current;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrlsEh, Oracle, ExtCtrls, Mask;

type
  TForm_gen_current = class(TForm)
    GroupBox5: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label2: TLabel;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    Bevel1: TBevel;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_gen_current: TForm_gen_current;

implementation

uses DM_module1, Unit_status, Utils, Unit_Mainform;

{$R *.dfm}
procedure Generate;
var
  valid_,valid1_, err_ : Integer;
  err_str_: String;
begin
with Form_gen_current do
begin
  //DataModule1.OraclePackage1.Session.Connected:=true;
  if CheckBox1.Checked=true then
  begin
  valid_:=DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.INIT.check_date', [DBDateTimeEditEh1.Value]);
  valid1_:=DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.INIT.check_date', [DBDateTimeEditEh2.Value]);
    if (valid_ = 0) or (valid1_ = 0) then
      msg4('Дата не соответствует текущему периоду', 'Внимание!' , MB_ICONEXCLAMATION)
    else
    begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    Form_status.setpos(1, 4);

    //удаление корректировок
     DataModule1.OraclePackage1.CallProcedure
         ('scott.c_gen_pay.dist_pay_del_corr', [parNone]);
    //добавление корректировок ДО формирования
     DataModule1.OraclePackage1.CallProcedure
         ('scott.c_gen_pay.dist_pay_add_corr', [0]);
    if DataModule1.OraclePackage1.CallIntegerFunction
             ('scott.Utils.get_int_param', ['CLOSE_SAL']) = 1 then
    begin
      //Сальдо
      DataModule1.OraclePackage1.CallProcedure
         ('scott.gen.gen_saldo', [null]);
      //Рассчет корректировок
      DataModule1.OraclePackage1.CallProcedure
         ('scott.c_gen_pay.dist_sal_corr', [parNone]);
    end;
    Form_status.incpos(1);
    DataModule1.OraclePackage1.CallProcedure
       ('scott.gen.gen_opl_xito5day',
       [DBDateTimeEditEh1.Value,
        DBDateTimeEditEh2.Value]);
    Form_status.incpos(1);
    DataModule1.OraclePackage1.CallProcedure
       ('scott.gen.gen_opl_xito5day_',
       [DBDateTimeEditEh1.Value,
        DBDateTimeEditEh2.Value]);
    Form_status.incpos(1);
    DataModule1.OraclePackage1.CallProcedure
       ('scott.gen.gen_opl_xito10day',
       [DBDateTimeEditEh1.Value,
        DBDateTimeEditEh2.Value]);
    Form_status.Close;
    end;
  end;

  if CheckBox2.Checked=true then
  begin
    valid_:=DataModule1.OraclePackage1.CallIntegerFunction
          ('scott.INIT.check_date', [DBDateTimeEditEh3.Value]);
    if valid_ = 0 then
      msg4('Дата не соответствует текущему периоду', 'Внимание!' , MB_OK+MB_ICONEXCLAMATION)
    else
    begin
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      Form_status.setpos(1, 5);
      DataModule1.OraclePackage1.CallProcedure
             ('scott.gen.gen_check', [parInteger, parString, 1]);
      err_:=DataModule1.OraclePackage1.GetParameter(0);
      err_str_:=DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        Form_status.Close;
        msg2(err_str_,
          'Внимание', MB_OK+MB_ICONEXCLAMATION);
        Exit;
      end;
      Form_status.incpos(1);

      //удаление корректировок
       DataModule1.OraclePackage1.CallProcedure
           ('scott.c_gen_pay.dist_pay_del_corr', [parNone]);
      //добавление корректировок ДО формирования
       DataModule1.OraclePackage1.CallProcedure
           ('scott.c_gen_pay.dist_pay_add_corr', [0]);
      if DataModule1.OraclePackage1.CallIntegerFunction
               ('scott.Utils.get_int_param', ['CLOSE_SAL']) = 1 then
      begin
        //Сальдо
        DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_saldo', [null]);
        //Сальдо повторное
        DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_saldo', [null]);
      end
      else
      begin
        //Сальдо
        DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_saldo', [null]);
      end;
      Form_status.incpos(1);
      //Пеня
      //DataModule1.OraclePackage1.CallProcedure
      //      ('scott.c_cpenya.gen_charge_pay_full', [parNone]);
      DataModule1.OraclePackage1.CallProcedure
            ('scott.c_cpenya.gen_charge_pay_pen', [DBDateTimeEditEh3.Value]);
      Form_status.incpos(1);
      //Архивные карточки
      DataModule1.OraclePackage1.CallProcedure
         ('scott.gen.prepare_arch', [Null]);
      Form_status.incpos(1);
      //Долги
      DataModule1.OraclePackage1.CallProcedure
         ('scott.gen.gen_debits_lsk_month',
         [DBDateTimeEditEh3.Value]);
      Form_status.Close;
     end;
  end;
  //DataModule1.OraclePackage1.Session.Connected:=false;

  msg4('Формирование закончено', 'Внимание!' , MB_OK+MB_ICONINFORMATION);
end;
end;

procedure TForm_gen_current.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_gen_current.FormCreate(Sender: TObject);
begin
  Autosize:=true;
  DBDateTimeEditEh1.Value := DataModule1.OraclePackage1.CallDateFunction(
    'scott.INIT.get_period_date', [Form_main.nkom_]);
  DBDateTimeEditEh2.Value := DBDateTimeEditEh1.Value;
  DBDateTimeEditEh3.Value := DBDateTimeEditEh1.Value;
end;

procedure TForm_gen_current.Button1Click(Sender: TObject);
begin
 Generate;
end;

procedure TForm_gen_current.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_gen_current.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
  begin
  DBDateTimeEditEh1.Enabled:=true;
  DBDateTimeEditEh2.Enabled:=true;
  end
  else
  begin
  DBDateTimeEditEh1.Enabled:=false;
  DBDateTimeEditEh2.Enabled:=false;
  end;

end;

procedure TForm_gen_current.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then
  begin
  DBDateTimeEditEh3.Enabled:=true;
  end
  else
  begin
  DBDateTimeEditEh3.Enabled:=false;
  end;

end;

procedure TForm_gen_current.btn1Click(Sender: TObject);
 var
 l_state: Integer;
begin
end;

end.
