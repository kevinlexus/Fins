unit Unit_dvb_connect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, DVButils, wwdblook, Utils, 
  wwriched, DBCtrlsEh, Wwdbgrid, ExtCtrls, Oracle, Grids, Wwdbigrd, Mask;


type
  TForm_dvb_connect = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    OD_base: TOracleDataSet;
    Button4: TButton;
    OD_usl: TOracleDataSet;
    OD_uslNM: TStringField;
    OD_uslUSL: TStringField;
    OD_uslN_PROGS: TFloatField;
    DS_usl: TDataSource;
    OD_count: TOracleDataSet;
    GroupBox2: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    DBEditEh1: TDBEditEh;
    CheckBox1: TCheckBox;
    DataSource1: TDataSource;
    StaticText1: TStaticText;
    Memo1: TMemo;
    wwDBGrid1: TwwDBGrid;
    CheckBox2: TCheckBox;
    Panel1: TPanel;
    CheckBox3: TCheckBox;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure DBEditEh1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CheckBox3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure unload;
  public
    { Public declarations }
  end;

var
  Form_dvb_connect: TForm_dvb_connect;
  dvb: DVButils.dvbBase;

implementation

uses DM_module1;
{$R *.dfm}

procedure TForm_dvb_connect.FormCreate(Sender: TObject);
begin
  AutoSize:=Active;
  DBEditEh1.Text:=DataModule1.OraclePackage1.CallStringFunction
       ('scott.Utils.get_str_param', ['PATH_EXP_DVB']);
  CheckBox3.Caption:='��������� ������ '+DataModule1.OraclePackage1.CallStringFunction
       ('scott.Utils.get_int_param', ['INTERVAL_EXP_DVB'])+' �����';
  Timer1.Interval:=DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['INTERVAL_EXP_DVB'])*60*1000;
  dvb:=dvbBase.create;
  OD_usl.Active:=true;
  wwDBLookupCombo1.LookupValue:=
    OD_usl.FieldByName('usl').AsString;
end;

procedure TForm_dvb_connect.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_dvb_connect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_dvb_connect.Button4Click(Sender: TObject);
var
  id_dvb_, a, b, c: Integer;
  lsk_, str_, strtemp_: string;
begin
  unload;
end;

procedure TForm_dvb_connect.unload;
var
  id_dvb_, a, b, c: Integer;
  lsk_, str_, strtemp_: string;
begin
  if CheckBox3.Checked then
  begin
    Timer1.Enabled:=False;
  end;
  Panel1.Visible:=True;
  Update;
  //������������ �������������� ��������� ������
  if CheckBox2.Checked then
  DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CPENYA.gen_charge_pay_full',
          [parNone]);


  dvb.beginWrite(DBEditEh1.Text+'\user.bin');
  try
  //������ � ���� ���-�� ���������
  OD_count.Active:=false;
  OD_count.Active:=true;
  dvb.writeStr(OD_count.FieldByName('cnt').AsString, 10, 4, 1, 1);

  OD_base.Active:=false;
  OD_base.Active:=true;

  OD_base.First;
  lsk_:='';
  for a:=1 to OD_base.RecordCount do
  begin
  if lsk_ <> OD_base.FieldByName('lsk').AsString then
  begin
    if lsk_ <> '' then
    begin
      //������ � ���� ������
      //������� 4 ����� - ID �������� � ������� (N_��������-1)*2
      dvb.writeStr(IntToStr((id_dvb_-1)*2), 10, 4, 1, 1);
      //����� 124 ����� ������ - �� 2 ����� �� �����(���� 62 ������) 1-
      //����� ������������, 0 - ������ (� 2-���� �������)
      b:=0;
      c:=1;
      while c <= 62 do
      begin
        //���������� ���������� ����� 80Hex, ���� ��������
        if CheckBox1.Checked then
          strtemp_:=simplBitSum(Copy(str_, b+1, 16), lpad('1000000000000000',16))
         else
          strtemp_:=Copy(str_, b+1, 16);
        b:=b+16;
        dvb.writeStr(strtemp_, 2, 2, 1, 1);
        Inc(c);
      end;
      //� ����� 4 ����� - ������� ����� �� ����� � �������� (��� ����
      //������� ������ ���������� ���� �������) (���� - ����)
      dvb.writeStr('0', 10, 4, 1, 1);
    end;
      lsk_:=OD_base.FieldByName('lsk').AsString;
      str_:=OD_base.FieldByName('mask').AsString;
      id_dvb_:=OD_base.FieldByName('id_dvb').AsInteger;
  end
  else
  begin
    str_:=simplBitSum(str_, OD_base.FieldByName('mask').AsString);
  end;

  OD_base.Next;
  end;

    if lsk_ <> '' then
    begin
      //������ � ���� ��������� ������
      //������� 4 ����� - ID �������� � ������� (N_��������-1)*2
      dvb.writeStr(IntToStr((id_dvb_-1)*2), 10, 4, 1, 1);
      //����� 124 ����� ������ - �� 2 ����� �� �����(���� 62 ������) 1-
      //����� ������������, 0 - ������ (� 2-���� �������)
      b:=0;
      c:=1;
      while c <= 62 do
      begin
        //���������� ���������� ����� 80Hex, ���� ��������
        if CheckBox1.Checked then
          strtemp_:=simplBitSum(Copy(str_, b+1, 16), lpad('1000000000000000',16))
         else
          strtemp_:=Copy(str_, b+1, 16);
        b:=b+16;
        dvb.writeStr(strtemp_, 2, 2, 1, 1);
        Inc(c);
      end;
      //� ����� 4 ����� - ������� ����� �� ����� � �������� (��� ����
      //������� ������ ���������� ���� �������) (���� - ����)


 {     if OD_base.FieldByName('sign_summa').AsInteger > 0 then
      begin
        //������������� �����

      end
      else
      begin
        //������������� �����

      end;
      strtemp_:=Convert(OD_base.FieldByName('summa2').AsInteger, 10, 2);
      strtemp_:=lpad(strtemp_, 32);
      strtemp_:=simplBitInvrt(strtemp_);
      strtemp_:=simplBitSum(Copy(str_, b+1, 16), lpad('1000000000000000',16))
   }
   
      dvb.writeStr('0', 10, 4, 1, 1);
  //  writeStr('22222222', 10, 4, 1, 1); //������ ����������� ����� � ����������� ���������� 0 �� 4 ���� ��.������ ������

    end;
    finally
      dvb.endWrite;
      Panel1.Visible:=False;
    end;

  if CheckBox3.Checked then
  begin
    Timer1.Enabled:=True;
  end;
end;

procedure TForm_dvb_connect.DBEditEh1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  DBEditEh1.Text:=selectDir(Self.Handle);
end;

procedure TForm_dvb_connect.CheckBox3Click(Sender: TObject);
begin
{  if CheckBox3.Checked then
  begin
    if msg3('�������� ����������?', '��������!', MB_YESNO+MB_ICONQUESTION)= ID_YES then
    begin
      Form_main.CoolTrayIcon1.ShowTaskbarIcon;
      Form_main.CoolTrayIcon1.HideMainForm;
    end;
    Timer1.Enabled:=True;
    Form_main.CoolTrayIcon1.CycleInterval:=1000;
    Form_main.CoolTrayIcon1.CycleIcons:=True;
  end
    else
  begin
    Timer1.Enabled:=False;
  end;
        }
end;

procedure TForm_dvb_connect.Timer1Timer(Sender: TObject);
begin
  //��������� �������
  unload;
end;

end.
