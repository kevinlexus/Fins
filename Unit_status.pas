unit Unit_status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxProgressBar;

type
  TForm_status = class(TForm)
    GroupBox1: TGroupBox;
    cxProgressBar1: TcxProgressBar;
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
  cxProgressBar1.Position:=initpos_;
  cxProgressBar1.Properties.Max:=maxpos_;
end;

procedure TForm_status.incpos(pos_: Integer);
begin
  cxProgressBar1.Position:=cxProgressBar1.Position+pos_;
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
 cxProgressBar1.Position:=cxProgressBar1.Properties.Max;
 Update;
 Action:=caFree;

end;

end.
