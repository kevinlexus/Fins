unit Unit_inkass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Oracle, DB, Utils, Unit_ECR;

type
  TForm_inkass = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_inkass: TForm_inkass;

implementation

uses DM_module1, Unit_inkass_print, Unit_Mainform;

{$R *.dfm}

procedure TForm_inkass.FormCreate(Sender: TObject);
begin
  TForm(Sender).AutoSize:=true;
  Edit2.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.INIT.get_nkom', parNone);
  Edit1.Text:=DataModule1.OraclePackage1.CallFloatFunction(
    'scott.C_GET_PAY.get_tails', parNone);

end;

procedure TForm_inkass.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_inkass.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm_inkass.Button1Click(Sender: TObject);
begin
  if  DataModule1.OraclePackage1.CallFloatFunction(
  'scott.C_GET_PAY.get_tails', parNone) = 0 then
  begin
  if Application.MessageBox('Выполнить инкассацию, если остаток равен 0?',
     'Внимание!', MB_YESNO+MB_ICONEXCLAMATION+MB_APPLMODAL)=IDNO then
    exit;
  end;

  if (Application.MessageBox('Выполнить инкассацию?',
     'Подверждение', MB_ICONQUESTION+MB_YESNO+MB_APPLMODAL) = IDYES	)
     then
  begin

   if Form_Main.have_cash=1 then
   begin
   //С кассовым аппаратом
    if Application.MessageBox('Выполнить Z-отчет?',
       'Внимание!', MB_YESNO+MB_ICONEXCLAMATION+MB_APPLMODAL)=IDNO then
    begin
      msg2('Z-отчет необходим для выполнения инкассации!', 'Внимание!', MB_OK+MB_ICONSTOP);
      Exit;
    end
    else
    begin
      if open_ecr <> 0 then
        Exit;
      if open_session <> 1 then
      begin
        msg2('Смена еще не открыта для снятия Z отчета!', 'Внимание!', MB_OK+MB_ICONERROR);
        Exit;
      end
      else
      begin
        if rep_clearance <> 0 then
          begin
            //Ошибка при выполнении отчета...
            close_ecr;
            Exit;
          end;
          close_ecr;
      end;
    end;
   end;

    DataModule1.OraclePackage1.CallProcedure(
      'scott.C_GET_PAY.make_inkass', parNone);
    DataModule1.OraclePackage1.Session.Commit;

    Edit1.Text:=DataModule1.OraclePackage1.CallFloatFunction(
      'scott.C_GET_PAY.get_tails', parNone);
     Application.MessageBox('Инкассация выполнена!',
      'Внимание!', MB_ICONINFORMATION+MB_OK+MB_APPLMODAL);
  end;
end;

procedure TForm_inkass.Button3Click(Sender: TObject);
begin
  if FF('Form_inkass_print', 1) = 0 then
    Application.CreateForm(TForm_inkass_print, Form_inkass_print);
end;

end.
