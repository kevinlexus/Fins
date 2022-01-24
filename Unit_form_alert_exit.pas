unit Unit_form_alert_exit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm_alert_exit = class(TForm)
    Timer1: TTimer;
    Label2: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_alert_exit: TForm_alert_exit;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_alert_exit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_alert_exit.Timer1Timer(Sender: TObject);
begin
  Form_alert_exit.Close;
  Form_Main.Close;
end;

procedure TForm_alert_exit.Timer2Timer(Sender: TObject);
begin
  Form_alert_exit.Close;
end;

procedure TForm_alert_exit.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_alert_exit.FormCreate(Sender: TObject);
begin
  Timer1.Enabled:=True;
end;

end.
