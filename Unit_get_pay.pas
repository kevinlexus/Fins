unit Unit_get_pay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Mask, 
  Buttons, 
  Oracle, Utils, Menus, 
  cxControls, 
  
  
  cxGridLevel, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCardView, cxGrid,
  cxPropertiesStore, 
  
  
  
  
  
  
  
  
  
  
  
  
  ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridCustomView, cxGridCustomLayoutView,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ComCtrls, dxCore, cxDateUtils,
  cxCalendar, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

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
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    cbbOper: TcxLookupComboBox;
    cxPeriod: TcxLookupComboBox;
    cxVar: TcxLookupComboBox;
    cxLsk: TcxMaskEdit;
    cxSumma: TcxMaskEdit;
    cxPenya: TcxMaskEdit;
    cxNumDoc: TcxMaskEdit;
    cxDate: TcxDateEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure setEnterType(type_: Integer);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure selTpPay;
    procedure tmr1Timer(Sender: TObject);
    procedure cxPeriodPropertiesChange(Sender: TObject);
    procedure cxPeriodKeyPress(Sender: TObject; var Key: Char);
    procedure cxVarPropertiesCloseUp(Sender: TObject);
    procedure cxLskDblClick(Sender: TObject);
    procedure cxLskKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxLskKeyPress(Sender: TObject; var Key: Char);
    procedure cxSummaKeyPress(Sender: TObject; var Key: Char);
    procedure cxPenyaKeyPress(Sender: TObject; var Key: Char);
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
  cxPeriod.EditValue:=null;
  cxPeriod.Enabled:=true;
  end
  else
  begin
  //ввод по-л/с
  end;

end;


procedure TForm_get_pay.Button1Click(Sender: TObject);
var
  summa_: Extended;
  pn_: Extended;
  l_par: Integer;
begin
  if cxSumma.Text <> '' then
    summa_:=SuperStrToDouble(cxSumma.Text, 0)
  else
    summa_:=0;

  if cxPenya.Text <> '' then
    pn_:=SuperStrToDouble(cxPenya.Text, 0)
  else
    pn_:=0;

  if (cxPeriod.EditValue = null)
    and (OD_typespay.FieldByName('CD').AsString='Корректировка') then
  begin
    Application.MessageBox('Не указан период ввода, для корректировки оплаты!','Внимание',
            MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
    Abort;
  end;

  try
    DataModule1.OraclePackage1.CallProcedure
           ('scott.C_GET_PAY.get_payment',
           [null, cxLsk.Text, summa_, pn_,
            OD_oper.FieldByName('oper').asString,
            cxPeriod.EditValue,
             cxVar.EditValue, null, 1,
             cxNumDoc.Text,
             cxDate.Date
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

  cxPeriod.EditValue:=null;
  cxSumma.Text:='';
  cxPenya.Text:='';
  cxLsk.Text:='';
  cxNumDoc.Text:='';
  cxDate.Text:='';
Windows.SetFocus(cxLsk.Handle);

  if (enter_type_ = 1) and (chk1.Checked) then
  begin
    Application.CreateForm(TForm_find_adr, Form_find_adr);
    if Form_find_adr.ShowModal = mrOk then
    begin
    cxLsk.Text := Form_Main.Lsk_;
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


procedure TForm_get_pay.FormCreate(Sender: TObject);
begin
//  DecimalSeparator:='.';
  l_upd:=1;

  //Включить ли расширенные реквизиты на вводе оплаты
  if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['EXTENDED_PAY']) = 1 then
  begin
   Label8.Visible:=true;
   Label9.Visible:=true;
   cxNumDoc.Visible:=true;
   cxDate.Visible:=true;
  end
  else
  begin
   Label8.Visible:=false;
   Label9.Visible:=false;
   cxNumDoc.Visible:=false;
   cxDate.Visible:=false;
  end;

  cxVar.EditValue:=OD_typespay.FieldByName('id').AsInteger;
  //Выбрать контролы в соответствии с типом платежа
  selTpPay;

  OD_oper.Active:=true;
 //  OD_c_kwtp.Active:=True;
// OD_c_kwtp_mg.Active:=True;
  OD_c_kwtp.SetVariable('var', 0); //не проинкасс
//  OD_c_kwtp.Refresh;
  cbbOper.EditValue:='01';
  Edit2.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.INIT.get_nkom', parNone);

end;

procedure TForm_get_pay.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_pay.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
   OD_c_kwtp.SetVariable('var', 1) //не проинкасс
   else
   OD_c_kwtp.SetVariable('var', 0); //не проинкасс

   OD_c_kwtp.Refresh;
end;

procedure TForm_get_pay.selTpPay;
begin
  //Выбрать контролы в соответствии с типом платежа
  if (OD_typespay.FieldByName('CD').AsString = 'Единой суммой') or
     (OD_typespay.FieldByName('CD').AsString = 'Единой суммой - сперва долги') or
     (OD_typespay.FieldByName('CD').AsString = 'Единой суммой - сперва тек.нач') or
     (OD_typespay.FieldByName('CD').AsString = 'Комплексный платеж')  then
    begin
      cxPeriod.EditValue:=null;
      cxPeriod.Enabled:=false;
      cxPenya.Text:='';
      cxPenya.Enabled:=false;
      cxPeriod.Visible:=false;
      cxPenya.Visible:=false;
    end
  else if OD_typespay.FieldByName('CD').AsString <> 'Обычный платеж' then
    begin
      cxPeriod.EditValue:=null;
      cxPeriod.Enabled:=true;
      cxPeriod.Visible:=true;
      cxPenya.Enabled:=true;
      cxPenya.Visible:=true;
    end
  else
    begin
      cxPeriod.EditValue:=null;
      cxPeriod.Enabled:=false;
      cxPeriod.Visible:=true;
      cxPenya.Enabled:=true;
      cxPenya.Visible:=true;
    end;
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

procedure TForm_get_pay.cxPeriodPropertiesChange(Sender: TObject);
begin
  tmr1.Enabled:=False;
  tmr1.Enabled:=true;
end;

procedure TForm_get_pay.cxPeriodKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     Windows.SetFocus(Button1.Handle);
end;

procedure TForm_get_pay.cxVarPropertiesCloseUp(Sender: TObject);
begin
  //Выбрать контролы в соответствии с типом платежа
  selTpPay;
end;

procedure TForm_get_pay.cxLskDblClick(Sender: TObject);
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  if Form_find_adr.ShowModal = mrOk then
  begin
    cxLsk.Text := Form_Main.Lsk_;
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);
  end;
end;

procedure TForm_get_pay.cxLskKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=34 then
  begin
    Application.CreateForm(TForm_find_adr, Form_find_adr);
    if Form_find_adr.ShowModal = mrOk then
    begin
      cxLsk.Text := Form_Main.Lsk_;
      Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
        'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);
    end;
  end;
end;

procedure TForm_get_pay.cxLskKeyPress(Sender: TObject;
  var Key: Char);
begin
  tmr1.Enabled:=False;
  tmr1.Enabled:=true;
  if Key = #13 then
  begin
//    cxSumma.SetFocus;
Windows.SetFocus(cxSumma.Handle);
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [cxLsk.Text]);
  end;
end;

procedure TForm_get_pay.cxSummaKeyPress(Sender: TObject; var Key: Char);
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
//        cxPenya.SetFocus;
Windows.SetFocus(cxPenya.Handle);
    end;
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_get_pay.cxPenyaKeyPress(Sender: TObject;
  var Key: Char);
begin
  tmr1.Enabled:=False;
  tmr1.Enabled:=true;

  if (Key = #13) and (cxPeriod.Enabled = true) then
      Windows.SetFocus(cxPeriod.Handle)
  else if (Key = #13) and (cxPeriod.Enabled = false) then
    Button1.SetFocus;

  if RetKey(Key) then
    Key:= '.';

end;

end.



