unit Unit_ECR;

interface

uses
 Unit_Mainform, Utils, Windows, SysUtils, DateUtils;

procedure show_error;
function open_ecr: Integer;
procedure close_ecr;
function open_session: Integer;
function open_port: Integer;
function close_port: Integer;
function calc_pads(p_txt:String): String;
procedure print_by_line(p_text:string);

function set_date_time_ecr: Integer;
function open_reg: Integer;
function open_reg_ecr: Integer;
procedure unreg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep: Integer);
procedure reg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep: Integer);
function annul_ecr(p_name: string; p_price: double; p_quantity: double; p_dep: Integer):Integer;
function close_reg_summ_ecr(p_summa: double): Integer;
function close_reg_ecr: Integer;
procedure rep_wo_clearance(p_mode: Integer);
function rep_clearance: Integer;
function put_money(l_summa: double):Integer;
function take_money(l_summa: double):Integer;
function check_mode: Integer;
function check_mode2: String;

procedure print_string_ecr(p_text: String; //текст
                           p_wrap,         //Перенос 0-нет, 1-по словам, 2-по строке
                           p_align: Integer//Выравнивание 0-по левому краю, 1-по центру, 2-по правому краю
                           );
procedure print_header_ecr(p_text: String; //текст
                           p_wrap,         //Перенос 0-нет, 1-по словам, 2-по строке
                           p_align,        //Выравнивание 0-по левому краю, 1-по центру, 2-по правому краю
                           p_font: Integer // шрифт (для Ритейл)
                           );

function setup_ecr(p_text: String): Integer;

implementation



function set_date_time_ecr: Integer;
var
  AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond: Word;
begin
//Установить Дату и Время в ККМ с компьютера
  Result:=0;
  with Form_main do
  begin
    if ECR.SessionOpened then
    begin
       //Смена открыта, нельзя устанавливать Дату-Время
       Result:=2;
       Exit;
    end;

    // устанавливаем пароль админа
    ECR.Password := '30';
    //режим
    ECR.Mode := 1;
    ECR.SetMode;
    DecodeDateTime(Now, AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond);
    ECR.Day:=ADay;
    ECR.Month:=AMonth;
    ECR.Year:=AYear;

    //устанавливаем дату
    //Два раза вызываем метод (по документации нужно)
    ECR.SetDate;
    if ECR.SetDate <> 0 then
    begin
      Result:=1;
      show_error;
      Exit;
    end;

    ECR.Hour:=AHour;
    ECR.Minute:=AMinute;
    ECR.Second:=ASecond;

    //устанавливаем время
    if ECR.SetTime <> 0 then
    begin
      Result:=1;
      show_error;
      Exit;
    end;
  end;

end;


function setup_ecr(p_text: String): Integer;
var
  l_cur_line, p_ret: Integer;

  procedure set_line(p_text:string);
   var
     i, l_len, l_num:Integer;
  begin
  //загрузить строчку, если длинная - разбить по 39 знаков
    i:=0;
    l_len:= Length(p_text);
    //обрезать текст, не более 39 знаков
    while i < l_len do
    begin
      if ((l_cur_line >= 69) and (l_cur_line <= 88)
        or (l_cur_line >= 0) and (l_cur_line <= 5)
      ) then
//        msg2('Ошибка, не возможно присвоить ECR.CaptionPurpose='+inttostr(l_cur_line)+ '!',
//          'Внимание!', MB_OK+MB_ICONERROR)
      begin
        with Form_main do
        begin
        ECR.CaptionPurpose:=l_cur_line;
        end;
      end;

      if l_len<39 then
      begin
       l_num:=l_len
      end
       else
      begin
        //обрезать остаток
        if i+39 > l_len then
          begin
          l_num:=i+l_len;
          end
        else
          begin
          l_num:=39;
          end;
      end;

      with Form_main do
      begin
        ECR.Caption:=Copy(p_text, i, l_num);
        ECR.SetCaption;
        show_error;
      end;

      i:=i+l_num+1;
      l_cur_line:=l_cur_line+1;
    end;

    //была пустая строка на входе - записываем пустую и перевод строки на следующую
    if l_len=0 then
       begin
        with Form_main do
        begin
        ECR.CaptionPurpose:=l_cur_line;
        ECR.Caption:=p_text;
        ECR.SetCaption;
        end;
        l_cur_line:=l_cur_line+1;
        show_error;
       end;
  end;

begin
//Загрузить установки ККМ
  Result:=0;
  // занимаем порт
  if open_port<>0 then
  begin
    show_error;
    Result:=1;
    Exit;
  end;
  with Form_main do
  begin
    // устанавливаем пароль админа
    ECR.Password := '30';
    //режим программирования
    ECR.Mode := 4;
    ECR.SetMode;

    //Установка параметров
    //Этот блок не смог найти где печатается на чеке, просто очищаю его
    l_cur_line:=0;
{    ECR.CaptionPurpose:=0;
    ECR.Caption:='';
    ECR.SetCaption;
    show_error;}
//    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');

    //Строка типа "Спасибо за покупку!"
{    ECR.CaptionPurpose:=69;
    ECR.Caption:='';
    ECR.SetCaption;
    show_error;}
    l_cur_line:=69;
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');

    //Наименование орг
    l_cur_line:=73;
    set_line('');
    l_cur_line:=74;
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');

    //дальше можно до 88 писать клише рекламного текста)

{    ECR.CaptionPurpose:=75;
    ECR.Caption:=Copy(p_text,40,39);
    ECR.SetCaption;
    show_error;

    ECR.CaptionPurpose:=76; //и вообще дальше можно до 88 писать клише рекламного текста)
    ECR.Caption:=Copy(p_text,80,39);
    ECR.SetCaption;
    show_error;

    ECR.CaptionPurpose:=77; //и вообще дальше можно до 88 писать клише рекламного текста)
    ECR.Caption:=Copy(p_text,120,39);
    ECR.SetCaption;
    show_error;

    ECR.CaptionPurpose:=78; //и вообще дальше можно до 88 писать клише рекламного текста)
    ECR.Caption:=Copy(p_text,160,39);
    ECR.SetCaption;
    show_error;}
    //**

    //VALUEPURPOSE
    //не показывать кол-во товара на ЧЛ
    ECR.ValuePurpose:=80;
    ECR.Value:=0;
    ECR.SetValue;
    //не показывать кол-во товара на КЛ
    ECR.ValuePurpose:=81;
    ECR.Value:=0;
    ECR.SetValue;

    ECR.ValuePurpose:=171;
    ECR.Value:=0;
    ECR.SetValue;

    ECR.ValuePurpose:=167;
    ECR.Value:=0;
    ECR.SetValue;

    ECR.ValuePurpose:=174;
    ECR.Value:=0;
    ECR.SetValue;

    ECR.ValuePurpose:=66;
    ECR.Value:=6;
    ECR.SetValue;

    ECR.ValuePurpose:=67;
    ECR.Value:=6;
    ECR.SetValue;

    //Включить печать отделов
    ECR.ValuePurpose:=72;
    ECR.Value:=3;
    ECR.SetValue;

    //Включить печать отделов в Z отчете
    ECR.ValuePurpose:=207;
    ECR.Value:=1;
    ECR.SetValue;

    //Название 1 отдела
    ECR.CaptionPurpose:=36;
    ECR.Caption:='Отдел 1';
    ECR.SetCaption;

    //Название 2 отдела
    ECR.CaptionPurpose:=37;
    ECR.Caption:='Отдел 2';
    ECR.SetCaption;

    //настроить шрифт ЧЛ
    ECR.ValuePurpose:=62;
    ECR.Value:=3;
    ECR.SetValue;

    //настроить шрифт КЛ
    ECR.ValuePurpose:=63;
    ECR.Value:=3;
    ECR.SetValue;

    //настроить межстрочный интервал ЧЛ
    ECR.ValuePurpose:=60;
    ECR.Value:=1;
    ECR.SetValue;
    //настроить межстрочный интервал КЛ
    ECR.ValuePurpose:=61;
    ECR.Value:=1;
    ECR.SetValue;

    //Выход из режима
    //режим регистрации
    ECR.Mode := 1;
    ECR.SetMode;

//    ECR.ResetMode;
    close_port;

//  »Т»О»Р»Г»О»В»Ы»Й» »О»Б»Ъ»Е»К»Т» »№»1
//    »Д»О»Б»Р»О» »П»О»Ж»А»Л»О»В»А»Т»Ь»!
//    ————————————————————————————————————————
  end;
end;

procedure show_error;
begin
  //Показать ошибку ККМ
  if Form_Main.have_cash=1 then
  begin
    if Form_Main.ECR.ResultCode <> 0 then
    begin
      msg2('Ошибка ККМ: код: '+string(Form_Main.ECR.ResultCode)
           +', описание: ' + string(Form_Main.ECR.ResultDescription)
           + '!', 'Внимание!', MB_OK+MB_ICONERROR);
      if Form_Main.ECR.ResultCode = -16 then   //Вызываемый метод не может быть выполнен в данном режиме
        msg2('Может быть не закрыта предыдущая смена кассы?', 'Внимание!', MB_OK+MB_ICONERROR);
    end;
  end
  else if Form_Main.have_cash=2 then
  begin
    if Form_Main.ECR.ResultCode <> 0 then
    begin
      msg2('Статус ККМ: код: '+string(Form_Main.ECR.ResultCode)
           +', описание: ' + string(Form_Main.ECR.ResultCodeDescription)
           + '!', 'Внимание!', MB_OK+MB_ICONERROR);
    end;
  end;

end;

// Аннулирование открытого чека (вроде не используется нигде) 
function annul_ecr(p_name: string; p_price: double; p_quantity: double; p_dep: Integer):Integer;
begin
  Result:=0;
  with Form_main do
  begin
    if have_cash=1 then
    begin
      ECR.Name := p_name;
      ECR.Price := p_price;
      ECR.Quantity := p_quantity;
      //указать отдел, для приема оплаты по капремонту!
      ECR.Department := p_dep;
      if ECR.Annulate <> 0 then
      begin
        show_error;
        Result:=1;
      end;
    end
    else if have_cash=2 then
    begin
      // входим в режим открытого документа
      ECR.Mode := 8;
      // устанавливаем пароль оператора
      ECR.Password := '1';

      ECR.Name := p_name;
      ECR.Price := p_price;
      ECR.Quantity := p_quantity;
      //указать отдел, для приема оплаты по капремонту!
      ECR.Department := p_dep;
      if ECR.Annulate <> 0 then
      begin
        show_error;
        Result:=1;
      end;
    end;
  end;
end;

//внесение денег в ККМ
function put_money(l_summa: double):Integer;
begin
  Result:=0;
  with Form_main do
  begin
    if have_cash=1 then
    begin
      ECR.Summ := l_summa;
      if ECR.CashIncome <> 0 then
      begin
          Result:=1;
          show_error;
      end;
    end
    else if have_cash=2 then
    begin
      ECR.Summ1 := l_summa;
      ECR.CashIncome;
      if ECR.ResultCode <> 0 then
      begin
          Result:=1;
          show_error
      end;
    end;

  end;
end;

function take_money(l_summa: double):Integer;
begin
//выплата денег из ККМ
  Result:=0;
  with Form_main do
  begin
    if (have_cash=1) then
    begin
      ECR.Summ := l_summa;
      if ECR.CashOutcome <> 0 then
      begin
          Result:=1;
          show_error
      end;
    end
    else
    begin
      ECR.Summ1 := l_summa;
      ECR.CashOutcome;
      if ECR.ResultCode <> 0 then
      begin
          Result:=1;
          show_error
      end;

    end;
  end;
end;

// открыть порт
function open_ecr: Integer;
begin
  Result:=0;
  with Form_main do
  begin
  // занимаем порт
  if (have_cash=1) then
  begin
    if open_port<>0 then
    begin
      show_error;
      Result:=1;
      Exit;
    end;
  end;

  // проверяем на фискализированность
  // странно, почему то выдаёт каждый раз, даже если есть ЭКЛЗ  
  //  if not ECR.Fiscal then
//    msg2('ККМ НЕ фискализирована!', 'Внимание!', MB_OK+MB_ICONSTOP);

  // получаем состояние ККМ
  if (have_cash =1) and (ECR.GetStatus <> 0) then
  begin
   show_error;
   close_port;
   show_error;
   Result:=1;
  end
  else if (have_cash =2) then
  begin
   {
   ECR.GetECRStatus;
   // если ККМ не в режимах "Открытая смена, 24 часа не кончились" и "Открытая смена, 24 часа кончились"
   if (ECR.ECRMode <> 2) and (ECR.ECRMode <> 3) then
   begin
     // показать ошибку
     msg2('ККМ не находится в нужном режиме!','Внимание!',MB_OK);
     msg2('Текущий режим ККМ:'+ECR.ECRModeDescription,'Внимание!',MB_OK);
     Result:=1;
   end;}
  end;
  end;
end;

procedure close_ecr;
begin
  //освобождаем порт
  with Form_main do
  begin
  if (have_cash=1) and (close_port <> 0) then
    Exit;
  end
end;



// открыть смену
function open_session: Integer;
begin
  Result:=0;
  with Form_main do
  begin
    if have_cash=1 then
    begin
      // устанавливаем пароль админа
      ECR.Password := '30';
      if ECR.SessionOpened then
      begin
         //Смена уже открыта
         Result:=1;
         Exit;
      end;
      //Открываем смену
      if ECR.OpenSession <> 0 then
      begin
        Result:=2;
        show_error;
      end;
    end
    else if have_cash=2 then
    begin
      // устанавливаем пароль оператора
      ECR.Password := '1';
      ECR.GetECRStatus;
      
      if (ECR.ECRMode = 2) or (ECR.ECRMode = 3) then
      begin
         //Смена уже открыта
         Result:=1;
         Exit;
      end;

      //Открываем смену
      ECR.OpenSession;
      if ECR.ResultCode <> 0 then  // вроде не возвращает эта функция ничего, зачем нужен <> 0 ?
      begin
        Result:=2;
        show_error;
      end;

    end;  
  end;
end;

procedure rep_wo_clearance(p_mode: Integer);
begin
  //X-отчет, без гашения
  with Form_main do
  begin
    if have_cash=1 then
    begin
      // устанавливаем пароль админа
      ECR.Password := '30';
      // входим в режим отчетов без гашения
      ECR.Mode := 2;
      if ECR.SetMode <> 0 then
      begin
        show_error;
        Exit;
      end;
      // снимаем отчет
      ECR.ReportType := p_mode;
      if ECR.Report <> 0 then
       show_error;
    end
    else if have_cash=2 then
    begin
      // устанавливаем пароль админа
      ECR.Password := '30';
      // снимаем отчет
      ECR.PrintReportWithoutCleaning;
      show_error;

    end;
  end;
end;

function rep_clearance: Integer;
begin
  //Z-отчет, с гашением
  Result:=0;
  with Form_main do
  begin
    if have_cash=1 then
    begin
      // устанавливаем пароль админа
      ECR.Password := '30';
      // входим в режим отчетов c гашением
      ECR.Mode := 3;
      if ECR.SetMode <> 0 then
      begin
        Result:=1;
        show_error;
        Exit;
      end;
      // снимаем отчет
      ECR.ReportType := 1;
      if ECR.Report <> 0 then
      begin
        Result:=1;
        show_error;
      end;
   end
   else if have_cash=2 then
   begin
      // устанавливаем пароль админа
      ECR.Password := '30';
      // запросить статус
      ECR.GetShortECRStatus;
      // Работает в режимах 2 и 3 (см. свойство ECRMode).
      if (ECR.ECRMode = 2) or (ECR.ECRMode = 3) then
      begin
        ECR.PrintReportWithCleaning;
        // запросить статус
        ECR.GetECRStatus;
        // Если не перешло в режим закрытой смены, то - ошибка
        if ECR.ECRMode <> 4 then
        begin
          Result:=1;
          show_error;
          Exit;
        end;
      end
      else
      begin
        // ККМ находится в некорректном режиме
        msg2('Некорректный режим ККМ! ECRMode='+string(Form_Main.ECR.ECRMode)
             +', ECRModeDescription: ' + string(Form_Main.ECR.ECRModeDescription)
             + '!', 'Внимание!', MB_OK+MB_ICONERROR);
      end;
      
   end;
  end;
end;

// войти в режим регистрации
function open_reg_ecr: Integer;
begin
  Result:=0;
  with Form_main do
  begin
    // устанавливаем пароль админа
    ECR.Password := '30';
    if have_cash=1 then
    begin
      // входим в режим регистрации
      ECR.Mode := 1;
      if ECR.SetMode <> 0 then
      begin
        Result:=1;
        show_error;
      end;
    end;
  end;
end;

function close_reg_summ_ecr(p_summa: double): Integer;
begin
  // закрытие чека наличными со сдачей
  Result:=0;
  with Form_main do
  begin
    if have_cash=1 then
    begin
      ECR.Summ := p_summa;
      ECR.TypeClose := 0;
      if ECR.Delivery <> 0 then
      begin
        Result:=1;
        show_error;
      end;
    end
    else if have_cash=2 then
    begin
      ECR.Password := '1';
      ECR.Summ1 := p_summa;
      ECR.StringForPrinting := '==========================================';
      ECR.CloseCheck;
      show_error;
    end;
  end;
end;


// проверить режим ККМ
function check_mode: Integer;
begin
  Result:=0;
  with Form_main do
  begin
    if have_cash=2 then
    begin
      // запросить статус
      ECR.GetShortECRStatus;
      // Работает в режимах 2 и 3 (см. свойство ECRMode).
      Result:=ECR.ECRMode;
    end
    else
    begin
      // для других ККМ

    end;
  end;
end;

// проверить режим ККМ с описанием
function check_mode2: String;
begin
  Result:='';
  with Form_main do
  begin
    if have_cash=2 then
    begin
      // запросить статус
      ECR.GetShortECRStatus;
      // Работает в режимах 2 и 3 (см. свойство ECRMode).
      Result:=ECR.ECRModeDescription;
    end
    else
    begin
      // для других ККМ

    end;
  end;
end;

// открыть чек
function open_reg: Integer;
begin
  Result:=0;
  with Form_main do
  begin
    if have_cash=2 then
    begin
      ECR.Password := '1';
      ECR.CheckType := 0;  // тип - продажа
      ECR.OpenCheck;
      if ECR.ResultCode <> 0 then
      begin
        show_error;
        Result:=1;
      end;
    end;
  end;
end;

// закрыть чек
function close_reg_ecr: Integer;
begin
  Result:=0;
  with Form_main do
  begin
    if have_cash=1 then
    begin
      ECR.TypeClose := 0;
      if ECR.CloseCheck <> 0 then
      begin
        Result:=1;
        show_error;
      end;
    end
    else if have_cash=2 then
    begin
      // закрыть чек
      ECR.Password := '1';
      ECR.Summ1 := 0;
      ECR.StringForPrinting := '===================';
      ECR.CloseCheck;
      show_error;
    end;
  end;
end;

// печать по строкам (тупой Ритейл, не может переносить строки)
procedure print_by_line(p_text:string);
var i, j, a: Integer;
 str: String;
begin
  i:=0;
  j:=0;
  a:=41; // длина строки
  while i < Length(p_text) do
  begin
     i:=i+a;
     if i > Length(p_text) then
       i:=Length(p_text);
     str:=Copy(p_text, j, i);
      with Form_main do
      begin
       ECR.StringForPrinting:=str;
       ECR.PrintString;
      end; 
     j:=j+a+1;
     if j > Length(p_text) then
       Exit;
  end;

end;

procedure print_string_ecr(p_text: String; //текст
                           p_wrap,         //Перенос 0-нет, 1-по словам, 2-по строке
                           p_align: Integer//Выравнивание 0-по левому краю, 1-по центру, 2-по правому краю
                           );
begin
//Печать строки
  with Form_main do
  begin
    if have_cash=1 then
    begin
      ECR.TextWrap:=p_wrap;
      ECR.Caption := p_text;
      ECR.Alignment := p_align;
      ECR.PrintString;
      show_error;
    end
    else if have_cash=2 then
    begin
      ECR.Password:='1';
      ECR.UseReceiptRibbon:=false;
      ECR.UseJournalRibbon:=true;

      print_by_line(p_text);
    end;
  end;
end;

procedure print_header_ecr(p_text: String; //текст
                           p_wrap,         //Перенос 0-нет, 1-по словам, 2-по строке
                           p_align,//Выравнивание 0-по левому краю, 1-по центру, 2-по правому краю
                           p_font: Integer // шрифт (для Ритейл)
                           );
begin
//Печать строки какого-нибудь заголовка
  with Form_main do
  begin
    if have_cash=1 then
    begin
      ECR.Caption := p_text;
      ECR.FontDblWidth := 1;
      ECR.FontBold := 1;
      ECR.RecFontHeight:=1;
      ECR.Alignment := p_align;
      ECR.TextWrap:=p_wrap;
      ECR.AddField;
      ECR.PrintField;
      show_error;
    end
    else if have_cash=2 then
    begin
      ECR.Password:='1';
      ECR.UseReceiptRibbon:=true;
      ECR.UseJournalRibbon:=true;
      ECR.StringForPrinting:=p_text;
      if p_font=1 then
        ECR.PrintWideString
      else
        ECR.PrintString;
      show_error;
    end;
  end;
end;

// регистрация продажи
procedure reg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep: Integer);
begin
  with Form_main do
  begin
    if have_cash=1 then
    begin
      ECR.Name := p_name;
      ECR.Price := p_price;
      ECR.Quantity := p_quantity;
      //указать отдел
      ECR.Department := p_dep;
      if ECR.Registration <> 0 then
        show_error;
    end
    else if have_cash=2 then
    begin
      // продажа
      ECR.Password := '1';
      // запросить статус
      ECR.GetShortECRStatus;
      ECR.StringForPrinting := p_name;
      ECR.Price := p_price;
      ECR.Quantity := p_quantity;
      //указать отдел
      ECR.Department := p_dep;
      ECR.Sale;
      show_error;


    end;
  end;
end;

// возврат продажи
procedure unreg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep: Integer);
begin
  with Form_main do
  begin
    // только для 2 типа
    if have_cash=2 then
    begin
      // продажа
      ECR.Password := '1';
      ECR.StringForPrinting := p_name;
      ECR.Price := p_price;
      ECR.Quantity := p_quantity;
      //указать отдел
      ECR.Department := p_dep;
      ECR.ReturnSale;
      show_error;
    end;
  end;
end;

function calc_pads(p_txt:String): String;
var
  i:Integer;
begin
//рассчитать строку пробелов, для форматирования наименования платежа

 Result:='';
 for i:=1 to 18-Length(p_txt) do
 begin
  Result:=Result+' ';
 end;

end;

function open_port: Integer;
begin
  // занимаем порт
  with Form_main do
  begin
    if have_cash=1 then
      begin
      ECR.DeviceEnabled := true;
      Result:=0;
      if ECR.ResultCode <> 0 then
      begin
        show_error;
        Result:=1;
      end;
    end
    else if have_cash=2 then
    begin
      Result:=0;
    end;
  end;
end;

function close_port: Integer;
begin
  // освобождаем порт
  with Form_main do
  begin
    ECR.DeviceEnabled := false;
    Result:=0;
    if ECR.ResultCode <> 0 then
    begin
      show_error;
      Result:=1;
    end;
  end;
end;

end.
