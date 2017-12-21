unit Unit_start;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Oracle, jpeg, ShellAPI;

type
  TForm_start = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_start: TForm_start;

implementation

uses Unit_Mainform, DM_module1;

{$R *.dfm}

procedure TForm_start.Timer1Timer(Sender: TObject);
begin
 Timer1.Interval:=0;
 Form_start.Close;
 Form_Main.Visible:=true;
end;

procedure TForm_start.FormCreate(Sender: TObject);
begin
  //ошибки в базе
  Memo1.Text:='';
  Memo1.Text:=DataModule1.OraclePackage1.CallStringFunction
       ('scott.INIT.get_errors', [parNone]);
  if Length(Memo1.Text) > 0 then
  begin
    Timer1.Interval:=0;
    Memo1.Align:=alClient;
    Memo1.Visible:=true;
    Memo1.Lines.Add('');        
    Memo1.Lines.Add('дл€ закрыти€ сообщени€ двойной клик');
  end;
end;

procedure TForm_start.Memo1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_start.Label1Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'http://direct.ucoz.ae/forum/3', nil, nil, SW_SHOW);
end;

procedure TForm_start.Label1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label1.Font.Color := clRed;
end;

procedure TForm_start.Label1MouseLeave(Sender: TObject);
begin
  Label1.Font.Color := clBlue;
end;

end.
