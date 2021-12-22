unit UnGridToClb;

interface

uses
  Windows, SysUtils, Classes, Dialogs,
  Db, ClipBrd, Wwdbgrid;

procedure CopyGRDToClb(dbg: TwwDBGrid);

// �������� DBGrid � ����� ������,
// ����� ���� ������ ������� �����������
// ��� � ������� ��������� ��������, ��� � � Excell

implementation

procedure CopyGRDToClb(dbg: TwwDBGrid);
var
  bm: TBookMark;
  pch, pch1: PChar;
  s, s2: string;
  i, j: integer;
begin
  s := '';
  for j := 0 to dbg.GetColCount - 1 do
    s := s + dbg.Columns[j].DisplayLabel + #9;
  s := s + #13 + #10;
  if not dbg.DataSource.DataSet.active then
  begin
    ShowMessage('��� �������!!!');
    Exit;
  end;
  try
    dbg.Visible := False; //������ ���� ���������, ����� �� ��������� �����
    //�� ��� ����������� ��� ��������� DataSet - ������ �
    //����������
    bm := dbg.DataSource.DataSet.GetBookmark; // ��� ���� ����� ��
    // �������� ������� ������
    dbg.DataSource.DataSet.First;
    while not dbg.DataSource.DataSet.EOF do
    begin
      s2 := '';
      for j := 0 to dbg.GetColCount - 1 do
      begin
        s2 := s2 + dbg.Selected.GetText + #9;
      end;
      s := s + s2 + #13 + #10;
      dbg.DataSource.DataSet.Next;
    end;
    //����������� ���������� "� ������� �����",
    //����� - �������� � ����������
    GetMem(pch, 100);
    GetMem(pch1, 100);
    GetKeyboardLayoutName(pch);
    StrCopy(pch1, pch);
    while pch <> '00000419' do
    begin
      ActivateKeyboardLayout(HKL_NEXT, 0);
      GetKeyboardLayoutName(pch);
      if strComp(pch, pch1) = 0 then
        //���� ��������� - ��� ������ ����� '00000419'
        StrCopy(pch, '00000419');
    end;

    clipboard.AsText := s; //������ - � �����!!!

    //���������� ����� ����������
    while strComp(pch, pch1) <> 0 do
    begin
      ActivateKeyboardLayout(HKL_NEXT, 0);
      GetKeyboardLayoutName(pch);
    end;

    FreeMem(pch);
    FreeMem(pch1);
                 try
    dbg.DataSource.DataSet.GotoBookmark(bm);
          except
      end;

    //ShowMessage('������ ������� ����������� � ����� ������.');
  finally
    dbg.Visible := True;
  end;
end;

end.
