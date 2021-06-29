unit Unit_generate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtnrs, DB, OracleData,
  Oracle,
  ExtCtrls, Unit_Mainform, DBCtrls, Utils, SyncObjs, abfComponents;

type
  TForm_generate = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox6: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBox2: TCheckBox;
    GroupBox4: TGroupBox;
    CheckBox9: TCheckBox;
    GroupBox5: TGroupBox;
    Button2: TButton;
    GroupBox2: TGroupBox;
    CheckBox10: TCheckBox;
    GroupBox7: TGroupBox;
    CheckBox12: TCheckBox;
    GroupBox8: TGroupBox;
    CheckBox11: TCheckBox;
    GroupBox9: TGroupBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    Button3: TButton;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    Memo1: TMemo;
    chk1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    //признак перехода месяца
    state_: Integer;
    l_err_mess: string;
    procedure newTread(p_tr_num: Integer);
  public
    err_: Integer;
    err_str_: string;
    g_tr_num: Integer;
    g_tr_flag: Integer;
  end;

var
  Form_generate: TForm_generate;
  CriticalSection: TCriticalSection;

implementation

uses DM_module1, Unit_sel_comps, Unit_gen_err_lst, Unit_Gthread;

{$R *.dfm}

procedure TForm_generate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Generate;
var
  Time1: TDateTime;
  razn_: Double;
  cnt_: Integer;
  l_state: Integer;
begin
  with Form_generate do
  begin
    //  Form_status_gen.Update;
    state_ := 0;
    Time1 := Now();
    //отметка о начале формирования
    //Запросить о возможности начала формирования

    DataModule1.OraclePackage1.Session.Connected := true;
    l_state := DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.Utils.set_base_state_gen', [1]);
    if l_state = 1 then
    begin
      state_ := 5;
      l_err_mess := 'Итоговое формирование уже запущено, отмена!';
      Exit;
    end;

    //  msg4(IntToStr(l_state), IntToStr(l_state), MB_OK);

    if CheckBox20.Checked = true then //если задано итоговое формирование..
    begin
      //В начале необходимо закрыть базу для доступа пользователей,
      //иначе может повлиять на отчётность
      //(в зависимости от параметра)
      if DataModule1.OraclePackage1.CallIntegerFunction
        ('scott.Utils.get_int_param', ['NEED_CLOSE_BASE']) = 1 then
      begin
        DataModule1.OraclePackage1.CallProcedure
          ('scott.admin.set_state_base', [1]);
      end;
      //Проверки л/c

      //Блок проверки услуг ОДН
      if smpl_chk(1) <> 0 then
        exit;
      if smpl_chk(2) <> 0 then
        exit;
      if smpl_chk(3) <> 0 then
        exit;
      if smpl_chk(4) <> 0 then
        exit;
      //-----------------------

      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 5]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      if err_ <> 0 then
      begin
        state_ := 3;
        l_err_mess :=
          'Ошибочно содержащиеся в карточке л/c, периоды действия счетчиков, прописки-выписки';
        //      Form_status_gen.Close;
        Exit;
      end;

      //Основные проверки
      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 1]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      err_str_ := DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        state_ := 4;
        //      Form_status_gen.Close;
        msg2(err_str_,
          'Внимание', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;

      //проверяем корректность периода в личном кабинете
      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 8]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      err_str_ := DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        state_ := 2;
        msg2(err_str_,
          'Внимание', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;

      //проверяем ожидание получения счетчиков, просто предупреждаем
      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 7]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      err_str_ := DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        //state_:=2;
        msg2(err_str_,
          'Внимание', MB_OK + MB_ICONEXCLAMATION);
      end;

    end;

    if (CheckBox9.Checked) then //задан переход месяца
    begin
      //признак перехода месяца
      state_ := 1;

      //Выполняем стандартные проверки
      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 1]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      err_str_ := DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        state_ := 2;
        //      Form_status_gen.Close;
        msg2(err_str_,
          'Внимание', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;

      //проверяем, выполнено ли итоговое формирование
      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 3]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      err_str_ := DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        state_ := 2;
        //      Form_status_gen.Close;
        msg2(err_str_,
          'Внимание',
          MB_OK + MB_ICONEXCLAMATION);
        exit;
      end;

      //проверяем, сальдо
      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 4]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      err_str_ := DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        state_ := 2;
        //      Form_status_gen.Close;
        msg2(err_str_,
          'Внимание', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;

      //проверяем получение счетчиков
      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 7]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      err_str_ := DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        state_ := 2;
        msg2(err_str_,
          'Внимание', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;

    end;

    if (CheckBox9.Checked = false) then
      //сброс признака итогового формирования
      DataModule1.OraclePackage1.CallProcedure
        ('scott.init.set_state', [0]);

    // Распределение воды
    if CheckBox19.Checked then
    begin
      //строго соблюдать порядок выполнения процедур
      //DataModule1.OraclePackage1.CallProcedure
      //      ('scott.GEN.distrib_vols', [parNone]);
       //выполняем распределение воды без начисления
       //(все равно потом оно следует)
      newTread(1);

      Checkbox19.Color := clLime;
      Update;
    end;
    // Формирование начисления
    if CheckBox15.Checked then
    begin
      //строго соблюдать порядок выполнения процедур
      newTread(2);
      Checkbox15.Color := clLime;
      Update;
    end;

    if CheckBox10.Checked then
    begin
      newTread(3);
      Checkbox10.Color := clLime;
      Update;
    end;

    //строго соблюдать порядок выполнения процедур
    // Сальдо+подготовка оплаты
    if CheckBox1.Checked then
    begin
      //удаление корректировок
      newTread(4);
      if DataModule1.OraclePackage1.CallIntegerFunction
        ('scott.Utils.get_int_param', ['CLOSE_SAL']) = 1 then
      begin
        //ТОЛЬКО если установлен параметр закрывать сальдо - CLOSE_SAL!
        newTread(5);
      end
      else
      begin
        newTread(6);
      end;
      Checkbox1.Color := clLime;
      Update;
    end;

    // Движение по Л/С, пеня (после сальдо, - для распределения)
    if CheckBox18.Checked then
    begin
      newTread(7);
      if err_ <> 0 then
      begin
        state_ := 3;
        l_err_mess := 'Ошибочно распределена пеня в л/с';
        Exit;
      end;

      Checkbox18.Color := clLime;
      Update;
    end;

    //  Формирование сальдо по домам
    if CheckBox2.Checked then
    begin
      newTread(8);
      Checkbox2.Color := clLime;
      Update;
    end;

    // Формирование оплаты по операциям
    if CheckBox4.Checked then
    begin
      newTread(9);
      Checkbox4.Color := clLime;
      Update;
    end;

    if CheckBox5.Checked then
    begin
      newTread(10);
      Checkbox5.Color := clLime;
      Update;
    end;

    if CheckBox3.Checked then
    begin
      newTread(11);
      Checkbox3.Color := clLime;
      Update;
    end;

    if CheckBox6.Checked then
    begin
      newTread(12);
      Checkbox6.Color := clLime;
      Update;
    end;

    //счета+ долги по месяцам
    if CheckBox11.Checked then
    begin
      //Не менять порядок выполнения процедур
      newTread(13);
      Checkbox11.Color := clLime;
      Update;
    end;

    //Списки всяческие (строго после архивов)
    if CheckBox16.Checked then
    begin
      newTread(14);
      Checkbox16.Color := clLime;
      Update;
    end;

    // Генерация статистики
    if CheckBox12.Checked then
    begin
      newTread(15);
      Checkbox12.Color := clLime;
      Update;
    end;

    if CheckBox9.Checked then
    begin
      newTread(16);
      Checkbox9.Color := clLime;
      Update;
    end;

    Checkbox19.Color := clBtnFace;
    Checkbox18.Color := clBtnFace;
    Checkbox16.Color := clBtnFace;
    Checkbox15.Color := clBtnFace;
    Checkbox12.Color := clBtnFace;
    Checkbox11.Color := clBtnFace;
    Checkbox10.Color := clBtnFace;
    Checkbox9.Color := clBtnFace;
    Checkbox4.Color := clBtnFace;
    Checkbox5.Color := clBtnFace;
    Checkbox6.Color := clBtnFace;
    Checkbox3.Color := clBtnFace;
    Checkbox2.Color := clBtnFace;
    Checkbox1.Color := clBtnFace;

    if CheckBox20.Checked = true then //если задано итоговое формирование..
    begin //Окончательная проверка на корректность сальдо
      DataModule1.OraclePackage1.CallProcedure
        ('scott.gen.gen_check', [parInteger, parString, 4]);
      err_ := DataModule1.OraclePackage1.GetParameter(0);
      err_str_ := DataModule1.OraclePackage1.GetParameter(1);
      if err_ <> 0 then
      begin
        //      Form_status_gen.Close;
        msg2(err_str_,
          'Внимание', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end;

    //  Form_status_gen.Close;
    Time1 := Now() - Time1;
    Caption := 'Время форм.:' + TimeToStr(Time1);

    //установка признака итогового формирования
    if CheckBox20.Checked = true then //если было итоговое формирование
      DataModule1.OraclePackage1.CallProcedure
        ('scott.init.set_state', [1]);

    ///
    Form_generate.Update;
  end;

end;

procedure TForm_generate.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_generate.FormShow(Sender: TObject);
begin
  Form_Main.OD_params.Active := true;
end;

procedure TForm_generate.Button3Click(Sender: TObject);
var
  l_state, cnt_: Integer;

begin
  Memo1.Text := 'Выполняется переход...';
  Update;
  DataModule1.OraclePackage1.CallProcedure
    ('scott.gen.go_next_month_year', [parNone]);
  Memo1.Text := 'Выполнен переход месяца, необходимо задать текущую дату!';
  Application.CreateForm(TForm_sel_comps, Form_sel_comps);
  Form_sel_comps.ShowModal;

  //  Application.CreateForm(TForm_status_gen, Form_status_gen);
{  Button3.Enabled := false;
  GroupBox9.Enabled := false;
  GroupBox2.Enabled := false;
  GroupBox1.Enabled := false;
  GroupBox3.Enabled := false;
  GroupBox8.Enabled := false;
  GroupBox7.Enabled := false;
  GroupBox4.Enabled := false;
  GroupBox5.Enabled := false;
  Generate;
  GroupBox9.Enabled := true;
  GroupBox2.Enabled := true;
  GroupBox1.Enabled := true;
  GroupBox3.Enabled := true;
  GroupBox8.Enabled := true;
  GroupBox7.Enabled := true;
  GroupBox4.Enabled := true;
  GroupBox5.Enabled := true;
  Button3.Enabled := true;

  if state_ = 1 then //если был назначен переход месяца...
  begin
    //отметка об окончании формирования
    DataModule1.OraclePackage1.Session.Connected := true;
    l_state := DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.Utils.set_base_state_gen', [0]);

    Memo1.Text := 'Выполнен переход месяца, необходимо задать текущую дату!';
    Application.CreateForm(TForm_sel_comps, Form_sel_comps);
    Form_sel_comps.ShowModal;
  end
  else if state_ = 2 then
    //если был назначен переход месяца, но он прошёл с ошибкой
  begin
    //отметка об окончании формирования
    DataModule1.OraclePackage1.Session.Connected := true;
    l_state := DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.Utils.set_base_state_gen', [0]);
    Memo1.Text := l_err_mess + ' Переход месяца не выполнен!';
  end
  else if state_ = 3 then //Итоговое формирование произошло с ошибкой
  begin
    //отметка об окончании формирования
    DataModule1.OraclePackage1.Session.Connected := true;
    l_state := DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.Utils.set_base_state_gen', [0]);
    Application.CreateForm(TForm_gen_err_lst, Form_gen_err_lst);
    Form_gen_err_lst.OD_data.SetVariable('err_', err_);
    Form_gen_err_lst.OD_data.Active := True;
    Form_gen_err_lst.Label1.Caption := l_err_mess;
    Form_gen_err_lst.ShowModal;
    Memo1.Text := l_err_mess + ' Формирование остановлено!';
  end
  else if (state_ = 4) or (state_ = 5) then
    //Итоговое формирование произошло с ошибкой
  begin
    //отметка об окончании формирования
    DataModule1.OraclePackage1.Session.Connected := true;
    l_state := DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.Utils.set_base_state_gen', [0]);
    Memo1.Text := l_err_mess + ' Формирование остановлено!';
  end
  else
  begin
    //отметка об окончании формирования
    DataModule1.OraclePackage1.Session.Connected := true;
    l_state := DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.Utils.set_base_state_gen', [0]);
    //if chk1.Checked then
    //  abfshtdwn1.Execute;
    Memo1.Text := 'Формирование выполнено!';
  end;
 }
end;

procedure TForm_generate.CheckBox20Click(Sender: TObject);
begin
  if CheckBox20.Checked = true then
  begin
    CheckBox15.Checked := true;
    CheckBox18.Checked := true;
    CheckBox19.Checked := true;
    CheckBox10.Checked := true;
    CheckBox1.Checked := true;
    CheckBox3.Checked := true;
    CheckBox4.Checked := true;
    CheckBox5.Checked := true;
    CheckBox6.Checked := true;

    CheckBox2.Checked := true;

    CheckBox11.Checked := true;
    CheckBox12.Checked := true;
    if DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.INIT.get_gen_exp_lst', [parNone]) = 1 then
      CheckBox16.Checked := true;
    //
    CheckBox15.Enabled := false;
    CheckBox18.Enabled := false;
    CheckBox19.Enabled := false;
    CheckBox10.Enabled := false;
    CheckBox1.Enabled := false;
    CheckBox3.Enabled := false;
    CheckBox4.Enabled := false;
    CheckBox5.Enabled := false;
    CheckBox6.Enabled := false;

    CheckBox2.Enabled := false;

    CheckBox11.Enabled := false;
    CheckBox12.Enabled := false;
    CheckBox16.Enabled := false;
  end
  else
  begin
    CheckBox15.Checked := false;
    CheckBox18.Checked := false;
    CheckBox19.Checked := false;
    CheckBox10.Checked := false;
    CheckBox1.Checked := false;
    CheckBox3.Checked := false;
    CheckBox4.Checked := false;
    CheckBox5.Checked := false;
    CheckBox6.Checked := false;

    CheckBox2.Checked := false;

    CheckBox11.Checked := false;
    CheckBox12.Checked := false;
    CheckBox16.Checked := false;
    //
    CheckBox15.Enabled := true;
    CheckBox18.Enabled := true;
    CheckBox19.Enabled := true;
    CheckBox10.Enabled := true;
    CheckBox1.Enabled := true;
    CheckBox3.Enabled := true;
    CheckBox4.Enabled := true;
    CheckBox5.Enabled := true;
    CheckBox6.Enabled := true;

    CheckBox2.Enabled := true;

    CheckBox11.Enabled := true;
    CheckBox12.Enabled := true;
    CheckBox16.Enabled := true;
  end;

end;

procedure TForm_generate.Button1Click(Sender: TObject);
var
  NewThread: TrGenerate;
begin
  NewThread := TrGenerate.Create(true);
  NewThread.FreeOnTerminate := true;
  NewThread.Priority := tpLower;
  NewThread.Resume;
end;

procedure TForm_generate.FormCreate(Sender: TObject);
begin
  CriticalSection := TCriticalSection.Create;
end;

//ИЩИ ИНФОРМАЦИЮ В ЮНИТЕ unit Unit_Gthread; !!!

procedure TForm_generate.newTread(p_tr_num: Integer);
var
  NewThread: TrGenerate;
  i: Integer;
begin
  //исполнение потока
  g_tr_num := p_tr_num;
  g_tr_flag := 0;
  NewThread := TrGenerate.Create(true);
  NewThread.FreeOnTerminate := true;
  NewThread.Priority := tpLower;
  NewThread.Resume;
  i := 0;
  //ждать выполнения потока
  while true do
  begin
    Sleep(500);
    //    Update;
    //    Repaint;
    Application.ProcessMessages;
    i := i + 1;
    //    Memo1.Text:=IntToStr(i);
    if g_tr_flag = 1 then
      //Выполнился поток
      exit
    else if g_tr_flag = 1 then
      //Ошибка в потоке
      Abort;
  end;
end;

procedure TForm_generate.FormDestroy(Sender: TObject);
begin
  FreeAndNil(CriticalSection);
end;

end.

