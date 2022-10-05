unit Unit_get_pay_nal;

interface

uses
  Windows, SysUtils, Variants, Classes, Controls, Forms, Dialogs, DB, Oracle,
  OracleData, StdCtrls, Mask, frxClass, frxDBSet, Menus, Unit_ecr, Math,
  ComCtrls, ToolWin, cxGraphics, cxControls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer,
  cxTextEdit, cxMaskEdit, cxDBLookupComboBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_get_pay_nal = class(TForm)
    OD_c_kwtp_temp: TOracleDataSet;
    DS_c_kwtp_temp: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    OD_c_kwtp_tempSUMMA: TFloatField;
    OD_c_kwtp_tempPENYA: TFloatField;
    OD_c_kwtp_tempOPER: TStringField;
    OD_oper: TOracleDataSet;
    DS_oper: TDataSource;
    OD_operOPER: TStringField;
    OD_operNAIM: TStringField;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
    OD_operCASH_OPER_TP: TFloatField;
    cxLsk: TcxMaskEdit;
    cxAmount: TcxMaskEdit;
    cxSumma: TcxMaskEdit;
    cxRemain: TcxMaskEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1OPER: TcxGridDBColumn;
    cxGridDBTableView1SUMMA: TcxGridDBColumn;
    cxGridDBTableView1PENYA: TcxGridDBColumn;
    cxGridDBTableView1ITOG: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action;
    procedure FormCreate(Sender: TObject);
    procedure count;
    procedure OD_chargepayBeforeInsert(DataSet: TDataSet);
    procedure OD_chargepayBeforePost(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure setNkom(p_lsk: string);
    procedure clearPay;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function print_receipt(client_sum: Double; p_cashNum: Integer; p_cash_oper_tp: Integer): Integer;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure invokeFormSchHistory;
    procedure invokeFormBill;
    procedure invokeSearchAdr;
    procedure distPay(distSumm: Double; isInitDeb: Boolean; isUseArchPeriod, isUseCurPeriod, isAddit: Boolean);
    procedure reLoadDeb;
    procedure cxLskDblClick(Sender: TObject);
    procedure cxLskKeyPress(Sender: TObject; var Key: Char);
    procedure cxAmountKeyPress(Sender: TObject; var Key: Char);
    procedure cxSummaKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton3Click(Sender: TObject);
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
// ������������ ����� ������ �� ��������
// isUseArchPeriod - ������������ �������� ������
// isUseCurPeriod - ������������ ������� ������
// isAddit - ������������ �������������, � ���������� �������������
//

procedure TForm_get_pay_nal.distPay(distSumm: Double; isInitDeb: Boolean; isUseArchPeriod, isUseCurPeriod, isAddit: Boolean);
var
  test, l_sum, l_pen, l_itg, l_sum1, l_pen1: Double;
  l_deb, l_proc, l_deb_cur, l_itgSaved: Double;
  procPenSumm: Double;
begin
  l_deb_cur := 0.00;
  l_itg := distSumm;
  if l_itg < 0 then
  begin
    Application.MessageBox('����� �������������, ������!', '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
  end;

  Form_get_pay_nal.OD_chargepay.DisableControls;
  with Form_get_pay_nal.OD_chargepay do
  begin
    if RecordCount = 0 then
    begin
      Application.MessageBox('��� ������ � �������������, ������!', '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
      Exit;
    end;

    if isInitDeb then
    begin
      // ������ ������ �����
      { DataModule1.OraclePackage1.CallProcedure(
        'scott.C_GET_PAY.init_c_kwtp_temp_dolg',
        [Form_get_pay_nal.cxLsk.Text]);
        Active := false;
        Active := true; }
      reLoadDeb;
    end;
    // ������������ �� �������� ��������
    // ��������������� - �� �������� � �������
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
          // �������� ������
          l_sum := FieldByName('SUMMA2').AsFloat;
          l_pen := FieldByName('PENYA2').AsFloat;

          if l_itg > (l_sum + l_pen) then
          begin
            l_sum1 := l_sum;
            l_pen1 := l_pen;
          end
          else if l_itg < (l_sum + l_pen) then
          begin
            procPenSumm := RoundTo((l_itg * l_pen / (l_sum + l_pen)), -2);
            // ������, ���� ����������� ����� �� ��������� ����� ������������� ����
            if procPenSumm > l_pen then
              l_pen1 := l_pen
            else
              l_pen1 := procPenSumm;
            l_sum1 := l_itg - l_pen1; // �� ���.���� ���������� �������
          end
          else
          begin
            l_sum1 := l_sum;
            l_pen1 := l_pen;
          end;

          if isAddit then
          begin
            FieldByName('SUMMA').AsFloat := FieldByName('SUMMA').AsFloat + l_sum1;
            FieldByName('PENYA').AsFloat := FieldByName('PENYA').AsFloat + l_pen1;
            FieldByName('ITOG').AsFloat := FieldByName('SUMMA').AsFloat + FieldByName('PENYA').AsFloat;
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
      // ���������� ���� �������� ������� (���������� - ������)
      First;
      while (not eof) do
      begin
        if FieldByName('MG').AsString = Form_main.cur_mg_ then
        begin
          l_deb_cur := l_deb_cur + FieldByName('SUMMA2').AsFloat;
        end;
        Next;
      end;

      // ������� ������������ �� ����� �������� �������
      l_itgSaved := l_itg;
      First;
      while (not eof) do
      begin
        if (FieldByName('MG').AsString = Form_main.cur_mg_) then
        begin
          // �������� ������������ ����� �������������
          Edit;
          if not isAddit then
          begin
            FieldByName('SUMMA').AsFloat := 0;
            FieldByName('PENYA').AsFloat := 0;
          end;
          if (FieldByName('SUMMA2').AsFloat > 0) and (l_itg > 0) then
          begin
            // ������� �������������
            l_deb := FieldByName('SUMMA2').AsFloat;
            l_proc := l_deb / l_deb_cur;
            l_sum1 := RoundTo(l_itgSaved * l_proc, -2);

            // ���������� ����������� �����:
            // �� �������� ����� � �������������
            if l_sum1 > l_itg then
              l_sum1 := l_itg;

            if l_sum1 > 0.00 then
            begin
              Edit;
              FieldByName('SUMMA').AsFloat := FieldByName('SUMMA').AsFloat + l_sum1;
              FieldByName('ITOG').AsFloat := l_sum1;
              l_itg := RoundTo(l_itg - l_sum1, -2);
            end;
          end;
          Post;
        end;
        Next;
      end;
    end;

    // ���������� ���������� �� ��������� �������
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
      // ������������ �� ������� ������, ���� ���� ����� ����� = 0
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
      // Application.MessageBox(PAnsiChar('����� �� ����� �� ������������, �������:'
      // + FloatToStr(l_itg)),
      // '��������!', MB_OK + MB_ICONWARNING + MB_TOPMOST);
    end;

    // �������� ������������� �� �������� ������
    with OD_c_kwtp_temp do
    begin
      First;
      if State <> dsEdit then
      begin
        Edit;
      end;
      if l_itg = 0.00 then
      begin
        FieldByName('SUMMA').AsFloat := FieldByName('SUMMA').AsFloat + distSumm;
        FieldByName('ITOG').AsFloat := FieldByName('ITOG').AsFloat + distSumm;
      end
      else
      begin
        FieldByName('SUMMA').AsFloat := FieldByName('SUMMA').AsFloat + (distSumm - l_itg);
        FieldByName('ITOG').AsFloat := FieldByName('ITOG').AsFloat + (distSumm - l_itg);
      end;
      Post;
    end;

  end;
  Form_get_pay_nal.OD_chargepay.EnableControls;
end;

procedure TForm_get_pay_nal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // ������������ Rollback, � ������ ���� �������� ���������� ���������
  DataModule1.OracleSession1.Rollback;
  Action := caFree;
end;

procedure TForm_get_pay_nal.setNkom(p_lsk: string);
var
  l_nkom: string;
  l_cnt: Integer;
begin
  // ������������� ���������� ����� ����������, �������� ���� ����������
  l_cnt := DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param', ['AUTO_SEL_COMP']);
  if (p_lsk <> '') and (l_cnt = 1) then
  begin
    l_nkom := DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.get_nkom_pay_lsk', [cxLsk.Text]);
    ;
    DataModule1.OraclePackage1.CallProcedure('scott.INIT.set_nkom', [l_nkom]);
  end;
  Caption := '���� ������, ������� ����.� ' + DataModule1.OraclePackage1.CallStringFunction('scott.INIT.get_nkom', [parNone]);
  ;
  { Label7.Caption:=DataModule1.OraclePackage1.CallStringFunction
    ('scott.INIT.get_nkom', [parNone]);; }
end;

procedure TForm_get_pay_nal.clearPay;
begin
  // ������� ������ �� �������
  OD_c_kwtp_temp.Active := false;
  OD_c_kwtp_temp.Active := true;
  OD_c_kwtp_temp.Edit;

  OD_oper.Active := false;
  OD_oper.SetVariable('lsk', cxLsk.Text);
  OD_oper.Active := true;

  DataModule1.OraclePackage1.CallProcedure('scott.C_GET_PAY.init_c_kwtp_temp_dolg', [cxLsk.Text]);
  OD_chargepay.Active := false;
  OD_chargepay.Active := true;
end;

// ������������ ����� ������

procedure TForm_get_pay_nal.reLoadDeb;
begin
  OD_chargepay.DisableControls;
  OD_chargepay.First;
  while not OD_chargepay.eof do
  begin
    // ������������ ������ ������������ ������, �� ���������
    // ������ �������� � �������
    if (OD_chargepay.FieldByName('SUMMA').AsFloat <> OD_chargepay.FieldByName('SUMMA2').AsFloat) or (OD_chargepay.FieldByName('PENYA').AsFloat <> OD_chargepay.FieldByName('PENYA2').AsFloat) then
    begin
      OD_chargepay.Edit;
      OD_chargepay.FieldByName('SUMMA').AsFloat := OD_chargepay.FieldByName('SUMMA2').AsFloat;
      OD_chargepay.FieldByName('PENYA').AsFloat := OD_chargepay.FieldByName('PENYA2').AsFloat;
      OD_chargepay.FieldByName('ITOG').AsFloat := OD_chargepay.FieldByName('SUMMA2').AsFloat + OD_chargepay.FieldByName('PENYA2').AsFloat;
      OD_chargepay.Post;
    end;
    OD_chargepay.Next;
  end;
  OD_chargepay.EnableControls;
end;

procedure TForm_get_pay_nal.Action;
begin
  OD_usl_chk.Active := false;
  OD_usl_chk.SetVariable('OPER', OD_c_kwtp_temp.FieldByName('oper').AsString);
  OD_usl_chk.Active := true;

  if OD_c_kwtp_temp.FieldByName('oper').AsString = '' then
  begin
    // ����� �� ����
    count;
    // cxSumma.SetFocus;
    Windows.SetFocus(cxAmount.Handle);
  end
  else if (OD_usl_chk.FieldByName('iscounter').AsInteger = 0) then
  begin
    // �������� �������� (�������� 01)
    // ������������ ����� ������
    reLoadDeb;

    if FF('Form_get_pay_dolg', 1) = 0 then
      Application.CreateForm(TForm_get_pay_dolg, Form_get_pay_dolg);
    Form_get_pay_dolg.ShowModal;
    // ����� �� ����
    count;
    Windows.SetFocus(cxAmount.Handle);
  end
  else
  begin
    // �������� �� ����������
    if FF('Form_get_pay_dolg', 1) = 0 then
      Application.CreateForm(TForm_get_cnt_sch, Form_get_cnt_sch);
    Form_get_cnt_sch.Label5.Caption := OD_usl_chk.FieldByName('naim').AsString;
    Form_get_cnt_sch.usl_ := OD_usl_chk.FieldByName('fk_usl_chk').AsString;
    // ������������ �� ��������� �������� ��� ����� ������?
    if OD_usl_chk.FieldByName('iscounter').AsInteger = 1 then
    begin
      Form_get_cnt_sch.Caption := '��������� ��������';
      Form_get_cnt_sch.cxMeter.Text := FloatToStr(DataModule1.OraclePackage1.CallFloatFunction('scott.c_charges.gen_charges_sch', [cxLsk.Text, OD_usl_chk.FieldByName('fk_usl_chk').AsString, 0, null]));
      Form_get_cnt_sch.cnt_sch0_ := DataModule1.OraclePackage1.CallFloatFunction('scott.c_charges.gen_charges_sch', [cxLsk.Text, OD_usl_chk.FieldByName('fk_usl_chk').AsString, 0, null]);
    end
    else
    begin
      Form_get_cnt_sch.Caption := '����� ������';
    end;
    Form_get_cnt_sch.ShowModal
  end;
end;

procedure TForm_get_pay_nal.count;
var
  i: Double;
begin
  // ����� �� ����
  i := 0;
  if not (OD_c_kwtp_temp.State in [dsBrowse]) then
    OD_c_kwtp_temp.Post;

  OD_c_kwtp_temp.First;
  while not OD_c_kwtp_temp.eof do
  begin
    i := i + OD_c_kwtp_temp.FieldByName('summa').AsFloat + OD_c_kwtp_temp.FieldByName('penya').AsFloat;
    cxAmount.Text := FloatToStr(i);
    OD_c_kwtp_temp.Next
  end;
end;

procedure TForm_get_pay_nal.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_pay_nal.Button1Click(Sender: TObject);
var
  i, l_par, c_kwtp_id_, l_flag, l_cnt: Integer;
  summRemain, summCheck, summGet: Double;
begin
  if (StrToFloat(cxSumma.Text) - StrToFloat(cxAmount.Text) < 0) then
  begin
    msg2('�� ������� ����� ��� ������, ������', '��������!', MB_OK + MB_ICONSTOP);
    Exit;
  end;
  if (StrToFloat(cxAmount.Text) = 0) then
  begin
    msg2('����� ��������� = 0, ������', '��������!', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  Button1.Enabled := false;
  if not (OD_c_kwtp_temp.State in [dsBrowse]) then
    OD_c_kwtp_temp.Post;

  if not (OD_chargepay.State in [dsBrowse]) then
    OD_chargepay.Post;
  if not (OD_c_kwtp_temp.State in [dsBrowse]) then
    OD_c_kwtp_temp.Post;

  // ������������� ���������� ����� ����������, �������� ���� ����������
  setNkom(cxLsk.Text);

  if getDoublePar(Form_main.paramList, 'RECEIPT_TP') = 1 then
  begin
    // ��� - �������� ������
    c_kwtp_id_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.C_GET_PAY.get_money_nal', [cxLsk.Text]);
    // �������� ��������
    with OD_c_kwtp do
    begin
      SetVariable('id', c_kwtp_id_);
      Active := false;
      Active := true;
    end;
  end
  else
  begin
    // ����� - �������� ������ � �������� ��������� ������������� ������� �� ���� �� (��������, ���, ���.)
    try
      OD_get_money_nal2.Active := false;
      OD_get_money_nal2.Active := true;
    except
      on E: Exception do
      begin
        ShowMessage('Exception class name: ' + E.ClassName + '' + '������: ' + E.Message);
        ShowMessage('������ �� ����� ����!');
        logText('������ � ��! ����� ����������!');
        logText('������:' + E.ClassName);
        logText(E.Message);
        // �������� ����������
        OD_get_money_nal2.Session.Rollback;
        logText('����� ���������� ����������!');
        Exit;
      end;
    end;

    // ��������� ������������ �������� ����� ��������� � c_kwtp_mg � �������� �� �������
    summCheck := 0;
    summRemain := 0;
    if cxSumma.Text <> '' then
      summGet := StrToFloat(cxSumma.Text);
    if cxRemain.Text <> '' then
      summRemain := StrToFloat(cxRemain.Text);

    with OD_get_money_nal2 do
    begin
      First;
      while not eof do
      begin
        summCheck := summCheck + FieldByName('SUMM_ITG').AsFloat;
        Next;
      end;
    end;

    if not isEqual(summCheck, summGet - summRemain, 0.01) then
    begin
      Application.MessageBox('����� ����������� ������������, ������!' + #13#10, '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
      OD_get_money_nal2.Session.Rollback;
    end;

    // �������� ��������
    with OD_c_kwtp do
    begin
      // ����� �� ������ ������ KWTP_ID �������
      SetVariable('id', OD_get_money_nal2.FieldByName('C_KWTP_ID').AsInteger);
      Active := false;
      Active := true;
    end;
  end;

  /// //////////////////////////////////////////////////
  // ����������� � ������ ����
  // ��������! � �������� ���� �������� ������������ ���� �� c_kwtp_mg
  // ������� ���-�� �������� ��� ������ ������ �� ������ ���� ������ 1
  logText('������ ����������� ������');
  if (Form_main.have_cash = 1) or (Form_main.have_cash = 2) then
  begin
    logText('����� print_receipt: oper=' + OD_oper.FieldByName('oper').AsString + ', cash_oper_tp=' + OD_oper.FieldByName('cash_oper_tp').AsString + ' cash_num=' + OD_c_kwtp.FieldByName('cash_num').AsString);

    l_flag := print_receipt(StrToFloat(cxSumma.Text), OD_c_kwtp.FieldByName('cash_num').AsInteger, OD_oper.FieldByName('cash_oper_tp').AsInteger);
  end
  else
    l_flag := 0;
  /// //////////////////////////////////////////////////

  Button1.Enabled := true;
  if l_flag = 0 then
  begin
    // �������
    DataModule1.OraclePackage1.Session.Commit;
    logText('��������� ����������� ������ - �������');
  end
  else
  begin
    // ������
    logText('��������� ����������� ������ - ������!');
    logText('��������� ����������� ������ - ������ ������');
    DataModule1.OraclePackage1.Session.Rollback;
    logText('��������� ����������� ������ - ��������� ������');
    Application.MessageBox('������ ��� ������� ����������� �������� ���!', '��������!', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    Exit;
  end;

  if getDoublePar(Form_main.paramList, 'RECEIPT_TP') = 1 then
  begin
    // ��� - ���������� ���� �� ��������
    if Form_main.have_cash <> 1 then
    begin
      if FF('Form_plat_doc', 1) = 0 then
        Application.CreateForm(TForm_plat_doc, Form_plat_doc);
      with Form_plat_doc do
      begin

        frxDBc_kwtp_chk.DataSource := DS_c_kwtp;
        frxDBc_kwtp_mg_chk.DataSource := DS_c_kwtp_mg;

        // ���� ������������ ����������� ���� ��������� ��������� - ������������ ���
        // ���

        frxReport1.Preview := frxPreview1;
        frxReport1.LoadFromFile(Form_main.exepath_ + '\paydoc.fr3', true);
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
  cxSumma.Text := '0';
  cxRemain.Text := '0';
  cxLsk.Text := '';
  cxAmount.Text := '0';
  cxGrid2.Visible := false;
  Button1.Enabled := true;
  Windows.SetFocus(cxLsk.Handle);
end;

// ������ ���� Result :0-�������, 1-������
// client_sum: �����, ���������� �� �������

function TForm_get_pay_nal.print_receipt(client_sum: Double; p_cashNum: Integer; p_cash_oper_tp: Integer): Integer;
var
  // ����� ���
  mode: Integer;
  F: TextFile;
  pad1, pad2, path, oldLsk, eQres, check, strPrint: string;
  retry, eQsuccess: Boolean;
  inn, strDt: string;
  ECR: OleVariant;
begin
  logText('������ ����������� ����');

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

  if getDoublePar(Form_main.paramList, 'CHECK_CASH_CORRECTNESS') = 1 then
  begin
    // ��� - �������� ������������ ������������� �����������
    logText('���: �������� ������������ ������������� �����������');
    retry := true;
    while retry do
    begin
      retry := false;
      ECR.GetECRStatus;
      // ���� �������� ��� ���, �� ��������� �� ������������ �������������
      if (ECR.inn <> inn) then
      begin
        logText('���: ��������� ����������������� ���������� �����������!');
        case Application.MessageBox('��������� ����������������� ���������� �����������!', '��������!', MB_ABORTRETRYIGNORE + MB_ICONSTOP) of
          IDABORT:
            begin
            // ����� �� ���������
              Result := 1;
              logText('���: ��������� ����������� ���� - ������� ������!');
              Exit;
            end;
          IDRETRY:
            begin
            // ��������� �������� ���
              ECR.GetECRStatus;
              if ECR.inn <> inn then
              begin
                retry := true;
                logText('���: ������:��������� ����������������� ���������� �����������!');
              end
              else
              begin
                retry := false;
                logText('���: ������:��������� ��������������� ���������� �����������!');
              end;
            end;
          IDIGNORE:
            begin
            // ����������� ��� �� ������� ���
              logText('���: ������:��������� ����������������� ���������� ����������� - ���������������!');
              retry := false;
            end;
        end;
      end;
    end;
  end;

  if open_port_ecr(ECR) <> 0 then
  begin
    logText('���: �������� ����� - ������!');
    retry := true;
    while retry do
    begin
      // ������, �������� �������� ���������� �����������
      logText('���: �������� �������� ���������� �����������, ������ ���� ����� �� ��������. ���������� ��� ������ ����?');
      case Application.MessageBox('�������� �������� ���������� �����������, ������ ���� ����� �� ��������. ���������� ��� ������ ����?', '��������!', MB_RETRYCANCEL + MB_ICONSTOP) of
        IDCANCEL:
          begin
          // ����� �� ���������
            logText('���: �������� �������� ���������� �����������, ������ ���� ����� �� �������� - ����� ��� ������ ����');
            Result := 1;
            Exit;
          end;
        IDRETRY:
          begin
            logText('�������� �������� ���������� �����������, ������ ���� ����� �� �������� - ������ �������� ���');
          // ��������� �������� ���
            if open_port_ecr(ECR) <> 0 then
            begin
              logText('���: ��������� �������� ����� - ������!');
              retry := true
            end
            else
            begin
              logText('���: ��������� �������� ����� - �������!');
              retry := false;
            end
          end;
      end;
    end;
  end;

  if getDoublePar(Form_main.paramList, 'RECEIPT_TP') = 1 then
  begin
    logText('��� ������� �1');
    /// ////////////////////////////////////////////////////////
    // ��� ��� ���
    // ����������� ����������� ���� �� �������� � �������
    /// ////////////////////////////////////////////////////////
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
      if Form_main.have_cash = 1 then
      begin
        // �������������?
        setup_ecr('                                                                          ' + '                                                                          ' + '                                                                          ', ECR);
      end;
      // ������� ����
      if open_port_ecr(ECR) <> 0 then
      begin
        // ������
        Result := 1;
        logText('���: ����������� ���� - ������ ��� �������� ����� ���!');
      end
      else
      begin
        // ���� ������
        // ������ ���������
        print_header_ecr('', 1, 1, 0, F, ECR);
        print_header_ecr('     �  �  �  �  �  �  �  �   �  �  �', 1, 1, 0, F, ECR);
        print_header_ecr('', 1, 1, 0, F, ECR);

        // ��������� �����
        mode := check_mode(ECR);
        if (Form_main.have_cash <> 2) or ((Form_main.have_cash = 2) and (mode = 2) or (mode = 3)) then
        // ���� ���=2 �� ��������� ������
        begin
          // ������� ���
          if open_reg(ECR) <> 0 then
          begin
            // ������
            Result := 1;
            logText('���: ����������� ���� - ������ ��� �������� ����!');
          end
          else
          begin
            // ��������� ��������� ���������
            strDt := FormatDateTime('dd/mm/yy', Now());
            print_string_ecr2('-------------------------------------', 1, 0, F, ECR);
            print_string_ecr2('| ������ | ���������  | ����������� |', 1, 0, F, ECR);
            print_string_ecr2('|        | ���������  | �����       |', 1, 0, F, ECR);
            print_string_ecr2('|        | �� ' + strDt + '|             |', 1, 0, F, ECR);
            print_string_ecr2('-------------------------------------', 1, 0, F, ECR);
            while not OD_meter_vol.eof do
            begin
              pad1 := calc_pads2(11, OD_meter_vol.FieldByName('name').AsString);
              pad2 := calc_pads2(18, pad1 + OD_meter_vol.FieldByName('last_num').AsString);
              print_string_ecr2('|' + OD_meter_vol.FieldByName('name').AsString + pad1 + OD_meter_vol.FieldByName('last_num').AsString + pad2 + OD_meter_vol.FieldByName('vol').AsString, 1, 0, F, ECR);
              OD_meter_vol.Next;
            end;
            print_string_ecr2('------------------------------------', 1, 0, F, ECR);

            // ����� ����� � ������ ���������
            print_string_ecr2('��� ����������� �����������:' + OD_c_kwtp.FieldByName('name_org2').AsString + ' ��� ' + OD_c_kwtp.FieldByName('inn2').AsString + ', ���.' + OD_c_kwtp.FieldByName('phone2').AsString, 1, 0, F, ECR);
            print_string_ecr2('����� �����:' + OD_c_kwtp.FieldByName('adr_cash').AsString + ', ���.' + OD_c_kwtp.FieldByName('phone2').AsString, 1, 0, F, ECR);
            print_string_ecr2('������:' + OD_c_kwtp.FieldByName('fio_kass').AsString, 1, 0, F, ECR);
            print_string_ecr2('---------------------------------------', 1, 0, F, ECR);
            print_string_ecr2('������� ���� � ' + OD_c_kwtp.FieldByName('lsk').AsString, 1, 0, F, ECR);
            print_string_ecr2('�����:' + OD_c_kwtp.FieldByName('adr').AsString, 1, 0, F, ECR);
            logText('���.����:' + OD_c_kwtp.FieldByName('lsk').AsString);
            OD_kwtp_day.First;
            print_string_ecr2('����-� ��������   ������    ������(���.)', 1, 0, F, ECR);

            // ���������� �������� �� �������
            while not OD_kwtp_day.eof do
            begin
              reg_ecr_ext(OD_kwtp_day.FieldByName('name').AsString, OD_kwtp_day.FieldByName('summa').AsFloat, 1, OD_kwtp_day.FieldByName('dep').AsInteger, F, ECR);
              logText('�����:' + FloatToStr(OD_kwtp_day.FieldByName('summa').AsFloat));
              OD_kwtp_day.Next;
            end;
            Sleep(500);
          end;
          // �������� ����
          // ��������! � �������� ���� �������� ������������ ���� �� c_kwtp_mg
          // ������� ���-�� �������� ��� ������ ������ �� ������ ���� ������ 1
          // (���-�� ������� � c_kwtp_mg = 1!!!)
          if close_reg_summ_ecr_ext(client_sum, ECR, OD_oper.FieldByName('cash_oper_tp').AsInteger, F) <> 0 then
          begin
            // ������, ���������� ������������ ���
            logText('���: ����������� ���� - ������!');
            if Application.MessageBox('���������� ��� �� ������ �����������, ������������ ���?', '��������!', MB_YESNO + MB_ICONQUESTION) = IDYES then
            begin
              logText('���: ����������� ���� - ������� ������������� ����!');
              annulment(ECR);
            end;

            Result := 1;
            close_port_ecr(ECR);
          end
          else
          begin
            // �������
            Result := 0;
            close_port_ecr(ECR);
            logText('���: ����������� ���� - �������');
          end;
        end
        else
        begin
          // ������������ ����� ���
          Result := 1;
          logText('���: ��� ��������� � ������������ ������:' + check_mode2(ECR));
          msg2('������, ��� ��������� � ������������ ������:' + check_mode2(ECR), '��������!', MB_OK + MB_ICONERROR);
          close_port_ecr(ECR);
        end;
      end;

    except
      // ������� � ���������� ������������ ��� � ���� ������
      on E: Exception do
      begin
        Result := 1;
        ShowMessage('Exception class name: ' + E.ClassName + '' + '������: ' + E.Message);
        ShowMessage('������ �� ����� ����!');
        logText('������ � ���������� ������������ ��� � ��! ����� ����������!');
        // �������� ����������
        DataModule1.OraclePackage1.Session.Rollback;
        // ������� ������ � �� (�� ����� ���� �������� � Java)
        DataModule1.OraclePackage1.CallProcedure('scott.C_GET_PAY.remove_pay', [OD_c_kwtp.FieldByName('id').AsInteger]);
        DataModule1.OraclePackage1.Session.Commit;
        logText('����� ���������� ����������!');
      end;
    end
  end
  else if getDoublePar(Form_main.paramList, 'RECEIPT_TP') = 0 then
  begin
    logText('��� ������� �2');
    /// ////////////////////////////////////////////////////////
    // ��� ��� �����
    /// ////////////////////////////////////////////////////////
    if (Form_main.have_cash = 1) or (Form_main.have_cash = 2) then
    begin
      try
        // �����
        if Form_main.have_cash = 1 then
        begin
          setup_ecr('                                                                          ' + '                                                                          ' + '                                                                          ', ECR);
        end;
        // ������� ����
        if open_port_ecr(ECR) <> 0 then
        begin
          logText('���: ���� �� ������');
          Result := 1;
        end
        else
        begin
          logText('���: ���� ������');
          { 24.07.20
            ��������� ���:
            [Application]
            # SID=078065
            SID=06F07206306C
            User=042055047048034
            Pass=074065073074034
            Have_cash=2
            ServerIp=192.168.1.102
            have_eq=1
          }
          // ���� ������
          // ��������� �����
          mode := check_mode(ECR);
          if (Form_main.have_cash <> 2) or ((Form_main.have_cash = 2) and (mode = 2) or (mode = 3)) then
          // ���� ���=2 �� ��������� ������
          begin
            /// /////////////////////////////////////////////////
            // ���������                   //
            /// /////////////////////////////////////////////////
            eQsuccess := false;
            // ����������� �������� � ����������, ���� ���������
            logText('���������: p_cash_oper_tp=' + IntToStr(p_cash_oper_tp) + ', Form_Main.have_eq=' + IntToStr(Form_main.have_eq));
            if (p_cash_oper_tp = 2) and (Form_main.have_eq = 1) then
            begin
              logText('���������');
              // ������� ������, ����� � ��������
              Form_main.eqECR.Sparam('Amount', FloatToStr(client_sum * 100));
              eQres := Form_main.eqECR.NFun(4000);
              if eQres = '0' then
              begin
                logText('���������: �����:' + FloatToStr(client_sum));
                // �������
                eQsuccess := true;
                // ��������� � "����������������" ��������� ���������� ����������
                Form_main.eqECR.NFun(6003);

                check := Form_main.eqECR.GParamString('Cheque');

                // ������ ���� �� �����������, ��������� ��������� �� ������ � �������
                printByLineWithCut(true, check, ECR, 25);

                print_by_line('', ECR);
                print_by_line('', ECR);
                print_by_line('', ECR);
                print_by_line('', ECR);

                // ������������� ������� ����� � ���.����, �� ������ ������ ������ � �� �� �������
                // - ���� ����� ������ � ���, �� ���� ��������� �������. ������ ������������ � ����
                print_string_ecr2('�����:' + OD_c_kwtp.FieldByName('adr').AsString, 1, 0, F, ECR);
                oldLsk := '';
                OD_get_money_nal2.First;
                while not OD_get_money_nal2.eof do
                begin
                  if oldLsk <> OD_get_money_nal2.FieldByName('lsk').AsString then
                  begin
                    oldLsk := OD_get_money_nal2.FieldByName('lsk').AsString;
                    strPrint := '��:' + OD_get_money_nal2.FieldByName('lsk').AsString + ', ' + OD_get_money_nal2.FieldByName('dopl').AsString + ', ' + '�����: ' + FloatToStr(OD_get_money_nal2.FieldByName('summ_itg').AsFloat);
                    logText('���������: ' + strPrint);
                    // print_string_ecr2(strPrint, 1, 0, F, ECR);
                  end;
                  OD_get_money_nal2.Next;
                end;

                // printByLineWithCut(true, '...', ECR, 1);
                logText('���������: ������=6003 (��������������)');
              end
              else
              begin
                // ������
                logText('���������: ������');
                Result := 1;
                eQsuccess := false;
                close_port_ecr(ECR);
                if eQres = '113' then
                begin
                  Application.MessageBox('�������� ���������� ���������������� sbrf.dll (regsvr32 ���� ��������� � c:\Sc552\)' + #13#10, '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
                end;
              end;

            end
            else
            begin
              logText('��������');
              eQsuccess := true;
            end;

            if eQsuccess = true then
            begin
              logText('���: ������ ����');
              // ������ ���������
              print_header_ecr('', 1, 1, 0, F, ECR);
              print_header_ecr('     �  �  �  �  �  �  �  �   �  �  �', 1, 1, 0, F, ECR);
              print_header_ecr('', 1, 1, 0, F, ECR);
              // ������� ���
              if open_reg(ECR) <> 0 then
              begin
                logText('���: ��� �� ������! ������!');
                Result := 1;
              end
              else
              begin
                print_string_ecr2('��� ����������� �����������:' + OD_c_kwtp.FieldByName('name_org2').AsString + ' ��� ' + OD_c_kwtp.FieldByName('inn2').AsString + ', ���.' + OD_c_kwtp.FieldByName('phone2').AsString, 1, 0, F, ECR);
                print_string_ecr2('�������� �����:' + OD_c_kwtp.FieldByName('name_org').AsString, 1, 0, F, ECR);
                print_string_ecr2('����� �����:' + OD_c_kwtp.FieldByName('adr_org').AsString + ', ���.' + OD_c_kwtp.FieldByName('phone2').AsString, 1, 0, F, ECR);
                print_string_ecr2('������:' + OD_c_kwtp.FieldByName('fio_kass').AsString, 1, 0, F, ECR);
                print_string_ecr2('����� �' + OD_c_kwtp.FieldByName('dep').AsString, 1, 0, F, ECR);
                print_string_ecr2('---------------------------------------', 1, 0, F, ECR);
                print_string_ecr2('�.�.�.:' + OD_c_kwtp.FieldByName('fio_owner').AsString, 1, 0, F, ECR);
                print_string_ecr2('�����:' + OD_c_kwtp.FieldByName('adr').AsString, 1, 0, F, ECR);

                OD_get_money_nal2.First;
                print_string_ecr2('����-� ��������   ������    ������(���.)', 1, 0, F, ECR);

                oldLsk := '';
                while not OD_get_money_nal2.eof do
                begin
                  if oldLsk <> OD_get_money_nal2.FieldByName('lsk').AsString then
                  begin
                    oldLsk := OD_get_money_nal2.FieldByName('lsk').AsString;
                    logText('���.����:' + OD_get_money_nal2.FieldByName('lsk').AsString);
                    print_string_ecr2('���.��.' + OD_get_money_nal2.FieldByName('lsk_tp').AsString + ' � ' + OD_get_money_nal2.FieldByName('lsk').AsString, 1, 0, F, ECR);
                  end;
                  logText('������ ������:' + OD_get_money_nal2.FieldByName('naim').AsString + OD_get_money_nal2.FieldByName('naim').AsString + OD_get_money_nal2.FieldByName('dopl').AsString);
                  logText('�����:' + FloatToStr(OD_get_money_nal2.FieldByName('summ_itg').AsFloat));
                  reg_ecr(OD_get_money_nal2.FieldByName('naim').AsString + calc_pads(OD_get_money_nal2.FieldByName('naim').AsString) + OD_get_money_nal2.FieldByName('dopl').AsString, OD_get_money_nal2.FieldByName('summ_itg').AsFloat, 1, OD_c_kwtp.FieldByName('dep').AsInteger, F, ECR);
                  OD_get_money_nal2.Next;
                end;
                logText('���: ������ ���� - �������!');
                // ������� ���
                if close_reg_summ_ecr(client_sum, ECR, OD_oper.FieldByName('cash_oper_tp').AsInteger, F) <> 0 then
                begin
                  logText('���: �������� ���� - ������!');
                  // ������, ���������� ������������ ���
                  if Application.MessageBox('���������� ��� �� ������ �����������, ������������ ���?', '��������!', MB_YESNO + MB_ICONQUESTION) = IDYES then
                  begin
                    annulment(ECR);
                    logText('���: ��� �����������!');
                  end;

                  Result := 1;
                  close_port_ecr(ECR);
                  if (p_cash_oper_tp = 2) and (Form_main.have_eq = 1) then
                  begin
                    // ��������� � "����������" ��������� ���������� ����������
                    Form_main.eqECR.NFun(6004);
                    logText('���������: ������=6004 (��������)');
                  end;
                end
                else
                begin
                  logText('���: �������� ���� - �������!');
                  // �������
                  Result := 0;
                  close_port_ecr(ECR);

                  if (p_cash_oper_tp = 2) and (Form_main.have_eq = 1) then
                  begin
                    // ��������� � "��������������" ��������� ���������� ����������
                    Form_main.eqECR.NFun(6001);
                    logText('���������: ������=6001 (������������)');
                  end;

                end;
              end;
            end;
          end
          else
          begin
            // ������������ ����� ���
            Result := 1;
            logText('���: ' + '��� ��������� � ������������ ������:' + check_mode2(ECR) + ' - ������!');
            msg2('������, ��� ��������� � ������������ ������:' + check_mode2(ECR), '��������!', MB_OK + MB_ICONERROR);
            close_port_ecr(ECR);
          end;
        end;
      except
        // ������� � ���������� ������������ ��� � ���� ������
        on E: Exception do
        begin
          logText('������ � ���������� ������������ ��� � ���� ������, ������ �� ����� �����');
          logText('������ ������ ������� � ��');
          Result := 1;
          ShowMessage('Exception class name: ' + E.ClassName + '' + '������: ' + E.Message);
          ShowMessage('������ �� ����� ����!');
          // �������� ����������
          DataModule1.OraclePackage1.Session.Rollback;
          // ������� ������ � �� (�� ����� ���� �������� � Java)
          DataModule1.OraclePackage1.CallProcedure('scott.C_GET_PAY.remove_pay', [OD_c_kwtp.FieldByName('id').AsInteger]);
          DataModule1.OraclePackage1.Session.Commit;
          logText('��������� ������ ������� � ��');
        end;
      end;
    end
    else
    begin
      // ��� ������������� ���, ��������� - ��
      Result := 0;
    end;
  end;

  logText('��������� ����������� ����');

end;

procedure TForm_get_pay_nal.FormCreate(Sender: TObject);
begin
  // DecimalSeparator := '.';
  OD_oper.Active := true;
  OD_usl_chk.Active := true;
  cxSumma.Text := '0';
  cxRemain.Text := '0';
  cxAmount.Text := '0';
  OD_c_kwtp_temp.Active := false;
  if FF('Form_list_kart', 0) = 1 then
  begin
    cxLsk.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    setNkom(cxLsk.Text);
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

procedure TForm_get_pay_nal.N1Click(Sender: TObject);
begin
  OD_c_kwtp_temp.Delete;
end;

procedure TForm_get_pay_nal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_F10) then
  begin
    // ������� ����� ������ ������
    invokeSearchAdr;
  end
  else if (Key = vk_F11) then
  begin
    // ������� ����� ������� �� �������������
    invokeFormBill;
  end
  else if (Key = vk_F12) then
  begin
    // ������� ����� ����� ��������� �� ���������
    invokeFormSchHistory;
  end;
end;

// ������� ����� ����� ��������� �� ���������

procedure TForm_get_pay_nal.invokeFormSchHistory;
begin
  if (Edit1.Text <> '') then
  begin
    // ������� ����� ����� ��������� �� ��.
    if FF('Form_sch_history', 1) = 0 then
    begin
      Application.CreateForm(TForm_sch_history, Form_sch_history);
    end;
    Form_sch_history.setKlsk(klsk, cxLsk.Text);
    Form_sch_history.setTp(1);
  end
  else
  begin
    StatusBar1.SimpleText := '���������� ������� ���.���� ��� �����!';
  end;
end;

// ������� ����� ������� �� �������������

procedure TForm_get_pay_nal.invokeFormBill;
begin
  if (Edit1.Text <> '') then
  begin
    if FF('Form_print_bills', 1) = 0 then
    begin
      Application.CreateForm(TForm_print_bills, Form_print_bills);
      // ������� �������������
      Form_print_bills.cxImageComboBox2.ItemIndex := 3;
      // Form_print_bills.tp_:=3;
      // Form_print_bills.selVar();
      Windows.SetFocus(Form_print_bills.Button1.Handle);
    end;
  end
  else
  begin
    StatusBar1.SimpleText := '���������� ������� ���.���� ��� �����!';
  end;
end;

// ����� ������

procedure TForm_get_pay_nal.invokeSearchAdr;
var
  l_cnt: Integer;
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  if Form_find_adr.ShowModal = mrOk then
  begin
    cxLsk.Text := Form_main.Lsk_;
    { Edit1.Text :=
      DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.GET_ADR_BY_LSK',
      [Form_Main.Lsk_]); }
    OD_Kart.SetVariable('lsk', Form_main.Lsk_);
    OD_Kart.Active := false;
    OD_Kart.Active := true;
    Edit1.Text := OD_Kart.FieldByName('adr').AsString;
    klsk := OD_Kart.FieldByName('k_lsk_id').AsInteger;

    { if getDoublePar(Form_main.paramList, 'JAVA_CHARGE') <> 1 then
      begin
      // ��������� ���������� � PL/SQL, ���� ��� Java ������ ����������
      // ����� ��� Java ����� ������������ �� ������� ����������
      l_cnt :=
      DataModule1.OraclePackage1.CallIntegerFunction('scott.C_CHARGES.gen_charges',
      [Form_Main.Lsk_, null, null,
      null, 1, 0]);
      end;
    }
    setNkom(Form_main.Lsk_);
    clearPay;
    // ������� ������ �� �������
  end;
end;

procedure TForm_get_pay_nal.ToolButton1Click(Sender: TObject);
begin
  // ������� ����� ����� ��������� �� ���������
  invokeFormSchHistory;
end;

procedure TForm_get_pay_nal.ToolButton2Click(Sender: TObject);
begin
  // ������� ����� ������� �� �������������
  invokeFormBill;
end;

procedure TForm_get_pay_nal.ToolButton3Click(Sender: TObject);
begin
  invokeSearchAdr;
end;

procedure TForm_get_pay_nal.cxLskDblClick(Sender: TObject);
begin
  invokeSearchAdr;
end;

procedure TForm_get_pay_nal.cxLskKeyPress(Sender: TObject; var Key: Char);
var
  l_cnt: Integer;
begin
  if (Key = #13) and (cxLsk.Text <> '') then
  begin
    cxLsk.Text := LeftPad(cxLsk.Text, 8, '0');
    cxGrid2.Visible := true;
    cxGrid2.SetFocus;
    cxGridDBTableView1OPER.Focused := true;

    OD_Kart.SetVariable('lsk', cxLsk.Text);
    OD_Kart.Active := false;
    OD_Kart.Active := true;
    Edit1.Text := OD_Kart.FieldByName('adr').AsString;
    if OD_Kart.FieldByName('lsk').AsString <> '' then
    begin
      StatusBar1.SimpleText := '';
      klsk := OD_Kart.FieldByName('k_lsk_id').AsInteger;
      setNkom(cxLsk.Text);
      clearPay;
    end
    else
    begin
      StatusBar1.SimpleText := '������� ���� �� ������!';
    end;
  end;
end;

procedure TForm_get_pay_nal.cxAmountKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
  if Key = #13 then
    // cxSumma.SetFocus;
    Windows.SetFocus(cxSumma.Handle);
end;

procedure TForm_get_pay_nal.cxSummaKeyPress(Sender: TObject; var Key: Char);
var
  summGet, summItg, summa_: Double;
  err_: Integer;
begin
  if RetKey(Key) then
    Key := '.';

  if Key = #13 then
  begin
    if cxSumma.Text = '' then
      summGet := 0
    else
      summGet := StrToFloat(cxSumma.Text);

    if cxAmount.Text = '' then
      summItg := 0
    else
      summItg := StrToFloat(cxAmount.Text);

    if (summGet - summItg < 0) then
    begin
      msg2('�� ������� ����� ��� ������, ��������� ����', '��������!', MB_OK + MB_ICONSTOP);
      // cxSumma.SetFocus;
      Windows.SetFocus(cxSumma.Handle);
      Exit;
    end;

    if (summItg = 0) then
    begin
      msg2('����� ��������� = 0, ������', '��������!', MB_OK + MB_ICONSTOP);
      Exit;
    end;

    // Button1.SetFocus;
    Windows.SetFocus(Button1.Handle);
    summa_ := summGet - summItg;

    if summa_ > 0 then
    begin
      if msg3('������������ ������� ' + FloatToStr(summa_) + ' �� ������� �����?', '��������!', MB_YESNO + MB_ICONQUESTION) = ID_YES then
      begin
        if not (OD_chargepay.State in [dsBrowse]) then
          OD_chargepay.Post;

        distPay(summa_, false, false, true, true);
        summa_ := 0;
        // ����������� ����
        count;
      end;
    end;

    cxRemain.Text := FloatToStr(summa_);
    // Button1.SetFocus;
    Windows.SetFocus(Button1.Handle);
  end;
end;

procedure TForm_get_pay_nal.cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
  begin
    if ((Shift = [ssCtrl]) and (Key = VK_Return)) then
    begin
      count;
      Windows.SetFocus(cxSumma.Handle);
    end
    else if (Key = VK_Return) and (Controller.FocusedColumn = cxGridDBTableView1PENYA) then
    begin
      Action;
    end;
    { else if (Key = VK_Return) and (Controller.FocusedColumn = cxGridDBTableView1CNT_SCH)
      then
      begin
      count;
      Windows.SetFocus(cxSumma.Handle);
      end; }
  end;
end;

end.

