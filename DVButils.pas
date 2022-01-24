unit DVButils;

interface
  uses Dialogs, Utils, Classes, SysUtils;

type dvbBase = class(TObject)
  //����� ������� ��� ������ ���� � ����
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
  // ID ��������

  // ���������� ������ ���� � ����
  // user.bin
  fs := TFileStream.Create('c:\temp\user.bin', fmCreate);
  //������ 4 ����� - ���������� ��������� ���� ������ ������
  writeStr('1', 10, 4, 1, 1);


  //���� �����������, �� ���-�� ���������
  for a:=1 to 2588 do
  begin
  //������� 4 ����� - ID �������� � ������� (N_��������-1)*2
  writeStr(IntToStr((169015832-1)*2), 10, 4, 1, 1);

  //����� 124 ����� ������ - �� 2 ����� �� �����(���� 62 ������) 1-
  //����� ������������, 0 - ������ (� 2-���� �������)
  writeStr('0', 2, 124, 1, 1);

  //� ����� 4 ����� - ������� ����� �� ����� � �������� (��� ����
  //������� ������ ���������� ���� �������)
  writeStr('0', 10, 4, 1, 1);
  end;

  fs.free;
end;

procedure dvbBase.beginWrite(path_: String);
begin
  // ������ ������ ���� � ����
  // user.bin
  fs := TFileStream.Create(path_, fmCreate);
end;

procedure dvbBase.endWrite;
begin
  // ��������� ������ ���� � ����
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
  //  writeStr('22222222', 10, 4, 1, 1); //������ ����������� ����� � ����������� ���������� 0 �� 4 ���� ��.������ ������
  //  writeStr('1010101010', 2, 10, 1, 0); //������ ��������� ����� � ����������� ���������� 0 �� 10 ���� ��.������ �����))

  //������ ������ ����������
  //����������� � 16-�� �������
  numstr_:=Convert(numstr_, fromdigit_, 16);
  //���������� ���������� 00
  if lpadbytes_ = 1 then
    numstr_:=lpadBytes(numstr_, lenbytes_);
  //��� ����� ������ ����� ������� (���� �������� � ������ ������� ������)
  if swapbytes_ = 1 then
  begin
    numstr_:=swapBytes(numstr_, lenbytes_);
  end;

  SetLength(buf, lenbytes_+1);
  a:=1;
  for n:=0 to lenbytes_ do
  begin
    //������������ �� 16-�� � 10-��, ��� ������
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
  //���-�� ��������
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
  //������ ���
  sss_:=0;
end;

end.
