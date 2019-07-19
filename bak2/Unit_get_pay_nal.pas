unit Unit_get_pay_nal;

interface

uses
  Windows, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, DB, Oracle, OracleData,
  StdCtrls, Mask, wwdbedit,
  DBGridEh, frxClass, frxDBSet, Menus, Unit_ecr, Math, GridsEh, ComCtrls,
  ToolWin, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

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
    DS_chargepay: TDataSource;
    OD_c_kwtp_tempCNT_SCH2: TFloatField;
    OD_c_kwtp: TOracleDataSet;
    DS_c_kwtp: TDataSource;
    OD_c_kwtp_mg: TOracleDataSet;
    DS_c_kwtp_mg: TDataSource;
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
    OD_kwtp_day: TOracleDataSet;
    dsDS_kwtp_day: TDataSource;
    OD_meter_vol: TOracleDataSet;
    dsDS_meter_vol: TDataSource;
    OD_c_kwtp_mgLSK: TStringField;
    OD_c_kwtp_mgSUMMA: TFloatField;
    OD_c_kwtp_mgPENYA: TFloatField;
    OD_c_kwtp_mgSUMM_ITG: TFloatField;
    OD_c_kwtp_mgOPER: TStringField;
    OD_c_kwtp_mgNAIM: TStringField;
    OD_c_kwtp_mgDOPL: TStringField;
    OD_c_kwtp_mgCNT_SCH0: TStringField;
    OD_c_kwtp_mgCNT_SCH: TStringField;
    OD_c_kwtp_mgNINK: TFloatField;
    OD_c_kwtp_mgNKOM: TStringField;
    OD_c_kwtp_mgDTEK: TDateTimeField;
    OD_c_kwtp_mgNKVIT: TFloatField;
    OD_c_kwtp_mgDAT_INK: TDateTimeField;
    OD_c_kwtp_mgTS: TDateTimeField;
    OD_c_kwtp_mgCASH_OPER_TP: TFloatField;
    OD_chargepayLSK: TStringField;
    OD_chargepayLSK_TP: TStringField;
    OD_get_money_nal2: TOracleDataSet;
    OD_chargepayUSL_NAME_SHORT: TStringField;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    OD_Kart: TOracleDataSet;
    ToolButton3: TToolButton;
    OD_chargepaySUMMA2: TFloatField;
    OD_chargepayPENYA2: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA2: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA2: TcxGridDBColumn;
    cxGrid1DBTableView1MG: TcxGridDBColumn;
    cxGrid1DBTableView1CHARGE: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT: TcxGridDBColumn;
    cxGrid1DBTableView1SAL: TcxGridDBColumn;
    cxGrid1DBTableView1ITOG: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1LSK_TP: TcxGridDBColumn;
    cxGrid1DBTableView1USL_NAME_SHORT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject; var Handled:
      Boolean);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word; Shift:
      TShiftState);
    procedure DBGridEh1Columns2EditButtonDown(Sender: TObject; TopButton:
      Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure OD_chargepayBeforeInsert(DataSet: TDataSet);
    procedure OD_chargepayBeforePost(DataSet: TDataSet);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure setNkom(p_lsk: string);
    procedure clearPay;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function print_receipt(client_sum: Double; p_cashNum: Integer): Integer;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure invokeFormSchHistory;
    procedure invokeFormBill;
    procedure invokeSearchAdr;
    procedure distPay(distSumm: double; isInitDeb: Boolean;
      isUseArchPeriod, isUseCurPeriod, isAddit: Boolean);
    procedure reLoadDeb;
    procedure StatusBar1DblClick(Sender: TObject);
  private
    klsk: Integer;
  public
    sess_: TOracleSession;
  end;

var
  Form_get_pay_nal: TForm_get_pay_nal;

implementation

uses
  Unit_form_pay_dolg, Utils, Unit_find_adr, Unit_Mainform, Unit_plat_doc,
  Unit_get_cnt_sch, DM_module1, Unit_list_kart, Unit_sch_history,
  Unit_form_bills;

{$R *.dfm}

// распределить сумму оплаты по периодам
// isUseArchPeriod - использовать архивный период
// isUseCurPeriod - использовать текущий период
// isAddit - распределять дополнительно, к имеющемуся распределению
//

procedure TForm_get_pay_nal.distPay(distSumm: double; isInitDeb: Boolean;
  isUseArchPeriod, isUseCurPeriod, isAddit: Boolean);
var
  test, l_sum, l_pen, l_itg, l_sum1, l_pen1: Double;
  l_deb, l_proc, l_deb_cur, l_itgSaved: Double;
  procPenSumm: Double;
begin
  l_deb_cur := 0.00;
  l_itg := distSumm;
  if l_itg < 0 then
  begin
    Application.MessageBox('Сумма отрицательная, отмена!', 'Внимание!',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
  end;

  Form_get_pay_nal.OD_chargepay.DisableControls;
  with Form_get_pay_nal.OD_chargepay do
  begin
    if RecordCount = 0 then
    begin
      Application.MessageBox('Нет долгов к распределению, отмена!', 'Внимание!',
        MB_OK + MB_ICONSTOP + MB_TOPMOST);
      Exit;
    end;

    if isInitDeb then
    begin
      // заново залить долги
      {DataModule1.OraclePackage1.CallProcedure(
        'scott.C_GET_PAY.init_c_kwtp_temp_dolg',
        [Form_get_pay_nal.wwDBEdit3.Text]);
      Active := false;
      Active := true;}
      reLoadDeb;
    end;
    // распределить по архивным периодам
    // последовательно - от позднего к раннему
    First;
    if isUseArchPeriod then
    begin
      while (not eof) do
      begin
        if FieldByName('MG').AsString <> Form_main.cur_mg_ then
        begin
          Edit;
          if not isAddit then
          begin
            FieldByName('SUMMA').AsFloat := 0;
            FieldByName('PENYA').AsFloat := 0;
          end;
          // архивный период
          l_sum := FieldByName('SUMMA2').AsFloat;
          l_pen := FieldByName('PENYA2').AsFloat;

          if l_itg>(l_sum + l_pen) then
          begin
            l_sum1 := l_sum;
            l_pen1 := l_pen;
          end
          else if l_itg<(l_sum + l_pen) then
          begin
            procPenSumm := RoundTo((l_itg * l_pen / (l_sum + l_pen)), -2);
            // защита, чтоб округленная сумма не превысила сумму предъявленной пени
            if procPenSumm > l_pen then
              l_pen1 := l_pen
            else
              l_pen1 := procPenSumm;
            l_sum1 := l_itg - l_pen1; //на осн.долг сбрасываем остаток
          end
          else
          begin
            l_sum1 := l_sum;
            l_pen1 := l_pen;
          end;

          if isAddit then
          begin
            FieldByName('SUMMA').AsFloat := FieldByName('SUMMA').AsFloat +
              l_sum1;
            FieldByName('PENYA').AsFloat := FieldByName('PENYA').AsFloat +
              l_pen1;
            FieldByName('ITOG').AsFloat := FieldByName('SUMMA').AsFloat +
              FieldByName('PENYA').AsFloat;
          end
          else
          begin
            FieldByName('SUMMA').AsFloat := l_sum1;
            FieldByName('PENYA').AsFloat := l_pen1;
            FieldByName('ITOG').AsFloat := l_sum1 + l_pen1;
          end;
          l_itg := l_itg - l_sum1 - l_pen1;
          Post;
        end;
        Next;
      end;
    end;

    if isUseCurPeriod then
    begin
      // подсчитать долг текущего периода (начисление - оплата)
      First;
      while (not eof) do
      begin
        if FieldByName('MG').AsString = Form_main.cur_mg_ then
        begin
          l_deb_cur := l_deb_cur + FieldByName('SUMMA2').AsFloat;
        end;
        Next;
      end;

      // остаток распределить по долгу текущего периода
      l_itgSaved := l_itg;
      First;
      while (not eof) do
      begin
        if (FieldByName('MG').AsString = Form_main.cur_mg_) then
        begin
          // занулить предложенное ранее распределение
          Edit;
          if not isAddit then
          begin
            FieldByName('SUMMA').AsFloat := 0;
            FieldByName('PENYA').AsFloat := 0;
          end;
          if (FieldByName('SUMMA2').AsFloat > 0) and (l_itg > 0) then
          begin
            // процент распределения
            l_deb := FieldByName('SUMMA2').AsFloat;
            l_proc := l_deb / l_deb_cur;
            l_sum1 := RoundTo(l_itgSaved * l_proc, -2);

            // ограничить округленную сумму:
            // по итоговой сумме к распределению
            if l_sum1 > l_itg then
              l_sum1 := l_itg;

            if l_sum1 > 0.00 then
            begin
              Edit;
              FieldByName('SUMMA').AsFloat := FieldByName('SUMMA').AsFloat +
                l_sum1;
              FieldByName('ITOG').AsFloat := l_sum1;
              l_itg := RoundTo(l_itg - l_sum1, -2);
            end;
          end;
          Post;
        end;
        Next;
      end;
    end;

    // округление установить на последнюю строчку
    if (l_itg > 0) and (l_itg < 0.10) then
    begin
      Edit;
      FieldByName('SUMMA').AsFloat := FieldByName('SUMMA').AsFloat + l_itg;
      FieldByName('ITOG').AsFloat := FieldByName('ITOG').AsFloat + l_itg;
      Post;
      l_itg := 0.00;
    end;

    if l_itg > 0 then
    begin
      // распределить на текущий период, даже если сумма долга = 0
      while (not eof) do
      begin
        if (FieldByName('MG').AsString = Form_main.cur_mg_) then
        begin
          Edit;
          FieldByName('SUMMA').AsFloat := FieldByName('SUMMA').AsFloat + l_itg;
          FieldByName('ITOG').AsFloat := FieldByName('ITOG').AsFloat + l_itg;
          Post;
          l_itg := 0.00;
          Exit;
        end;
      end;
    end;

    if l_itg > 0 then
    begin
      Application.MessageBox(PAnsiChar('Сумма до конца не распределена, остаток:'
        + FloatToStr(l_itg)),
        'Внимание!', MB_OK + MB_ICONWARNING + MB_TOPMOST);
    end;
  end;
  Form_get_pay_nal.OD_chargepay.EnableControls;
end;

procedure TForm_get_pay_nal.FormClose(Sender: TObject; var Action:
  TCloseAction);
begin
  //Чтобы не было Access Violation на EHGrid, при закрытии формы
  DBGridEh1.DataSource := nil;
  // Обязательный Rollback, в случае если остались начисления счетчиков
  DataModule1.OracleSession1.Rollback;
  Action := caFree;
end;

procedure TForm_get_pay_nal.wwDBEdit3DblClick(Sender: TObject);
begin
  invokeSearchAdr;
end;

procedure TForm_get_pay_nal.setNkom(p_lsk: string);
var
  l_nkom: string;
  l_cnt: Integer;
begin
  //Автоматически определить номер компьютера, поменять если необходимо
  l_cnt :=
    DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param',
    ['AUTO_SEL_COMP']);
  if (p_lsk <> '') and (l_cnt = 1) then
  begin
    l_nkom :=
      DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.get_nkom_pay_lsk',
      [wwDBEdit3.Text]);
    ;
    DataModule1.OraclePackage1.CallProcedure('scott.INIT.set_nkom', [l_nkom]);
  end;
  Caption := 'Ввод оплаты, текущий комп.№ ' +
    DataModule1.OraclePackage1.CallStringFunction('scott.INIT.get_nkom',
    [parNone]);
  ;
  {  Label7.Caption:=DataModule1.OraclePackage1.CallStringFunction
       ('scott.INIT.get_nkom', [parNone]);;}
end;

procedure TForm_get_pay_nal.wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
var
  l_cnt: Integer;
begin
  if (Key = #13) and (wwDBEdit3.Text <> '') then
  begin
    wwDBEdit3.Text := LeftPad(wwDBEdit3.Text, 8, '0');
    DBGridEh1.Visible := true;
    DBGridEh1.SetFocus;
    {    Edit1.Text :=
          DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.GET_ADR_BY_LSK',
          [wwDBEdit3.Text]);}
    OD_Kart.SetVariable('lsk', wwDBEdit3.Text);
    OD_Kart.Active := False;
    OD_Kart.Active := True;
    Edit1.Text := OD_Kart.FieldByName('adr').AsString;
    if OD_Kart.FieldByName('lsk').asString <> '' then
    begin
      StatusBar1.SimpleText := '';
      klsk := OD_Kart.FieldByName('k_lsk_id').AsInteger;
      //DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.GET_K_LSK_ID_BY_LSK', [wwDBEdit3.Text]);
      setNkom(wwDBEdit3.Text);
      //    if getDoublePar(Form_main.paramList, 'JAVA_CHARGE') <> 1 then
      //    begin
            // Выполнить начисление в PL/SQL или в Java, (если в Java, то оно будет выполнено дважды, еще и в момент распр. платежа,
            // так как модуль Начисление еще выполняет функцию заполнения коротких наименований услуг по лиц.счету
            // Java может распределить по свежему начислению (для ТСЖ, чтобы в чеке отразить суммы)
      l_cnt :=
        DataModule1.OraclePackage1.CallIntegerFunction('scott.C_CHARGES.gen_charges',
        [wwDBEdit3.Text, null, null,
        null, 1, 0]);
      //    end;
      clearPay;
    end
    else
    begin
      StatusBar1.SimpleText := 'Лицевой счет не найден!';
    end;
  end;
end;

procedure TForm_get_pay_nal.clearPay;
begin
  //очищаем оплату по месяцам
  OD_c_kwtp_temp.Active := false;
  OD_c_kwtp_temp.Active := true;
  OD_oper.Active := false;
  OD_oper.SetVariable('lsk', wwDBEdit3.Text);
  OD_oper.Active := true;

  DataModule1.OraclePackage1.CallProcedure('scott.C_GET_PAY.init_c_kwtp_temp_dolg', [wwDBEdit3.Text]);
  OD_chargepay.Active := false;
  OD_chargepay.Active := true;
end;

// Восстановить суммы долгов

procedure TForm_get_pay_nal.reLoadDeb;
begin
  OD_chargepay.DisableControls;
  OD_chargepay.First;
  while not OD_chargepay.Eof do
  begin
    // восстановить только измененённые записи, во избежании
    // лишних запросов с клиента
    if (OD_chargepay.FieldByName('SUMMA').AsFloat <>
      OD_chargepay.FieldByName('SUMMA2').AsFloat)
      or
      (OD_chargepay.FieldByName('PENYA').AsFloat <>
        OD_chargepay.FieldByName('PENYA2').AsFloat) then
    begin
      OD_chargepay.Edit;
      OD_chargepay.FieldByName('SUMMA').AsFloat :=
        OD_chargepay.FieldByName('SUMMA2').AsFloat;
      OD_chargepay.FieldByName('PENYA').AsFloat :=
        OD_chargepay.FieldByName('PENYA2').AsFloat;
      OD_chargepay.FieldByName('ITOG').AsFloat :=
        OD_chargepay.FieldByName('SUMMA2').AsFloat +
        OD_chargepay.FieldByName('PENYA2').AsFloat;
      OD_chargepay.Post;
    end;
    OD_chargepay.Next;
  end;
  OD_chargepay.EnableControls;
end;

procedure TForm_get_pay_nal.action;
begin
  OD_usl_chk.Active := false;
  OD_usl_chk.SetVariable('OPER', OD_c_kwtp_temp.FieldByName('oper').AsString);
  OD_usl_chk.Active := true;

  if OD_c_kwtp_temp.FieldByName('oper').AsString = '' then
  begin
    //Выход на итог
    count;
    wwDBEdit1.SetFocus;
  end
  else if (OD_usl_chk.FieldByName('iscounter').AsInteger = 0) then
  begin
    //Основная операция (например 01)
    // Восстановить суммы долгов
    reLoadDeb;

    if FF('Form_get_pay_dolg', 1) = 0 then
      Application.CreateForm(TForm_get_pay_dolg, Form_get_pay_dolg);
    Form_get_pay_dolg.ShowModal;
  end
  else
  begin
    //Операции со счетчиками
    if FF('Form_get_pay_dolg', 1) = 0 then
      Application.CreateForm(TForm_get_cnt_sch, Form_get_cnt_sch);
    Form_get_cnt_sch.Label5.Caption := OD_usl_chk.FieldByName('naim').AsString;
    Form_get_cnt_sch.usl_ := OD_usl_chk.FieldByName('fk_usl_chk').AsString;
    //обрабатывать ли показания счетчика или сумму оплаты?
    if OD_usl_chk.FieldByName('iscounter').AsInteger = 1 then
    begin
      Form_get_cnt_sch.Caption := 'Показания счетчика';
      Form_get_cnt_sch.wwDBEdit4.Text :=
        FloatToStr(DataModule1.OraclePackage1.CallFloatFunction('scott.c_charges.gen_charges_sch',
        [wwDBEdit3.Text, OD_usl_chk.FieldByName('fk_usl_chk').AsString, 0,
        null]));
      Form_get_cnt_sch.cnt_sch0_ :=
        DataModule1.OraclePackage1.CallFloatFunction('scott.c_charges.gen_charges_sch',
        [wwDBEdit3.Text, OD_usl_chk.FieldByName('fk_usl_chk').AsString, 0,
        null]);
    end
    else
    begin
      Form_get_cnt_sch.Caption := 'Сумма оплаты';
    end;
    Form_get_cnt_sch.ShowModal
  end;
end;

procedure TForm_get_pay_nal.count;
var
  i: Double;
begin
  //выход на итог
  i := 0;
  if not (OD_c_kwtp_temp.State in [dsBrowse]) then
    OD_c_kwtp_temp.Post;

  OD_c_kwtp_temp.First;
  while not OD_c_kwtp_temp.Eof do
  begin
    i := i + OD_c_kwtp_temp.FieldByName('summa').AsFloat +
      OD_c_kwtp_temp.FieldByName('penya').AsFloat;
    wwDBEdit4.Text := FloatToStr(i);
    OD_c_kwtp_temp.Next
  end;
end;

procedure TForm_get_pay_nal.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_pay_nal.wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    wwDBEdit1.SetFocus;
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_get_pay_nal.wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
var
  summGet, summItg, summa_: Double;
  err_: Integer;
begin
  if Key = #13 then
  begin
    if wwDBEdit1.Text = '' then
      summGet := 0
    else
      summGet := StrToFloat(wwDBEdit1.Text);

    if wwDBEdit4.Text = '' then
      summItg := 0
    else
      summItg := StrToFloat(wwDBEdit4.Text);

    if (summGet - summItg < 0) then
    begin
      msg2('Не хватает денег для оплаты, повторите ввод', 'Внимание!', MB_OK +
        MB_ICONSTOP);
      wwDBEdit1.SetFocus;
      exit;
    end;

    if (summItg = 0) then
    begin
      msg2('Сумма квитанции = 0, отмена', 'Внимание!', MB_OK + MB_ICONSTOP);
      exit;
    end;

    Button1.SetFocus;
    summa_ := summGet - summItg;

    if summa_ > 0 then
    begin
      if msg3('Распределить остаток ' + FloatToStr(summa_) +
        ' на текущий месяц?',
        'Внимание!', MB_YESNO +
        MB_ICONQUESTION) = ID_YES then
      begin
        if not (OD_chargepay.State in [dsBrowse]) then
          OD_chargepay.Post;

        distPay(summa_, False, False, True, True);
        summa_ := 0;
        //пересчитать итог
        count;
      end;
    end;

    wwDBEdit2.Text := FloatToStr(summa_);
    Button1.SetFocus;
  end;
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_get_pay_nal.Button1Click(Sender: TObject);
var
  i, l_par, c_kwtp_id_, l_flag, l_cnt: Integer;
  summRemain, summCheck, summGet: Double;
begin

  if (StrToFloat(wwDBEdit1.Text) - StrToFloat(wwDBEdit4.Text) < 0) then
  begin
    msg2('Не хватает денег для оплаты, отмена', 'Внимание!', MB_OK +
      MB_ICONSTOP);
    exit;
  end;
  if (StrToFloat(wwDBEdit4.Text) = 0) then
  begin
    msg2('Сумма квитанции = 0, отмена', 'Внимание!', MB_OK + MB_ICONSTOP);
    exit;
  end;

  Button1.Enabled := false;
  if not (OD_c_kwtp_temp.State in [dsBrowse]) then
    OD_c_kwtp_temp.Post;

  if not (OD_chargepay.State in [dsBrowse]) then
    OD_chargepay.Post;
  if not (OD_c_kwtp_temp.State in [dsBrowse]) then
    OD_c_kwtp_temp.Post;

  //Автоматически определить номер компьютера, поменять если необходимо
  setNkom(wwDBEdit3.Text);

  if getDoublePar(Form_main.paramList, 'RECEIPT_TP') = 1 then
  begin
    // ТСЖ - провести платеж
    c_kwtp_id_ := DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.C_GET_PAY.get_money_nal', [wwDBEdit3.Text]);
    //платёжный документ
    with OD_c_kwtp do
    begin
      SetVariable('id', c_kwtp_id_);
      Active := false;
      Active := true;
    end;
  end
  else
  begin
    // Полыс - провести платеж и получить результат распределения платежа по всем лс (Основным, РСО, Кап.)
    OD_get_money_nal2.Active := False;
    OD_get_money_nal2.Active := True;

    // проверить соответствие итоговой суммы прошедшей в c_kwtp_mg и принятой от клиента
    summCheck := 0;
    summRemain := 0;
    if wwDBEdit1.Text <> '' then
      summGet := StrToFloat(wwDBEdit1.Text);
    if wwDBEdit2.Text <> '' then
      summRemain := StrToFloat(wwDBEdit2.Text);

    with OD_get_money_nal2 do
    begin
      First;
      while not Eof do
      begin
        summCheck := summCheck + FieldByName('SUMM_ITG').AsFloat;
        Next;
      end;
    end;

    if not isEqual(summCheck, summGet - summRemain, 0.01) then
    begin
      Application.MessageBox('Сумма некорректно распределена, отмена!' + #13#10,
        'Внимание!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
      OD_get_money_nal2.Session.Rollback;
    end;

    //платёжный документ
    with OD_c_kwtp do
    begin
      // взять из первой строки KWTP_ID платежа
      SetVariable('id', OD_get_money_nal2.FieldByName('C_KWTP_ID').AsInteger);
      Active := false;
      Active := true;
    end;
  end;

  // регистрация и печать чека
  l_flag := print_receipt(StrToFloat(wwDBEdit1.Text),
    OD_c_kwtp.FieldByName('cash_num').AsInteger);

  Button1.Enabled := true;
  if l_flag = 0 then
  begin
    // успешно
    DataModule1.OraclePackage1.Session.Commit;
  end
  else
  begin
    // ошибка
    DataModule1.OraclePackage1.Session.Rollback;
    Application.MessageBox('Ошибка при попытке распечатать кассовый чек!',
      'Внимание!', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    Exit;
  end;

  if getDoublePar(Form_main.paramList, 'RECEIPT_TP') = 1 then
  begin
    // ТСЖ
    if Form_Main.have_cash <> 1 then
    begin
      if FF('Form_plat_doc', 1) = 0 then
        Application.CreateForm(TForm_plat_doc, Form_plat_doc);
      with Form_plat_doc do
      begin

        frxDBDataset1.DataSource := DS_c_kwtp;
        frxDBDataset2.DataSource := DS_c_kwtp_mg;

        //если используется собственный файл платежной квитанции - использовать его
        //ТСЖ

        frxReport1.Preview := frxPreview1;
        frxReport1.LoadFromFile(Form_main.exepath_ + '\paydoc.fr3', True);
        frxReport1.PrepareReport(true);
        frxReport1.ShowPreparedReport;

        frxPreview1.Show;
        ShowModal;
      end;
    end;
  end;

  OD_c_kwtp_temp.Active := false;
  OD_chargepay.Active := false;
  if FF('Form_list_kart', 0) = 1 then
    Form_list_kart.OD_list_kart.RefreshRecord;

  Edit1.Text := '';
  wwDBEdit1.Text := '0';
  wwDBEdit2.Text := '0';
  wwDBEdit3.Text := '';
  wwDBEdit4.Text := '0';
  DBGridEh1.Visible := false;
  DBGridEh1.SelectedIndex := 0;
  Button1.Enabled := true;
  wwDBEdit3.SetFocus;
end;

// печать чека Result :0-успешно, 1-ошибка
// client_sum: сумма, полученная от клиента

function TForm_get_pay_nal.print_receipt(client_sum: Double; p_cashNum:
  Integer): Integer;
var
  // режим ККМ
  saved_cash_test, mode: Integer;
  F: TextFile;
  pad1, pad2, path, oldLsk: string;
  receiptTest, retry: Boolean;
  inn, strDt: string;
  ECR: OleVariant;
begin
  saved_cash_test := Form_main.cash_test;

  if p_cashNum = 1 then
  begin
    ECR := Form_main.selECR;
    inn := Form_main.selECR_inn;
  end
  else
  begin
    ECR := Form_main.selECR2;
    inn := Form_main.selECR2_inn;
  end;

  Result := 1;
  if Form_main.cash_test = 1 then
    receiptTest := True
  else
    receiptTest := False;

  if getDoublePar(Form_main.paramList, 'CHECK_CASH_CORRECTNESS') = 1 then
  begin
    if not receiptTest then
    begin
      retry := True;
      while retry do
      begin
        retry := False;
        ECR.GetECRStatus;
        // если заполнен ИНН ККМ, то проверить на правильность подсоединения
        if (ECR.INN <> inn) then
        begin
          case
            Application.MessageBox('Подключен несоответствующий фискальный регистратор!',
            'Внимание!', MB_ABORTRETRYIGNORE + MB_ICONSTOP) of
            IDABORT:
              begin
                // выйти из процедуры
                Result := 1;
                Exit;
              end;
            IDRETRY:
              begin
                // повторить проверку ИНН
                ECR.GetECRStatus;
                if ECR.INN <> inn then
                  retry := True
                else
                  retry := False;
              end;
            IDIGNORE:
              begin
                // распечатать чек на текущем ККМ
                retry := False;
              end;
          end;
        end;
      end;
    end;
  end;

  if open_port_ecr(ECR) <> 0 then
  begin
    retry := True;
    while retry do
    begin
      // ошибка, возможно отключен фискальный регистратор
      case
        Application.MessageBox('Возможно отключен фискальный регистратор, печать чека будет не доступна. Продолжить без печати чека?',
        'Внимание!', MB_ABORTRETRYIGNORE + MB_ICONSTOP) of
        IDABORT:
          begin
            // выйти из процедуры
            Result := 1;
            Exit;
          end;
        IDRETRY:
          begin
            // повторить проверку ККМ
            if open_port_ecr(ECR) <> 0 then
              retry := True
            else
              retry := False;
          end;
        IDIGNORE:
          begin
            // перевести в режим тестирования
            receiptTest := True;
            Form_main.cash_test := 1;
            retry := False;
          end;
      end;
    end;
  end;

  if getDoublePar(Form_main.paramList, 'RECEIPT_TP') = 1 then
  begin
    ///////////////////////////////////////////////////////////
    //              ЧЕК ДЛЯ ТСЖ
    // детализация фискального чека по периодам и услугам
    ///////////////////////////////////////////////////////////
    with OD_c_kwtp_mg do
    begin
      Active := false;
      Active := true;
    end;
    with OD_kwtp_day do
    begin
      Active := false;
      Active := true;
    end;
    with OD_meter_vol do
    begin
      Active := false;
      Active := true;
    end;

    try
      if receiptTest then
      begin
        // тестовый чек, запись в файл
        path := DataModule1.OraclePackage1.CallStringFunction
          ('scott.Utils.get_str_param', ['Путь1']);
        AssignFile(F, path + 'receipt.txt');
        Rewrite(F);
        Append(f);
      end;

      if Form_Main.have_cash = 1 then
      begin
        // инициализация?
        setup_ecr('                                                                          '
          + '                                                                          '
          +
          '                                                                          ',
          ECR);
      end;
      // открыть порт
      if open_port_ecr(ECR) <> 0 then
      begin
        // ошибка
        Result := 1;
      end
      else
      begin
        print_header_ecr('', 1, 1, 0, F, ECR);
        print_header_ecr('     К  А  С  С  О  В  Ы  Й   Ч  Е  К', 1, 1, 0, F,
          ECR);
        print_header_ecr('', 1, 1, 0, F, ECR);

        // проверить режим
        mode := check_mode(ECR);
        if (Form_main.have_cash <> 2)
          or ((Form_main.have_cash = 2)
          and (mode = 2) or (mode = 3)) then
          // если ККМ=2 то проверить режимы
        begin
          // открыть чек
          if open_reg(ECR) <> 0 then
          begin
            // ошибка
            Result := 1;
          end
          else
          begin
            // последние показания счетчиков
            strDt := FormatDateTime('dd/mm/yy', Now());
            print_string_ecr2('-------------------------------------', 1, 0, F,
              ECR);
            print_string_ecr2('| услуга | последнее  | начисленный |', 1, 0, F,
              ECR);
            print_string_ecr2('|        | показание  | объем       |', 1, 0, F,
              ECR);
            print_string_ecr2('|        | на ' + strDt + '|             |', 1,
              0, F, ECR);
            print_string_ecr2('-------------------------------------', 1, 0, F,
              ECR);
            while not OD_meter_vol.Eof do
            begin
              pad1 := calc_pads2(11, OD_meter_vol.FieldByName('name').AsString);
              pad2 := calc_pads2(18,
                pad1 + OD_meter_vol.FieldByName('last_num').AsString);
              print_string_ecr2('|' + OD_meter_vol.FieldByName('name').AsString
                + pad1
                + OD_meter_vol.FieldByName('last_num').AsString
                + pad2
                + OD_meter_vol.FieldByName('vol').AsString, 1, 0, F, ECR);
              OD_meter_vol.Next;
            end;
            print_string_ecr2('------------------------------------', 1, 0, F,
              ECR);

            // адрес кассы и прочие реквизиты
            print_string_ecr2('Вас обслуживает организация:'
              + OD_c_kwtp.FieldByName('name_org2').AsString
              + ' ИНН ' + OD_c_kwtp.FieldByName('inn2').AsString
              + ', тел.' + OD_c_kwtp.FieldByName('phone2').AsString, 1,
              0, F, ECR);
            print_string_ecr2('Адрес кассы:'
              + OD_c_kwtp.FieldByName('adr_cash').AsString
              + ', тел.' + OD_c_kwtp.FieldByName('phone2').AsString, 1,
              0, F, ECR);
            print_string_ecr2('Кассир:' +
              OD_c_kwtp.FieldByName('fio_kass').AsString, 1, 0, F, ECR);
            print_string_ecr2('---------------------------------------', 1,
              0, F, ECR);
            print_string_ecr2('Лицевой счет № ' +
              OD_c_kwtp.FieldByName('lsk').AsString, 1, 0, F, ECR);
            print_string_ecr2('Адрес:' +
              OD_c_kwtp.FieldByName('adr').AsString,
              1, 0, F, ECR);
            OD_kwtp_day.First;
            print_string_ecr2('Наим-е операции   Период    Оплата(руб.)',
              1, 0, F, ECR);

            // регистация операций по услугам
            while not OD_kwtp_day.Eof do
            begin
              reg_ecr_ext(OD_kwtp_day.FieldByName('name').AsString,
                OD_kwtp_day.FieldByName('summa').AsFloat,
                1, OD_kwtp_day.FieldByName('dep').AsInteger, F, ECR);
              OD_kwtp_day.Next;
            end;
            Sleep(500);
          end;
          // Закрытие чека
          // ВНИМАНИЕ! в качестве типа операции используется поле из c_kwtp_mg
          // поэтому кол-во операций при приеме оплаты не должно быть больше 1
          // (кол-во записей в c_kwtp_mg = 1!!!)
          if close_reg_summ_ecr_ext(client_sum, ECR,
            OD_c_kwtp_mg.FieldByName('cash_oper_tp').AsInteger, F) <> 0 then
          begin
            // ошибка, попытаться аннулировать чек
            if
              Application.MessageBox('Фискальный чек не прошёл регистрацию, аннулировать его?',
              'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
            begin
              annulment(ECR);
            end;

            Result := 1;
            close_port_ecr(ECR);
          end
          else
          begin
            // успешно
            Result := 0;
            close_port_ecr(ECR);
          end;
          if Form_main.cash_test = 1 then
          begin
            // тестовый чек, закрыть файл
            Flush(f);
            CloseFile(f);
          end;
        end
        else
        begin
          // некорректный режим ККМ
          Result := 1;
          msg2('Ошибка, ККМ находится в некорректном режиме:' +
            check_mode2(ECR),
            'Внимание!', MB_OK + MB_ICONERROR);
          close_port_ecr(ECR);
        end;
      end;

    except
      // Эксепшн в фискальном регистраторе или в базе данных
      on E: Exception do
      begin
        Result := 1;
        ShowMessage('Exception class name: ' + E.ClassName + '' + 'Ошибка: ' +
          E.Message);
        ShowMessage('Платеж не будет учтён!');
        // откатить транзакцию
        DataModule1.OraclePackage1.Session.Rollback;
        // удалить платеж в БД (он может быть проведен в Java)
        DataModule1.OraclePackage1.CallProcedure
          ('scott.C_GET_PAY.remove_pay',
          [OD_c_kwtp.FieldByName('id').AsInteger]);
        DataModule1.OraclePackage1.Session.Commit;
      end;
    end
  end
  else if getDoublePar(Form_main.paramList, 'RECEIPT_TP') = 0 then
  begin
    ///////////////////////////////////////////////////////////
    //              ЧЕК ДЛЯ ПОЛЫС
    ///////////////////////////////////////////////////////////
    if (Form_Main.have_cash = 1) or (Form_Main.have_cash = 2) then
    begin
      try
        if receiptTest then
        begin
          // тестовый чек, запись в файл
          path := DataModule1.OraclePackage1.CallStringFunction
            ('scott.Utils.get_str_param', ['Путь1']);
          AssignFile(F, path + 'receipt.txt');
          Rewrite(F);
          Append(f);
        end;

        //КАССА
        if Form_Main.have_cash = 1 then
        begin
          setup_ecr('                                                                          '
            + '                                                                          '
            +
            '                                                                          ',
            ECR);
        end;
        // открыть порт
        if open_port_ecr(ECR) <> 0 then
        begin
          Result := 1;
        end
        else
        begin
          // прочие варианты
          print_header_ecr('', 1, 1, 0, F, ECR);
          print_header_ecr('     К  А  С  С  О  В  Ы  Й   Ч  Е  К', 1, 1, 0, F
            , ECR);
          print_header_ecr('', 1, 1, 0, F, ECR);

          // проверить режим
          mode := check_mode(ECR);
          if (Form_main.have_cash <> 2)
            or ((Form_main.have_cash = 2)
            and (mode = 2) or (mode = 3)) then
            // если ККМ=2 то проверить режимы
          begin
            // открыть чек
            if open_reg(ECR) <> 0 then
            begin
              Result := 1;
            end
            else
            begin
              // прочие варианты
              print_string_ecr2('Вас обслуживает организация:'
                + OD_c_kwtp.FieldByName('name_org2').AsString
                + ' ИНН ' + OD_c_kwtp.FieldByName('inn2').AsString
                + ', тел.' + OD_c_kwtp.FieldByName('phone2').AsString, 1,
                0, F, ECR);
              print_string_ecr2('Платёжный агент:' +
                OD_c_kwtp.FieldByName('name_org').AsString, 1, 0, F, ECR);
              print_string_ecr2('Адрес кассы:'
                + OD_c_kwtp.FieldByName('adr_org').AsString
                + ', тел.' + OD_c_kwtp.FieldByName('phone2').AsString, 1,
                0, F, ECR);
              print_string_ecr2('Кассир:' +
                OD_c_kwtp.FieldByName('fio_kass').AsString, 1, 0, F, ECR);
              print_string_ecr2('Отдел №' +
                OD_c_kwtp.FieldByName('dep').AsString,
                1, 0, F, ECR);
              print_string_ecr2('---------------------------------------', 1,
                0, F, ECR);
              print_string_ecr2('Ф.И.О.:' +
                OD_c_kwtp.FieldByName('fio_owner').AsString, 1, 0, F, ECR);
              print_string_ecr2('Адрес:' +
                OD_c_kwtp.FieldByName('adr').AsString,
                1, 0, F, ECR);

              OD_get_money_nal2.First;
              print_string_ecr2('Наим-е операции   Период    Оплата(руб.)',
                1,
                0, F, ECR);

              oldLsk := '';
              while not OD_get_money_nal2.Eof do
              begin
                if oldLsk <> OD_get_money_nal2.FieldByName('lsk').AsString then
                begin
                  oldLsk := OD_get_money_nal2.FieldByName('lsk').AsString;
                  print_string_ecr2('Лиц.сч.' +
                    OD_get_money_nal2.FieldByName('lsk_tp').AsString + ' № ' +
                    OD_get_money_nal2.FieldByName('lsk').AsString, 1, 0, F,
                    ECR);
                end;
                reg_ecr(OD_get_money_nal2.FieldByName('naim').AsString
                  + calc_pads(OD_get_money_nal2.FieldByName('naim').AsString)
                  + OD_get_money_nal2.FieldByName('dopl').AsString,
                  OD_get_money_nal2.FieldByName('summ_itg').AsFloat,
                  1, OD_c_kwtp.FieldByName('dep').AsInteger, F, ECR);
                OD_get_money_nal2.Next;
              end;
              {while not OD_c_kwtp_mg.Eof do
              begin
                reg_ecr(OD_c_kwtp_mg.FieldByName('naim').AsString
                  + calc_pads(OD_c_kwtp_mg.FieldByName('naim').AsString)
                  + OD_c_kwtp_mg.FieldByName('dopl').AsString,
                  OD_c_kwtp_mg.FieldByName('summ_itg').AsFloat,
                  1, OD_c_kwtp.FieldByName('dep').AsInteger, F, ECR);
                OD_c_kwtp_mg.Next;
              end;}

              //Закрытие чека
              if close_reg_summ_ecr(client_sum, ECR, 0, F) <> 0 then
              begin
                // ошибка, попытаться аннулировать чек
                if
                  Application.MessageBox('Фискальный чек не прошёл регистрацию, аннулировать его?',
                  'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
                begin
                  annulment(ECR);
                end;

                Result := 1;
                close_port_ecr(ECR);
              end
              else
              begin
                //успешно
                Result := 0;
                close_port_ecr(ECR);
              end;
              if Form_main.cash_test = 1 then
              begin
                // тестовый чек, закрыть файл
                Flush(f);
                CloseFile(f);
              end;
            end;

          end
          else
          begin
            // Некорректный режим ККМ
            Result := 1;
            msg2('Ошибка, ККМ находится в некорректном режиме:' +
              check_mode2(ECR),
              'Внимание!', MB_OK + MB_ICONERROR);
            close_port_ecr(ECR);
          end;
        end;
      except
        // Эксепшн в фискальном регистраторе или в базе данных
        on E: Exception do
        begin
          Result := 1;
          ShowMessage('Exception class name: ' + E.ClassName + '' + 'Ошибка: ' +
            E.Message);
          ShowMessage('Платеж не будет учтён!');
          // откатить транзакцию
          DataModule1.OraclePackage1.Session.Rollback;
          // удалить платеж в БД (он может быть проведен в Java)
          DataModule1.OraclePackage1.CallProcedure
            ('scott.C_GET_PAY.remove_pay',
            [OD_c_kwtp.FieldByName('id').AsInteger]);
          DataModule1.OraclePackage1.Session.Commit;
        end;
      end;
    end
    else
    begin
      Result := 0;
    end;
  end;

  // вернуть состояние тестирования
  Form_main.cash_test := saved_cash_test;
end;

procedure TForm_get_pay_nal.wwDBComboBox1DropDown(Sender: TObject);
begin
  action;
end;

procedure TForm_get_pay_nal.FormCreate(Sender: TObject);
begin
  DecimalSeparator := '.';
  OD_oper.Active := true;
  OD_usl_chk.Active := true;
  wwDBEdit1.Text := '0';
  wwDBEdit2.Text := '0';
  wwDBEdit4.Text := '0';
  OD_c_kwtp_temp.Active := false;
  if FF('Form_list_kart', 0) = 1 then
  begin
    wwDBEdit3.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    setNkom(wwDBEdit3.Text);
  end;
  TabSheet2.TabVisible := False;
end;

procedure TForm_get_pay_nal.DBGridEh1Columns2EditButtonClick(Sender: TObject; var
  Handled: Boolean);
begin
  action;
end;

procedure TForm_get_pay_nal.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //выбор долгов или показ сч.
   //(wwDBGrid1.GetActiveCol = 3)
  if (DBGridEh1.SelectedField.FieldName = 'PENYA') and (key = VK_Return) then
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

procedure TForm_get_pay_nal.DBGridEh1Columns2EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  action;
end;

procedure TForm_get_pay_nal.DBGridEh1ColEnter(Sender: TObject);
begin
  if ((DBGridEh1.SelectedField.FieldName = 'SUMMA') or
    (DBGridEh1.SelectedField.FieldName = 'PENYA')) then
  begin
    DBGridEh1.Columns[1].ReadOnly := true; //SUMMA
    DBGridEh1.Columns[2].ReadOnly := true; //PENYA
  end;
end;

procedure TForm_get_pay_nal.OD_chargepayBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TForm_get_pay_nal.OD_chargepayBeforePost(DataSet: TDataSet);
begin
  if FF('Form_get_pay_dolg', 0) = 1 then
    Form_get_pay_dolg.recalc;
end;

procedure TForm_get_pay_nal.DBGridEh1ColExit(Sender: TObject);
begin
  if ((DBGridEh1.SelectedField.FieldName = 'SUMMA') or
    (DBGridEh1.SelectedField.FieldName = 'PENYA')) then
  begin
    DBGridEh1.Columns[1].ReadOnly := false; //SUMMA
    DBGridEh1.Columns[2].ReadOnly := false; //PENYA
  end;
end;

procedure TForm_get_pay_nal.N1Click(Sender: TObject);
begin
  OD_c_kwtp_temp.Delete;
end;

procedure TForm_get_pay_nal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F10) then
  begin
    // вызвать форму поиска адреса
    invokeSearchAdr;
  end
  else if (Key = vk_F11) then
  begin
    // вызвать форму справки по задолженности
    invokeFormBill;
  end
  else if (Key = vk_F12) then
  begin
    // вызвать форму ввода показаний по счетчикам
    invokeFormSchHistory;
  end;
end;

// вызвать форму ввода показаний по счетчикам

procedure TForm_get_pay_nal.invokeFormSchHistory;
begin
  if (Edit1.Text <> '') then
  begin
    // вызвать форму ввода показаний по сч.
    if FF('Form_sch_history', 1) = 0 then
    begin
      Application.CreateForm(TForm_sch_history, Form_sch_history);
    end;
    Form_sch_history.setKlsk(klsk, wwDBEdit3.Text);
    Form_sch_history.setTp(1);
  end
  else
  begin
    StatusBar1.SimpleText := 'Необходимо выбрать лиц.счет или адрес!';
  end;
end;

// вызвать форму справки по задолженности

procedure TForm_get_pay_nal.invokeFormBill;
begin
  if (Edit1.Text <> '') then
  begin
    if FF('Form_print_bills', 1) = 0 then
    begin
      Application.CreateForm(TForm_print_bills, Form_print_bills);
      // выбрать задолженность
      Form_print_bills.ComboBox1.ItemIndex := 3;
      Form_print_bills.Button1.SetFocus;
    end;
  end
  else
  begin
    StatusBar1.SimpleText := 'Необходимо выбрать лиц.счет или адрес!';
  end;
end;

// поиск адреса

procedure TForm_get_pay_nal.invokeSearchAdr;
var
  l_cnt: Integer;
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  if Form_find_adr.ShowModal = mrOk then
  begin
    wwDBEdit3.Text := Form_Main.Lsk_;
    {    Edit1.Text :=
          DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.GET_ADR_BY_LSK',
          [Form_Main.Lsk_]);}
    OD_Kart.SetVariable('lsk', Form_Main.Lsk_);
    OD_Kart.Active := False;
    OD_Kart.Active := True;
    Edit1.Text := OD_Kart.FieldByName('adr').AsString;
    klsk := OD_Kart.FieldByName('k_lsk_id').AsInteger;

    if getDoublePar(Form_main.paramList, 'JAVA_CHARGE') <> 1 then
    begin
      // Выполнить начисление в PL/SQL, если нет Java модуля начисления
      // чтобы уже Java могла распределить по свежему начислению
      l_cnt :=
        DataModule1.OraclePackage1.CallIntegerFunction('scott.C_CHARGES.gen_charges',
        [Form_Main.Lsk_, null, null,
        null, 1, 0]);
    end;

    setNkom(Form_Main.Lsk_);
    clearPay;
    //очищаем оплату по месяцам
    {DBGridEh1.Visible := true;
    DBGridEh1.SetFocus;
    OD_c_kwtp_temp.Active := false;
    OD_c_kwtp_temp.Active := true;
    OD_oper.Active := false;
    OD_oper.SetVariable('lsk', wwDBEdit3.Text);
    OD_oper.Active := true;

    DataModule1.OraclePackage1.CallProcedure('scott.C_GET_PAY.init_c_kwtp_temp_dolg', [Form_main.lsk_]);
    OD_chargepay.Active := false;
    OD_chargepay.Active := true;    }
  end;
end;

procedure TForm_get_pay_nal.ToolButton1Click(Sender: TObject);
begin
  // вызвать форму ввода показаний по счетчикам
  invokeFormSchHistory;
end;

procedure TForm_get_pay_nal.ToolButton2Click(Sender: TObject);
begin
  // вызвать форму справки по задолженности
  invokeFormBill;
end;

procedure TForm_get_pay_nal.StatusBar1DblClick(Sender: TObject);
begin
  // вкл/выкл подсказку по распределению оплаты
  if TabSheet2.TabVisible = True then
    TabSheet2.TabVisible := False
  else
    TabSheet2.TabVisible := True;
end;

end.

