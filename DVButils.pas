unit DVButils;

interface
  uses Dialogs, Utils, Classes, SysUtils;

type dvbBase = class(TObject)
  //класс объекта дл€ записи базы в файл
  private
  function swapBytes(inStr_: String; digit_: Integer): String;
  public     { Public declarations }
  sss_: Integer;
    procedure writeBase;
    procedure beginWrite(path_: String);
    procedure endWrite;
    procedure writeStr(numstr_: String; fromdigit_: Integer; lenbytes_: Integer;
      lpadbytes_: Integer; swapbytes_: Integer);
    constructor create;
  published
  end;

var
  fs: TFileStream;

implementation

procedure dvbBase.writeBase;
var
  a: Integer;
begin
  // ID абонента

  // ¬ыполнение записи базы в файл
  // user.bin
  fs := TFileStream.Create('c:\temp\user.bin', fmCreate);
  //первых 4 байта - количество абонентов млад байтом вперед
  writeStr('1', 10, 4, 1, 1);


  //блок повтор€етс€, по кол-ву абонентов
  for a:=1 to 2588 do
  begin
  //следующ 4 байта - ID абонента в формате (N_декодера-1)*2
  writeStr(IntToStr((169015832-1)*2), 10, 4, 1, 1);

  //затем 124 байта флагов - по 2 байта на ствол(макс 62 ствола) 1-
  //можно декодировать, 0 - нельз€ (в 2-чной системе)
  writeStr('0', 2, 124, 1, 1);

  //в конце 4 байта - остаток денег на счету в копейках (при этом
  //абонент сможет посмотреть свой остаток)
  writeStr('0', 10, 4, 1, 1);
  end;

  fs.free;
end;

procedure dvbBase.beginWrite(path_: String);
begin
  // Ќачало записи базы в файл
  // user.bin
  fs := TFileStream.Create(path_, fmCreate);
end;

procedure dvbBase.endWrite;
begin
  // ќкончание записи базы в файл
  // user.bin
  fs.free;
end;

procedure dvbBase.writeStr(numstr_: String; fromdigit_: Integer; lenbytes_: Integer;
  lpadbytes_: Integer; swapbytes_: Integer);
var
 buf: array of Byte;
 a, n: Integer;
 str_: string;
begin
  //Examples:
  //  writeStr('22222222', 10, 4, 1, 1); //запись дес€тичного числа с увеличением лидирующих 0 до 4 байт мл.байтом вперед
  //  writeStr('1010101010', 2, 10, 1, 0); //запись двоичного числа с увеличением лидирующих 0 до 10 байт мл.байтом назад))

  //«апись строки информации
  //конвертаци€ в 16-чн систему
  numstr_:=Convert(numstr_, fromdigit_, 16);
  //добавление лидирующих 00
  if lpadbytes_ = 1 then
    numstr_:=lpadBytes(numstr_, lenbytes_);
  //при необх мен€ем байты местами (если передача в начале младших байтов)
  if swapbytes_ = 1 then
  begin
    numstr_:=swapBytes(numstr_, lenbytes_);
  end;

  SetLength(buf, lenbytes_+1);
  a:=1;
  for n:=0 to lenbytes_ do
  begin
    //конвертируем из 16-чн в 10-чн, дл€ записи
    str_:=Convert(Copy(numstr_, a, 2), 16, 10);
    if str_ = '' then
       str_:='0';
    buf[n]:=StrToInt(str_);
    a:=a+2;
  end;
  fs.WriteBuffer(buf[0], High(buf));
end;


function dvbBase.swapBytes(inStr_: String; digit_: Integer): String;
var
  str_: string;
  a, b : Integer;
begin
  //кол-во символов
  instr_:=lpadBytes(instr_, digit_);
  digit_:=digit_*2;
  a:=digit_;
  while a > 0  do
  begin
  a:=a-2;
  str_:=str_+copy(inStr_, a+1, 2);
  end;
  Result:= str_;
end;

constructor dvbBase.create;
begin
  //просто так
  sss_:=0;
end;

end.
