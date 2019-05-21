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
    CheckBox1: TCheckBox;
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
  if (Form_Main.have_cash=1) or (Form_Main.have_cash=2) then
  begin
    CheckBox1.Checked:=True;
  end
  else
  begin
    CheckBox1.Checked:=False;
    CheckBox1.Enabled:=False;
  end;

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
   if ((Form_Main.have_cash=1) or (Form_Main.have_cash=2)) then
   begin
    if CheckBox1.Checked then
    begin
      //С кассовым аппаратом
      if Application.MessageBox('Выполнить Z-отчет?',
         'Внимание!', MB_YESNO+MB_ICONEXCLAMATION+MB_APPLMODAL)=IDNO then
      begin
        msg2('Z-отчет необходим для выполнения инкассации!', 'Внимание!', MB_OK+MB_ICONSTOP);
        msg2('Икассация НЕ выполнена!', 'Внимание!', MB_OK+MB_ICONERROR);
        Exit;
      end
      else
      begin
        if open_ecr <> 0 then
        begin
          msg2('Икассация НЕ выполнена!', 'Внимание!', MB_OK+MB_ICONERROR);
          Exit;
        end;
        if open_session <> 1 then
        begin
          msg2('Смена еще не открыта для снятия Z отчета!', 'Внимание!', MB_OK+MB_ICONERROR);
          msg2('Икассация НЕ выполнена!', 'Внимание!', MB_OK+MB_ICONERROR);
          Exit;
        end
        else
        begin
          if rep_clearance <> 0 then
            begin
              //Ошибка при выполнении отчета...
              close_ecr;
              msg2('Z отчет не был распечатан! Проверьте выполнение инкассации!', 'Внимание!', MB_OK+MB_ICONERROR);
              //Exit;
            end;
            close_ecr;
        end;
      end;
    end
    else
    begin
      if msg3('Выполнить инкассацию без Z-отчета?', 'Внимание!', MB_YESNO + MB_ICONQUESTION) = ID_NO then
      begin
        Exit;
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
