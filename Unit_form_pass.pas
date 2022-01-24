unit Unit_form_pass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit;

type
  TForm_pass = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    cxUser: TcxTextEdit;
    cxPass: TcxTextEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxPassKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_pass: TForm_pass;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_pass.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_pass.Button1Click(Sender: TObject);
begin
  Form_main.User:=cxUser.text;
  Form_main.Pass:=cxPass.text;
  Close;
end;

procedure TForm_pass.FormCreate(Sender: TObject);
begin
  if Form_main.User <> '' then
    cxUser.text:=Form_main.User;
end;

procedure TForm_pass.cxPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Form_main.User:=cxUser.text;
    Form_main.Pass:=cxPass.text;
    Close;
  end
end;

end.
