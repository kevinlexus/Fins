unit Unit_recv_pay_bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Oracle, DB, OracleData, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, Mask, wwdbedit, DBGrids, wwSpeedButton, wwDBNavigator,
  wwclearpanel, OracleNavigator, Menus, cxShellBrowserDialog, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator;

type
  TForm_recv_pay_bank = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    GroupBox2: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    GroupBox3: TGroupBox;
    OD_reg: TOracleDataSet;
    DS_reg: TDataSource;
    Label5: TLabel;
    Edit4: TEdit;
    OracleNavigator1: TOracleNavigator;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NINK: TcxGridDBColumn;
    cxGrid1DBTableView1DAT_INK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA_ITG: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    OD_regNINK: TFloatField;
    OD_regDAT_INK: TDateTimeField;
    OD_regSUMMA: TFloatField;
    OD_regPENYA: TFloatField;
    OD_regSUMMA_ITG: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
  public
    procedure Recalc;
  end;

var
  Form_recv_pay_bank: TForm_recv_pay_bank;

implementation

uses DM_module1, Utils, Unit_status, Unit_err_show, UnGridToClb;

{$R *.dfm}

procedure TForm_recv_pay_bank.Button1Click(Sender: TObject);
begin
//  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  OpenDialog1.Filter := '*.1* ����� (*.1*)|*.1*|��� ����� (*.*)|*.*';
  OpenDialog1.FilterIndex:=1;
  OpenDialog1.Execute;

  if OpenDialog1.FileName <> '' then
  begin
  DataModule1.OraclePackage1.CallProcedure
    ('scott.dbase_pkg.load_file_txt',['LOAD_FILE_DIR',
                          OpenDialog1.FileName]);
//  Edit1.Text:=DataModule1.OraclePackage1.CallDateFunction
//    ('scott.C_GET_PAY.get_payment_bank_date',[parNone]);
  Edit2.Text:=DataModule1.OraclePackage1.CallFloatFunction
    ('scott.C_GET_PAY.get_payment_bank_summa',[parNone]);
  Edit3.Text:=DataModule1.OraclePackage1.CallFloatFunction
    ('scott.C_GET_PAY.get_payment_bank_summp',[parNone]);
  end;
end;

procedure TForm_recv_pay_bank.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_recv_pay_bank.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure recv_payment(nink_: Integer);
var
 cnt_: Integer;
begin
  //����� ������
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  cnt_:=DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.C_GET_PAY.recv_payment_bank',[nink_]);
  Form_status.Close;
  if cnt_ = 1 then
   begin
     msg2('�� ������ ����������� ��� �������� ���������� ������ � ����������� c_comps!',
      '��������', MB_OK+MB_ICONSTOP);
   end
  else if cnt_ = 2 then
    begin
      msg2('���� �������� �������� ������� ����� �� ��������������� ������� ������ ����!',
        '��������', MB_OK+MB_ICONSTOP);
    end
  else if cnt_ = 3 then
    msg2('���� �������� �������� ������������ ��� ��������!',
  '��������', MB_OK+MB_ICONSTOP)
  else if cnt_ = 4 then
    msg2('���� �������� �������� ������������ ���� ������!',
  '��������', MB_OK+MB_ICONSTOP)
  else if cnt_ = 5 then
    msg2('���� �������� �������� ������������ ������ ������!',
  '��������', MB_OK+MB_ICONSTOP)
  else
  msg2('����� ������� ������!', '��������', MB_OK+MB_ICONINFORMATION);

  if cnt_ <> 0 then
  begin
    with Form_recv_pay_bank do
    begin
    OD_data.Active:=False;
    Od_data.setVariable('id_', cnt_);
    OD_data.Active:=True;
    end;
  end;
end;

procedure TForm_recv_pay_bank.Button2Click(Sender: TObject);
var
 cnt_, nink_: Integer;
begin
  if msg3('��������� ������ ����� ������?', '�������������', MB_YESNO+MB_ICONQUESTION) =
    ID_YES then
  begin
    if wwDBEdit1.Text='' then
      nink_:=0
    else
      nink_:=StrToInt(wwDBEdit1.Text);

    if (nink_<> 0) and (DataModule1.OraclePackage1.CallFloatFunction
       ('scott.C_GET_PAY.check_payment_bank_nink',[nink_])) <> 0 then
    begin
      //������ ������
      if msg3('����� � � '+inttostr(nink_)+' ��� ������, ������� � ������� ������?', '�������������', MB_YESNO+MB_ICONQUESTION) =
        ID_YES then
      begin
        recv_payment(nink_);
        Recalc;
      end;
    end
    else
    begin
      //���������� ������
      recv_payment(nink_);
      Recalc;
    end;
  end;
end;

procedure TForm_recv_pay_bank.Button4Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  OpenDialog1.Filter := 'DBF ����� (*.dbf)|*.dbf|��� ����� (*.*)|*.*';
  OpenDialog1.FilterIndex:=1;
  OpenDialog1.Execute;

  if OpenDialog1.FileName <> '' then
  begin
  DataModule1.OraclePackage1.CallProcedure
    ('scott.dbase_pkg.load_file_dbf',['LOAD_FILE_DIR',
                          OpenDialog1.FileName]);

  Edit1.Text:=DataModule1.OraclePackage1.CallDateFunction
    ('scott.C_GET_PAY.get_payment_bank_date',[parNone]);
  Edit2.Text:=DataModule1.OraclePackage1.CallFloatFunction
    ('scott.C_GET_PAY.get_payment_bank_summa',[parNone]);
  Edit3.Text:=DataModule1.OraclePackage1.CallFloatFunction
    ('scott.C_GET_PAY.get_payment_bank_summp',[parNone]);
  end;
end;

procedure TForm_recv_pay_bank.Button5Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  OpenDialog1.Filter := 'DBF ����� (*.dbf)|*.dbf|��� ����� (*.*)|*.*';
  OpenDialog1.FilterIndex:=1;
  OpenDialog1.Execute;

  if OpenDialog1.FileName <> '' then
  begin
  DataModule1.OraclePackage1.CallProcedure
    ('scott.dbase_pkg.load_file_dbf2',['LOAD_FILE_DIR',
                          OpenDialog1.FileName]);

  Edit1.Text:=DataModule1.OraclePackage1.CallDateFunction
    ('scott.C_GET_PAY.get_payment_bank_date',[parNone]);
  Edit2.Text:=DataModule1.OraclePackage1.CallFloatFunction
    ('scott.C_GET_PAY.get_payment_bank_summa',[parNone]);
  Edit3.Text:=DataModule1.OraclePackage1.CallFloatFunction
    ('scott.C_GET_PAY.get_payment_bank_summp',[parNone]);
  end;
end;

procedure TForm_recv_pay_bank.Recalc;
begin
  OD_reg.Active:=False;
  Edit4.Text:=DataModule1.OraclePackage1.CallStringFunction
    ('scott.init.get_nkom',[parNone]);
  Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction
    ('scott.init.get_date',[parNone]);
  OD_reg.Active:=True;
end;

procedure TForm_recv_pay_bank.FormCreate(Sender: TObject);
begin
  Recalc;
end;

procedure TForm_recv_pay_bank.N1Click(Sender: TObject);
begin
  wwDBEdit1.Text:=OD_reg.FieldByName('nink').AsString;
end;

end.
