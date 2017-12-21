unit Unit_status_gen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm_status_gen = class(TForm)
    GroupBox1: TGroupBox;
    Animate1: TAnimate;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_status_gen: TForm_status_gen;

implementation

{$R *.dfm}

procedure TForm_status_gen.FormShow(Sender: TObject);
begin
    Animate1.ResName := 'fpavi';
    Animate1.ResHandle := HInstance;

    Animate1.Active:=true;
end;

procedure TForm_status_gen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
