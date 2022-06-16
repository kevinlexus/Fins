unit Unit_money_cash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Utils, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, dxSkinsCore, dxSkinsDefaultPainters;

type
  TForm_money_cash = class(TForm)
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    cxSumma: TcxMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cxSummaKeyPress(Sender: TObject; var Key: Char);
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
  if (cxSumma.Text = '') or (StrToFloat(cxSumma.Text) = 0) then
  begin
    msg2('Сумма  = 0, отмена', 'Внимание!', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  Form_service_cash.l_summa := StrToFloat(cxSumma.Text);
end;

procedure TForm_money_cash.btn1Click(Sender: TObject);
begin
  close
end;

procedure TForm_money_cash.btn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm_money_cash.cxSummaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Windows.SetFocus(Button1.Handle);

end;

end.

