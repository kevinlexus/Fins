unit Unit_ECR;

interface

uses
  Unit_Mainform, Utils, Windows, SysUtils, DateUtils, Classes;

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
procedure printByLineWithCut(isCut: Boolean; p_text: string; ECR: OleVariant; pCutLine:
  Integer);
function annulment(ECR: OleVariant): Integer;

function set_date_time_ecr(ECR: OleVariant): Integer;
function open_reg(ECR: OleVariant): Integer;
function open_reg_ecr(ECR: OleVariant): Integer;
function check_status_and_wait(ECR: OleVariant): Integer;
function cutCheck(cutType, feedAfterCut: Boolean; feedLineCount: Integer;
  ECR: OleVariant): Integer;
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
function close_reg_ecr_in_removing(l_summa: double; ECR: OleVariant; tp: Integer): Integer;
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

procedure print_header_ecr(p_text: string; //�����
  p_wrap, //������� 0-���, 1-�� ������, 2-�� ������
  p_align, //������������ 0-�� ������ ����, 1-�� ������, 2-�� ������� ����
  p_font: Integer; // ����� (��� ������)
  var F: TextFile; // ��������� ����
  ECR: OleVariant
  );

function setup_ecr(p_text: string; ECR: OleVariant): Integer;

implementation

function set_date_time_ecr(ECR: OleVariant): Integer;
var
  AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond: Word;
begin
  //���������� ���� � ����� � ��� � ����������
  Result := 0;
  if ECR.SessionOpened then
  begin
    //����� �������, ������ ������������� ����-�����
    Result := 2;
    Exit;
  end;

  // ������������� ������ ������
  ECR.Password := '30';
  //�����
  ECR.Mode := 1;
  ECR.SetMode;
  DecodeDateTime(Now, AYear, AMonth, ADay, AHour, AMinute, ASecond,
    AMilliSecond);
  ECR.Day := ADay;
  ECR.Month := AMonth;
  ECR.Year := AYear;

  //������������� ����
  //��� ���� �������� ����� (�� ������������ �����)
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

  //������������� �����
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
    //��������� �������, ���� ������� - ������� �� 39 ������
    i := 0;
    l_len := Length(p_text);
    //�������� �����, �� ����� 39 ������
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
        //�������� �������
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

    //���� ������ ������ �� ����� - ���������� ������ � ������� ������ �� ���������
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
  // ��������� ��������� ���
  // �������� ����
  if open_port(ECR) <> 0 then
  begin
    show_error(ECR, '5');
    Result := 1;
    Exit;
  end;
  // ������������� ������ ������
  ECR.Password := '30';
  // ����� ����������������
  ECR.Mode := 4;
  ECR.SetMode;

  // ��������� ����������
  // ���� ���� �� ���� ����� ��� ���������� �� ����, ������ ������ ���
  l_cur_line := 0;
  set_line('');
  set_line('');
  set_line('');
  set_line('');
  set_line('');
  set_line('');

  // ������ ���� "������� �� �������!"
  l_cur_line := 69;
  set_line('');
  set_line('');
  set_line('');
  set_line('');
  set_line('');

  // ������������ ���
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

  //������ ����� �� 88 ������ ����� ���������� ������)

  // VALUEPURPOSE
  // �� ���������� ���-�� ������ �� ��
  ECR.ValuePurpose := 80;
  ECR.Value := 0;
  ECR.SetValue;
  // �� ���������� ���-�� ������ �� ��
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

  // �������� ������ �������
  ECR.ValuePurpose := 72;
  ECR.Value := 3;
  ECR.SetValue;

  // �������� ������ ������� � Z ������
  ECR.ValuePurpose := 207;
  ECR.Value := 1;
  ECR.SetValue;

  // �������� 1 ������
  ECR.CaptionPurpose := 36;
  ECR.Caption := '����� 1';
  ECR.SetCaption;

  // �������� 2 ������
  ECR.CaptionPurpose := 37;
  ECR.Caption := '����� 2';
  ECR.SetCaption;

  // ��������� ����� ��
  ECR.ValuePurpose := 62;
  ECR.Value := 3;
  ECR.SetValue;

  // ��������� ����� ��
  ECR.ValuePurpose := 63;
  ECR.Value := 3;
  ECR.SetValue;

  // ��������� ����������� �������� ��
  ECR.ValuePurpose := 60;
  ECR.Value := 1;
  ECR.SetValue;
  // ��������� ����������� �������� ��
  ECR.ValuePurpose := 61;
  ECR.Value := 1;
  ECR.SetValue;

  // ����� �� ������
  // ����� �����������
  ECR.Mode := 1;
  ECR.SetMode;

  // ECR.ResetMode;
  close_port(ECR);
end;

procedure show_error(ECR: OleVariant; errStep: string);
var
  res: Integer;
begin
  res := show_error2(ECR, errStep);
end;

function show_error2(ECR: OleVariant; errStep: string): Integer;
begin
  Result := 0;
  //�������� ������ ���
  if Form_Main.have_cash = 1 then
  begin
    if ECR.ResultCode <> 0 then
    begin
      Result := 1;
      msg2('������ ��� �� ����:' + errStep + ', ���: ' + string(ECR.ResultCode)
        + ', ��������: ' + string(ECR.ResultDescription)
        + '!', '��������!', MB_OK + MB_ICONERROR);
      if ECR.ResultCode = -16 then
        //���������� ����� �� ����� ���� �������� � ������ ������
        msg2('����� ���� �� ������� ���������� ����� �����?', '��������!', MB_OK
          + MB_ICONERROR);
    end;
  end
  else if Form_Main.have_cash = 2 then
  begin
    if ECR.ResultCode <> 0 then
    begin
      Result := 1;
      msg2('������ ��� �� ����:' + errStep + ',: ���: ' + string(ECR.ResultCode)
        + ', ��������: ' + string(ECR.ResultCodeDescription)
        + '!', '��������!', MB_OK + MB_ICONERROR);
    end;
  end;
end;

//�������� ����� � ���

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
  //������� ����� �� ���
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

// ������� ����

function open_port_ecr(ECR: OleVariant): Integer;
begin
  Result := 0;
  // �������� ����
  if (Form_Main.have_cash = 1) then
  begin
    if open_port(ECR) <> 0 then
    begin
      show_error(ECR, '12');
      Result := 1;
      Exit;
    end;
  end;

  // ��������� �� �������������������
  // �������, ������ �� ����� ������ ���, ���� ���� ���� ����
  //  if not ECR.Fiscal then
  //    msg2('��� �� ���������������!', '��������!', MB_OK+MB_ICONSTOP);

  // �������� ��������� ���
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

procedure close_port_ecr(ECR: OleVariant);
begin
  // ����������� ����
  if (Form_Main.have_cash = 1) and (close_port(ECR) <> 0) then
    Exit;
end;

// ������� �����

function open_session(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_Main.have_cash = 1 then
  begin
    // ������������� ������ ������
    ECR.Password := '30';
    if ECR.SessionOpened then
    begin
      //����� ��� �������
      Result := 1;
      Exit;
    end;
    //��������� �����
    if ECR.OpenSession <> 0 then
    begin
      Result := 2;
      show_error(ECR, '15');
    end;
  end
  else if Form_Main.have_cash = 2 then
  begin
    // ������������� ������ ���������
    ECR.Password := '1';
    ECR.GetECRStatus;

    if (ECR.ECRMode = 2) or (ECR.ECRMode = 3) then
    begin
      //����� ��� �������
      Result := 1;
      Exit;
    end;

    //��������� �����
    ECR.OpenSession;
    if ECR.ResultCode <> 0 then
      // ����� �� ���������� ��� ������� ������, ����� ����� <> 0 ?
    begin
      Result := 2;
      show_error(ECR, '16');
    end;

  end;
end;

procedure rep_wo_clearance(p_mode: Integer; ECR: OleVariant);
begin
  //X-�����, ��� �������
  if Form_Main.have_cash = 1 then
  begin
    // ������������� ������ ������
    ECR.Password := '30';
    // ������ � ����� ������� ��� �������
    ECR.Mode := 2;
    if ECR.SetMode <> 0 then
    begin
      show_error(ECR, '17');
      Exit;
    end;
    // ������� �����
    ECR.ReportType := p_mode;
    if ECR.Report <> 0 then
      show_error(ECR, '18');
  end
  else if Form_Main.have_cash = 2 then
  begin
    // ������������� ������ ������
    ECR.Password := '30';
    // ������� �����
    ECR.PrintReportWithoutCleaning;
    show_error(ECR, '19');
  end;
end;

function rep_clearance(ECR: OleVariant): Integer;
begin
  //Z-�����, � ��������
  Result := 0;
  if Form_Main.have_cash = 1 then
  begin
    // ������������� ������ ������
    ECR.Password := '30';
    // ������ � ����� ������� c ��������
    ECR.Mode := 3;
    if ECR.SetMode <> 0 then
    begin
      Result := 1;
      show_error(ECR, '20');
      Exit;
    end;
    // ������� �����
    ECR.ReportType := 1;
    if ECR.Report <> 0 then
    begin
      Result := 1;
      show_error(ECR, '21');
    end;
  end
  else if Form_Main.have_cash = 2 then
  begin
    // ������������� ������ ������
    ECR.Password := '30';
    // ��������� ������
    ECR.GetShortECRStatus;
    // �������� � ������� 2 � 3 (��. �������� ECRMode).
    if (ECR.ECRMode = 2) or (ECR.ECRMode = 3) then
    begin
      ECR.PrintReportWithCleaning;
      // ��������� ������
      ECR.GetECRStatus;
      // ���� �� ������� � ����� �������� �����, �� - ������
      if ECR.ECRMode <> 4 then
      begin
        Result := 1;
        show_error(ECR, '22');
        Exit;
      end;
    end
    else
    begin
      // ��� ��������� � ������������ ������
      msg2('������������ ����� ���! ECRMode=' + string(ECR.ECRMode)
        + ', ECRModeDescription: ' + string(ECR.ECRModeDescription)
        + '!', '��������!', MB_OK + MB_ICONERROR);
    end;

  end;
end;

// ����� � ����� �����������

function open_reg_ecr(ECR: OleVariant): Integer;
begin
  Result := 0;
  // ������������� ������ ������
  ECR.Password := '30';
  if Form_Main.have_cash = 1 then
  begin
    // ������ � ����� �����������
    ECR.Mode := 1;
    if ECR.SetMode <> 0 then
    begin
      Result := 1;
      show_error(ECR, '23');
    end;
  end;
end;

// ������� ���
// p_summa - ���� �����
// ECR - OLE ������� �����
// tp - ��� ��������: 0-�������, 1-������, 2-���������

function close_reg_summ_ecr(p_summa: double; ECR: OleVariant; tp: Integer;
  var F: TextFile // ��������� ����
  ): Integer;
begin
  Result := 0;
  // �������� ���� ��������� �� ������
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
    if tp = 0 then
    begin
      // �������
      ECR.Summ1 := p_summa;
      ECR.Summ2 := 0;
      ECR.Summ3 := 0;
      ECR.Summ4 := 0;
    end
    else if tp = 2 then
    begin
      // ���������
      ECR.Summ1 := 0;
      ECR.Summ2 := 0;
      ECR.Summ3 := 0;
      ECR.Summ4 := p_summa;
    end
    else if tp = 3 then
    begin
      // ������������ ����������
      ECR.Summ1 := 0;
      ECR.Summ2 := 0;
      ECR.Summ3 := p_summa;
      ECR.Summ4 := 0;
    end
    else
    begin
      // ������ ���� - ��� �������
      ECR.Summ1 := p_summa;
      ECR.Summ4 := 0;
    end;

    ECR.Password := '1';
    ECR.StringForPrinting := '==========================================';
    ECR.CloseCheck;
    show_error(ECR, '25');
  end
  else
  begin
    Writeln(F, '����������� ����, �����=' + FloatToStr(p_summa));
  end;
end;

// ������� ��� ��� ���������� �������� �������� ��� �������� �����

function close_reg_ecr_in_removing(l_summa: double; ECR: OleVariant; tp: Integer): Integer;
begin
  Result := 0;
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
    // ������� ���
    ECR.Password := '1';

    // ������ ������� ��������� ����, �������� ��������� � ������ ������ ����
    if tp = 1 then
    begin
      // �������
      ECR.Summ1 := l_summa;
      ECR.Summ2 := 0;
      ECR.Summ3 := 0;
      ECR.Summ4 := 0;
    end
    else if tp = 2 then
    begin
      // ���������
      ECR.Summ1 := 0;
      ECR.Summ2 := 0;
      ECR.Summ3 := l_summa;
      ECR.Summ4 := 0;
    end
    else if tp = 3 then
    begin
      // ������������ ����������
      ECR.Summ1 := 0;
      ECR.Summ2 := 0;
      ECR.Summ3 := l_summa;
      ECR.Summ4 := 0;
    end;

    ECR.StringForPrinting := '===================';
    ECR.CloseCheck;
    show_error(ECR, '28');
  end;
end;


// ������� ��� - ���������� (��� ���)
// p_summa - ���� �����
// ECR - OLE ������� �����
// tp - ��� ��������: 0-�������, 1-������, 2-���������

function close_reg_summ_ecr_ext(p_summa: double; ECR: OleVariant; tp: Integer;
  var F: TextFile // ��������� ����
  ): Integer;
begin
  Result := 0;
  if tp = 1 then
  begin
    // �������
    ECR.Summ1 := p_summa;
    ECR.Summ2 := 0;
    ECR.Summ3 := 0;
    ECR.Summ4 := 0;
  end
  else if tp = 2 then
  begin
    // ���������
    ECR.Summ1 := 0;
    ECR.Summ2 := 0;
    ECR.Summ3 := p_summa;
    ECR.Summ4 := 0;
  end
  else if tp = 3 then
  begin
    // ������������ ����������
    ECR.Summ1 := 0;
    ECR.Summ2 := 0;
    ECR.Summ3 := p_summa;
    ECR.Summ4 := 0;
  end;

  ECR.Password := '1';
  ECR.StringForPrinting := '==========================================';
  ECR.CloseCheck;
  if show_error2(ECR, '25') = 0 then
    // ����� ����
    ECR.RepeatDocument
  else
    Result := 1;
end;

// ��������� ����� ���

function check_mode(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_Main.have_cash = 2 then
  begin
    // ��������� ������
    ECR.GetShortECRStatus;
    // �������� � ������� 2 � 3 (��. �������� ECRMode).
    Result := ECR.ECRMode;
  end
  else
  begin
    // ��� ������ ���

  end;
end;

// ��������� ����� ��� � ���������

function check_mode2(ECR: OleVariant): string;
begin
  Result := '';
  if Form_Main.have_cash = 2 then
  begin
    // ��������� ������
    ECR.GetShortECRStatus;
    // �������� � ������� 2 � 3 (��. �������� ECRMode).
    Result := ECR.ECRModeDescription;
  end
  else
  begin
    // ��� ������ ���

  end;
end;

// ������� ���

function open_reg(ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_Main.have_cash = 2 then
  begin
    ECR.Password := '1';
    ECR.CheckType := 0; // ��� - �������
    ECR.OpenCheck;
    if ECR.ResultCode <> 0 then
    begin
      show_error(ECR, '26');
      Result := 1;
    end;
  end;
end;

// �������������

function annulment(ECR: OleVariant): Integer;
begin
  Result := 0;
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


// ������ �� ������� (����� ������, �� ����� ���������� ������)

procedure print_by_line(p_text: string; ECR: OleVariant);
var
  i, j, a: Integer;
  str: string;
begin
  i := 0;
  j := 0;
  a := 41; // ����� ������
  while i < Length(p_text) do
  begin
    i := i + a;
    if i > Length(p_text) then
      i := Length(p_text);
    str := Copy(p_text, j, i);
    //msg2(str, '��������!', MB_OK);

    ECR.StringForPrinting := str;
    ECR.PrintString;
    j := j + a + 1;
    if j > Length(p_text) then
      Exit;
  end;

end;

// ������ � ���������� �� ������, � ������� �� N ������

procedure printByLineWithCut(isCut: Boolean; p_text: string; ECR: OleVariant;
  pCutLine:
  Integer);
var
  lst: TStringList;
  i, i2: Integer;
begin
  lst := TStringList.Create;
  // ������� ������ �� ���������, ��������� ������� ������
  splitStr(p_text, #13#10, lst);
  i2 := 0;
  for i := 0 to lst.Count - 1 do
  begin
    i2 := i2 + 1;
    ECR.Password := '1';
    ECR.UseReceiptRibbon := true;
    ECR.UseJournalRibbon := false;
    // ������ ����������� � ��������� �� ������
    ECR.StringForPrinting := removeControl(lst[i]);
    ECR.PrintString;
    if isCut then
    begin
      // �������� �� pCutLine ������ ��� � �����
      if (i2 = pCutLine) or (i = (lst.Count - 1)) then
      begin
        cutCheck(False, True, 1, ECR);
      end;
    end;
  end;
  lst := nil;
end;

// �������� ��� cutType - true(������ ��� ���������), feedAfterCut - ��������� ����� ������

function cutCheck(cutType, feedAfterCut: Boolean; feedLineCount: Integer;
  ECR: OleVariant): Integer;
begin
  Result := 0;
  if Form_Main.have_cash = 1 then
  begin
  end
  else if Form_Main.have_cash = 2 then
  begin
    ECR.Password := '1';
    ECR.CutType := cutType;
    ECR.FeedAfterCut := feedAfterCut;
    ECR.FeedLineCount := feedLineCount;
    ECR.CutCheck;
    show_error(ECR, '28');
  end;
end;

procedure print_string_ecr(p_text: string; //�����
  p_wrap, //������� 0-���, 1-�� ������, 2-�� ������
  p_align: Integer;
  //������������ 0-�� ������ ����, 1-�� ������, 2-�� ������� ����
  ECR: OleVariant
  );
var
  F: TextFile; // ��������� ���� (null ������)
begin
  print_string_ecr2(p_text, p_wrap, p_align, F, ECR);
end;

procedure print_string_ecr2(p_text: string; //�����
  p_wrap, //������� 0-���, 1-�� ������, 2-�� ������
  p_align: Integer;
  //������������ 0-�� ������ ����, 1-�� ������, 2-�� ������� ����
  var F: TextFile; // ��������� ����
  ECR: OleVariant
  );
begin
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
end;

// ������ ������ ���������

procedure print_header_ecr(p_text: string; //�����
  p_wrap, //������� 0-���, 1-�� ������, 2-�� ������
  p_align, //������������ 0-�� ������ ����, 1-�� ������, 2-�� ������� ����
  p_font: Integer; // ����� (��� ������)
  var F: TextFile; // ��������� ����
  ECR: OleVariant
  );
begin
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
end;

// ����������� �������

procedure reg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep:
  Integer;
  var F: TextFile; // ��������� ����
  ECR: OleVariant
  );
begin
  if Form_main.have_cash = 1 then
  begin
    ECR.Name := p_name;
    ECR.Price := p_price;
    ECR.Quantity := p_quantity;
    //������� �����
    ECR.Department := p_dep;
    if ECR.Registration <> 0 then
      show_error(ECR, '32');
  end
  else if Form_main.have_cash = 2 then
  begin
    // �������
    ECR.Password := '1';
    // ��������� ������
    ECR.GetShortECRStatus;
    ECR.StringForPrinting := p_name;
    ECR.Price := p_price;
    ECR.Quantity := p_quantity;
    //������� �����
    ECR.Department := p_dep;
    ECR.Sale;
    show_error(ECR, '33');
  end;
end;

// ����������� ������� - ����� ������ (��� ���)

procedure reg_ecr_ext(p_name: string; p_price: double; p_quantity: double;
  p_dep:
  Integer;
  var F: TextFile; // ��������� ����
  ECR: OleVariant
  );
begin
  // �������
  ECR.Password := '1';
  // ��������� ������
  ECR.GetShortECRStatus;
  ECR.StringForPrinting := p_name;
  ECR.Price := p_price;
  ECR.Quantity := p_quantity;
  //������� �����
  ECR.Department := p_dep;
  // ����� �� ������������
  ECR.TaxValueEnabled := False;

  ECR.Sale;
  show_error(ECR, '33');

  // ���������� ��� 0%
  ECR.UseReceiptRibbon := false;
  ECR.UseJournalRibbon := true;

  print_by_line('��� 0%', ECR);
end;

// ������� �������

procedure unreg_ecr(p_name: string; p_price: double; p_quantity: double; p_dep:
  Integer; ECR: OleVariant);
begin
  // ������ ��� 2 ����
  if Form_Main.have_cash = 2 then
  begin
    // �������
    ECR.Password := '1';
    ECR.StringForPrinting := p_name;
    ECR.Price := p_price;
    ECR.Quantity := p_quantity;
    //������� �����
    ECR.Department := p_dep;
    ECR.ReturnSale;
    show_error(ECR, '34');
  end;
end;

function calc_pads(p_txt: string): string;
var
  i: Integer;
begin
  //���������� ������ ��������, ��� �������������� ������������ �������

  Result := '';
  for i := 1 to 18 - Length(p_txt) do
  begin
    Result := Result + ' ';
  end;

end;

// ������� ���-�� ��������
// place - ����� �� ������� ������ ��������, p_text - �����, �� �������� ���������

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
  // �������� ����
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
  // ����������� ����
  ECR.DeviceEnabled := false;
  Result := 0;
  if ECR.ResultCode <> 0 then
  begin
    show_error(ECR, '36');
    Result := 1;
  end;
end;

// ��������� �������, ������� ��������� ������

function check_status_and_wait(ECR: OleVariant): Integer;
var
  i: Integer;
begin
  i := 0;
  // ����� 30 ���., ���� �� �������� ������ "������"
  while (ECR.ResultCode = 80) and (i <= 30) do
  begin
    Sleep(1000);
    i := i + 1;
  end;

  Result := ECR.ResultCode;
end;

end.

