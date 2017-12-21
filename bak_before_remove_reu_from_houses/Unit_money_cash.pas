unit Unit_money_cash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Utils, ExtCtrls;

type
  TForm_money_cash = class(TForm)
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    lbl1: TLabel;
    edt1: TwwDBEdit;
    lbl2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_money_cash: TForm_money_cash;

implementation

uses Unit_service_cash;

{$R *.dfm}

procedure TForm_money_cash.Button1Click(Sender: TObject);
begin
  if (edt1.Text = '') or (StrToFloat(edt1.Text) = 0) then
  begin
   msg2('Сумма  = 0, отмена', 'Внимание!', MB_OK+MB_ICONSTOP);
   Exit;
  end;

  Form_service_cash.l_summa:=StrToFloat(edt1.Text);
end;

procedure TForm_money_cash.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Button1.SetFocus;
end;

procedure TForm_money_cash.btn1Click(Sender: TObject);
begin
 close
end;

procedure TForm_money_cash.btn2Click(Sender: TObject);
begin
close;
end;

end.
