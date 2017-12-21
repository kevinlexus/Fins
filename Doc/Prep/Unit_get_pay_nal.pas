unit Unit_get_pay_nal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Oracle, OracleData, wwSpeedButton, wwDBNavigator, ExtCtrls,
  StdCtrls, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwdblook, DBCtrls, GridsEh, DBGridEh,
  frxClass, frxDBSet, Menus, Unit_ecr;

type
  TForm_get_pay_nal = class(TForm)
    OD_c_kwtp_temp: TOracleDataSet;
    DS_c_kwtp_temp: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    wwDBEdit3: TwwDBEdit;
    Edit1: TEdit;
    OD_c_kwtp_tempSUMMA: TFloatField;
    OD_c_kwtp_tempPENYA: TFloatField;
    OD_c_kwtp_tempOPER: TStringField;
    OD_oper: TOracleDataSet;
    DS_oper: TDataSource;
    OD_operOPER: TStringField;
    OD_operNAIM: TStringField;
    OD_c_kwtp_tempoper_name: TStringField;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label4: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit4: TwwDBEdit;
    Button1: TButton;
    OD_c_kwtp_tempCNT_SCH: TFloatField;
    OD_chargepay: TOracleDataSet;
    OD_chargepaySUMMA: TFloatField;
    OD_chargepayMG: TStringField;
    OD_chargepayCHARGE: TFloatField;
    OD_chargepayPAYMENT: TFloatField;
    OD_chargepayDOLG: TFloatField;
    DS_chargepay: TDataSource;
    DBGridEh1: TDBGridEh;
    OD_c_kwtp_tempCNT_SCH2: TFloatField;
    OD_c_kwtp: TOracleDataSet;
    OD_c_kwtpLSK: TStringField;
    OD_c_kwtpFIO: TStringField;
    OD_c_kwtpADR: TStringField;
    OD_c_kwtpSUMSTR: TStringField;
    OD_c_kwtpSUMMA: TFloatField;
    OD_c_kwtpOPER: TStringField;
    OD_c_kwtpFIO_KASS: TStringField;
    OD_c_kwtpNINK: TFloatField;
    OD_c_kwtpNKOM: TStringField;
    OD_c_kwtpDTEK: TDateTimeField;
    OD_c_kwtpNKVIT: TFloatField;
    OD_c_kwtpDAT_INK: TDateTimeField;
    OD_c_kwtpTS: TDateTimeField;
    OD_c_kwtpID: TFloatField;
    OD_c_kwtpISCORRECT: TFloatField;
    OD_c_kwtpNAME_ORG: TStringField;
    OD_c_kwtpADR_ORG: TStringField;
    OD_c_kwtpINN: TStringField;
    OD_c_kwtpOKPO: TStringField;
    DS_c_kwtp: TDataSource;
    OD_c_kwtp_mg: TOracleDataSet;
    OD_c_kwtp_mgLSK: TStringField;
    OD_c_kwtp_mgSUMMA: TFloatField;
    OD_c_kwtp_mgPENYA: TFloatField;
    OD_c_kwtp_mgOPER: TStringField;
    OD_c_kwtp_mgDOPL: TStringField;
    OD_c_kwtp_mgNINK: TFloatField;
    OD_c_kwtp_mgDTEK: TDateTimeField;
    OD_c_kwtp_mgNKVIT: TFloatField;
    OD_c_kwtp_mgNKOM: TStringField;
    OD_c_kwtp_mgNAIM: TStringField;
    OD_c_kwtp_mgCNT_SCH0: TStringField;
    OD_c_kwtp_mgCNT_SCH: TStringField;
    DS_c_kwtp_mg: TDataSource;
    OD_c_kwtpKPP: TStringField;
    OD_operFK_USL_CHK: TStringField;
    OD_usl_chk: TOracleDataSet;
    OD_usl_chkOPER: TStringField;
    OD_usl_chkFK_USL_CHK: TStringField;
    OD_usl_chkCD: TStringField;
    OD_chargepaySAL: TFloatField;
    OD_usl_chkISCOUNTER: TFloatField;
    OD_usl_chkNAIM: TStringField;
    OD_chargepayPENYA: TFloatField;
    OD_chargepayITOG: TFloatField;
    OD_c_kwtp_tempITOG: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    OD_c_kwtpPHW: TFloatField;
    OD_c_kwtpPGW: TFloatField;
    OD_c_kwtpPEL: TFloatField;
    OD_c_kwtp_mgSUMM_ITG: TFloatField;
    OD_c_kwtpNAME_ORG2: TStringField;
    OD_c_kwtpINN2: TStringField;
    OD_c_kwtpPHONE: TStringField;
    OD_c_kwtpPHONE2: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBEdit3DblClick(Sender: TObject);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure action;
    procedure wwDBComboBox1DropDown(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure count;
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1Columns2EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure OD_chargepayBeforeInsert(DataSet: TDataSet);
    procedure OD_chargepayBeforePost(DataSet: TDataSet);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure setNkom(p_lsk: String);
  private
  public
    sess_: TOracleSession;
  end;

var
  Form_get_pay_nal: TForm_get_pay_nal;

implementation

uses Unit_form_pay_dolg, Utils, Unit_find_adr, Unit_Mainform, 
  Unit_plat_doc, Unit_get_cnt_sch, DM_module1, Unit_list_kart;

{$R *.dfm}

procedure TForm_get_pay_nal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
                                    
  //Чтобы не было Access Violation на EHGrid, при закрытии формы
  DBGridEh1.DataSource:=nil;
  // Обязательный Rollback, в случае если остались начисления счетчиков
  DataModule1.OracleSession1.Rollback;
  Action:=caFree;
end;

procedure TForm_get_pay_nal.wwDBEdit3DblClick(Sender: TObject);
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  Form_find_adr.ShowModal;
  wwDBEdit3.Text := Form_Main.Lsk_;
  Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);

  setNkom(Form_Main.Lsk_);

  //очищаем оплату по месяцам
  DBGridEh1.Visible:=true;
  DBGridEh1.SetFocus;
  OD_c_kwtp_temp.Active:=false;
  OD_c_kwtp_temp.Active:=true;
  OD_oper.Active:=false;
  OD_oper.SetVariable('lsk', wwDBEdit3.Text);
  OD_oper.Active:=true;

  DataModule1.OraclePackage1.CallProcedure(
    'scott.C_GET_PAY.init_c_kwtp_temp_dolg', [Form_main.lsk_]);
  OD_chargepay.Active:=false;
  OD_chargepay.Active:=true;
end;

procedure TForm_get_pay_nal.setNkom(p_lsk: String);
var
  l_nkom :String;
  l_cnt:Integer;
begin
  //Автоматически определить номер компьютера, поменять если необходимо
  l_cnt:=DataModule1.OraclePackage1.CallIntegerFunction
     ('scott.Utils.get_int_param', ['AUTO_SEL_COMP']);
  if (p_lsk<>'') and (l_cnt =1) then
  begin
    l_nkom:=DataModule1.OraclePackage1.CallStringFunction
     ('scott.UTILS.get_nkom_pay_lsk', [wwDBEdit3.Text]);;
    DataModule1.OraclePackage1.CallProcedure(
      'scott.INIT.set_nkom', [l_nkom]);
  end;
  Caption:='Ввод оплаты, текущий № комп: '+DataModule1.OraclePackage1.CallStringFunction
     ('scott.INIT.get_nkom', [parNone]);;
{  Label7.Caption:=DataModule1.OraclePackage1.CallStringFunction
     ('scott.INIT.get_nkom', [parNone]);;}
end;

procedure TForm_get_pay_nal.wwDBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    DBGridEh1.Visible:=true;
    DBGridEh1.SetFocus;
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [wwDBEdit3.Text]);
    Form_main.c_lsk_id_:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_C_LSK_ID_BY_LSK', [wwDBEdit3.Text]);

    setNkom(wwDBEdit3.Text);
    //очищаем оплату по месяцам
    OD_c_kwtp_temp.Active:=false;
    OD_c_kwtp_temp.Active:=true;
    OD_oper.Active:=false;
    OD_oper.SetVariable('lsk', wwDBEdit3.Text);
    OD_oper.Active:=true;

    DataModule1.OraclePackage1.CallProcedure(
      'scott.C_GET_PAY.init_c_kwtp_temp_dolg', [wwDBEdit3.Text]);
    OD_chargepay.Active:=false;
    OD_chargepay.Active:=true;
  end;
end;

procedure TForm_get_pay_nal.action;
begin
  OD_usl_chk.Active:=false;
  OD_usl_chk.SetVariable('OPER', OD_c_kwtp_temp.FieldByName('oper').AsString);
  OD_usl_chk.Active:=true;

  if OD_c_kwtp_temp.FieldByName('oper').AsString = '' then
  begin
    //Выход на итог
    count;
    wwDBEdit1.SetFocus;
  end
  else if (OD_usl_chk.FieldByName('iscounter').AsInteger = 0) then
  begin
    //Основная операция (например 01)
    if FF('Form_get_pay_dolg',1) = 0 then
      Application.CreateForm(TForm_get_pay_dolg, Form_get_pay_dolg);
      Form_get_pay_dolg.ShowModal;
  end
  else
  begin
    //Операции со счетчиками
    if FF('Form_get_pay_dolg',1) = 0 then
      Application.CreateForm(TForm_get_cnt_sch, Form_get_cnt_sch);
      Form_get_cnt_sch.Label5.Caption:=OD_usl_chk.FieldByName('naim').AsString;
      Form_get_cnt_sch.usl_:=OD_usl_chk.FieldByName('fk_usl_chk').AsString;
      //обрабатывать ли показания счетчика или сумму оплаты?
      if OD_usl_chk.FieldByName('iscounter').AsInteger = 1 then
      begin
        Form_get_cnt_sch.Caption:='Показания счетчика';
        Form_get_cnt_sch.wwDBEdit4.Text:=
          FloatToStr(DataModule1.OraclePackage1.CallFloatFunction(
          'scott.c_charges.gen_charges_sch', [wwDBEdit3.Text,
           OD_usl_chk.FieldByName('fk_usl_chk').AsString, 0, null]));
        Form_get_cnt_sch.cnt_sch0_:=
          DataModule1.OraclePackage1.CallFloatFunction(
          'scott.c_charges.gen_charges_sch', [wwDBEdit3.Text, OD_usl_chk.FieldByName('fk_usl_chk').AsString, 0, null]);
      end
      else
      begin
        Form_get_cnt_sch.Caption:='Сумма оплаты';
      end;
      Form_get_cnt_sch.ShowModal
  end;
 end;

procedure TForm_get_pay_nal.count;
var
  i: Double;
begin
    //выход на итог
    i:=0;
    if not (OD_c_kwtp_temp.State in [dsBrowse]) then
      OD_c_kwtp_temp.Post;

    OD_c_kwtp_temp.First;
    while not OD_c_kwtp_temp.Eof do
    begin
      i:=i+OD_c_kwtp_temp.FieldByName('summa').AsFloat+OD_c_kwtp_temp.FieldByName('penya').AsFloat;
      wwDBEdit4.Text:=FloatToStr(i);
      OD_c_kwtp_temp.Next
    end;
end;

procedure TForm_get_pay_nal.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_pay_nal.wwDBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    wwDBEdit1.SetFocus;
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_get_pay_nal.wwDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
  var
    summa_: Double;
    err_: Integer;
begin
  if Key = #13 then
  begin
    if (StrToFloat(wwDBEdit1.Text)-StrToFloat(wwDBEdit4.Text) < 0) then
    begin
     msg2('Не хватает денег для оплаты, повторите ввод', 'Внимание!', MB_OK+MB_ICONSTOP);
     wwDBEdit1.SetFocus;
     exit;
    end;
    if (StrToFloat(wwDBEdit4.Text) = 0) then
    begin
     msg2('Сумма квитанции = 0, отмена', 'Внимание!', MB_OK+MB_ICONSTOP);
     exit;
    end;

    Button1.SetFocus;
    summa_:=StrToFloat(wwDBEdit1.Text)-StrToFloat(wwDBEdit4.Text);

    if summa_ <> 0 then
    begin
     if msg3('Распределить остаток на текущий месяц?', 'Внимание!', MB_YESNO+MB_ICONQUESTION) =ID_YES then
     begin
//       DataModule1.OracleSession1.ApplyUpdates([OD_chargepay], false);
      if not (OD_chargepay.State in [dsBrowse]) then
        OD_chargepay.Post;

       err_:=DataModule1.OraclePackage1.CallIntegerFunction(
          'scott.C_GET_PAY.dst_money_cur_month', [summa_]);
       if err_ = 0 then
       begin
         summa_:=0;
         OD_chargepay.Active:=False;
         OD_chargepay.Active:=true;
         OD_c_kwtp_temp.Active:=False;
         OD_c_kwtp_temp.Active:=True;
         //пересчитать итог
         count;
       end;
     end;
    end;
    wwDBEdit2.Text:=FloatToStr(summa_);
    Button1.SetFocus;

  end;
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_get_pay_nal.Button1Click(Sender: TObject);
var
  l_par, c_kwtp_id_: Integer;
  //сумма, полученная от клиента
  client_sum: Double;
begin

  if (StrToFloat(wwDBEdit1.Text)-StrToFloat(wwDBEdit4.Text) < 0) then
  begin
   msg2('Не хватает денег для оплаты, отмена', 'Внимание!', MB_OK+MB_ICONSTOP);
   exit;
  end;
  if (StrToFloat(wwDBEdit4.Text) = 0) then
  begin
   msg2('Сумма квитанции = 0, отмена', 'Внимание!', MB_OK+MB_ICONSTOP);
   exit;
  end;

  //сохранить сумму для ККМ (он считает сдачу клиенту)
  client_sum:=StrToFloat(wwDBEdit1.Text);

  Button1.Enabled:=false;
  if not (OD_c_kwtp_temp.State in [dsBrowse]) then
     OD_c_kwtp_temp.Post;

  if not (OD_chargepay.State in [dsBrowse]) then
    OD_chargepay.Post;
  if not (OD_c_kwtp_temp.State in [dsBrowse]) then
    OD_c_kwtp_temp.Post;

  //Автоматически определить номер компьютера, поменять если необходимо
  setNkom(wwDBEdit3.Text);

  c_kwtp_id_:=DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.C_GET_PAY.get_money_nal', [wwDBEdit3.Text]);

//платёжный документ
with OD_c_kwtp do
begin
  SetVariable('id', c_kwtp_id_);
  Active:=false;
  Active:=true;
end;

with OD_c_kwtp_mg do
begin
  Active:=false;
  Active:=true;
end;

if Form_Main.have_cash=1 then
begin
  //КАССА
  //загружаем установки
{  setup_ecr('Вас обслуживает организация:'+OD_c_kwtp.FieldByName('name_org2').AsString+
            ' ИНН '+OD_c_kwtp.FieldByName('inn2').AsString+', тел.'
            +OD_c_kwtp.FieldByName('phone2').AsString
            );}
  setup_ecr('                                                                          '+
            '                                                                          '+
            '                                                                          '
            );

  if open_ecr <> 0 then
  begin
    DataModule1.OraclePackage1.Session.Rollback;
    Exit;
  end
  //Входим в режим регистрации
  else
  begin
    print_header_ecr('К А С С О В Ы Й  Ч Е К', 1, 1);
//    print_string_ecr('К А С С О В Ы Й  Ч Е К', 1, 0);
    print_string_ecr('Вас обслуживает организация:'+OD_c_kwtp.FieldByName('name_org2').AsString+
            ' ИНН '+OD_c_kwtp.FieldByName('inn2').AsString+', тел.'
            +OD_c_kwtp.FieldByName('phone2').AsString, 1, 0);
    print_string_ecr('Платёжный агент:'+OD_c_kwtp.FieldByName('name_org').AsString, 1, 0);
    print_string_ecr('Адрес кассы:'+OD_c_kwtp.FieldByName('adr_org').AsString+', тел.'+OD_c_kwtp.FieldByName('phone2').AsString, 1, 0);
    print_string_ecr('Кассир:'+OD_c_kwtp.FieldByName('fio_kass').AsString, 1, 0);
    print_string_ecr('---------------------------------------', 1, 0);
    print_string_ecr('Лицевой счет №'+OD_c_kwtp.FieldByName('lsk').AsString, 1, 0);
    print_string_ecr('Адрес:'+OD_c_kwtp.FieldByName('adr').AsString, 1, 0);

    OD_c_kwtp_mg.First;
    print_string_ecr('Наим-е операции   Период    Оплата(руб.)', 1, 0);
    while not OD_c_kwtp_mg.Eof do
    begin
      reg_ecr(OD_c_kwtp_mg.FieldByName('naim').AsString+calc_pads(OD_c_kwtp_mg.FieldByName('naim').AsString)+
              OD_c_kwtp_mg.FieldByName('dopl').AsString,
              OD_c_kwtp_mg.FieldByName('summ_itg').AsFloat, 1);
      OD_c_kwtp_mg.Next;
    end;
    //Закрытие чека
    if close_reg_summ_ecr(client_sum) <> 0 then
    begin
      //не успешно
      DataModule1.OraclePackage1.Session.Rollback;
      close_ecr;
      Exit;
    end
    else
    begin
      //успешно
      close_ecr;
      DataModule1.OraclePackage1.Session.Commit;
    end;
  end;
  //КАССА
end
else
begin
  DataModule1.OraclePackage1.Session.Commit;
end;

  if Form_Main.have_cash <> 1 then
  begin
    if FF('Form_plat_doc',1) = 0 then
        Application.CreateForm(TForm_plat_doc, Form_plat_doc);
    with Form_plat_doc do
    begin

    frxDBDataset1.DataSource:=
      DS_c_kwtp;
    frxDBDataset2.DataSource:=
      DS_c_kwtp_mg;

    //если используется собственный файл платежной квитанции - использовать его
      //ТСЖ

      frxReport1.Preview:=frxPreview1;
      frxReport1.LoadFromFile(Form_main.exepath_+'\paydoc.fr3', True);
      frxReport1.PrepareReport(true);
      frxReport1.ShowPreparedReport;
      frxPreview1.Show;
      ShowModal;
    end;
  end;

  OD_c_kwtp_temp.Active:=false;
  OD_chargepay.Active:=false;
  if FF('Form_list_kart',0) = 1 then
    Form_list_kart.OD_list_kart.RefreshRecord;

  Edit1.Text:='';
  wwDBEdit1.Text:='0';
  wwDBEdit2.Text:='0';
  wwDBEdit3.Text:='';
  wwDBEdit4.Text:='0';
  DBGridEh1.Visible:=false;
  DBGridEh1.SelectedIndex:=0;
  Button1.Enabled:=true;
  wwDBEdit3.SetFocus;
end;

procedure TForm_get_pay_nal.wwDBComboBox1DropDown(Sender: TObject);
begin
  action;
end;

procedure TForm_get_pay_nal.FormCreate(Sender: TObject);
begin
  DecimalSeparator:='.';
  OD_oper.Active:=true;
  OD_usl_chk.Active:=true;
  wwDBEdit1.Text:='0';
  wwDBEdit2.Text:='0';
  wwDBEdit4.Text:='0';
  OD_c_kwtp_temp.Active:=false;
  if FF('Form_list_kart',0) =1 then
  begin
    wwDBEdit3.Text:=Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    setNkom(wwDBEdit3.Text);
  end;
end;

procedure TForm_get_pay_nal.DBGridEh1Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
   action;
end;

procedure TForm_get_pay_nal.DBGridEh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //выбор долгов или показ сч.
   //(wwDBGrid1.GetActiveCol = 3)
  if (DBGridEh1.SelectedField.FieldName='PENYA')
    and (key = VK_Return) then
  begin
    action;
  end;

  //выход на итог
  if ((Shift = [ssCtrl]) and (key = VK_Return)) then
  begin
    count;
    wwDBEdit1.SetFocus;
  end;
end;

procedure TForm_get_pay_nal.DBGridEh1Columns2EditButtonDown(
  Sender: TObject; TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
   action;
end;

procedure TForm_get_pay_nal.DBGridEh1ColEnter(Sender: TObject);
begin
  if ((DBGridEh1.SelectedField.FieldName='SUMMA') or
    (DBGridEh1.SelectedField.FieldName='PENYA')) then
  begin
    DBGridEh1.Columns[1].ReadOnly:=true; //SUMMA
    DBGridEh1.Columns[2].ReadOnly:=true; //PENYA
  end;
end;

procedure TForm_get_pay_nal.OD_chargepayBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TForm_get_pay_nal.OD_chargepayBeforePost(DataSet: TDataSet);
begin
  if FF('Form_get_pay_dolg',0) =1 then
    Form_get_pay_dolg.recalc;
end;

procedure TForm_get_pay_nal.DBGridEh1ColExit(Sender: TObject);
begin
  if ((DBGridEh1.SelectedField.FieldName='SUMMA') or
    (DBGridEh1.SelectedField.FieldName='PENYA')) then
  begin
    DBGridEh1.Columns[1].ReadOnly:=false; //SUMMA
    DBGridEh1.Columns[2].ReadOnly:=false; //PENYA
  end;
end;

procedure TForm_get_pay_nal.N1Click(Sender: TObject);
begin
  OD_c_kwtp_temp.Delete;
end;

end.
