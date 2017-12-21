unit Unit_form_admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm_admin = class(TForm)
    edt3: TEdit;
    Button1: TButton;
    Button2: TButton;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    mmo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_admin: TForm_admin;

implementation

{$R *.dfm}

function crypt(ATxt: String):String;
Var
  I: Integer;
  P: PChar;
begin
    I := Length(Atxt);
    Result:='';
    while I > 0 do
     begin
       Result :=  IntToHex(Ord(Atxt[I]),3) + Result;
       I := I - 1;
     end;
end;

procedure TForm_admin.Button1Click(Sender: TObject);
begin
  mmo1.Clear;
  mmo1.Lines.Add('[Application]');
  mmo1.Lines.Add('User='+crypt(edt3.Text));
  mmo1.Lines.Add('Pass='+crypt(edt1.Text));
  mmo1.Lines.Add('SID='+crypt(edt2.Text));
  mmo1.Lines.Add('');

{    User2:='';
    P := PChar(Edit4.Text);
    I:=0;
    while I < Length(P) do
     begin
         User2 := User2 + CHR( StrToInt('$'+string(P[I])+string(P[I+1])+string(P[I+2])));
         I := I + 3;
     end;
    Edit3.Text:=User2;}


//[Application]
//# User=06C065076
//#Pass=073074075066066
//# SID=04804F05404F052041


end;

procedure TForm_admin.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_admin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
