unit Unit_service_cash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit_ECR, Utils;

type
  TForm_service_cash = class(TForm)
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    edt1: TEdit;
    lbl1: TLabel;
    edt2: TEdit;
    lbl2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    l_summa: Double;
  end;

var
  Form_service_cash: TForm_service_cash;

implementation

uses Unit_money_cash, Unit_Mainform, DM_module1;

{$R *.dfm}

procedure TForm_service_cash.btn4Click(Sender: TObject);
begin
  if open_port_ecr(Form_main.cur_ECR) <> 0 then
    Exit;
  rep_wo_clearance(2, Form_main.cur_ECR);
  close_port_ecr(Form_main.cur_ECR);
end;

procedure TForm_service_cash.btn1Click(Sender: TObject);
var
  l_ret: Integer;
begin
  //������������� ���� � ����� ����� ��������� �������!!!
{  if msg3('���� � ����� ����� ����� � ����������, ����������?', '�������������', MB_YESNO+MB_ICONQUESTION) = ID_YES then
  begin
    if open_ecr <> 0 then
      Exit
    else
    begin
      l_ret:= set_date_time_ecr;
      if l_ret <> 0 then
        msg2('���� � ����� � ��� �����������!', '��������!', MB_OK+MB_ICONERROR)
      else if l_ret = 2 then
        msg2('���� � ����� � ��� �� ����� ���� �����������, ��� ��� ������� ����� (����� Z-�����)!', '��������!', MB_OK+MB_ICONERROR)
      else
        msg2('������ ������ ��������� ���� � ������� � ���!', '��������!', MB_OK+MB_ICONERROR)
    end;
  end;
 }
end;

procedure TForm_service_cash.btn5Click(Sender: TObject);
begin
  if
    msg3('Z-����� ����������� �������������, ��� ���������� ����������, ������ ����������?', '�������������', MB_YESNO + MB_ICONSTOP) = ID_YES then
  begin
    if msg3('��������� Z-�����?', '�������������', MB_YESNO + MB_ICONQUESTION) =
      ID_YES then
    begin
      if open_port_ecr(Form_main.cur_ECR) <> 0 then
        Exit;
      if open_session(Form_main.cur_ECR) <> 1 then
        msg2('����� ��� �� ������� ��� ������ Z ������!', '��������!', MB_OK +
          MB_ICONERROR)
      else
      begin
        if rep_clearance(Form_main.cur_ECR) <> 0 then
        begin
          //������ ��� ���������� ������...
          close_port_ecr(Form_main.cur_ECR);
          Exit;
        end;
      end;
      close_port_ecr(Form_main.cur_ECR);
    end;
  end;
end;

procedure TForm_service_cash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_service_cash.btn2Click(Sender: TObject);
begin
  l_summa := 0;
  Application.CreateForm(TForm_money_cash, Form_money_cash);
  Form_money_cash.Caption := '�������� ����� � �����';
  Form_money_cash.lbl1.caption := '����� ��� ��������:';

  if Form_money_cash.ShowModal = mrOk then
  begin
    if l_summa = 0 then
      Exit;
    if open_port_ecr(Form_main.cur_ECR) <> 0 then
      Exit
    else
    begin
      //�������� ����� � �����
      if open_reg_ecr(Form_main.cur_ECR) <> 0 then
      begin
        msg2('�� �������� ������� � ����� �����������!', '��������!', MB_OK +
          MB_ICONSTOP);
        Exit;
      end;

      if put_money(l_summa, Form_main.cur_ECR) = 0 then
        msg2('����� �������!', '��������!', MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure TForm_service_cash.btn3Click(Sender: TObject);
begin
  l_summa := 0;
  Application.CreateForm(TForm_money_cash, Form_money_cash);
  Form_money_cash.Caption := '������� ����� �� �����';
  Form_money_cash.lbl1.caption := '����� ��� �������:';
  if Form_money_cash.ShowModal = mrOk then
  begin
    if l_summa = 0 then
      Exit;
    if open_port_ecr(Form_main.cur_ECR) <> 0 then
      Exit
    else
    begin
      if open_reg_ecr(Form_main.cur_ECR) <> 0 then
      begin
        msg2('�� �������� ������� � ����� �����������!', '��������!', MB_OK +
          MB_ICONSTOP);
        Exit;
      end;
      //������� ����� �� �����
      if take_money(l_summa, Form_main.cur_ECR) = 0 then
        msg2('����� ���������!', '��������!', MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure TForm_service_cash.btn6Click(Sender: TObject);
begin
  if open_port_ecr(Form_main.cur_ECR) <> 0 then
    Exit;
  rep_wo_clearance(7, Form_main.cur_ECR);
  close_port_ecr(Form_main.cur_ECR);
end;

procedure TForm_service_cash.btn7Click(Sender: TObject);
begin
  if msg3('������� �����?', '��������!', MB_YESNO + MB_ICONQUESTION) = ID_YES
    then
  begin
    if open_session(Form_main.cur_ECR) = 1 then
    begin
      msg2('����� ��� �������!', '��������!', MB_OK + MB_ICONERROR);
    end
    else
    begin
      msg2('����� ������� �������!', '��������!', MB_OK + MB_ICONINFORMATION);
    end;
  end;

end;

procedure TForm_service_cash.btn8Click(Sender: TObject);
var
  path: string;
  F: TextFile;
begin
  path := DataModule1.OraclePackage1.CallStringFunction
    ('scott.Utils.get_str_param', ['����1']);
  AssignFile(F, path + 'receipt.txt');
  Rewrite(F);
  Append(f);
  Flush(f);
  CloseFile(f);
  // ������� ��� ������� ������
  if close_reg_summ_ecr(0, Form_main.cur_ECR, 0, f) <> 0 then
  begin
    msg2('��� �� ��� ������!', '��������!', MB_OK + MB_ICONERROR);
  end;

end;

procedure TForm_service_cash.FormCreate(Sender: TObject);
var
  ECR: OleVariant;
begin
  if Form_main.cash_test = 0 then
  begin
    ECR := Form_main.cur_ECR;
    if (Form_Main.have_cash = 1) or (Form_Main.have_cash = 2) then
    begin
      ECR.GetECRStatus;
      edt1.Text := ECR.INN;
      edt2.Text := ECR.IpAddress;
    end;
  end
  else
  begin
    edt1.Text := '����� ������������';
    edt2.Text := '����� ������������';
  end;

  if Form_Main.have_eq = 1 then
  begin
    Button2.Enabled := true;
  end
  else
  begin
    Button2.Enabled := false;
  end;

end;

procedure TForm_service_cash.Button1Click(Sender: TObject);
var
  eQres: string;
begin
  l_summa := 0;
  Application.CreateForm(TForm_money_cash, Form_money_cash);
  Form_money_cash.Caption := '������� �����, ���������';
  Form_money_cash.lbl1.caption := '����� ��� ��������:';
  if Form_money_cash.ShowModal = mrOk then
  begin
    if l_summa = 0 then
      Exit;
    if Form_Main.have_eq = 1 then
    begin
      // ������� �������, ����� � ��������
      Form_Main.eqECR.Sparam('Amount', FloatToStr(l_summa * 100));
      eQres := Form_Main.eqECR.NFun(4002);
      if eQres = '0' then
      begin
        // �������
        // ��������� � "��������������" ��������� ���������� ����������
        Form_Main.eqECR.NFun(6001);
        msg2('����� ���������� �� �����!', '��������!', MB_OK +
          MB_ICONINFORMATION);
      end
      else
      begin
        msg2('������! ���=' + eQres + ', c���� �� ���������� �� �����!',
          '��������!',
          MB_OK + MB_ICONERROR);
      end;
    end;
  end;

end;

procedure TForm_service_cash.Button2Click(Sender: TObject);
begin
  if (Form_Main.have_eq = 1) then
  begin
    // ������ ������ ����������
    Form_Main.eqECR.NFun(6000);
  end;
end;

end.

