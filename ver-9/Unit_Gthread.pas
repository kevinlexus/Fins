unit Unit_Gthread;

interface

uses
  Classes, DM_module1, oracle, SysUtils, Unit_generate, Variants;

type
  TrGenerate = class(TThread)
  private
  protected
    procedure Execute; override;
  end;

implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Generate.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ Generate }

procedure TrGenerate.Execute;
var
  i: Integer;
begin
//  CriticalSection.Enter;
//  CriticalSection.Leave;
   try
   if Form_generate.g_tr_num = 1 then
      DataModule1.OraclePackage1.CallProcedure
         ('scott.P_VVOD.gen_dist_all_houses', [parNone])

   else if Form_generate.g_tr_num = 2 then
     DataModule1.OraclePackage1.CallProcedure
           ('scott.GEN.gen_c_charges', [Null])

   else if Form_generate.g_tr_num = 3 then
      DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_lg', [parNone])
   else if Form_generate.g_tr_num = 4 then
   begin

//НЕ СТАЛ ДЕЛАТЬ ЭТО В tURBO-tHREAD
    //удаление корректировок
     DataModule1.OraclePackage1.CallProcedure
         ('scott.c_gen_pay.dist_pay_del_corr', [parNone]);
    //добавление корректировок ДО формирования
     DataModule1.OraclePackage1.CallProcedure
         ('scott.c_gen_pay.dist_pay_add_corr', [0]);
   end
   else if Form_generate.g_tr_num = 5 then
   begin
//НЕ СТАЛ ДЕЛАТЬ ЭТО В tURBO-tHREAD
      //Сальдо
      DataModule1.OraclePackage1.CallProcedure
         ('scott.gen.gen_saldo', [null]);
      //Рассчет корректировок
      DataModule1.OraclePackage1.CallProcedure
         ('scott.c_gen_pay.dist_sal_corr', [parNone]);
      //добавление корректировок ПОСЛЕ формирования
       DataModule1.OraclePackage1.CallProcedure
           ('scott.c_gen_pay.dist_pay_add_corr', [1]);
      //Сальдо повторное
      DataModule1.OraclePackage1.CallProcedure
         ('scott.gen.gen_saldo', [null]);
   end
   else if Form_generate.g_tr_num = 6 then
   begin
//НЕ СТАЛ ДЕЛАТЬ ЭТО В tURBO-tHREAD
    //добавление корректировок ПОСЛЕ формирования
     DataModule1.OraclePackage1.CallProcedure
         ('scott.c_gen_pay.dist_pay_add_corr', [1]);
    //Сальдо
    DataModule1.OraclePackage1.CallProcedure
       ('scott.gen.gen_saldo', [null]);
   end
   else if Form_generate.g_tr_num = 7 then
   begin
    //движение
    DataModule1.OraclePackage1.CallProcedure
          ('scott.c_cpenya.gen_charge_pay_full', [parNone]);
    //пеня
    DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CPENYA.gen_charge_pay_pen', [parNone]);
    //Выполняем проверку распределения пени
    DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_check', [parInteger, parString, 6]);
    Form_generate.err_:=DataModule1.OraclePackage1.GetParameter(0);
   end
   else if Form_generate.g_tr_num = 8 then
   begin
     DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.GEN_SALDO_HOUSES', [ParNone]);
     DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_xito13', parNone);
   end
   else if Form_generate.g_tr_num = 9 then
     DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_opl_xito5', [ParNone])
   else if Form_generate.g_tr_num = 10 then
     DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_opl_xito5_', [ParNone])
   else if Form_generate.g_tr_num = 11 then
     DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_opl_xito10', [ParNone])
   else if Form_generate.g_tr_num = 12 then
     DataModule1.OraclePackage1.CallProcedure
          ('scott.gen.gen_opl_xito3', [ParNone])
   else if Form_generate.g_tr_num = 13 then
   begin

     DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.prepare_arch', [Null]);
     DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.gen_debits_lsk_month', [Null]);
   end
   else if Form_generate.g_tr_num = 14 then
   begin
     DataModule1.OraclePackage1.CallProcedure
          ('scott.C_EXP_LIST.privs_export', [parNone]);
     DataModule1.OraclePackage1.CallProcedure
          ('scott.C_EXP_LIST.changes_export', [parNone]);
     DataModule1.OraclePackage1.CallProcedure
          ('scott.C_EXP_LIST.charges_export', [parNone]);
   end
   else if Form_generate.g_tr_num = 15 then
     DataModule1.OraclePackage1.CallProcedure
           ('scott.gen_stat.gen_stat_usl', [null])
   else if Form_generate.g_tr_num = 16 then
   begin
     DataModule1.OraclePackage1.CallProcedure
           ('scott.gen.go_next_month_year', [parNone]);
    // Формирование начисления
     DataModule1.OraclePackage1.CallProcedure
           ('scott.GEN.gen_c_charges', [Null]);
    //Сальдо, для распределения пени
     DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.GEN_SALDO', [null]);
    // Движение по Л/С
     DataModule1.OraclePackage1.CallProcedure
           ('scott.C_CPENYA.gen_charge_pay_pen', [parNone]);
   end;
   Form_generate.g_tr_flag:=1;
   except
    on E: EOracleError do
    begin
      CriticalSection.Enter;
      Form_generate.Memo1.Text:=E.Message;
      CriticalSection.Leave;
      Form_generate.g_tr_flag:=2;
    end;
    else
    begin
      CriticalSection.Enter;
      Form_generate.Memo1.Text:='Прочие ошибки';
      CriticalSection.Leave;
      Form_generate.g_tr_flag:=2;
    end;
   end
end;


end.
