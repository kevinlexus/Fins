unit Unit_service_cash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit_ECR, Unit_Mainform, Utils;

type
  TForm_service_cash = class(TForm)
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    l_summa: Double;
  end;

var
  Form_service_cash: TForm_service_cash;

implementation

uses Unit_money_cash;

{$R *.dfm}

procedure TForm_service_cash.btn4Click(Sender: TObject);
begin
  if open_ecr <> 0 then
    Exit;
  rep_wo_clearance(2);
  close_ecr;
end;

procedure TForm_service_cash.btn1Click(Sender: TObject);
 var
   l_ret: Integer;
begin
  //Устанавливать дату и время через сервисную утилиту!!!
{  if msg3('Дата и время будут взяты с компьютера, установить?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) = ID_YES then
  begin
    if open_ecr <> 0 then
      Exit
    else
    begin
      l_ret:= set_date_time_ecr;
      if l_ret <> 0 then
        msg2('Дата и время в ККМ установлены!', 'Внимание!', MB_OK+MB_ICONERROR)
      else if l_ret = 2 then
        msg2('Дата и время в ККМ не могут быть установлены, так как открыта смена (нужен Z-отчет)!', 'Внимание!', MB_OK+MB_ICONERROR)
      else
        msg2('Прочие ошибки установки даты и времени в ККМ!', 'Внимание!', MB_OK+MB_ICONERROR)
    end;
  end;
 }
end;

procedure TForm_service_cash.btn5Click(Sender: TObject);
begin
  if msg3('Z-отчет выполняется автоматически, при выполнении инкассации, хотите продолжить?', 'Подтверждение', MB_YESNO+MB_ICONSTOP) = ID_YES then
  begin
    if msg3('Выполнить Z-отчет?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) = ID_YES then
    begin
      if open_ecr <> 0 then
        Exit;
      if open_session <> 1 then
        msg2('Смена еще не открыта для снятия Z отчета!', 'Внимание!', MB_OK+MB_ICONERROR)
      else
      begin
       if rep_clearance <> 0 then
          begin
            //Ошибка при выполнении отчета...
            close_ecr;
            Exit;
          end;
      end;
      close_ecr;
    end;
  end;
end;

procedure TForm_service_cash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_service_cash.btn2Click(Sender: TObject);
begin
  l_summa:=0;
  Application.CreateForm(TForm_money_cash, Form_money_cash);
  Form_money_cash.Caption:='Внесение суммы в кассу';
  Form_money_cash.lbl1.caption:='Сумма для внесения:';

  if Form_money_cash.ShowModal = mrOk then
  begin
    if l_summa=0 then
      Exit;
    if open_ecr <> 0 then
      Exit
     else
    begin
      //внесение денег в кассу
      if open_reg_ecr <> 0 then
      begin
        msg2('Не возможно перейти в режим регистрации!', 'Внимание!', MB_OK+MB_ICONSTOP);
        Exit;
      end;

      if put_money(l_summa) = 0 then
        msg2('Сумма внесена!', 'Внимание!', MB_OK+MB_ICONINFORMATION);
    end;
  end;
end;

procedure TForm_service_cash.btn3Click(Sender: TObject);
begin
  l_summa:=0;
  Application.CreateForm(TForm_money_cash, Form_money_cash);
  Form_money_cash.Caption:='Выплата суммы из кассы';
  Form_money_cash.lbl1.caption:='Сумма для выплаты:';
  if Form_money_cash.ShowModal = mrOk then
  begin
    if l_summa=0 then
      Exit;
    if open_ecr <> 0 then
      Exit
     else
    begin
      if open_reg_ecr <> 0 then
      begin
        msg2('Не возможно перейти в режим регистрации!', 'Внимание!', MB_OK+MB_ICONSTOP);
        Exit;
      end;
      //выплата денег из кассы
      if take_money(l_summa) = 0 then
        msg2('Сумма выплачена!', 'Внимание!', MB_OK+MB_ICONINFORMATION);
    end;
  end;
end;

procedure TForm_service_cash.btn6Click(Sender: TObject);
begin
  if open_ecr <> 0 then
    Exit;
  rep_wo_clearance(7);
  close_ecr;
end;

procedure TForm_service_cash.btn7Click(Sender: TObject);
begin
  if msg3('Открыть смену?', 'Внимание!', MB_YESNO+MB_ICONQUESTION) =ID_YES then
  begin
    if open_session = 1 then
    begin
      msg2('Смена уже открыта!', 'Внимание!', MB_OK+MB_ICONERROR);
    end
    else
    begin
      msg2('Смена успешно открыта!', 'Внимание!', MB_OK+MB_ICONINFORMATION);
    end;
  end;

end;

procedure TForm_service_cash.btn8Click(Sender: TObject);
begin
  // закрыть чек нулевой суммой
  if close_reg_summ_ecr(0) <> 0 then
  begin
    msg2('Чек не был закрыт!', 'Внимание!', MB_OK+MB_ICONERROR);
  end

end;

end.
