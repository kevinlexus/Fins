unit Unit_form_pay_dolg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, OracleData, StdCtrls, Mask,
  wwdbedit, Menus, cxClasses, cxPropertiesStore, ComCtrls;

type
  TForm_get_pay_dolg = class(TForm)
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    Button1: TButton;
    CheckBox1: TCheckBox;
    btn1: TButton;
    Button2: TButton;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    pm1: TPopupMenu;
    N1: TMenuItem;
    cxprprtstr1: TcxPropertiesStore;
    HeaderControl1: THeaderControl;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure OD_chargepayBeforeInsert(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exit_ok;
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure recalc;
    { Public declarations }
  end;

var
  Form_get_pay_dolg: TForm_get_pay_dolg;

implementation

uses Unit_get_pay_nal, Utils, Math, DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_get_pay_dolg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxprprtstr1.StoreTo(True);
  Action := caFree;
end;

procedure TForm_get_pay_dolg.FormCreate(Sender: TObject);
begin
  //Настройки расположения формы
  cxprprtstr1.Active := True;
  cxprprtstr1.RestoreFrom;

  //Form_get_pay_nal.OD_chargepay.Filter:='((summa > 0) or (penya > 0)) and (sal > 0)';
  Form_get_pay_nal.OD_chargepay.Filter := '((summa2 > 0) or (penya2 > 0))';
  // ред.08.07.2019 убрал  and (sal > 0) по просьбе Полыс
  Form_get_pay_nal.OD_chargepay.Filtered := true;
  DBGridEh1.SumList.RecalcAll;
  DBGridEh1.SelectedIndex := 5;
end;

procedure TForm_get_pay_dolg.OD_chargepayBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TForm_get_pay_dolg.Button1Click(Sender: TObject);
begin
  exit_ok;
  Close;
end;

procedure TForm_get_pay_dolg.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_pay_dolg.exit_ok;
begin
  Form_get_pay_nal.wwDBEdit1.Text := wwDBEdit1.Text;
  with Form_get_pay_nal do
  begin
    if not (OD_chargepay.State in [dsBrowse]) then
      OD_chargepay.Post;
  end;

  with Form_get_pay_nal.OD_c_kwtp_temp do
  begin
    Edit;
    FieldByName('summa').AsFloat :=
      DBGridEh1.SumList.SumCollection.Items[2].SumValue;
    FieldByName('penya').AsFloat :=
      DBGridEh1.SumList.SumCollection.Items[3].SumValue;
    FieldByName('itog').AsFloat :=
      DBGridEh1.SumList.SumCollection.Items[2].SumValue +
      DBGridEh1.SumList.SumCollection.Items[3].SumValue;
    Post;
  end;
end;

procedure TForm_get_pay_dolg.DBGridEh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_Return) and
    (DBGridEh1.DataSource.DataSet.Eof = True)
    and (DBGridEh1.SelectedField.FieldName = 'ITOG') then
  begin
    exit_ok;
    Close;
  end
  else if (key = VK_Return) and
    (DBGridEh1.DataSource.DataSet.Eof <> True)
    and (DBGridEh1.SelectedField.FieldName = 'ITOG') then
  begin
    key := VK_DOWN;
  end;

end;

procedure TForm_get_pay_dolg.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_get_pay_dolg.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    Form_get_pay_nal.OD_chargepay.Filtered := false;
  end
  else
  begin
    Form_get_pay_nal.OD_chargepay.Filter := '(summa > 0) and (sal > 0)';
    Form_get_pay_nal.OD_chargepay.Filtered := true;
  end;
  DBGridEh1.SumList.RecalcAll;
end;

procedure TForm_get_pay_dolg.recalc;
var
  penya_, summa_, itog_, itogD_, proc1_, penya2_, tt2: Double;
begin
  penya_ := DBGridEh1.DataSource.DataSet.FieldByName('PENYA').AsFloat;
  summa_ := DBGridEh1.DataSource.DataSet.FieldByName('SUMMA').AsFloat;
  itogD_ := summa_ + penya_;
  if (itogD_ <> 0) and not (CheckBox1.Checked) then
  begin
    itog_ := DBGridEh1.DataSource.DataSet.FieldByName('ITOG').AsFloat;

    proc1_ := (summa_ / itogD_); // % суммы долга

    tt2 := RoundTo((itog_ * proc1_), -2);
    DBGridEh1.DataSource.DataSet.FieldByName('SUMMA').AsFloat := tt2;
    penya2_ := itog_ - tt2;
    DBGridEh1.DataSource.DataSet.FieldByName('PENYA').AsFloat := penya2_;
  end
  else if (itogD_ <> 0) and (CheckBox1.Checked) then
  begin
    DBGridEh1.DataSource.DataSet.FieldByName('ITOG').AsFloat := itogD_;
  end
  else
  begin
    //зануляем ошибочно введенную итоговую сумму
    DBGridEh1.DataSource.DataSet.FieldByName('ITOG').AsFloat := 0;
  end;
end;

procedure TForm_get_pay_dolg.DBGridEh1ColEnter(Sender: TObject);
var
  penya_, summa_: Double;
begin
  if (DBGridEh1.SelectedField.FieldName = 'ITOG') then
  begin
    penya_ := DBGridEh1.DataSource.DataSet.FieldByName('PENYA').AsFloat;
    summa_ := DBGridEh1.DataSource.DataSet.FieldByName('SUMMA').AsFloat;
    DBGridEh1.DataSource.DataSet.FieldByName('ITOG').AsFloat := penya_ + summa_;
  end;

end;

procedure TForm_get_pay_dolg.btn1Click(Sender: TObject);
begin
  //очистка предложенных к оплате сумм долгов и начисления
  with Form_get_pay_nal.OD_chargepay do
  begin
    First;
    while not Eof do
    begin
      if not (State in [dsEdit]) then
        Edit;
      FieldByName('SUMMA').AsInteger := 0;
      FieldByName('PENYA').AsInteger := 0;
      Next;
    end;
    if State = dsEdit then
      Post;
  end;
end;

procedure TForm_get_pay_dolg.wwDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if wwDBEdit1.Text <> '' then
    begin
      Form_get_pay_nal.distPay(StrToFloat(wwDBEdit1.Text), True, True, True, False);
    end;
//    Button1.SetFocus;
Windows.SetFocus(Button1.Handle);
  end;
end;

procedure TForm_get_pay_dolg.N1Click(Sender: TObject);
begin
  //убрать входящее сальдо по пене
  if DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.C_CPENYA.corr_sal_pen',
    [Form_get_pay_nal.wwDBEdit3.Text,
    Form_get_pay_nal.OD_chargepay.FieldByName('mg').AsString]) <> 0 then
  begin
    msg2('Входящего сальдо по пене нет, либо уже удалено!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
  end
  else
  begin
    Form_get_pay_nal.reLoadDeb;
    Form_get_pay_nal.OD_chargepay.First;
{    with Form_get_pay_nal.OD_chargepay do
    begin
      //заново залить задолжность
      DataModule1.OraclePackage1.CallProcedure(
        'scott.C_GET_PAY.init_c_kwtp_temp_dolg',
        [Form_get_pay_nal.wwDBEdit3.Text]);
      Active := false;
      Active := true;
      //заново залить задолжность
      First;
    end;}
  end;

end;

procedure TForm_get_pay_dolg.Button3Click(Sender: TObject);
begin
  // Восстановить распределение оплаты
  Form_get_pay_nal.reLoadDeb;
end;

end.

