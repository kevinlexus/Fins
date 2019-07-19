unit Unit_ECR;

interface

uses
  Unit_Mainform, Utils, Windows, SysUtils, DateUtils;

procedure show_error(ECR: OleVariant; errStep: string);
function show_error2(ECR: OleVariant; errStep: string): Integer;

function open_port_ecr(ECR: OleVariant): Integer;
procedure close_port_ecr(ECR: OleVariant);
function open_session(ECR: OleVariant): Integer;
function open_port(ECR: OleVariant): Integer;
function close_port(ECR: OleVariant): Integer;
function calc_pads(p_txt: string): string;
function calc_pads2(place: Integer; p_txt: string): string;
procedure print_by_line(p_text: string; ECR: OleVariant);
function annulment(ECR: OleVariant): Integer;

function set_date_time_ecr(ECR: OleVariant): Integer;
function open_reg(ECR: OleVariant): Integer;
function open_reg_ecr(ECR: OleVariant): Integer;
function check_status_and_wait(ECR: OleVariant): Integer;
procedure unreg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep:
  Integer; ECR: OleVariant);
procedure reg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep:
  Integer;
  var F: TextFile; ECR: OleVariant
  );
procedure reg_ecr_ext(p_name: string; p_price: double; p_quantity: double;
  p_dep:
  Integer;
  var F: TextFile;
  ECR: OleVariant
  );
function close_reg_summ_ecr(p_summa: double; ECR: OleVariant; tp: Integer;
  var F: TextFile
  ): Integer;
function close_reg_summ_ecr_ext(p_summa: double; ECR: OleVariant; tp: Integer;
  var F: TextFile
  ): Integer;
function close_reg_ecr(ECR: OleVariant): Integer;
procedure rep_wo_clearance(p_mode: Integer; ECR: OleVariant);
function rep_clearance(ECR: OleVariant): Integer;
function put_money(l_summa: double; ECR: OleVariant): Integer;
function take_money(l_summa: double; ECR: OleVariant): Integer;
function check_mode(ECR: OleVariant): Integer;
function check_mode2(ECR: OleVariant): string;

procedure print_string_ecr(p_text: string;
  p_wrap,
  p_align: Integer; ECR: OleVariant
  );

procedure print_string_ecr2(p_text: string;
  p_wrap,
  p_align: Integer;
  var F: TextFile; ECR: OleVariant
  );

procedure print_header_ecr(p_text: string; //текст
  p_wrap, //Перенос 0-нет, 1-по словам, 2-по строке
  p_align, //Выравнивание 0-по левому краю, 1-по центру, 2-по правому краю
  p_font: Integer; // шрифт (для Ритейл)
  var F: TextFile; // текстовый файл
  ECR: OleVariant
  );

function setup_ecr(p_text: string; ECR: OleVariant): Integer;

implementation

function set_date_time_ecr(ECR: OleVariant): Integer;
var
  AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond: Word;
begin
  //Установить Дату и Время в ККМ с компьютера
  Result := 0;
  if ECR.SessionOpened then
  begin
    //Смена открыта, нельзя устанавливать Дату-Время
    Result := 2;
    Exit;
  end;

  // устанавливаем пароль админа
  ECR.Password := '30';
  //режим
  ECR.Mode := 1;
  ECR.SetMode;
  DecodeDateTime(Now, AYear, AMonth, ADay, AHour, AMinute, ASecond,
    AMilliSecond);
  ECR.Day := ADay;
  ECR.Month := AMonth;
  ECR.Year := AYear;

  //устанавливаем дату
  //Два раза вызываем метод (по документации нужно)
  ECR.SetDate;
  if ECR.SetDate <> 0 then
  begin
    Result := 1;
    show_error(ECR, '1');
    Exit;
  end;

  ECR.Hour := AHour;
  ECR.Minute := AMinute;
  ECR.Second := ASecond;

  //устанавливаем время
  if ECR.SetTime <> 0 then
  begin
    Result := 1;
    show_error(ECR, '2');
    Exit;
  end;

end;

function setup_ecr(p_text: string; ECR: OleVariant): Integer;
var
  l_cur_line, p_ret: Integer;

  procedure set_line(p_text: string);
  var
    i, l_len, l_num: Integer;
  begin
    //загрузить строчку, если длинная - разбить по 39 знаков
    i := 0;
    l_len := Length(p_text);
    //обрезать текст, не более 39 знаков
    while i < l_len do
    begin
      if ((l_cur_line >= 69) and (l_cur_line <= 88)
        or (l_cur_line >= 0) and (l_cur_line <= 5)
        ) then
      begin
        ECR.CaptionPurpose := l_cur_line;
      end;

      if l_len < 39 then
      begin
        l_num := l_len
      end
      else
      begin
        //обрезать остаток
        if i + 39 > l_len then
        begin
          l_num := i + l_len;
        end
        else
        begin
          l_num := 39;
        end;
      end;

      ECR.Caption := Copy(p_text, i, l_num);
      ECR.SetCaption;
      show_error(ECR, '3');

      i := i + l_num + 1;
      l_cur_line := l_cur_line + 1;
    end;

    //была пустая строка на входе - записываем пустую и перевод строки на следующую
    if l_len = 0 then
    begin
      ECR.CaptionPurpose := l_cur_line;
      ECR.Caption := p_text;
      ECR.SetCaption;
      l_cur_line := l_cur_line + 1;
      show_error(ECR, '4');
    end;
  end;

begin
  Result := 0;
  if Form_main.cash_test = 0 then
  begin
    // если не тестовый чек
    // загрузить установки ККМ
    // занимаем порт
    if open_port(ECR) <> 0 then
    begin
      show_error(ECR, '5');
      Result := 1;
      Exit;
    end;
    // устанавливаем пароль админа
    ECR.Password := '30';
    // режим программирования
    ECR.Mode := 4;
    ECR.SetMode;

    // Установка параметров
    // этот блок не смог найти где печатается на чеке, просто очищаю его
    l_cur_line := 0;
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');

    // строка типа "Спасибо за покупку!"
    l_cur_line := 69;
    set_line('');
    set_line('');
    set_line('');
    set_line('');
    set_line('');

    // наименование орг
    l_cur_line := 73;
    set_line('');
    l_cur_line := 74;
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

    // VALUEPURPOSE
    // не показывать кол-во товара на ЧЛ
    ECR.ValuePurpose := 80;
    ECR.Value := 0;
    ECR.SetValue;
    // не показывать кол-во товара на КЛ
    ECR.ValuePurpose := 81;
    ECR.Value := 0;
    ECR.SetValue;

    ECR.ValuePurpose := 171;
    ECR.Value := 0;
    ECR.SetValue;

    ECR.ValuePurpose := 167;
    ECR.Value := 0;
    ECR.SetValue;

    ECR.ValuePurpose := 174;
    ECR.Value := 0;
    ECR.SetValue;

    ECR.ValuePurpose := 66;
    ECR.Value := 6;
    ECR.SetValue;

    ECR.ValuePurpose := 67;
    ECR.Value := 6;
    ECR.SetValue;

    // Включить печать отделов
    ECR.ValuePurpose := 72;
    ECR.Value := 3;
    ECR.SetValue;

    // Включить печать отделов в Z отчете
    ECR.ValuePurpose := 207;
    ECR.Value := 1;
    ECR.SetValue;

    // Название 1 отдела
    ECR.CaptionPurpose := 36;
    ECR.Caption := 'Отдел 1';
    ECR.SetCaption;

    // Название 2 отдела
    ECR.CaptionPurpose := 37;
    ECR.Caption := 'Отдел 2';
    ECR.SetCaption;

    // настроить шрифт ЧЛ
    ECR.ValuePurpose := 62;
    ECR.Value := 3;
    ECR.SetValue;

    // настроить шрифт КЛ
    ECR.ValuePurpose := 63;
    ECR.Value := 3;
    ECR.SetValue;

    // настроить межстрочный интервал ЧЛ
    ECR.ValuePurpose := 60;
    ECR.Value := 1;
    ECR.SetValue;
    // настроить межстрочный интервал КЛ
    ECR.ValuePurpose := 61;
    ECR.Value := 1;
    ECR.SetValue;

    // Выход из режима
    // режим регистрации
    ECR.Mode := 1;
    ECR.SetMode;

    // ECR.ResetMode;
    close_port(ECR);
  end;
end;

procedure show_error(ECR: OleVariant; errStep: string);
var
  res: Integer;
begin
  res:=show_error2(ECR, errStep);
end;


function show_error2(ECR: OleVariant; errStep: string): Integer;
begin
  Result:=0;
  //Показать ошибку ККМ
  if Form_Main.have_cash = 1 then
  begin
    if ECR.ResultCode <> 0 then
    begin
      Result:=1;
      msg2('Ошибка ККМ на шаге:' + errStep + ', код: ' + string(ECR.ResultCode)
        + ', описание: ' + string(ECR.ResultDescription)
        + '!', 'Внимание!', MB_OK + MB_ICONERROR);
      if ECR.ResultCode = -16 then
        //Вызываемый метод не может быть выполнен в данном режиме
        msg2('Может быть не закрыта предыдущая смена кассы?', 'Внимание!', MB_OK
          + MB_ICONERROR);
    end;
  end
  else if Form_Main.have_cash = 2 then
  begin
    if ECR.ResultCode <> 0 then
    begin
      Result:=1;
      msg2('Статус ККМ на шаге:' + errStep + ',: код: ' + string(ECR.ResultCode)
        + ', описание: ' + string(ECR.ResultCodeDescription)
        + '!', 'Внимание!', MB_OK + MB_ICONERROR);
    end;
  end;
end;


//внесение денег в ККМ

function put_money(l_summa: double; ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_Main.have_cash = 1 then
  begin
    ECR.Summ := l_summa;
    if ECR.CashIncome <> 0 then
    begin
      Result := 1;
      show_error(ECR, '8');
    end;
  end
  else if Form_Main.have_cash = 2 then
  begin
    ECR.Summ1 := l_summa;
    ECR.CashIncome;
    if ECR.ResultCode <> 0 then
    begin
      Result := 1;
      show_error(ECR, '9')
    end;
  end;

end;

function take_money(l_summa: double; ECR: OleVariant): Integer;
begin
  //выплата денег из ККМ
  Result := 0;
  if (Form_Main.have_cash = 1) then
  begin
    ECR.Summ := l_summa;
    if ECR.CashOutcome <> 0 then
    begin
      Result := 1;
      show_error(ECR, '10');
    end;
  end
  else
  begin
    ECR.Summ1 := l_summa;
    ECR.CashOutcome;
    if ECR.ResultCode <> 0 then
    begin
      Result := 1;
      show_error(ECR, '11');
    end;

  end;
end;

// открыть порт

function open_port_ecr(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_main.cash_test = 0 then
  begin
    // если не тестовый чек
      // занимаем порт
    if (Form_Main.have_cash = 1) then
    begin
      if open_port(ECR) <> 0 then
      begin
        show_error(ECR, '12');
        Result := 1;
        Exit;
      end;
    end;

    // проверяем на фискализированность
    // странно, почему то выдаёт каждый раз, даже если есть ЭКЛЗ
    //  if not ECR.Fiscal then
    //    msg2('ККМ НЕ фискализирована!', 'Внимание!', MB_OK+MB_ICONSTOP);

    // получаем состояние ККМ
    if (Form_Main.have_cash = 1) and (ECR.GetStatus <> 0) then
    begin
      show_error(ECR, '13');
      close_port(ECR);
      show_error(ECR, '14');
      Result := 1;
    end
    else if (Form_Main.have_cash = 2) then
    begin
      try
        ECR.GetECRStatus;
      except
        Result := 1;
      end;
    end;
  end;
end;

procedure close_port_ecr(ECR: OleVariant);
begin
  if Form_main.cash_test = 0 then
  begin
    // если не тестовый чек
    // освобождаем порт
    if (Form_Main.have_cash = 1) and (close_port(ECR) <> 0) then
      Exit;
  end;
end;

// открыть смену

function open_session(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_Main.have_cash = 1 then
  begin
    // устанавливаем пароль админа
    ECR.Password := '30';
    if ECR.SessionOpened then
    begin
      //Смена уже открыта
      Result := 1;
      Exit;
    end;
    //Открываем смену
    if ECR.OpenSession <> 0 then
    begin
      Result := 2;
      show_error(ECR, '15');
    end;
  end
  else if Form_Main.have_cash = 2 then
  begin
    // устанавливаем пароль оператора
    ECR.Password := '1';
    ECR.GetECRStatus;

    if (ECR.ECRMode = 2) or (ECR.ECRMode = 3) then
    begin
      //Смена уже открыта
      Result := 1;
      Exit;
    end;

    //Открываем смену
    ECR.OpenSession;
    if ECR.ResultCode <> 0 then
      // вроде не возвращает эта функция ничего, зачем нужен <> 0 ?
    begin
      Result := 2;
      show_error(ECR, '16');
    end;

  end;
end;

procedure rep_wo_clearance(p_mode: Integer; ECR: OleVariant);
begin
  //X-отчет, без гашения
  if Form_Main.have_cash = 1 then
  begin
    // устанавливаем пароль админа
    ECR.Password := '30';
    // входим в режим отчетов без гашения
    ECR.Mode := 2;
    if ECR.SetMode <> 0 then
    begin
      show_error(ECR, '17');
      Exit;
    end;
    // снимаем отчет
    ECR.ReportType := p_mode;
    if ECR.Report <> 0 then
      show_error(ECR, '18');
  end
  else if Form_Main.have_cash = 2 then
  begin
    // устанавливаем пароль админа
    ECR.Password := '30';
    // снимаем отчет
    ECR.PrintReportWithoutCleaning;
    show_error(ECR, '19');
  end;
end;

function rep_clearance(ECR: OleVariant): Integer;
begin
  //Z-отчет, с гашением
  Result := 0;
  if Form_Main.have_cash = 1 then
  begin
    // устанавливаем пароль админа
    ECR.Password := '30';
    // входим в режим отчетов c гашением
    ECR.Mode := 3;
    if ECR.SetMode <> 0 then
    begin
      Result := 1;
      show_error(ECR, '20');
      Exit;
    end;
    // снимаем отчет
    ECR.ReportType := 1;
    if ECR.Report <> 0 then
    begin
      Result := 1;
      show_error(ECR, '21');
    end;
  end
  else if Form_Main.have_cash = 2 then
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
        Result := 1;
        show_error(ECR, '22');
        Exit;
      end;
    end
    else
    begin
      // ККМ находится в некорректном режиме
      msg2('Некорректный режим ККМ! ECRMode=' + string(ECR.ECRMode)
        + ', ECRModeDescription: ' + string(ECR.ECRModeDescription)
        + '!', 'Внимание!', MB_OK + MB_ICONERROR);
    end;

  end;
end;

// войти в режим регистрации

function open_reg_ecr(ECR: OleVariant): Integer;
begin
  Result := 0;
  // устанавливаем пароль админа
  ECR.Password := '30';
  if Form_Main.have_cash = 1 then
  begin
    // входим в режим регистрации
    ECR.Mode := 1;
    if ECR.SetMode <> 0 then
    begin
      Result := 1;
      show_error(ECR, '23');
    end;
  end;
end;

// закрыть чек
// p_summa - итог суммы
// ECR - OLE текущей кассы
// tp - тип операции: 0-наличка, 1-безнал

function close_reg_summ_ecr(p_summa: double; ECR: OleVariant; tp: Integer;
  var F: TextFile // текстовый файл
  ): Integer;
begin
  Result := 0;
  if Form_main.cash_test = 0 then
  begin
    // если не тестовый чек
    // закрытие чека наличными со сдачей
    if Form_main.have_cash = 1 then
    begin
      ECR.Summ := p_summa;
      ECR.TypeClose := 0;
      if ECR.Delivery <> 0 then
      begin
        Result := 1;
        show_error(ECR, '24');
      end;
    end
    else if Form_main.have_cash = 2 then
    begin
      // наличка
      ECR.Summ1 := p_summa;
      ECR.Password := '1';
      ECR.StringForPrinting := '==========================================';
      ECR.CloseCheck;
      show_error(ECR, '25');
    end;
  end
  else
  begin
    Writeln(F, 'Регистрация чека, сумма=' + FloatToStr(p_summa));
  end;
end;

// закрыть чек - расширенно (для ТСЖ)
// p_summa - итог суммы
// ECR - OLE текущей кассы
// tp - тип операции: 0-наличка, 1-безнал

function close_reg_summ_ecr_ext(p_summa: double; ECR: OleVariant; tp: Integer;
  var F: TextFile // текстовый файл
  ): Integer;
begin
  Result := 0;
  if Form_main.cash_test = 0 then
  begin
    // если не тестовый чек
    if tp = 1 then
    begin
      // наличка
      ECR.Summ1 := p_summa;
      ECR.Summ2 := 0;
      ECR.Summ3 := 0;
      ECR.Summ4 := 0;
    end
    else if tp = 2 then
    begin
      // эквайринг
      ECR.Summ1 := 0;
      ECR.Summ2 := 0;
      ECR.Summ3 := p_summa;
      ECR.Summ4 := 0;
    end
    else if tp = 3 then
    begin
      // перечисление безналично
      ECR.Summ1 := 0;
      ECR.Summ2 := 0;
      ECR.Summ3 := p_summa;
      ECR.Summ4 := 0;
    end;

    ECR.Password := '1';
    ECR.StringForPrinting := '==========================================';
    ECR.CloseCheck;
    if show_error2(ECR, '25') = 0 then
      // дубль чека
      ECR.RepeatDocument
    else
      Result := 1;
  end
  else
  begin
    Writeln(F, 'Регистрация чека, сумма=' + FloatToStr(p_summa));
  end;
end;

// проверить режим ККМ

function check_mode(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_main.cash_test = 0 then
  begin
    // не тестовый режим
    if Form_Main.have_cash = 2 then
    begin
      // запросить статус
      ECR.GetShortECRStatus;
      // Работает в режимах 2 и 3 (см. свойство ECRMode).
      Result := ECR.ECRMode;
    end
    else
    begin
      // для других ККМ

    end;
  end
  else
  begin
    // тестовый режим печати чека
    Result := 2;
  end;
end;

// проверить режим ККМ с описанием

function check_mode2(ECR: OleVariant): string;
begin
  Result := '';
  if Form_main.cash_test = 0 then
  begin
    // не тестовый режим
    if Form_Main.have_cash = 2 then
    begin
      // запросить статус
      ECR.GetShortECRStatus;
      // Работает в режимах 2 и 3 (см. свойство ECRMode).
      Result := ECR.ECRModeDescription;
    end
    else
    begin
      // для других ККМ

    end;
  end
  else
  begin
    // тестовый режим печати чека
    Result := 'Ошибка в тестовом режиме!';
  end;
end;

// открыть чек

function open_reg(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_main.cash_test = 0 then
  begin
    // не тестовый режим
    if Form_Main.have_cash = 2 then
    begin
      ECR.Password := '1';
      ECR.CheckType := 0; // тип - продажа
      ECR.OpenCheck;
      if ECR.ResultCode <> 0 then
      begin
        show_error(ECR, '26');
        Result := 1;
      end;
    end;
  end;
end;

// Аннулирование
function annulment(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_main.cash_test = 0 then
  begin
    // не тестовый режим
    if Form_Main.have_cash = 2 then
    begin
      ECR.Password := '1';
      ECR.Annulment;
      if ECR.ResultCode <> 0 then
      begin
        show_error(ECR, '37');
        Result := 1;
      end;
    end;
  end;
end;

// закрыть чек

function close_reg_ecr(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_main.cash_test = 0 then
  begin
    if Form_Main.have_cash = 1 then
    begin
      ECR.TypeClose := 0;
      if ECR.CloseCheck <> 0 then
      begin
        Result := 1;
        show_error(ECR, '27');
      end;
    end
    else if Form_Main.have_cash = 2 then
    begin
      // закрыть чек
      ECR.Password := '1';
      ECR.Summ1 := 0;
      ECR.StringForPrinting := '===================';
      ECR.CloseCheck;
      show_error(ECR, '28');
    end;
  end;
end;

// печать по строкам (тупой Ритейл, не может переносить строки)

procedure print_by_line(p_text: string; ECR: OleVariant);
var
  i, j, a: Integer;
  str: string;
begin
  i := 0;
  j := 0;
  a := 41; // длина строки
  while i < Length(p_text) do
  begin
    i := i + a;
    if i > Length(p_text) then
      i := Length(p_text);
    str := Copy(p_text, j, i);
    ECR.StringForPrinting := str;
    ECR.PrintString;
    j := j + a + 1;
    if j > Length(p_text) then
      Exit;
  end;

end;

procedure print_string_ecr(p_text: string; //текст
  p_wrap, //Перенос 0-нет, 1-по словам, 2-по строке
  p_align: Integer;
  //Выравнивание 0-по левому краю, 1-по центру, 2-по правому краю
  ECR: OleVariant
  );
var
  F: TextFile; // текстовый файл (null ссылка)
begin
  print_string_ecr2(p_text, p_wrap, p_align, F, ECR);
end;

procedure print_string_ecr2(p_text: string; //текст
  p_wrap, //Перенос 0-нет, 1-по словам, 2-по строке
  p_align: Integer;
  //Выравнивание 0-по левому краю, 1-по центру, 2-по правому краю
  var F: TextFile; // текстовый файл
  ECR: OleVariant
  );
begin
  if Form_main.cash_test = 0 then
  begin
    // печать строки, если не тестовый режим
    if Form_Main.have_cash = 1 then
    begin
      ECR.TextWrap := p_wrap;
      ECR.Caption := p_text;
      ECR.Alignment := p_align;
      ECR.PrintString;
      show_error(ECR, '29');
    end
    else if Form_Main.have_cash = 2 then
    begin
      ECR.Password := '1';
      ECR.UseReceiptRibbon := false;
      ECR.UseJournalRibbon := true;

      print_by_line(p_text, ECR);
    end;
  end
  else
  begin
    // тестовый режим, печать, если указан файл
    Writeln(f, p_text);
  end;

end;

// печать строки заголовка

procedure print_header_ecr(p_text: string; //текст
  p_wrap, //Перенос 0-нет, 1-по словам, 2-по строке
  p_align, //Выравнивание 0-по левому краю, 1-по центру, 2-по правому краю
  p_font: Integer; // шрифт (для Ритейл)
  var F: TextFile; // текстовый файл
  ECR: OleVariant
  );
begin
  if Form_main.cash_test = 0 then
  begin
    // если не тестовый чек
    if Form_Main.have_cash = 1 then
    begin
      ECR.Caption := p_text;
      ECR.FontDblWidth := 1;
      ECR.FontBold := 1;
      ECR.RecFontHeight := 1;
      ECR.Alignment := p_align;
      ECR.TextWrap := p_wrap;
      ECR.AddField;
      ECR.PrintField;
      show_error(ECR, '30');
    end
    else if Form_Main.have_cash = 2 then
    begin
      ECR.Password := '1';
      ECR.UseReceiptRibbon := true;
      ECR.UseJournalRibbon := true;
      ECR.StringForPrinting := p_text;
      if p_font = 1 then
        ECR.PrintWideString
      else
        ECR.PrintString;
      show_error(ECR, '31');
    end;
  end
  else
  begin
    // тестовый чек
    Writeln(f, p_text);
  end;

end;

// регистрация продажи

procedure reg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep:
  Integer;
  var F: TextFile; // текстовый файл
  ECR: OleVariant
  );
begin
  if Form_main.cash_test = 0 then
  begin
    // если не тестовый чек
    if Form_main.have_cash = 1 then
    begin
      ECR.Name := p_name;
      ECR.Price := p_price;
      ECR.Quantity := p_quantity;
      //указать отдел
      ECR.Department := p_dep;
      if ECR.Registration <> 0 then
        show_error(ECR, '32');
    end
    else if Form_main.have_cash = 2 then
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
      show_error(ECR, '33');
    end;
  end
  else
  begin
    // тестовый чек
    Writeln(f, p_name + ' ' + FloatToStr(p_quantity) + 'шт x '
      + FloatToStr(p_price));
  end;
end;

// регистрация продажи - новая версия (для ТСЖ)

procedure reg_ecr_ext(p_name: string; p_price: double; p_quantity: double;
  p_dep:
  Integer;
  var F: TextFile; // текстовый файл
  ECR: OleVariant
  );
begin
  if Form_main.cash_test = 0 then
  begin
    // если не тестовый чек
      // продажа
    ECR.Password := '1';
    // запросить статус
    ECR.GetShortECRStatus;
    ECR.StringForPrinting := p_name;
    ECR.Price := p_price;
    ECR.Quantity := p_quantity;
    //указать отдел
    ECR.Department := p_dep;
    // налог не рассчитывать
    ECR.TaxValueEnabled := False;

    ECR.Sale;
    show_error(ECR, '33');

    // напечатать НДС 0%
    ECR.UseReceiptRibbon := false;
    ECR.UseJournalRibbon := true;

    print_by_line('НДС 0%', ECR);
  end
  else
  begin
    // тестовый чек
    Writeln(f, p_name + ' ' + FloatToStr(p_quantity) + 'шт x '
      + FloatToStr(p_price));
  end;
end;

// возврат продажи

procedure unreg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep:
  Integer; ECR: OleVariant);
begin
  // только для 2 типа
  if Form_Main.have_cash = 2 then
  begin
    // продажа
    ECR.Password := '1';
    ECR.StringForPrinting := p_name;
    ECR.Price := p_price;
    ECR.Quantity := p_quantity;
    //указать отдел
    ECR.Department := p_dep;
    ECR.ReturnSale;
    show_error(ECR, '34');
  end;
end;

function calc_pads(p_txt: string): string;
var
  i: Integer;
begin
  //рассчитать строку пробелов, для форматирования наименования платежа

  Result := '';
  for i := 1 to 18 - Length(p_txt) do
  begin
    Result := Result + ' ';
  end;

end;

// вернуть кол-во пробелов
// place - место на котором начать печатать, p_text - текст, от которого отступить

function calc_pads2(place: Integer; p_txt: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to place - Length(p_txt) do
  begin
    Result := Result + ' ';
  end;

end;

function open_port(ECR: OleVariant): Integer;
begin
  // занимаем порт
  if Form_Main.have_cash = 1 then
  begin
    ECR.DeviceEnabled := true;
    Result := 0;
    if ECR.ResultCode <> 0 then
    begin
      show_error(ECR, '35');
      Result := 1;
    end;
  end
  else if Form_Main.have_cash = 2 then
  begin
    Result := 0;
  end;
end;

function close_port(ECR: OleVariant): Integer;
begin
  // освобождаем порт
  ECR.DeviceEnabled := false;
  Result := 0;
  if ECR.ResultCode <> 0 then
  begin
    show_error(ECR, '36');
    Result := 1;
  end;
end;

// получение статуса, ожидает окончание печати

function check_status_and_wait(ECR: OleVariant): Integer;
var
  i: Integer;
begin
  i := 0;
  // ждать 30 сек., пока не сменится статус "Печать"
  while (ECR.ResultCode = 80) and (i <= 30) do
  begin
    Sleep(1000);
    i := i + 1;
  end;

  Result := ECR.ResultCode;
end;

end.

