unit Unit_status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm_status = class(TForm)
    GroupBox1: TGroupBox;
    ProgressBar1: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure setpos(initpos_: Integer; maxpos_: Integer);
    procedure incpos(pos_: Integer);
  end;

var
  Form_status: TForm_status;

implementation

{$R *.dfm}

procedure TForm_status.setpos(initpos_: Integer; maxpos_: Integer);
begin
  ProgressBar1.Position:=initpos_;
  ProgressBar1.Max:=maxpos_;
end;

procedure TForm_status.incpos(pos_: Integer);
begin
  ProgressBar1.Position:=ProgressBar1.Position+pos_;
end;

procedure TForm_status.FormShow(Sender: TObject);
begin
//    Animate1.ResName := 'fpavi';
//    Animate1.ResHandle := HInstance;

//    Animate1.Active:=true;
end;

procedure TForm_status.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 ProgressBar1.Position:=ProgressBar1.Max;
 Update;
 Action:=caFree;

end;

end.
