unit Unit_get_pay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DBGridEh, StdCtrls, Mask, DBCtrlsEh,
  wwdbedit, Buttons, Wwdotdot,
  Wwdbcomb, Oracle, DBLookupEh, Utils, wwcheckbox, Menus, 
  wwdbdatetimepicker, cxControls, 
  
  
  cxGridLevel, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCardView, cxGrid,
  cxPropertiesStore, 
  
  
  
  
  
  
  
  
  
  
  
  
  ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridCustomView, cxGridCustomLayoutView;

type
  TForm_get_pay = class(TForm)
    OD_c_kwtp: TOracleDataSet;
    DS_c_kwtp: TDataSource;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Edit2: TEdit;
    OD_oper: TOracleDataSet;
    DS_oper: TDataSource;
    Label5: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
    CheckBox1: TCheckBox;
    OD_c_kwtp_mg: TOracleDataSet;
    DS_c_kwtp_mg: TDataSource;
    DS_typespay: TDataSource;
    OD_typespay: TOracleDataSet;
    OD_typespayID: TFloatField;
    OD_typespayCD: TStringField;
    OD_typespayNAME: TStringField;
    OD_typespayNPP: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    GroupBox1: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1CardView1: TcxGridCardView;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1SUMM_ITG: TcxGridDBColumn;
    cxGrid1DBTableView1DOPL: TcxGridDBColumn;
    cxGrid1DBTableView1DTEK: TcxGridDBColumn;
    cxGrid1DBTableView1NKVIT: TcxGridDBColumn;
    cxGrid1DBTableView1TS: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2OPER: TcxGridDBColumn;
    cxGrid1DBTableView2DOPL: TcxGridDBColumn;
    cxGrid1DBTableView2SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView2PENYA: TcxGridDBColumn;
    cxGrid1DBTableView2SUMM_ITG: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    OD_c_kwtpLSK: TStringField;
    OD_c_kwtpADR: TStringField;
    OD_c_kwtpSUMMA: TFloatField;
    OD_c_kwtpPENYA: TFloatField;
    OD_c_kwtpOPER: TStringField;
    OD_c_kwtpNINK: TFloatField;
    OD_c_kwtpNKOM: TStringField;
    OD_c_kwtpDTEK: TDateTimeField;
    OD_c_kwtpNKVIT: TFloatField;
    OD_c_kwtpDAT_INK: TDateTimeField;
    OD_c_kwtpDOPL: TStringField;
    OD_c_kwtpTS: TDateTimeField;
    OD_c_kwtpID: TFloatField;
    OD_c_kwtpISCORRECT: TFloatField;
    cxprprtstr1: TcxPropertiesStore;
    cxGrid1DBTableView1ADR: TcxGridDBColumn;
    OD_c_kwtpSUMM_ITG: TFloatField;
    tmr1: TTimer;
    chk1: TCheckBox;
    Panel1: TPanel;
    Label1: TLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label6: TLabel;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label9: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Edit1: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure setEnterType(type_: Integer);
    procedure Button2Click(Sender: TObject);
    procedure wwDBEdit3DblClick(Sender: TObject);
    procedure wwDBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBLookupComboboxEh2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboboxEh3CloseUp(Sender: TObject; Accept: Boolean);
    procedure N1Click(Sender: TObject);
    procedure selTpPay;
    procedure tmr1Timer(Sender: TObject);
    procedure DBLookupComboboxEh2Change(Sender: TObject);
  private
    //тип ввода (по адресный или по л.с.)
    enter_type_, l_upd: Integer;
  public
  end;

var
  Form_get_pay: TForm_get_pay;

implementation

uses DM_module1, Unit_find_adr, Unit_Mainform, Unit_chargepay;

{$R *.dfm}

procedure TForm_get_pay.setEnterType(type_: Integer);
begin
  enter_type_:=type_;
  if enter_type_ =1 then
  begin
  //ввод по-адресный
//  DBComboBoxEh1.ItemIndex:=1;
//  DBComboBoxEh1.Enabled:=false;
  DBLookupComboboxEh2.KeyValue:=null;
  DBLookupComboboxEh2.Enabled:=true;
  end
  else
  begin
//  DBComboBoxEh1.Enabled:=true;
  //ввод по-л/с
  end;

end;


procedure TForm_get_pay.Button1Click(Sender: TObject);
var
  summa_: Extended;
  pn_: Extended;
  l_par: Integer;
begin
  if wwDBEdit1.Text <> '' then
    summa_:=SuperStrToDouble(wwDBEdit1.Text, 0)
  else
    summa_:=0;

  if wwDBEdit2.Text <> '' then
    pn_:=SuperStrToDouble(wwDBEdit2.Text, 0)
  else
    pn_:=0;

  if (DBLookupComboboxEh2.KeyValue = null)
    and (OD_typespay.FieldByName('CD').AsString='Корректировка') then
  begin
    Application.MessageBox('Не указан период ввода, для корректировки оплаты!','Внимание',
            MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
    Abort;
  end;

  try
    DataModule1.OraclePackage1.CallProcedure
           ('scott.C_GET_PAY.get_payment',
           [null, wwDBEdit3.Text, summa_, pn_,
            OD_oper.FieldByName('oper').asString,
            DBLookupComboboxEh2.KeyValue,
             DBLookupComboboxEh3.KeyValue, null, 1,
             wwDBEdit4.Text,
             wwDBDateTimePicker1.DateTime
             ]);
    l_upd:=1;
  except
   on E:EOracleError do
   begin
    if Pos('C_KWTP_F_KART', E.Message) <> 0 then
     Application.MessageBox('Указанный лицевой счет не существует',
      'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL)
    else if Pos('C_KWTP_F_OPER', E.Message) <> 0 then
     Application.MessageBox('Указанный код операции не существует',
      'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL)
    else
     Application.MessageBox(PCHar(E.Message),
      'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
    exit;
   end;
  end;

  DBLookupComboboxEh2.KeyValue:=null;
  wwDBEdit1.Text:='';
  wwDBEdit2.Text:='';
  wwDBEdit3.Text:='';
  wwDBEdit4.Text:='';
  wwDBDateTimePicker1.Text:='';
//  wwDBEdit3.SetFocus;
Windows.SetFocus(wwDBEdit3.Handle);

  if (enter_type_ = 1) and (chk1.Checked) then
  begin
    Application.CreateForm(TForm_find_adr, Form_find_adr);
    if Form_find_adr.ShowModal = mrOk then
    begin
    wwDBEdit3.Text := Form_Main.Lsk_;
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);
    end;
  end;

end;

procedure TForm_get_pay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxprprtstr1.StoreTo(True);
  Action:=caFree;
end;

procedure TForm_get_pay.wwDBGrid1UpdateFooter(Sender: TObject);
begin
{  wwDBGrid1.ColumnByName('Lsk').FooterValue := 'Итого:';
  wwDBGrid1.ColumnByName('Summa').FooterValue :=
    FloatToStr(DBSumList1.SumCollection.Items[0].SumValue);
  wwDBGrid1.ColumnByName('Penya').FooterValue :=
    FloatToStr(DBSumList1.SumCollection.Items[1].SumValue);
  wwDBGrid1.CalcCellRow;}
end;

procedure TForm_get_pay.wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
var
  formexist_, a: Integer;
begin
  tmr1.Enabled:=False;
  tmr1.Enabled:=true;
  if Key = #13 then
  begin
//    wwDBEdit1.SetFocus;
Windows.SetFocus(wwDBEdit1.Handle);
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [wwDBEdit3.Text]);
  end;
end;

procedure TForm_get_pay.wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  tmr1.Enabled:=False;
  tmr1.Enabled:=true;
  if (OD_typespay.FieldByName('CD').AsString = 'Единой суммой') or
     (OD_typespay.FieldByName('CD').AsString = 'Единой суммой - сперва долги') or
     (OD_typespay.FieldByName('CD').AsString = 'Единой суммой - сперва тек.нач') or
     (OD_typespay.FieldByName('CD').AsString = 'Комплексный платеж') then
    begin
      if Key = #13 then
//        Button1.SetFocus;
Windows.SetFocus(Button1.Handle)
    end
    else
    begin
      if Key = #13 then
//        wwDBEdit2.SetFocus;
Windows.SetFocus(wwDBEdit2.Handle);
    end;
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_get_pay.wwDBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  tmr1.Enabled:=False;
  tmr1.Enabled:=true;

  if (Key = #13) and (DBLookupComboboxEh2.Enabled = true) then
//    DBLookupComboboxEh2.SetFocus
      Windows.SetFocus(DBLookupComboboxEh2.Handle)
  else if (Key = #13) and (DBLookupComboboxEh2.Enabled = false) then
    Button1.SetFocus;

  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_get_pay.FormCreate(Sender: TObject);
begin
  DecimalSeparator:='.';
  l_upd:=1;

  //Включить ли расширенные реквизиты на вводе оплаты
  if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['EXTENDED_PAY']) = 1 then
  begin
   Label8.Visible:=true;
   Label9.Visible:=true;
   wwDBEdit4.Visible:=true;
   wwDBDateTimePicker1.Visible:=true;
  end
  else
  begin
   Label8.Visible:=false;
   Label9.Visible:=false;
   wwDBEdit4.Visible:=false;
   wwDBDateTimePicker1.Visible:=false;
  end;

{  if OD_typespay.FieldByName('CD').AsString <> 'Обычный платеж' then
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=true;
    end
    else
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=false;
    end;
 }
  DBLookupComboboxEh3.KeyValue:=OD_typespay.FieldByName('id').AsInteger;
  //Выбрать контролы в соответствии с типом платежа
  selTpPay;

  OD_oper.Active:=true;
 //  OD_c_kwtp.Active:=True;
// OD_c_kwtp_mg.Active:=True;
  OD_c_kwtp.SetVariable('var', 0); //не проинкасс
//  OD_c_kwtp.Refresh;
  DBLookupComboboxEh1.KeyValue:='01';
  Edit2.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.INIT.get_nkom', parNone);

end;

procedure TForm_get_pay.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_pay.wwDBEdit3DblClick(Sender: TObject);
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  if Form_find_adr.ShowModal = mrOk then
  begin
    wwDBEdit3.Text := Form_Main.Lsk_;
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);
  end;
end;

procedure TForm_get_pay.wwDBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  formexist_, a: Integer;
begin
  if Key=34 then
  begin
    Application.CreateForm(TForm_find_adr, Form_find_adr);
    if Form_find_adr.ShowModal = mrOk then
    begin
      wwDBEdit3.Text := Form_Main.Lsk_;
      Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
        'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);
    end;
  end;

end;

procedure TForm_get_pay.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
   OD_c_kwtp.SetVariable('var', 1) //не проинкасс
   else
   OD_c_kwtp.SetVariable('var', 0); //не проинкасс

   OD_c_kwtp.Refresh;
end;

procedure TForm_get_pay.DBLookupComboboxEh2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
//    Button1.SetFocus;
Windows.SetFocus(Button1.Handle);
end;

procedure TForm_get_pay.selTpPay;
begin
  //Выбрать контролы в соответствии с типом платежа
  if (OD_typespay.FieldByName('CD').AsString = 'Единой суммой') or
     (OD_typespay.FieldByName('CD').AsString = 'Единой суммой - сперва долги') or
     (OD_typespay.FieldByName('CD').AsString = 'Единой суммой - сперва тек.нач') or
     (OD_typespay.FieldByName('CD').AsString = 'Комплексный платеж')  then
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=false;
      wwDBEdit2.Text:='';
      wwDBEdit2.Enabled:=false;
      DBLookupComboboxEh2.Visible:=false;
      wwDBEdit2.Visible:=false;
    end
  else if OD_typespay.FieldByName('CD').AsString <> 'Обычный платеж' then
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=true;
      DBLookupComboboxEh2.Visible:=true;
      wwDBEdit2.Enabled:=true;
      wwDBEdit2.Visible:=true;
    end
  else
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=false;
      DBLookupComboboxEh2.Visible:=true;
      wwDBEdit2.Enabled:=true;
      wwDBEdit2.Visible:=true;
    end;
end;

procedure TForm_get_pay.DBLookupComboboxEh3CloseUp(Sender: TObject;
  Accept: Boolean);
begin
  //Выбрать контролы в соответствии с типом платежа
  selTpPay;
end;

procedure TForm_get_pay.N1Click(Sender: TObject);
var
  bm: TBookmark;
begin
if msg3('Удалить оплату с суммой '+OD_c_kwtp.FieldByName('summa').AsString+
   'руб., Л/С '+OD_c_kwtp.FieldByName('lsk').AsString,
   'Внимание!',
   MB_YESNO+MB_ICONQUESTION) = IDYES then
   begin
   DataModule1.OraclePackage1.CallProcedure
       ('scott.C_GET_PAY.remove_pay',
         [OD_c_kwtp.FieldByName('id').AsInteger]);
   l_upd:=1;
   end;
end;

procedure TForm_get_pay.tmr1Timer(Sender: TObject);
begin
  //обновить датасеты, если есть необходимость
  if l_upd=1 then
  begin
    if FF('Form_chargepay', 0) = 1 then
       Form_chargepay.recalc;
    OD_c_kwtp.Active:=false;
    OD_c_kwtp.Active:=true;
    OD_c_kwtp_mg.Active:=false;
    OD_c_kwtp_mg.Active:=true;
    OD_c_kwtp.Last;
    l_upd:=0;
  end;

end;

procedure TForm_get_pay.DBLookupComboboxEh2Change(Sender: TObject);
begin
  tmr1.Enabled:=False;
  tmr1.Enabled:=true;
end;

end.



