unit Utils;

interface
uses Forms, Classes, SysUtils, Dialogs, OracleData, DB, DBF, Windows,
  Wwdbgrid, DM_module1, oracle, Math, ShlObj, Controls, Messages,
  ComCtrls, Menus, Unit_smpl_chk, StrUtils, Winsock, Uni, Variants,
  cxEdit, cxDBEdit, cxEditConsts, cxCustomData,
  cxDBData,cxFilterControl, cxFilter, cxDataUtils;

// тип - запись о правах редактирования пользователя
type
  TAccessRec = record
    reu: string;
    paspOrg: Integer;
    cd: string;
    isAccessGranted: Boolean;
  end;
type
  TAccessRecArray = array of TAccessRec;

  // тип - запись о параметре
type
  TParamRec = record
    tp: Integer; // тип 0-Integer, 1-String, 2-Date
    cd: string; // CD параметра
    n1: Double; // значение типа Double
    i1: Integer; // значение типа Integer
    s1: string; // значение типа Varchar2
    d1: TDateTime; // значение типа Date
  end;
type
  TParamRecArray = array of TParamRec;

function FF(form_str_: string; show_: Integer): Integer; //FindForm
function exp_to_dbf(dset: TDataSet; dbfname_: string): Integer;
function exp_to_dbf_prec(dset: TOracleDataset; aTable, aSchema, aDbfname:
  string): Integer;
procedure msg2(str1: string; str2: string; Flags_: Longint);
function msg3(str1: string; str2: string; Flags_: Longint): Longint;
procedure msg4(str1: string; str2: string; Flags_: Longint);
procedure LockControl(c: TWinControl; bLock: Boolean);
function GetGridColumnByName(Grid: TwwDBGrid; ColName: string): integer;
function GetGridColumnByName2(Grid: TwwDBGrid; ColName: string): integer;
function isaccess(str1: string): Integer;
function InitCap(str_: string): string;
function SuperStrToDouble(S: string; Value: double): double;
function RetKey(Key_: Char): Boolean;
function NvlStr(Str_: string; Str2_: string): string;
function IntToBin(Value: LongInt; Size: Integer): string;
function BinToInt(Value: string): LongInt;
function Convert(numstring: string; fromdigit: integer; todigit: integer):
  string;
function lpadBytes(inStr_: string; digit_: Integer): string;
function lpad(inStr_: string; digit_: Integer): string;
function simplBitSum(str_, str2_: string): string;
function selectDir(hwnd_: hwnd): string;
procedure change_alias(dset: TOracleDataset; str1: string; str2: string);
overload;
procedure change_alias(AODset: array of TOracleDataset; str1: string; str2:
  string); overload;
procedure change_alias(dset: TOracleDataset; str1: string; str2: string;
  reopenDS: Boolean); overload;
function exp_to_txt(dset: TUniQuery; path_: string; fname_: string;
  fldsum_: string; issum_: Integer; iscnt_: Integer; ishead_: Integer; oem_:
  integer; bank_cd_: string): Integer;
procedure SetMenu(acc_: Integer);
procedure SetMenuItem(acc_: Integer; Obj1: TComponent; str_: string);
function ToDos(const Src: string): string;
function have_rights(str_: string): Integer;
procedure DisableGhosting;
function simplBitInvrt(l_str: string): string;
function smpl_chk(p_var: Integer): Integer;
function checkAccessRigths(var al: TAccessRecArray; pReu: string;
  pPaspOrg: Integer; pCd: string): Boolean;
function getDoublePar(var al: TParamRecArray; pCd: string): Double;
function LeftPad(value: string; length: integer; pad: char): string;
function IsEqual(const ANumber1, ANumber2: Double; const AMargin: Double):
  Boolean;
function GetLocalIP: string;
function VarToInt(var AVariant: variant; DefaultValue: integer = 0): integer;
function getS_date_param(strPar: string): TDateTime;
function getS_double_param(strPar: string): Double;
function getS_str_param(strPar: string): string;
function getS_list_param(strPar: string): Integer;
procedure splitStr(const Source, Delimiter: string; var DelimitedList:
  TStringList);
function removeControl(const S: string): string;
procedure logText(text: string);
procedure ApplySearchFilter(Controller: TcxDBDataController; Fields: string; Text: string);

implementation
uses Unit_Mainform;

procedure DisableGhosting;
var
  User32: HMODULE;
  DisableProcessWindowsGhosting: procedure;
begin
  User32 := GetModuleHandle('USER32');
  if User32 <> 0 then
  begin
    DisableProcessWindowsGhosting := GetProcAddress(User32,
      'DisableProcessWindowsGhosting');
    if assigned(DisableProcessWindowsGhosting) then
      DisableProcessWindowsGhosting;
  end;
end;

procedure SetMenu(acc_: Integer);
begin
  with Form_Main do
  begin
    //без параметра (меню всегда активно)
    SetMenuItem(acc_, N52, '');

    //с параметрами (меню активно в соответствии с правами пользователя)
    SetMenuItem(acc_, N1, 'drn1_файл');
    SetMenuItem(acc_, N2, 'drn2_выход');
    SetMenuItem(acc_, N3, 'drn3_рабочее_место');
    SetMenuItem(acc_, N4, 'drn4_формирование');
    SetMenuItem(acc_, N6, 'drn6_печать');
    SetMenuItem(acc_, N7, 'drn7_оплата_по_пунктам');
    SetMenuItem(acc_, N8, 'drn8_оплата_по_предпр');
    SetMenuItem(acc_, N211, 'drn211_оплата_по_предпр2');
    SetMenuItem(acc_, N31, 'drn31_оплата_по_предпр3');
    SetMenuItem(acc_, N210, 'drn210_оплата_по_операц2');
    SetMenuItem(acc_, N13, 'drn13_Админ');
    SetMenuItem(acc_, N14, 'drn14_Оплата_по_услуге');
    SetMenuItem(acc_, N15, 'drn15_Оплата_по_страховым');
    SetMenuItem(acc_, N18, 'drn18_Сальдо');
    SetMenuItem(acc_, N24, 'drn24_Выполнение_плана');
    SetMenuItem(acc_, N26, 'drn26_Ввод_показат');
    SetMenuItem(acc_, N28, 'drn28_Задолжн_предпр');
    SetMenuItem(acc_, N29, 'drn29_Оплата');
    SetMenuItem(acc_, N212, 'drn212_Оплата_по_трестам');
    SetMenuItem(acc_, N30, 'drn30_Контроль_сальдо');
    SetMenuItem(acc_, N9, 'drn9_Льготники');
    SetMenuItem(acc_, N33, 'drn33_Текущие_работы');
    SetMenuItem(acc_, N34, 'drn34_Корректировка_сальдо');
    SetMenuItem(acc_, N46, 'drn46_Корректировка_сальдо_опл');
    SetMenuItem(acc_, N27, 'drn27_Пеня');
    SetMenuItem(acc_, N37, 'drn37_Оплата_банка');
    SetMenuItem(acc_, N50, 'drn50_Обороты_по_домам');
    SetMenuItem(acc_, N38, 'drn38_Подпись_отчетов');
    SetMenuItem(acc_, N41, 'drn41_Статистика_по_приват');
    SetMenuItem(acc_, N40, 'drn40_Сведения_по_льготам');
    SetMenuItem(acc_, N39, 'drn39_Статистика');
    SetMenuItem(acc_, N42, 'drn42_Параметры');
    SetMenuItem(acc_, N43, 'drn43_Периодическая');
    SetMenuItem(acc_, ToolButton2, 'drn43_Периодическая');
    SetMenuItem(acc_, N24, 'drn24_Выполнение_плана');
    SetMenuItem(acc_, N17, 'drn17_Оборотная_OLAP');
    SetMenuItem(acc_, N89, 'drn89_Долги_OLAP');
    SetMenuItem(acc_, N51, 'drn4_Карточки');
    SetMenuItem(acc_, ToolButton17, 'drn4_Карточки');
    SetMenuItem(acc_, N54, 'drn54_Ввод_оплаты');
    SetMenuItem(acc_, N82, 'drn82_Ввод_оплаты_по_адр');
    SetMenuItem(acc_, N55, 'drn55_Инкассация');
    SetMenuItem(acc_, N56, 'drn56_Перерасч_по_домам');
    SetMenuItem(acc_, N57, 'drn57_Ввод_объемов_по_домам');
    SetMenuItem(acc_, N44, 'drn44_Счета');
    SetMenuItem(acc_, ToolButton15, 'drn44_Счета');
    SetMenuItem(acc_, N60, 'drb18_Поступления_по_лс');
    SetMenuItem(acc_, ToolButton18, 'drb18_Поступления_по_лс');
    SetMenuItem(acc_, ToolButton5, 'drb5_Архив');
    SetMenuItem(acc_, N59, 'drn59_Просмотр_перерасчетов');
    SetMenuItem(acc_, N63, 'drn63_Справочник_категорий');
    SetMenuItem(acc_, N62, 'drn62_Услуги_по_домам');
    SetMenuItem(acc_, N61, 'drn61_Справочники');
    SetMenuItem(acc_, N65, 'drn65_Оплата');
    SetMenuItem(acc_, N64, 'drn64_Ввод');
    SetMenuItem(acc_, N72, 'drn72_Журнал_действий');
    SetMenuItem(acc_, ToolButton11, 'drn72_Журнал_действий');
    SetMenuItem(acc_, N79, 'drn79_Сверка_перерасчетов');
    SetMenuItem(acc_, N71, 'drn71_Сверка_инкассаций');
    SetMenuItem(acc_, N76, 'drn76_Всем_выйти');
    SetMenuItem(acc_, N78, 'drn78_Оплата_нал');
    SetMenuItem(acc_, ToolButton1, 'drn78_Оплата_нал');
    SetMenuItem(acc_, N77, 'drn77_Банк');
    SetMenuItem(acc_, N81, 'drn81_Загрузка_прочих_файлов');
    SetMenuItem(acc_, N84, 'drn84_Справочник_орг_задолжн');
    SetMenuItem(acc_, N80, 'drn80_Тарифы');
    SetMenuItem(acc_, N85, 'drn85_Списки_льготников');
    SetMenuItem(acc_, N83, 'drn83_Списки_задолжников');
    SetMenuItem(acc_, N87, 'drn87_Списки_показ_сч');
    SetMenuItem(acc_, N871, 'drn871_Списки_задолжн_OLAP2');
    SetMenuItem(acc_, N872, 'drn872_Списки_задолжн_OLAP3');
    SetMenuItem(acc_, N88, 'drn88_Справочник_пени');
    SetMenuItem(acc_, N10, 'drn10_Оплата_внешняя');
    SetMenuItem(acc_, N73, 'drn73_Система');
    SetMenuItem(acc_, N74, 'drn74_Обмен_данными');
    SetMenuItem(acc_, N75, 'drn75_Статистика_программ');
    SetMenuItem(acc_, N11, 'drn11_Паспортный_стол');
    SetMenuItem(acc_, N91, 'drn91_Справочник_параметров');
    SetMenuItem(acc_, N94, 'drn94_Оборотная_тсж');
    SetMenuItem(acc_, N95, 'drn95_Оборотная_тсж');
    SetMenuItem(acc_, N213, 'drn213_Оборотная_отоп2');
    SetMenuItem(acc_, N97, 'drn97_Проверка_распр_опл');
    SetMenuItem(acc_, N98, 'drn98_Выгрузки');
    SetMenuItem(acc_, N103, 'drn103_Справочник_услуг');
    SetMenuItem(acc_, N105, 'drn105_Ввод_объемов_по_лс');
    SetMenuItem(acc_, N117, 'drn117_Корр_сальдо');
    SetMenuItem(acc_, N123, 'drn123_LK');
    SetMenuItem(acc_, N86, 'drn86_автоначисление');
    SetMenuItem(acc_, N125, 'drn125_Списки_интернет1');
    SetMenuItem(acc_, N126, 'drn126_Списки_задолж_орг');
    SetMenuItem(acc_, N127, 'drn127_Отчет_по_нормат_потр');

    SetMenuItem(acc_, N128, 'drn128_Справка_прил5');
    SetMenuItem(acc_, N510, 'drn510_Справка_прил6');
    SetMenuItem(acc_, N511, 'drn511_Справка_прил7');
    SetMenuItem(acc_, N129, 'drn129_Касса');
    SetMenuItem(acc_, N132, 'drn132_Отчет_по_кап2');
    SetMenuItem(acc_, N134, 'drn134_Загрузка_льготников');
    SetMenuItem(acc_, N135, 'drn135_Корр_пени');
    SetMenuItem(acc_, N141, 'drn141_Реестр_оплаты_выв_мус');
    SetMenuItem(acc_, N142, 'drn142_Реестр_кол_прож_выв_мус');
    SetMenuItem(acc_, N143, 'drn143_Загрузка_внешних_лс');
    SetMenuItem(acc_, N146, 'drn146_Объемы_по_счетчикам');

  end;
end;

procedure SetMenuItem(acc_: Integer; Obj1: TComponent; str_: string);
var
  l_cnt: Integer;
begin
  if (acc_ = 0) or (acc_ = 3) then
  begin
    if str_ <> '' then
      l_cnt := DataModule1.OraclePackage1.CallIntegerFunction
        ('scott.init.is_allow_acc', [str_]);
    //      try
      //        DataModule1.OraclePackage1.CallProcedure
      //            ('scott.'+str_, [parNone]);
    if l_cnt = 1 then
    begin
      //первоначальная установка видимых(не рабочих) пунктов меню
      if Obj1 is TToolButton then
      begin
        if acc_ = 3 then
          TToolButton(Obj1).Enabled := True
        else
          TToolButton(Obj1).Visible := True;

        TToolButton(Obj1).Tag := 0;
      end
      else if Obj1 is TMenuItem then
      begin
        if acc_ = 3 then
          TMenuItem(Obj1).Enabled := True
        else
          TMenuItem(Obj1).Visible := True;

        TMenuItem(Obj1).Tag := 0;
      end
      else
        msg2('Некорректное использование процедуры SetMenuItem! c компонентом: '
          +
          TComponent(Obj1).Name, 'Внимание!', MB_OK);
    end
    else
    begin
      //      except
      if Obj1 is TToolButton then
      begin
        if acc_ = 3 then
          TToolButton(Obj1).Enabled := false
        else
          TToolButton(Obj1).Visible := false;

        TToolButton(Obj1).Tag := 1;
      end
      else if Obj1 is TMenuItem then
      begin
        if acc_ = 3 then
          TMenuItem(Obj1).Enabled := false
        else
          TMenuItem(Obj1).Visible := false;

        TMenuItem(Obj1).Tag := 1;
      end
      else
        msg2('Некорректное использование процедуры SetMenuItem! c компонентом: '
          +
          TComponent(Obj1).Name, 'Внимание!', MB_OK);
    end;
    //      end;

  end
  else if acc_ = 1 then
  begin
    //Закрытие доступа к пунктам меню в процессе работы приложения
    if Obj1 is TToolButton then
    begin
      TToolButton(Obj1).Enabled := False;
    end
    else if Obj1 is TMenuItem then
    begin
      TMenuItem(Obj1).Enabled := False;
    end
    else
      msg2('Некорректное использование процедуры SetMenuItem! c компонентом: ' +
        TComponent(Obj1).Name, 'Внимание!', MB_OK);
  end
  else if acc_ = 2 then
  begin
    //Открытие доступа к пунктам меню в процессе работы приложения
    if Obj1 is TToolButton then
    begin
      if TToolButton(Obj1).Tag = 0 then
        TToolButton(Obj1).Enabled := True
      else
        TToolButton(Obj1).Enabled := False;
    end
    else if Obj1 is TMenuItem then
    begin
      if TToolButton(Obj1).Tag = 0 then
        TMenuItem(Obj1).Enabled := True
      else
        TMenuItem(Obj1).Enabled := False;
    end
    else
      msg2('Некорректное использование процедуры SetMenuItem! c компонентом: ' +
        TComponent(Obj1).Name, 'Внимание!', MB_OK);
  end;

end;

// функция определения прав на выполнение процедуры базы
// используется для определения админских прав

function have_rights(str_: string): Integer;
var
  err_: Integer;
begin
  err_ := 0;
  try
    if str_ <> '' then
      DataModule1.OraclePackage1.CallProcedure
        ('scott.' + str_, [parNone]);
  except
    err_ := 1;
  end;
  Result := err_;
end;

// проверка на доступ к элементам базы

function isaccess(str1: string): Integer;
var
  i: Integer;
begin
  i := 1;
  try
    DataModule1.OraclePackage1.CallProcedure
      (str1, [parNone]);
  except
    i := 0;
  end;
  Result := i;
end;

procedure LockControl(c: TWinControl; bLock: Boolean);
begin
  if (c = nil) or (c.Handle = 0) then
    Exit;
  if bLock then
    SendMessage(c.Handle, WM_SETREDRAW, 0, 0)
  else
  begin
    SendMessage(c.Handle, WM_SETREDRAW, 1, 0);
    RedrawWindow(c.Handle, nil, 0,
      RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  end;
end;

function simplBitSum(str_, str2_: string): string;
var
  i: Integer;
  strnew_: string;
begin
  //функция простого битового "И" строки
  //строки должны быть одинаковой длины!
  if Length(str_) <> Length(str2_) then
    msg2('Строки неверной длины, ошибка использования функции Utils.simplBitSum!',
      'Внимание!', MB_OK + MB_ICONINFORMATION);

  SetLength(strnew_, Length(str_));
  for i := 1 to length(str_) do
  begin
    if (str2_[i] = '1') or (str_[i] = '1') then
      strnew_[i] := '1'
    else
      strnew_[i] := '0';
  end;
  Result := strnew_;
end;

function simplBitInvrt(l_str: string): string;
var
  i: Integer;
  l_strnew: string;
begin
  //функция простой инверсии битов строки
  //(может использоваться для отрицательного представления числа

  SetLength(l_strnew, Length(l_str));
  for i := 1 to length(l_str) do
  begin
    if l_str[i] = '1' then
      l_strnew[i] := '0'
    else
      l_strnew[i] := '1';

  end;
  Result := l_strnew;
end;

function Convert(numstring: string; fromdigit: integer; todigit: integer):
  string;
var
  i, k: longint;
  num: extended;
  onesymbol: string;
  strbin, strtemp: string;
  module: string;
  num2: longint;
begin
  //функция конвертации любого числа любой системы в другую
  num := 0;
  k := length(numstring) - 1;
  for i := 1 to length(numstring) do
  begin
    onesymbol := numstring[i];
    if LowerCase(onesymbol) = 'a' then
      onesymbol := '10'
    else if LowerCase(onesymbol) = 'b' then
      onesymbol := '11'
    else if LowerCase(onesymbol) = 'c' then
      onesymbol := '12'
    else if LowerCase(onesymbol) = 'd' then
      onesymbol := '13'
    else if LowerCase(onesymbol) = 'e' then
      onesymbol := '14'
    else if LowerCase(onesymbol) = 'f' then
      onesymbol := '15';
    num := num + strtoint(onesymbol) * Power(fromdigit, k);
    dec(k);
  end;
  strtemp := FloatToStr(num);
  num2 := StrToInt(strtemp);
  strtemp := '1';
  strbin := '';
  while strtemp = '1' do
  begin
    if num2 = 0 then
      break
    else
    begin
      module := inttostr(num2 mod todigit);
      if todigit = 16 then
      begin
        if module = '10' then
          module := 'A'
        else if module = '11' then
          module := 'B'
        else if module = '12' then
          module := 'C'
        else if module = '13' then
          module := 'D'
        else if module = '14' then
          module := 'E'
        else if module = '15' then
          module := 'F'
        else if module = '16' then
          module := '10';
      end;
      strbin := strbin + module;
      num2 := num2 div todigit;
    end;
  end;
  strtemp := '';
  for i := length(strbin) downto 1 do
    strtemp := strtemp + strbin[i];
  Convert := strtemp;
end;

function IntToBin(Value: LongInt; Size: Integer): string;
var
  i: Integer;
begin
  Result := '';
  for i := Size downto 0 do
  begin
    if Value and (1 shl i) <> 0 then
    begin
      Result := Result + '1';
    end
    else
    begin
      Result := Result + '0';
    end;
  end;
end;

function lpadBytes(inStr_: string; digit_: Integer): string;
var
  str_: string;
  a, b: Integer;
begin
  digit_ := digit_ * 2;
  if Length(instr_) < digit_ then
  begin
    instr_ := StringOfChar('0', digit_ - Length(instr_)) + instr_;
  end;
  Result := instr_;
end;

function lpad(inStr_: string; digit_: Integer): string;
var
  str_: string;
  a, b: Integer;
begin
  digit_ := digit_;
  if Length(instr_) < digit_ then
  begin
    instr_ := StringOfChar('0', digit_ - Length(instr_)) + instr_;
  end;
  Result := instr_;
end;

function BinToInt(Value: string): LongInt;
var
  i, Size: Integer;
begin
  Result := 0;
  Size := Length(Value);
  for i := Size downto 0 do
  begin
    if Copy(Value, i, 1) = '1' then
    begin
      Result := Result + (1 shl i);
    end;
  end;
end;

function selectDir(hwnd_: hwnd): string;
var
  TitleName: string;
  lpItemID: PItemIDList;
  BrowseInfo: TBrowseInfo;
  DisplayName: array[0..MAX_PATH] of char;
  TempPath: array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := hwnd_;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберите путь';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    //      ShowMessage(TempPath);
    GlobalFreePtr(lpItemID);
    Result := TempPath;
  end
  else
    Result := ''
end;

function SuperStrToDouble(S: string; Value: double): double;
var
  Mode: (None, ReadBefore, ReadAfter, Mants, Mantissa);
  S2: string[25];
  Order, Mant, I, E: integer;
  NegNum, NegMan: boolean;
begin
  Result := Value;
  Mode := None;
  Mant := 0;
  NegNum := false;
  NegMan := false;
  S2 := '';
  Order := 0;
  for I := 1 to Length(S) do
  begin
    case S[I] of
      ' ', #0, #255, #9: ;
      '+': case Mode of
          None: Mode := ReadBefore;
          Mants: Mode := Mantissa;
        else
          Exit;
        end;
      '0'..'9': case Mode of
          None:
            begin
              S2 := S[I];
              Mode := ReadBefore;
            end;
          ReadBefore: S2 := S2 + S[I];
          ReadAfter:
            begin
              S2 := S2 + S[I];
              Dec(Order);
            end;
          Mants:
            begin
              Mant := ord(S[I]) - ord('0');
              Mode := Mantissa;
            end;
          Mantissa: if 10 * Mant + ord(S[I]) - ord(S[I]) < 200 then
              Mant := 10 * Mant + ord(S[I]) - ord('0');
        end;
      '-': case Mode of
          None:
            begin
              NegNum := true;
              Mode := ReadBefore;
            end;
          Mants:
            begin
              NegMan := true;
              Mode := Mantissa;
            end;
        else
          Exit;
        end;
      'e', 'E': case Mode of
          ReadBefore, ReadAfter:
            begin
              if S2 = '' then
                S2 := '1';
              Mode := Mants;
            end;
          None:
            begin
              S2 := '1';
              Mode := Mants;
            end;
        else
          Exit;
        end;
      '.', ',': case Mode of
          ReadBefore: Mode := ReadAfter;
        else
          Exit;
        end;
    else
      Exit;
    end;
  end;
  while Length(S2) > 10 do
  begin
    SetLength(S2, pred(Length(S2)));
    Inc(Order);
  end;
  Val(S2, I, E);
  if E <> 0 then
    I := 1;
  if NegNum then
    I := -I;
  if NegMan then
    Mant := -Mant;
  Inc(Mant, Order);
  Result := I * exp(Mant * ln(10));
end;

function InitCap(str_: string): string;
begin
  //Начальные символы - в верхний регистр
  Result := AnsiUpperCase(copy(str_, 1, 1)) +
    AnsiLowerCase(copy(str_, 2, Length(str_) - 1))
end;

function GetGridColumnByName(Grid: TwwDBGrid; ColName: string): integer;
var
  i: integer;
begin
  for i := 0 to Grid.GetColCount - 1 do
  begin
    if UpperCase(Grid.Columns[i].FieldName) = UpperCase(ColName) then
    begin
      Result := i;
      exit;
    end;
  end;
  msg2('Not found column ' + UpperCase(ColName), 'Внимание!', MB_OK +
    MB_ICONERROR);
  //    Result := -1;
end;

function GetGridColumnByName2(Grid: TwwDBGrid; ColName: string): integer;
var
  i: integer;
begin
  for i := 0 to Grid.Selected.Count - 1 do
    if Pos(UpperCase(ColName), UpperCase(Grid.Selected.Strings[i])) > 0 then
    begin
      Result := i;
      exit;
    end;
  msg2('Not found column ' + UpperCase(ColName), 'Внимание!', MB_OK +
    MB_ICONERROR);
  //    Result := -1;
end;

function MAKELANGID(p: DWORD; s: DWORD): LANGID;
begin
  Result := (s shl 10) or (p);
end;

function msg3(str1: string; str2: string; Flags_: Longint): Longint;
begin
  Result := MessageBoxEx(Application.Handle, PChar(str1),
    PChar(str2), Flags_ + MB_APPLMODAL + MB_SETFOREGROUND,
    MAKELANGID(LANG_RUSSIAN, SUBLANG_DEFAULT));
end;

procedure msg2(str1: string; str2: string; Flags_: Longint);
begin
  MessageBoxEx(Application.Handle, PChar(str1),
    PChar(str2), Flags_ + MB_APPLMODAL + MB_SETFOREGROUND,
    MAKELANGID(LANG_RUSSIAN, SUBLANG_DEFAULT));
end;

procedure msg4(str1: string; str2: string; Flags_: Longint);
begin
  with Application do
  begin
    NormalizeTopMosts;
    MessageBoxEx(Application.Handle, PChar(str1), PChar(str2), Flags_,
      MAKELANGID(LANG_RUSSIAN, SUBLANG_DEFAULT));
    RestoreTopMosts;
  end;
end;

function RetKey(Key_: Char): Boolean;
begin
  //проверяет код клавиши = '.'
  if (VkKeyScan(Key_) = 191) or
    (VkKeyScan(Key_) = 190) or
    (VkKeyScan(Key_) = 188) or
    (VkKeyScan(Key_) = 110) or
    (VkKeyScan(Key_) = 447) then
    Result := True
  else
    Result := False;
end;

function NvlStr(Str_: string; Str2_: string): string;
begin
  if Str_ = '' then
    Result := '0'
  else
    Result := Str_;
end;

procedure change_alias(dset: TOracleDataset; str1: string; str2: string);
begin
  change_alias(dset, str1, str2, True);
  if dset.Active then
  begin
    dset.Active := false; // эксперементально. ред 15.01.2019
    dset.Active := true;
  end;
end;

procedure change_alias(dset: TOracleDataset; str1: string; str2: string;
  reopenDS: Boolean);
var
  a: Integer;
  str_: TStrings;
  i: Integer;
begin
  // str1 - строка для поиска
  // str2 - новая строка

  // i - кол-во найденных вхождений
  i := 0;
  str_ := dset.SQL;
  for a := 0 to str_.Count - 1 do
  begin
    if Pos(str1, str_.Strings[a]) > 0 then
    begin
      str_.Strings[a] := StringReplace(str_.Strings[a], str1, str2,
        [rfReplaceAll, rfIgnoreCase]);
      i := i + 1;
    end
  end;
  dset.SQL.Text := str_.Text;
  if i = 0 then
    ShowMessage('Не найден Change_alias: ' + str1);

  if (reopenDS) then
  begin
    dset.Active := false;
    dset.Active := true;
  end;
end;

procedure change_alias(AODset: array of TOracleDataset; str1: string; str2:
  string);
var
  a: Integer;
begin
  //Смена строки в массиве датасетов (очень удобно!)
  for a := 0 to High(AODset) do
  begin
    change_alias(AODset[a], str1, str2);
  end;
end;

function FF(form_str_: string; show_: Integer): Integer; //FindForm
var
  formexist_, a: Integer;
begin
  formexist_ := 0;
  for a := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[a].Name = form_str_ then
    begin
      formexist_ := 1;
      break;
    end
  end;

  if formexist_ = 0 then
    Result := 0
  else
  begin
    if show_ = 1 then
    begin
      Screen.Forms[a].Show;
      //        Screen.Forms[a].WindowState:=wsNormal;
    end;
    Result := 1;
  end;
end;

{function exp_to_txt(dset: TOracleDataset; path_: string; fname_: String;
   fldsum_: String; issum_:Integer; iscnt_:Integer; ishead_:Integer): Integer;
var
  F: TextFile;
  i: Integer;
  sum_: Double;
  LineStr_: string;
begin
  //Экспорт в TXT
  Result:=0;
  AssignFile(F, path_+fname_);
  Rewrite(F);
  Append(f);

  //Заголовок
  if ishead_ = 1 then
  begin
  LineStr_:='';
  for i := 0 to dset.FieldCount - 1 do
  begin
    LineStr_:=LineStr_+dset.Fields[i].FieldName;
    //Разделитель
    if i < dset.FieldCount - 1 then
      LineStr_:=LineStr_+'|';
  end;
  Writeln(f, LineStr_);
  end;

  i:=0;
  sum_:=0;
  while not dset.Eof do
  begin
    LineStr_:='';
    for i := 0 to dset.FieldCount - 1 do
    begin
      LineStr_:=LineStr_+dset.Fields[i].AsString;
      //Разделитель
      if i < dset.FieldCount - 1 then
        LineStr_:=LineStr_+'|';
    end;
   Writeln(f, LineStr_);
   //Подсчет итога по сумме по полю fldsum_
   try
   if issum_ =1 then
     sum_:=sum_+dset.FieldByName(fldsum_).AsFloat;
   except
     msg2('Поле '+fldsum_+' не найдено, для подсчёта итога по файлу', 'Внимание', MB_OK+MB_ICONERROR);
     Flush(f);
     CloseFile(f);
     Result:=1;
     Exit;
   end;

   dset.Next;
  end;

  LineStr_:='';
  //Итоговая строка
  if (iscnt_ =1) or (issum_=1) then
    LineStr_:='=';

  //Включать итог по кол-ву записей
  if iscnt_ =1 then
    LineStr_:=LineStr_+'|'+IntToStr(dset.RecordCount);
  //Включать итог по сумме по полю
  if issum_ =1 then
    LineStr_:=LineStr_+'|'+FloatToStr(RoundTo(sum_, -2));

  Writeln(f, LineStr_);

  Flush(f);
  CloseFile(f);
end;
          }

// логгирование событий в программе

procedure logText(text: string);
var
  f: TextFile;
  fileName: string;
begin
  //  path:=ExtractFilePath(Application.ExeName); - ред. 24.04.20 - не получилось. берёт сетевое имя и не может туда записывать
  //
  try
    fileName := 'c:\direct\direct.log';
    AssignFile(f, fileName);
    if not FileExists(fileName) then
      Rewrite(f);
    Append(f);
    Writeln(f, DateTimeToStr(Now()) + ' ' + text);
    Flush(f);
    CloseFile(f);
  except
    //Application.MessageBox('Необходимо наличие директория C:\direct для логгирования!',
    //  'Внимание!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
  end;
end;

function exp_to_txt(dset: TUniQuery; path_: string; fname_: string;
  fldsum_: string; issum_: Integer; iscnt_: Integer; ishead_: Integer; oem_:
  integer; bank_cd_: string): Integer;
var
  F: TextFile;
  i: Integer;
  sum_: Double;
  LineStr_, lastfld_, srvfld_: string;
begin
  //Экспорт в TXT для Уралсиба
  //эксклюзивный формат
  Result := 0;
  AssignFile(F, path_ + fname_);
  Rewrite(F);
  Append(f);

  //Заголовок, перечисление полей
  if ishead_ = 1 then
  begin
    LineStr_ := '';
    for i := 0 to dset.FieldCount - 1 do
    begin
      //в кодировке DOS или нет
      if oem_ = 1 then
        LineStr_ := LineStr_ + todos(dset.Fields[i].FieldName)
      else
        LineStr_ := LineStr_ + dset.Fields[i].FieldName;
      //Разделитель
      if i < dset.FieldCount - 1 then
        LineStr_ := LineStr_ + '|';
    end;
    Writeln(f, LineStr_);
  end;

  i := 0;
  sum_ := 0;
  dset.First;
  while not dset.Eof do
  begin

    try
      if (issum_ = 1) or (issum_ = 2) then
        sum_ := sum_ + dset.FieldByName(fldsum_).AsFloat;
    except
      msg2('Поле ' + fldsum_ + ' не найдено, для подсчёта итога по файлу',
        'Внимание', MB_OK + MB_ICONERROR);
      Flush(f);
      CloseFile(f);
      Result := 1;
      Exit;
    end;

    dset.Next;
  end;

  //Включать заголовок и итог по сумме по полю - Вначале
  if issum_ = 2 then
  begin
    LineStr_ := '#FILESUM   ';
    LineStr_ := LineStr_ + FloatToStr(RoundTo(sum_, -2));
    Writeln(f, LineStr_);
    Writeln(f, '#TYPE 7');
    if bank_cd_ = '' then
      msg2('Не задан код банка в справочнике организаций!', 'Внимание!', MB_OK +
        MB_ICONERROR);
    Writeln(f, '#SERVICE ' + bank_cd_);
  end;

  i := 0;
  dset.First;
  //последнее поле в датасете
  lastfld_ := '';
  //служебное поле в датасете
  srvfld_ := 'SRV_SUM';

  for i := 0 to dset.FieldCount - 1 do
  begin
    if dset.Fields[i].FieldName <> srvfld_ then
      lastfld_ := dset.Fields[i].FieldName;
  end;

  while not dset.Eof do
  begin
    LineStr_ := '';
    for i := 0 to dset.FieldCount - 1 do
    begin
      if dset.Fields[i].FieldName <> srvfld_ then
      begin
        if oem_ = 1 then
          LineStr_ := LineStr_ + todos(dset.Fields[i].AsString)
        else
          LineStr_ := LineStr_ + dset.Fields[i].AsString;

        //Разделитель
        if dset.Fields[i].FieldName <> srvfld_ then
        begin
          //если не последнее поле в датасете, и не служебное, то ставим разделитель
          if dset.Fields[i].FieldName <> lastfld_ then
            LineStr_ := LineStr_ + '|';
        end;
      end;

    end;
    Writeln(f, LineStr_);
    //Подсчет итога по сумме по полю fldsum_
 {   try
    if issum_ =1 then
      sum_:=sum_+dset.FieldByName(fldsum_).AsFloat;
    except
      msg2('Поле '+fldsum_+' не найдено, для подсчёта итога по файлу', 'Внимание', MB_OK+MB_ICONERROR);
      Flush(f);
      CloseFile(f);
      Result:=1;
      Exit;
    end;}

    dset.Next;
  end;

  LineStr_ := '';
  //Итоговая строка
  if (iscnt_ = 1) or (issum_ = 1) then
    LineStr_ := '=';

  //Включать итог по кол-ву записей - В конце
  if iscnt_ = 1 then
    LineStr_ := LineStr_ + '|' + IntToStr(dset.RecordCount);
  //Включать итог по сумме по полю - В конце
  if issum_ = 1 then
    LineStr_ := LineStr_ + '|' + FloatToStr(RoundTo(sum_, -2));

  if (iscnt_ = 1) or (issum_ = 1) then
    Writeln(f, LineStr_);

  Flush(f);
  CloseFile(f);
end;

//экспорт в DBF

function exp_to_dbf(dset: TDataSet; dbfname_: string): Integer;
var
  i: integer;
  Src, Dest: string;
  DBF1: TDBF;
begin
  //Экспорт в DBF
  DBF1 := TDBF.Create(nil);
  for i := 0 to dset.FieldCount - 1 do
  begin
    case dset.Fields[i].DataType of
      ftInteger, ftSmallInt:
        begin
          DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfNumber,
            10, 0);
        end;
      ftFloat:
        begin
          DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfFloat,
            10, 2);
        end;
      ftString:
        DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfString,
          dset.Fields[i].Size, 0);
      ftDate:
        DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfDate,
          8, 0);
      ftDateTime:
        DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfDate,
          8, 0);
    end;
  end;
  DBF1.TableName := dbfname_;
  DBF1.CreateTable;
  DBF1.CodePage := OEM;
  dset.First;

  while not dset.Eof do
  begin
    DBF1.Append;
    for i := 0 to dset.FieldCount - 1 do
    begin
      //Преобразуем формат даты DD.MM.YYYY в DD.MM.YY
      if (dset.Fields[i].DataType = ftDateTime) or
        (dset.Fields[i].DataType = ftDate) then
        DBF1.SetFieldData(i + 1, copy(dset.Fields[i].AsString, 1, 6) +
          copy(dset.Fields[i].AsString, 9, 2))
      else
      begin
        Src := dset.Fields[i].AsString;
        SetLength(Dest, Length(Src));
        DBF1.Translate(Src, Dest, true);
        DBF1.SetFieldData(i + 1, Dest);
      end;
    end;
    dset.Next;
  end;
  DBF1.Post;
  DBF1.Close;
  DBF1.Free;
  Result := 0;
end;

//экспорт в DBF с учётом размерности поля после запятой

function exp_to_dbf_prec(dset: TOracleDataset; aTable, aSchema, aDbfname:
  string): Integer;
var
  i: integer;
  Src, Dest: string;
  DBF1: TDBF;
  dTabDef: TOracleDataset;
begin
  //Экспорт в DBF
  DBF1 := TDBF.Create(nil);
  dTabDef := TOracleDataset.Create(nil);
  dTabDef.Session := DataModule1.OracleSession1;
  //у пользователя (роли) должны быть права на select from DBA_TAB_COLUMNS!
  dTabDef.SQL.Text :=
    'select * from DBA_TAB_COLUMNS t where t.TABLE_NAME=upper(:p_table) and t.owner=upper(:p_schema)';
  dTabDef.DeclareVariable('p_table', otString);
  dTabDef.DeclareVariable('p_schema', otString);
  dTabDef.SetVariable('p_table', aTable);
  dTabDef.SetVariable('p_schema', aSchema);
  dTabDef.Active := True;
  try
    for i := 0 to dset.FieldCount - 1 do
    begin
      if dTabDef.Locate('COLUMN_NAME', UpperCase(dset.Fields[i].FieldName), [])
        then
      else
        msg2('Не найдено поле ' + UpperCase(dset.Fields[i].FieldName) +
          ' по таблице ' + UpperCase(aTable), 'Внимание!', MB_OK);

      if dTabDef.FieldByName('DATA_TYPE').AsString = 'NUMBER' then
      begin
        DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfNumber
          {так странно, было bfFloat а надо Number},
          dTabDef.FieldByName('DATA_PRECISION').AsInteger,
          dTabDef.FieldByName('DATA_SCALE').AsInteger)
      end
      else if dTabDef.FieldByName('DATA_TYPE').AsString = 'VARCHAR2' then
        DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfString,
          dTabDef.FieldByName('DATA_LENGTH').AsInteger, 0)
      else if dTabDef.FieldByName('DATA_TYPE').AsString = 'CHAR' then
        DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfString,
          dTabDef.FieldByName('DATA_LENGTH').AsInteger, 0)
      else if dTabDef.FieldByName('DATA_TYPE').AsString = 'DATE' then
        DBF1.AddFieldDefs(dset.Fields[i].FieldName, bfDate,
          8, 0);

    end;
    DBF1.TableName := aDbfname;
    DBF1.CreateTable;
    DBF1.CodePage := OEM;
    dset.First;

    while not dset.Eof do
    begin
      DBF1.Append;
      for i := 0 to dset.FieldCount - 1 do
      begin
        try
          //Преобразуем формат даты DD.MM.YYYY в DD.MM.YY
          if (dset.Fields[i].DataType = ftDateTime) or
            (dset.Fields[i].DataType = ftDate) then
            DBF1.SetFieldData(i + 1, copy(dset.Fields[i].AsString, 1, 6) +
              copy(dset.Fields[i].AsString, 9, 2))
          else
          begin
            Src := dset.Fields[i].AsString;
            SetLength(Dest, Length(Src));
            DBF1.Translate(Src, Dest, true);
            DBF1.SetFieldData(i + 1, Dest);
          end;
        except
          on E: Exception do
          begin
            //делал для отладки ниже
            //если происходит такое, то лучше поправить формат поля прям в oracle (load_privs)
            //ShowMessage('При выгрузке произошла ошибка в строке c Lchet='+dset.FieldByName('LCHET').AsString+' в поле='+dset.Fields[i].FieldName+' значение='+dset.Fields[i].AsString+': '+E.Message);
            ShowMessage(E.ClassName + E.Message);
          end;
        end;
      end;
      dset.Next;
    end;
    DBF1.Post;
    DBF1.Close;
    DBF1.Free;
    Result := 0;
  finally
    dTabDef.Destroy;
  end;
end;

function ToDos(const Src: string): string;
begin
  SetLength(Result, Length(Src));
  CharToOem(PChar(Src), PChar(Result));
end;

function smpl_chk(p_var: Integer): Integer;
begin
  Application.CreateForm(TForm_smpl_chk, Form_smpl_chk);
  with Form_smpl_chk do
  begin
    OD_data.SetVariable('p_var', 1);
    OD_data.Active := True;
    if OD_data.RecordCount <= 1 then
    begin
      //допускается наличие 1 строки - заголовка
      Result := 0;
      Exit;
    end
    else
      Result := 1;
    ShowModal;
    if l_ignore = 1 then
      Result := 0;
  end;
end;

// проверка прав пользователя, с кэшем

function checkAccessRigths(var al: TAccessRecArray; pReu: string;
  pPaspOrg: Integer; pCd: string): Boolean;
var
  size, cnt, i: Integer;

begin
  size := Length(al);
  // поискать права в массиве
  for i := 0 to size - 1 do
  begin
    with al[i] do
    begin
      if pReu <> '' then
      begin
        if (reu = pReu) and (paspOrg = 0) and (cd = pCd) then
        begin
          // найдена запись о правах доступа пользователя по уровню УК
          Result := isAccessGranted;
          Exit;
        end;
      end
      else if pPaspOrg <> 0 then
      begin
        if (reu = '') and (paspOrg = pPaspOrg) and (cd = pCd) then
        begin
          // найдена запись о правах доступа пользователя по уровню пасп стола
          Result := isAccessGranted;
          Exit;
        end;
      end;

    end;
  end;
  // не нашли в массиве, спросить у БД
  cnt := DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.UTILS.allow_edit_lsk_by_reu', [pReu, pPaspOrg, pCd]);
  if (cnt >= 1) then
    Result := True
  else
    Result := False;

  size := size + 1;
  SetLength(al, size);
  with al[size - 1] do
  begin
    reu := pReu;
    paspOrg := pPaspOrg;
    cd := pCd;
    isAccessGranted := Result;
  end;

end;

// получение параметра, с кэшем

function getDoublePar(var al: TParamRecArray; pCd: string): Double;
var
  size, i: Integer;
  val: Double;
begin
  size := Length(al);
  // поискать параметр в массиве
  for i := 0 to size - 1 do
  begin
    with al[i] do
    begin
      if cd = pCd then
      begin
        if tp <> 0 then
          raise Exception.CreateFmt(
            'Запрашиваемый параметр другого типа! : cd=''%s''', [pCd]);
        // найден параметр
        Result := n1;
        Exit;
      end;
    end;
  end;
  // не нашли в массиве, спросить у БД
  val := DataModule1.OraclePackage1.CallFloatFunction
    ('scott.Utils.get_int_param', [pCd]);
  size := size + 1;
  SetLength(al, size);
  with al[size - 1] do
  begin
    n1 := val;
    cd := pCd;
  end;
  Result := val;
end;

// добавить лидирующие символы к строке

function LeftPad(value: string; length: integer; pad: char): string;
begin
  result := RightStr(StringOfChar(pad, length) + value, length);
end;

// получение параметра, с кэшем
{function getIntPar(var al: TParamRecArray; pCd: String): Integer;
var
size, i : Integer;
val: Integer;
begin
  size := Length(al);
  // поискать параметр в массиве
  for i := 0 to size-1 do
  begin
    with al[i] do
    begin
        if cd = pCd  then
        begin
          if tp<>0 then
            Raise Exception.CreateFmt(
              'Запрашиваемый параметр другого типа! : cd=''%s''', [pCd]);
          // найден параметр
          Result:=i1;
          Exit;
        end;
    end;
  end;
  // не нашли в массиве, спросить у БД
  val:=DataModule1.OraclePackage1.CallFloatFunction
               ('scott.Utils.get_int_param', [pCd]);
  size := size+1;
  SetLength(al, size);
  with al[size-1] do
  begin
    i1:=val;
    cd:=pCd;
  end;
  Result:=i1;

end;}

// сравнить два Double числа
// ANumber1, ANumber2 - число 1,2
// AMargin - допустимое отклонение

function IsEqual(const ANumber1, ANumber2: Double; const AMargin: Double):
  Boolean;
begin
  Result := Abs(ANumber1 - ANumber2) <= AMargin;
end;

// получить Ip адрес

function getLocalIP: string;
type
  TaPInAddr = array[0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: array[0..63] of Ansichar;
  i: Integer;
  GInitData: TWSADATA;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(Buffer);
  if phe = nil then
    Exit;
  pptr := PaPInAddr(phe^.h_addr_list);
  i := 0;
  while pptr^[i] <> nil do
  begin
    Result := StrPas(inet_ntoa(pptr^[i]^));
    Inc(i);
  end;
  WSACleanup;
end;

function VarToInt(var AVariant: variant; DefaultValue: integer = 0): integer;
begin
  //*** Если NULL или не числовое, то вернем значение по умолчанию
  Result := DefaultValue;
  if VarIsNull(AVariant) then
    Result := 0
  else if VarIsOrdinal(AVariant) then
    Result := StrToInt(VarToStr(AVariant));
end;

function getS_date_param(strPar: string): TDateTime;
begin
  DataModule1.UniStoredProc1.StoredProcName := 'SCOTT.UTILS.GETS_DATE_PARAM';
  DataModule1.UniStoredProc1.SQL.Clear;
  DataModule1.UniStoredProc1.SQL.Add('begin ');
  DataModule1.UniStoredProc1.SQL.Add(':RESULT := SCOTT.UTILS.GETS_DATE_PARAM(:CD_);');
  DataModule1.UniStoredProc1.SQL.Add('end;');

  DataModule1.UniStoredProc1.Params.Clear;
  DataModule1.UniStoredProc1.Params
    .CreateParam(ftInteger, 'CD_', ptInput).AsString := strPar;
  DataModule1.UniStoredProc1.Params
    .CreateParam(ftDate, 'RESULT', ptResult);
  DataModule1.UniStoredProc1.ExecProc;
  Result := DataModule1.UniStoredProc1.Params.ParamByName('RESULT').AsDateTime;
  // очистить SQL и параметры, для других вызовов (только при вызове функций)
  DataModule1.UniStoredProc1.SQL.Clear;
  DataModule1.UniStoredProc1.Params.Clear;
end;

function getS_double_param(strPar: string): Double;
begin
  DataModule1.UniStoredProc1.StoredProcName := 'SCOTT.UTILS.GETS_INT_PARAM';
  DataModule1.UniStoredProc1.SQL.Clear;
  DataModule1.UniStoredProc1.SQL.Add('begin ');
  DataModule1.UniStoredProc1.SQL.Add(':RESULT := SCOTT.UTILS.GETS_INT_PARAM(:CD_);');
  DataModule1.UniStoredProc1.SQL.Add('end;');

  DataModule1.UniStoredProc1.Params.Clear;
  DataModule1.UniStoredProc1.Params
    .CreateParam(ftInteger, 'CD_', ptInput).AsString := strPar;
  DataModule1.UniStoredProc1.Params
    .CreateParam(ftFloat, 'RESULT', ptResult);
  DataModule1.UniStoredProc1.ExecProc;
  Result := DataModule1.UniStoredProc1.Params.ParamByName('RESULT').AsFloat;
  // очистить SQL и параметры, для других вызовов (только при вызове функций)
  DataModule1.UniStoredProc1.SQL.Clear;
  DataModule1.UniStoredProc1.Params.Clear;
end;

function getS_str_param(strPar: string): string;
begin
  DataModule1.UniStoredProc1.StoredProcName := 'SCOTT.UTILS.GETS_STR_PARAM';
  DataModule1.UniStoredProc1.SQL.Clear;
  DataModule1.UniStoredProc1.SQL.Add('begin ');
  DataModule1.UniStoredProc1.SQL.Add(':RESULT := SCOTT.UTILS.GETS_STR_PARAM(:CD_);');
  DataModule1.UniStoredProc1.SQL.Add('end;');

  DataModule1.UniStoredProc1.Params.Clear;
  DataModule1.UniStoredProc1.Params
    .CreateParam(ftInteger, 'CD_', ptInput).AsString := strPar;
  DataModule1.UniStoredProc1.Params
    .CreateParam(ftString, 'RESULT', ptResult);
  DataModule1.UniStoredProc1.ExecProc;
  Result := DataModule1.UniStoredProc1.Params.ParamByName('RESULT').AsString;
  // очистить SQL и параметры, для других вызовов (только при вызове функций)
  DataModule1.UniStoredProc1.SQL.Clear;
  DataModule1.UniStoredProc1.Params.Clear;
end;

function getS_list_param(strPar: string): Integer;
begin
  DataModule1.UniStoredProc1.StoredProcName := 'SCOTT.UTILS.GETS_LIST_PARAM';
  DataModule1.UniStoredProc1.SQL.Clear;
  DataModule1.UniStoredProc1.SQL.Add('begin ');
  DataModule1.UniStoredProc1.SQL.Add(':RESULT := SCOTT.UTILS.GETS_LIST_PARAM(:CD_);');
  DataModule1.UniStoredProc1.SQL.Add('end;');

  DataModule1.UniStoredProc1.Params.Clear;
  DataModule1.UniStoredProc1.Params
    .CreateParam(ftInteger, 'CD_', ptInput).AsString := strPar;
  DataModule1.UniStoredProc1.Params
    .CreateParam(ftInteger, 'RESULT', ptResult);
  DataModule1.UniStoredProc1.ExecProc;
  Result := DataModule1.UniStoredProc1.Params.ParamByName('RESULT').AsInteger;
  // очистить SQL и параметры, для других вызовов
  DataModule1.UniStoredProc1.SQL.Clear;
  DataModule1.UniStoredProc1.Params.Clear;
end;

// разбить строку на подстроки используя разделитель

procedure splitStr(const Source, Delimiter: string; var DelimitedList:
  TStringList);
var
  s: PChar;

  DelimiterIndex: Integer;
  Item: string;
begin
  s := PChar(Source);

  repeat
    DelimiterIndex := Pos(Delimiter, s);
    if DelimiterIndex = 0 then
      Break;

    Item := Copy(s, 1, DelimiterIndex - 1);

    DelimitedList.Add(Item);

    inc(s, DelimiterIndex + Length(Delimiter) - 1);
  until DelimiterIndex = 0;
  DelimitedList.Add(s);
end;

// убрать специальные символы из строки

function removeControl(const S: string): string;
var
  I: Integer;
begin
  Result := S;
  for I := 1 to Length(Result) do
    if Result[I] in [#0..#31, #127] then
      Result[I] := ' '
end;

procedure SplitDelimitedString(AStrings: TStrings; AText, ADelimiter: string);
var
  p, n: integer;
  Text: PChar;
begin
  Text := PChar(AText);
  AStrings.Clear;
  n := Length(ADelimiter);
  while Assigned(Text) do
  begin
    p := Pos(ADelimiter, Text) - 1;
    if p < 0 then
      Break;
    AStrings.Add(Copy(Text, 1, p));
    Inc(Text, p + n);
  end;
  if Assigned(Text) and (Length(Text) > 0) then
    AStrings.Add(Text);
end;

// Установка фильтра для полей lookup-а, с разбивкой по словам и полям
procedure ApplySearchFilter(Controller: TcxDBDataController; Fields: string; Text: string);
var
  i, j: integer;
  ItemLink: TObject;
  Filter: TcxDataFilterCriteria;
  FL: TcxFilterCriteriaItemList;
  FieldList, TextWords: TStrings;
begin
  TextWords := TStringList.Create;
  FieldList := TStringList.Create;
  try
    Filter := Controller.Filter;
    Filter.BeginUpdate;
    try
      Filter.Active := false;
      Filter.Clear;
      Filter.Options := Filter.Options + [fcoCaseInsensitive];
      Filter.Root.BoolOperatorKind := fboOr;
      SplitDelimitedString(FieldList, Fields, ';');
      SplitDelimitedString(TextWords, Text, ' ');
      for i := 0 to FieldList.Count - 1 do
        if FieldList[i] <> '' then
        begin
          FL := Filter.Root.AddItemList(fboAnd);
          ItemLink := Controller.GetItemByFieldName(FieldList[i]);
          if Assigned(ItemLink) then
            for j := 0 to TextWords.Count - 1 do
              if TextWords[j] <> '' then
                FL.AddItem(ItemLink, foLike, '%' + TextWords[j] + '%', TextWords[j]);
        end;
      Filter.Active := true;
    finally
      Filter.EndUpdate;
    end;
  finally
    TextWords.Free;
    FieldList.Free;
  end;
end;


end.

