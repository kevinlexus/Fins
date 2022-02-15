unit Unit_get_cnt_sch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, dxSkinsCore, dxSkinsDefaultPainters;

type
  TForm_get_cnt_sch = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    cxMeter: TcxMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxMeterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure action;
  public
    usl_: String;
    cnt_sch0_: Double;
  end;

var
  Form_get_cnt_sch: TForm_get_cnt_sch;

implementation

uses Unit_get_pay_nal, DM_module1;

{$R *.dfm}

procedure TForm_get_cnt_sch.action;
var
  summa_: Double;
begin
  if Form_get_cnt_sch.cxMeter.Text ='' then
   summa_:=0
   else
   summa_:=StrToFloat(Form_get_cnt_sch.cxMeter.Text);

  with Form_get_pay_nal.OD_c_kwtp_temp do
  begin
    Edit;
    //обрабатывать ли показания счетчика или сумму оплаты?
    if Form_get_pay_nal.OD_usl_chk.FieldByName('iscounter').AsInteger = 1 then
    begin
      FieldByName('summa').AsFloat:=
            DataModule1.OraclePackage1.CallFloatFunction(
               'scott.c_charges.gen_charges_sch',
               [Form_get_pay_nal.cxLsk.Text, usl_, 1,
                summa_]);
      FieldByName('cnt_sch').AsFloat:=
        summa_;
      FieldByName('cnt_sch0').AsFloat:=cnt_sch0_;
    end
    else
    begin
      FieldByName('summa').AsFloat:=
        StrToFloat(Form_get_cnt_sch.cxMeter.Text);
    end;
    Post;
  end;
  Close;
end;

procedure TForm_get_cnt_sch.Button1Click(Sender: TObject);
begin
  Action;
end;

procedure TForm_get_cnt_sch.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_cnt_sch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_get_cnt_sch.cxMeterKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_Return) then
  begin
    Action;
  end;
end;

end.
