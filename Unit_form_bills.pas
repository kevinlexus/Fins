unit Unit_form_bills;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, frxClass,
  frxDBSet, StrUtils, ExtCtrls, frxBarcode, frxCross, wwdbedit,
  wwdblook, DBGridEh, frxDMPExport, Oracle, frxExportXLS, frxExportRTF,
  Wwdotdot, Wwdbcomb, syQRcode,
  cxControls, cxLookAndFeelPainters, cxContainer,
  cxEdit,

  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox,

  cxImageComboBox,
  cxCheckComboBox,

  cxCheckBox, DBCtrls, cxGraphics, cxLookAndFeels, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses,
  cxPropertiesStore, frxExportPDF, ufDataModuleBill, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxDBEdit,
  ComCtrls, dxTaskbarProgress, cxProgressBar, dxStatusBar;

type
  TForm_print_bills = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    CheckBox1: TCheckBox;
    Label9: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    frxReport1: TfrxReport;
    CheckBox2: TCheckBox;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Label12: TLabel;
    GroupBox4: TGroupBox;
    filePath: TEdit;
    chk1: TCheckBox;
    Label8: TLabel;
    cbb1: TcxLookupComboBox;
    CheckBox5: TCheckBox;
    Label13: TLabel;
    cxImageComboBox1: TcxImageComboBox;
    cxCheckComboBox1: TcxCheckComboBox;
    Label14: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxprprtstr1: TcxPropertiesStore;
    CheckBox6: TCheckBox;
    frxPDFExport1: TfrxPDFExport;
    Edit3: TEdit;
    CheckBox7: TCheckBox;
    pnl1: TPanel;
    Label15: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cx3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxImageComboBox2: TcxImageComboBox;
    fltMgFrom: TDBLookupComboBoxEh;
    fltMgTo: TDBLookupComboBoxEh;
    GroupBox5: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    lkpMgFrom: TcxLookupComboBox;
    lkpMgTo: TcxLookupComboBox;
    chkExportFlow: TCheckBox;
    dxStatusBar1: TdxStatusBar;
    dxStatusBar1Container3: TdxStatusBarContainerControl;
    cxProgressBar1: TcxProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboboxEh2CloseUp(Sender: TObject; Accept: Boolean);
    procedure DBLookupComboboxEh3CloseUp(Sender: TObject; Accept: Boolean);
    procedure DBLookupComboboxEh2Enter(Sender: TObject);
    procedure DBLookupComboboxEh3Enter(Sender: TObject);
    procedure wwDBEdit2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboboxEh4CloseUp(Sender: TObject; Accept: Boolean);
    procedure wwDBEdit1Change(Sender: TObject);
    procedure wwDBEdit2Change(Sender: TObject);
    procedure set_lsk(var_: integer; lsk1_: string);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable, FillTable:
      TDataSet; modified: Boolean);
    procedure set_obj;
    //procedure OD_sel_objAfterOpen(DataSet: TDataSet);
    procedure sel_ls_cnt;
    procedure Edit1Change(Sender: TObject);
    procedure lkpMgToCloseUp(Sender: TObject; Accept: Boolean);
    procedure sel_lsk;
    procedure DBLookupComboboxEh7CloseUp(Sender: TObject; Accept: Boolean);
    procedure cbb1PropertiesCloseUp(Sender: TObject);
    procedure lkpMgFromCloseUp(Sender: TObject; Accept: Boolean);
    //procedure OD_ls_cntBeforeOpen(DataSet: TDataSet);
    //procedure OD_ls_cntAfterOpen(DataSet: TDataSet);
    procedure compound_report(p_var: Integer);
    procedure old_report(pen_last_month_: Integer);
    procedure fillUk();
    function getStrUk(): string;
    procedure selAllUk();
    procedure deSelAllUk();
    procedure kart_pr_report;
    procedure chargePayReport;
    procedure report_penya;
    procedure setMainDataset;
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure cxLookupComboBox3PropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBox4PropertiesPopup(Sender: TObject);
    procedure cxImageComboBox2PropertiesCloseUp(Sender: TObject);
    procedure cxImageComboBox2PropertiesChange(Sender: TObject);
    procedure selVar();
    procedure prepControls();
    procedure lkpMgFromPropertiesCloseUp(Sender: TObject);
    procedure lkpMgToPropertiesCloseUp(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure query_OD_ls_cnt(p_mg, p_reu: string; p_cnt: Integer);
  private
    cnt_sch_: Integer;
    tp_: Integer;
    filePathStr: string;
  public
    sel_obj_: Integer;
  end;

var
  Form_print_bills: TForm_print_bills;

implementation

uses
  Unit_status, Unit_Mainform, DM_module1, Unit_list_kart, Utils,
  Unit_get_pay_nal, Unit2, ufDataModuleBill2;
{$R *.dfm}

procedure TForm_print_bills.FormClose(Sender: TObject; var Action:
  TCloseAction);
begin
  cxprprtstr1.StoreTo(True);
  Action := caFree;
end;

procedure TForm_print_bills.Button1Click(Sender: TObject);
var
  pen_last_month_: Integer;
begin
  cxProgressBar1.Position := 10;
  Update;
  // ПОДГОТОВКА датасетов, установка параметров
  wwDBEdit1.Text := RightStr('00000000' + wwDBEdit1.Text, 8);
  wwDBEdit2.Text := RightStr('00000000' + wwDBEdit2.Text, 8);

  if (lkpMgFrom.EditValue =
    null)
    or ((lkpMgTo.EditValue =
    null) and ((tp_ = 2) or (tp_ = 5) or (tp_ = 7) or (tp_ = 9))) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;
  end;

  if (DBLookupComboboxEh2.KeyValue = null) and (sel_obj_ = 1) then
  begin
    ShowMessage('Не выбран адрес для отчета, Отмена');
    Exit;
  end;

  if CheckBox4.Checked = true then
    pen_last_month_ := 0
  else
    pen_last_month_ := 1;

  // подготовку делаем в случае выбора либо 1 л.с. либо 1 квартиры
  // и только не по арх спр.
  if (tp_ <> 2) and (tp_ <> 5) and (tp_ <> 7) and (sel_obj_ = 0)
    and (wwDBEdit1.Text = wwDBEdit2.Text)
    and (CheckBox3.Checked = True) then
  begin
    //по 1 лс.
    DataModule1.OraclePackage1.CallProcedure('scott.GEN.prepare_arch_k_lsk',
      [Form_main.k_lsk_id_, pen_last_month_, 0]);
  end
  else if (tp_ <> 2) and (tp_ <> 5) and (tp_ <> 7) and (tp_ <> 6) and (sel_obj_
    = 1)
    and (DBLookupComboboxEh4.KeyValue <> null)
    and (CheckBox3.Checked = True) then
  begin
    //по 1 квартире
    DataModule1.OraclePackage1.CallProcedure('scott.GEN.prepare_arch_k_lsk',
      [Form_main.k_lsk_id_, pen_last_month_, 0]);
  end;

  // тип отчета

  if (tp_ = 8) then
    // движение по счету
    chargePayReport()
  else if (tp_ = 9) then
    // справка о пене
    report_penya()
  else if (tp_ = 6) then
    // поквартирная карточка
    kart_pr_report()
  else if (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 0) or
    (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 1) or
    (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 2) or
    (tp_ = 2) or (tp_ = 5) or (tp_ = 7) or (tp_ = 1) then
    // старый вариант отчетности или арх.справ или арх.справ-2
    old_report(pen_last_month_)
  else if (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 3) or
    (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 4) then
    // составной счет
    compound_report(DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger)
  else
    Application.MessageBox('Некорректный BILL_TP в таблице spr_services!',
      'Внимание!', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);

  cxProgressBar1.Position := 100;

end;

// движение по счету

procedure TForm_print_bills.chargePayReport;
begin

  setMainDataset;

  DM_Bill.Uni_chargepay.ParamByName('p_mg').AsString := lkpMgFrom.EditValue;
  {  ред.29.12.2020 Внутренние периоды используются в Полыс, в отчет для Кис, не стал добавлять
  if not VarIsNull(fltMgFrom.KeyValue) then
      DM_Bill.Uni_chargepay.ParamByName('p_mg_from').AsString := fltMgFrom.KeyValue
    else
      DM_Bill.Uni_chargepay.ParamByName('p_mg_from').clear;

    if not VarIsNull(fltMgto.KeyValue) then
      DM_Bill.Uni_chargepay.ParamByName('p_mg_to').AsString := fltMgto.KeyValue
    else
      DM_Bill.Uni_chargepay.ParamByName('p_mg_to').clear;
   }
  DM_Bill.Uni_chargepay.Active := false;
  DM_Bill.Uni_chargepay.Active := true;

  frxReport1.LoadFromFile(filePathStr, True);

  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
end;

// справка о пене

procedure TForm_print_bills.report_penya;
begin

  setMainDataset;

  if not VarIsNull(lkpMgFrom.EditValue) then
    DM_Bill.Uni_rep_penya.ParamByName('p_mg_from').AsString :=
      lkpMgFrom.EditValue
  else
    DM_Bill.Uni_rep_penya.ParamByName('p_mg_from').clear;

  if not VarIsNull(lkpMgTo.EditValue) then
    DM_Bill.Uni_rep_penya.ParamByName('p_mg_to').AsString := lkpMgTo.EditValue
  else
    DM_Bill.Uni_rep_penya.ParamByName('p_mg_to').clear;

  DM_Bill.Uni_rep_penya.ParamByName('p_rep_cd').asString := '93';
  DM_Bill.Uni_rep_penya.Active := false;
  DM_Bill.Uni_rep_penya.Active := true;

  frxReport1.LoadFromFile(filePathStr, True);
  frxReport1.Script.Variables['mg1'] :=
    lkpMgFrom.Text;
  frxReport1.Script.Variables['mg2'] :=
    lkpMgTo.Text;

  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
end;

procedure TForm_print_bills.setMainDataset;
begin
  DM_Bill.Uni_cmp_main.Active := False;
  if sel_obj_ = 2 then
  begin
    //только для УК
    //ограничивать диапазон записи для печати счетов
    DM_Bill.Uni_cmp_main.ParamByName('p_firstNum').AsInteger :=
      DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsInteger;
    DM_Bill.Uni_cmp_main.ParamByName('p_lastNum').AsInteger :=
      DM_Bill2.OD_ls_cnt.FieldByName('last_rec').AsInteger;
  end
  else
  begin
    //не ограничивать диапазон записи для печати счетов
    DM_Bill.Uni_cmp_main.ParamByName('p_firstNum').AsInteger :=
      0;
    DM_Bill.Uni_cmp_main.ParamByName('p_lastNum').AsInteger :=
      1000000000;
  end;

  // установить параметры
  DM_Bill.Uni_cmp_main.ParamByName('p_mg').AsString :=
    lkpMgFrom.EditValue;

  // список УК для фильтра
  DM_Bill.Uni_cmp_main.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  DM_Bill.Uni_cmp_main.ParamByName('p_sel_obj').AsInteger :=
    sel_obj_;

  if cbb1.EditValue <> null then
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_reu').AsString := cbb1.EditValue
  else
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_reu').Clear;

  DM_Bill.Uni_cmp_main.ParamByName('p_lsk').AsString := wwDBEdit1.Text;
  DM_Bill.Uni_cmp_main.ParamByName('p_lsk1').AsString := wwDBEdit2.Text;
  if not VarIsNull(DBLookupComboboxEh2.KeyValue) then
    DM_Bill.Uni_cmp_main.ParamByName('p_kul').AsString :=
      DBLookupComboboxEh2.KeyValue
  else
    DM_Bill.Uni_cmp_main.ParamByName('p_kul').clear;

  if not VarIsNull(DBLookupComboboxEh3.KeyValue) then
    DM_Bill.Uni_cmp_main.ParamByName('p_nd').AsString :=
      DM_Bill2.OD_houses.FieldByName('nd_id').AsString
  else
    DM_Bill.Uni_cmp_main.ParamByName('p_nd').Clear;

  if DBLookupComboboxEh4.KeyValue <> null then
  begin
    DM_Bill.Uni_cmp_main.ParamByName('p_kw').AsString :=
      DM_Bill2.OD_kw.FieldByName('kw_id').AsString;
    DM_Bill.Uni_cmp_main.ParamByName('p_klsk_id').AsInteger :=
      DM_Bill2.OD_kw.FieldByName('k_lsk_id').AsInteger;
  end
  else
  begin
    DM_Bill.Uni_cmp_main.ParamByName('p_kw').Clear;
    DM_Bill.Uni_cmp_main.ParamByName('p_klsk_id').Clear;
  end;

  // печатать ли закрытые счета
  if CheckBox2.Checked = true then
  begin
    DM_Bill.Uni_cmp_main.ParamByName('p_is_closed').AsInteger := 1;
  end
  else
  begin
    DM_Bill.Uni_cmp_main.ParamByName('p_is_closed').AsInteger := 0;
  end;

  DM_Bill.Uni_cmp_main.Active := True;

end;

// поквартирная карточка

procedure TForm_print_bills.kart_pr_report;
begin
  // главный датасет
  setMainDataset;

  DM_Bill.Uni_rep1.Active := false;
  DM_Bill.Uni_rep1.Active := true;
  DM_Bill.Uni_rep2.Active := false;
  DM_Bill.Uni_rep2.Active := true;

  frxReport1.LoadFromFile(filePathStr, True);
  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
end;

// новый вариант процедуры, для подготовки экспортов в PDF счетов
// и последующего парсинга Java и отправкой на e-mail пользователям

procedure compound_report_export(p_kul, p_nd, p_kw, p_postcode: Variant;
  p_sel_obj,
  p_show_acc, p_klsk_id: Integer;
  p_lsk1, p_lsk2, p_lkpMgFrom, p_strUk,
  p_uk, p_filePathStr, p_exportPdfPath: string;
  p_print_old, p_export_pdf: Boolean; frxReport1: TfrxReport; frxPDFExport1:
  TfrxPDFExport; p_firstNum, p_lastNum: Integer; p_export_flow: Boolean);
begin
  // главный датасет
  DM_Bill.Uni_cmp_main.Active := false;
  // реквизиты исполнителей
  DM_Bill.Uni_cmp_contractors.Active := false;
  // данные основных и РСО счетов
  DM_Bill.Uni_cmp_detail_primary.Active := False;
  // данные счетов по капремонту
  DM_Bill.Uni_cmp_detail_cap.Active := False;
  // данные по основному типу счета
  DM_Bill.Uni_cmp_detail_main.Active := False;
  // данные начисления по основным счетам и РСО
  DM_Bill.Uni_cmp_funds_primary.Active := False;
  // данные начисления по капремонту
  DM_Bill.Uni_cmp_funds_cap.Active := False;
  // данные начисления по основному типу счета
  DM_Bill.Uni_cmp_funds_main.Active := False;
  // данные начисления по конкретному лиц.счету
  DM_Bill.Uni_cmp_funds_lsk.Active := False;
  // QR код
  DM_Bill.Uni_cmp_qr.Active := False;

  if p_sel_obj = 2 then
  begin
    //только по УК
    //ограничивать диапазон записи для печати счетов
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_firstNum').AsInteger :=
      p_firstNum;
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_lastNum').AsInteger :=
      p_lastNum;
    {    DM_Bill.Uni_cmp_main.Params.ParamByName('p_firstNum').AsInteger :=
          DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsInteger;
        DM_Bill.Uni_cmp_main.Params.ParamByName('p_lastNum').AsInteger :=
          DM_Bill2.OD_ls_cnt.FieldByName('last_rec').AsInteger;}
    if not VarIsNull(p_postcode) then
      DM_Bill.Uni_cmp_main.Params.ParamByName('p_postcode').AsString :=
        p_postcode
    else
      DM_Bill.Uni_cmp_main.Params.ParamByName('p_postcode').Clear;
  end
  else
  begin
    //не ограничивать диапазон записи для печати счетов
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_firstNum').AsInteger := 0;
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_lastNum').AsInteger :=
      1000000000;
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_postcode').Clear;
  end;
  // установить параметры
  DM_Bill.Uni_cmp_main.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;
  // список УК для фильтра
  DM_Bill.Uni_cmp_main.Params.ParamByName('p_sel_uk').AsString := p_strUk;

  DM_Bill.Uni_cmp_contractors.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;

  DM_Bill.Uni_cmp_contractors.Params.ParamByName('p_sel_uk').AsString :=
    p_strUk;

  DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;
  DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_sel_uk').AsString :=
    p_strUk;

  DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;
  DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_sel_uk').AsString :=
    p_strUk;

  DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;
  DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_sel_uk').AsString :=
    p_strUk;

  DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;
  DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_sel_uk').AsString :=
    p_strUk;

  DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;
  DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_sel_uk').AsString :=
    p_strUk;

  DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;
  DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_sel_uk').AsString :=
    p_strUk;

  // здесь не нужен фильтр p_sel_uk, так как выборка по p_lsk
  DM_Bill.Uni_cmp_funds_lsk.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;

  DM_Bill.Uni_cmp_qr.Params.ParamByName('p_mg').AsString :=
    p_lkpMgFrom;
  DM_Bill.Uni_cmp_qr.Params.ParamByName('p_sel_uk').AsString :=
    p_strUk;

  // установить тип лиц.счета
  // все, кроме капремонта
  DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_sel_tp').AsInteger := 0;

  // капремонт
  DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_sel_tp').AsInteger := 1;

  // основные, кроме закрытых (для отрывного)
  DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_sel_tp').AsInteger := 3;

  // все, кроме капремонта
  DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_sel_tp').AsInteger := 0;

  // капремонт
  DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_sel_tp').AsInteger := 1;

  // основные
  DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_sel_tp').AsInteger := 3;

  // все
  DM_Bill.Uni_cmp_qr.Params.ParamByName('p_sel_tp').AsInteger := 4;

  // установить дополнительный фильтр
  DM_Bill.Uni_cmp_contractors.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    p_show_acc;
  DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    p_show_acc;
  DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    p_show_acc;
  DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    p_show_acc;
  DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    p_show_acc;
  DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    p_show_acc;
  DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    p_show_acc;
  DM_Bill.Uni_cmp_qr.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    p_show_acc;
  DM_Bill.Uni_cmp_main.Params.ParamByName('p_sel_obj').AsInteger := p_sel_obj;
  if p_uk <> null then
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_reu').AsString := p_uk
  else
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_reu').Clear;

  DM_Bill.Uni_cmp_main.Params.ParamByName('p_lsk').AsString := p_lsk1;
  DM_Bill.Uni_cmp_main.Params.ParamByName('p_lsk1').AsString := p_lsk2;
  if not VarIsNull(p_kul) then
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_kul').AsString :=
      p_kul
  else
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_kul').Clear;

  if not VarIsNull(p_nd) then
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_nd').AsString :=
      p_nd
  else
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_nd').Clear;

  if not VarIsNull(p_kw) then
  begin
    DM_Bill.Uni_cmp_main.ParamByName('p_kw').AsString :=
      p_kw;
    DM_Bill.Uni_cmp_main.ParamByName('p_klsk_id').AsInteger :=
      p_klsk_id;
  end
  else
  begin
    DM_Bill.Uni_cmp_main.ParamByName('p_kw').Clear;
    DM_Bill.Uni_cmp_main.ParamByName('p_klsk_id').Clear;
  end;

  // печатать ли закрытые счета
  if p_print_old = true then
  begin
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_is_closed').AsInteger := 1;
    DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_is_closed').AsInteger
      := 1;
    DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_is_closed').AsInteger
      := 1;
    DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_is_closed').AsInteger
      := 1;
    DM_Bill.Uni_cmp_contractors.Params.ParamByName('p_is_closed').AsInteger :=
      1;
    DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_is_closed').AsInteger :=
      1;
    DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_is_closed').AsInteger :=
      1;
    DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_is_closed').AsInteger :=
      1;
    DM_Bill.Uni_cmp_qr.Params.ParamByName('p_is_closed').AsInteger :=
      1;
  end
  else
  begin
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_is_closed').AsInteger := 0;
    DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_is_closed').AsInteger
      := 0;
    DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_is_closed').AsInteger
      := 0;
    DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_is_closed').AsInteger
      := 0;
    DM_Bill.Uni_cmp_contractors.Params.ParamByName('p_is_closed').AsInteger :=
      0;
    DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_is_closed').AsInteger
      := 0;
    DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_is_closed').AsInteger
      := 0;
    DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_is_closed').AsInteger
      := 0;
    DM_Bill.Uni_cmp_qr.Params.ParamByName('p_is_closed').AsInteger
      := 0;
  end;

  DM_Bill.Uni_cmp_funds_lsk.Params.ParamByName('P_INCLUDESALDO').AsInteger
    := 1;

  // активировать датасеты
  DM_Bill.Uni_cmp_main.Active := True;
  DM_Bill.Uni_cmp_contractors.Active := true;
  DM_Bill.Uni_cmp_detail_primary.Active := true;
  DM_Bill.Uni_cmp_detail_cap.Active := true;
  DM_Bill.Uni_cmp_detail_main.Active := true;
  DM_Bill.Uni_cmp_funds_primary.Active := true;
  DM_Bill.Uni_cmp_funds_cap.Active := true;
  DM_Bill.Uni_cmp_funds_main.Active := true;
  DM_Bill.Uni_cmp_funds_lsk.Active := true;
  DM_Bill.Uni_cmp_qr.Active := true;

  frxReport1.LoadFromFile(p_filePathStr, True);

  // открыть отчет
  frxReport1.PrepareReport(true);

  // деактивировать датасеты - чтоб не жрали память
  DM_Bill.Uni_cmp_main.Active := False;
  DM_Bill.Uni_cmp_contractors.Active := False;
  DM_Bill.Uni_cmp_detail_primary.Active := false;
  DM_Bill.Uni_cmp_detail_cap.Active := false;
  DM_Bill.Uni_cmp_detail_main.Active := false;
  DM_Bill.Uni_cmp_funds_primary.Active := false;
  DM_Bill.Uni_cmp_funds_cap.Active := false;
  DM_Bill.Uni_cmp_funds_main.Active := false;
  DM_Bill.Uni_cmp_funds_lsk.Active := false;
  DM_Bill.Uni_cmp_qr.Active := false;

  if p_export_pdf then
  begin
    // экспортировать в PDF
    frxPDFExport1.FileName := p_exportPdfPath;
    frxReport1.Export(frxPDFExport1);
  end
  else if p_export_flow then
  begin
    // экспортировать в PDF потоком
    try
      frxPDFExport1.FileName := p_exportPdfPath;
      frxPDFExport1.ShowDialog := False;
      frxPDFExport1.OverwritePrompt := False;
      frxReport1.Export(frxPDFExport1);
    except
      ShowMessage('Ошибка экспорта в PDF #1');
    end;
  end
  else
    // показать отчет
    frxReport1.ShowPreparedReport;

end;

// составной счет

procedure TForm_print_bills.compound_report(p_var: Integer);
var
  pKul, pNd, pKw: Variant;
  pKlskId, Pos, cnt: Integer;
begin
  if not VarIsNull(DBLookupComboboxEh2.KeyValue) then
    pKul := DBLookupComboboxEh2.KeyValue
  else
    pKul := null;

  if not VarIsNull(DBLookupComboboxEh3.KeyValue) then
    pNd := DM_Bill2.OD_houses.FieldByName('nd_id').AsString
  else
    pNd := null;

  if DBLookupComboboxEh4.KeyValue <> null then
  begin
    pKw :=
      DM_Bill2.OD_kw.FieldByName('kw_id').AsString;
    pKlskId :=
      DM_Bill2.OD_kw.FieldByName('k_lsk_id').AsInteger;
  end
  else
  begin
    pKw := null;
    pKlskId := 0;
  end;

  if chkExportFlow.Checked then
  begin
    DM_Bill.Uni_spr_bill_print.Active := False;
    DM_Bill.Uni_spr_bill_print.Active := True;

    cnt := DM_Bill.Uni_spr_bill_print.RecordCount;
    DM_Bill.Uni_spr_bill_print.First;
    while not DM_Bill.Uni_spr_bill_print.Eof do
    begin
      // выводить по 1000!
      query_OD_ls_cnt(lkpMgFrom.EditValue,
        DM_Bill.Uni_spr_bill_print.FieldByName('REU').AsString, 1000);

      while not DM_Bill2.OD_ls_cnt.Eof do
      begin
        {        Application.MessageBox(PChar('Начало выгрузки:' + Edit3.Text + '_' +
                  DM_Bill.Uni_spr_bill_print.FieldByName('REU').AsString
                  + '_'
                  + DM_Bill.Uni_spr_bill_print.FieldByName('PREFIX').AsString
                  + '_'
                  + DM_Bill2.OD_ls_cnt.FieldByName('name').AsString
                  + '.pdf')
                  ,
                  'Внимание!', MB_OK +
                  MB_ICONINFORMATION + MB_TOPMOST);
         }
        compound_report_export(pKul, pNd, pKw, cxLookupComboBox2.EditValue,
          sel_obj_,
          cxImageComboBox1.ItemIndex,
          pKlskId, wwDBEdit1.Text, wwDBEdit2.Text,
          lkpMgFrom.EditValue,
          DM_Bill.Uni_spr_bill_print.FieldByName('FILTER_REU').AsString,
          DM_Bill.Uni_spr_bill_print.FieldByName('REU').AsString, filePathStr,
          Edit3.Text + '_' +
          DM_Bill.Uni_spr_bill_print.FieldByName('REU').AsString
          + '_'
          + DM_Bill.Uni_spr_bill_print.FieldByName('PREFIX').AsString
          + '_'
          + DM_Bill2.OD_ls_cnt.FieldByName('name').AsString
          + '.pdf',
          CheckBox2.Checked,
          CheckBox6.Checked, frxReport1, frxPDFExport1,
          DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsInteger,
          DM_Bill2.OD_ls_cnt.FieldByName('last_rec').AsInteger,
          chkExportFlow.Checked
          );
        {        Application.MessageBox(PChar('Выгружено:' + Edit3.Text + '_' +
                  DM_Bill.Uni_spr_bill_print.FieldByName('REU').AsString
                  + '_'
                  + DM_Bill.Uni_spr_bill_print.FieldByName('PREFIX').AsString
                  + '_'
                  + DM_Bill2.OD_ls_cnt.FieldByName('name').AsString
                  + '.pdf'),
                  'Внимание!', MB_OK +
                  MB_ICONINFORMATION + MB_TOPMOST);}
                {    DM_Bill.Uni_cmp_main.Params.ParamByName('p_firstNum').AsInteger :=
            DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsInteger;
          DM_Bill.Uni_cmp_main.Params.ParamByName('p_lastNum').AsInteger :=
            DM_Bill2.OD_ls_cnt.FieldByName('last_rec').AsInteger;}

        DM_Bill2.OD_ls_cnt.Next;
        pos := pos + 1;
        cxProgressBar1.Position := pos / cnt * 100;
      end;
      DM_Bill.Uni_spr_bill_print.Next;
    end;
  end
  else
  begin
    //    DM_Bill.Uni_cmp_main.Params.ParamByName('p_firstNum').AsInteger := 0;
  //    DM_Bill.Uni_cmp_main.Params.ParamByName('p_lastNum').AsInteger :=
  //      1000000000;
  //      query_OD_ls_cnt(lkpMgFrom.EditValue,
  //        DM_Bill.Uni_spr_bill_print.FieldByName('REU').AsString, 1000);

    compound_report_export(pKul, pNd, pKw, cxLookupComboBox2.EditValue,
      sel_obj_,
      cxImageComboBox1.ItemIndex,
      pKlskId, wwDBEdit1.Text, wwDBEdit2.Text,
      lkpMgFrom.EditValue, getStrUk(),
      cbb1.EditValue, filePathStr, Edit3.Text, CheckBox2.Checked,
      CheckBox6.Checked, frxReport1, frxPDFExport1,
      DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsInteger,
      DM_Bill2.OD_ls_cnt.FieldByName('last_rec').AsInteger,
      chkExportFlow.Checked
      );
  end;

end;

// старый вариант отчетности

procedure TForm_print_bills.old_report(pen_last_month_: Integer);
begin
  // главный датасет для справки арх-2
  DM_Bill.Uni_cmp_main_arch.Active := false;
  // главный датасет
  DM_Bill2.OD_main.Active := false;
  DM_Bill2.OD_data.Active := false;
  DM_Bill2.OD_detail.Active := false;

  DM_Bill2.OD_t_org2.Active := false;
  DM_Bill2.OD_t_org3.Active := false;
  DM_Bill2.OD_data2.Active := false;
  DM_Bill.Uni_arch.Active := false;

  DM_Bill2.OD_data3.Active := false;
  DM_Bill2.OD_data6.Active := false;
  DM_Bill2.OD_vvod.Active := false;
  //DM_Bill2.OD_arch_supp.Active := false;
  DM_Bill.Uni_arch_supp.Active := false;

  DM_Bill2.OD_main.SetVariable('mg_', lkpMgFrom.EditValue);

  DM_Bill2.OD_main.SetVariable('sel_obj_', sel_obj_);
  DM_Bill2.OD_main.SetVariable('reu_', cbb1.EditValue);
  DM_Bill2.OD_main.SetVariable('lsk_', wwDBEdit1.Text);
  DM_Bill2.OD_main.SetVariable('lsk1_', wwDBEdit2.Text);

  if not VarIsNull(DBLookupComboboxEh2.KeyValue) then
    DM_Bill2.OD_main.SetVariable('kul_', DBLookupComboboxEh2.KeyValue)
  else
    DM_Bill2.OD_main.SetVariable('kul_', null);

  if not VarIsNull(DBLookupComboboxEh3.KeyValue) then
    DM_Bill2.OD_main.SetVariable('nd_',
      DM_Bill2.OD_houses.FieldByName('nd_id').AsString)
  else
    DM_Bill2.OD_main.SetVariable('nd_', null);

  // вернул 03.03.21
  if DBLookupComboboxEh4.KeyValue <> null then
    DM_Bill2.OD_main.SetVariable('kw_',
      DM_Bill2.OD_kw.FieldByName('kw_id').AsString)
  else
    DM_Bill2.OD_main.SetVariable('kw_', null);

  {   if DBLookupComboboxEh4.KeyValue <> null then
    begin
      DM_Bill.Uni_cmp_main.ParamByName('p_kw').AsString :=
        DM_Bill2.OD_kw.FieldByName('kw_id').AsString;
      DM_Bill.Uni_cmp_main.ParamByName('p_klsk_id').AsInteger :=
        DM_Bill2.OD_kw.FieldByName('k_lsk_id').AsInteger;
    end
    else
    begin
      DM_Bill.Uni_cmp_main.ParamByName('p_kw').Clear;
      DM_Bill.Uni_cmp_main.ParamByName('p_klsk_id').Clear;
    end;
   }
  if (tp_ = 5) or (tp_ = 7) then //справка арх-2
  begin
    if sel_obj_ = 2 then
    begin
      //только для УК
      //ограничивать диапазон записи для печати счетов
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_firstNum').AsInteger :=
        DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsInteger;

      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_lastNum').AsInteger :=
        DM_Bill2.OD_ls_cnt.FieldByName('last_rec').AsInteger;
    end
    else
    begin
      //не ограничивать диапазон записи для печати счетов
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_firstNum').AsInteger := 0;
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_lastNum').AsInteger :=
        1000000000;
    end;

    // установить параметры
    //DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_mg').AsString :=
    //  lkpMgTo.EditValue;
    //     убрать после тестирования! ред.28.05.2020
    // список УК для фильтра
    DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_sel_uk').AsString :=
      getStrUk();

    DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_sel_obj').AsInteger :=
      sel_obj_;

    {    if cbb1.EditValue <> null then
          DM_Bill.Uni_cmp_main.Params.ParamByName('p_reu').AsString := cbb1.EditValue
        else
          DM_Bill.Uni_cmp_main.Params.ParamByName('p_reu').Clear;}

    DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_lsk').AsString :=
      wwDBEdit1.Text;
    DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_lsk1').AsString :=
      wwDBEdit2.Text;
    if not VarIsNull(DBLookupComboboxEh2.KeyValue) then
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_kul').AsString :=
        DBLookupComboboxEh2.KeyValue
    else
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_kul').Clear;
    if not VarIsNull(DBLookupComboboxEh3.KeyValue) then
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_nd').AsString :=
        DM_Bill2.OD_houses.FieldByName('nd_id').AsString
    else
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_nd').Clear;

    if not VarIsNull(DBLookupComboboxEh4.KeyValue) then
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_kw').AsString :=
        DM_Bill2.OD_kw.FieldByName('kw_id').AsString
    else
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_kw').Clear;

    // печатать ли закрытые счета
    if CheckBox2.Checked = true then
    begin
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_is_closed').AsInteger :=
        1;
    end
    else
    begin
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_is_closed').AsInteger :=
        0;
    end;
    // активировать датасеты
    DM_Bill.Uni_cmp_main_arch.Active := True;
  end
  else
  begin
    //DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_for_arch').AsInteger := 0;
  end;

  if sel_obj_ = 2 then
  begin
    //только для УК
    //ограничивать диапазон записи для печати счетов
    if DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsInteger = 0 then
    begin
      DM_Bill2.OD_main.SetVariable('cnt_rec_', 0);
    end
    else
    begin
      DM_Bill2.OD_main.SetVariable('cnt_rec_', 1);
      DM_Bill2.OD_main.SetVariable('first_rec_',
        DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsInteger);
      DM_Bill2.OD_main.SetVariable('last_rec_',
        DM_Bill2.OD_ls_cnt.FieldByName('last_rec').AsInteger);
    end;
  end
  else
  begin
    //не ограничивать диапазон записи для печати счетов
    DM_Bill2.OD_main.SetVariable('cnt_rec_', 0);
  end;

  if (tp_ = 0) then //счёт
  begin
    DM_Bill2.OD_data.SetVariable('var_', tp_);
    DM_Bill2.OD_data.SetVariable('mg1_', lkpMgFrom.EditValue);
    DM_Bill2.OD_data.SetVariable('mg2_', lkpMgFrom.EditValue);

    if (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 1) or
      (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 2) then
    begin
      DM_Bill2.OD_detail.SetVariable('p_mg', lkpMgFrom.EditValue);
      DM_Bill2.OD_detail_ext.SetVariable('p_mg', lkpMgFrom.EditValue);
    end;
  end
  else if (tp_ = 4) then //счёт для УСЗН
  begin
    DM_Bill2.OD_data.SetVariable('var_', tp_);
    DM_Bill2.OD_data.SetVariable('mg1_', lkpMgFrom.EditValue);
    DM_Bill2.OD_data.SetVariable('mg2_', lkpMgFrom.EditValue);
  end
  else if tp_ = 1 then //справочник квартиросъемщиков
  begin
    DM_Bill2.OD_data.SetVariable('var_', 0);
    DM_Bill2.OD_data.SetVariable('mg1_', lkpMgFrom.EditValue);
    DM_Bill2.OD_data.SetVariable('mg2_', lkpMgFrom.EditValue);
  end
  else if (tp_ = 5) or (tp_ = 7) then //справка арх-2
  begin
    wwDBEdit2.Text := wwDBEdit1.Text;
    //DM_Bill2.OD_arch.SetVariable('p_mg1', lkpMgFrom.EditValue);
    //DM_Bill2.OD_arch.SetVariable('p_mg2', lkpMgTo.EditValue);
    DM_Bill.Uni_arch.Params.ParamByName('p_sel_uk').AsString :=
      getStrUk();

    if tp_ = 5 then
      DM_Bill.Uni_arch.Params.ParamByName('p_tp').AsInteger := 0
    else
      DM_Bill.Uni_arch.Params.ParamByName('p_tp').AsInteger := 1;

    DM_Bill.Uni_arch.Params.ParamByName('p_mg1').AsString :=
      lkpMgFrom.EditValue;
    DM_Bill.Uni_arch.Params.ParamByName('p_mg2').AsString :=
      lkpMgTo.EditValue;

    DM_Bill.Uni_arch_supp.Params.ParamByName('p_sel_uk').AsString :=
      getStrUk();
    DM_Bill.Uni_arch_supp.Params.ParamByName('p_mg1').AsString :=
      lkpMgFrom.EditValue;
    DM_Bill.Uni_arch_supp.Params.ParamByName('p_mg2').AsString :=
      lkpMgTo.EditValue;

    if sel_obj_ = 0 then
    begin
      //по л.с.
      DM_Bill.Uni_arch.Params.ParamByName('p_sel_obj').AsInteger := 0;
      DM_Bill.Uni_arch_supp.Params.ParamByName('lsk').AsString :=
        wwDBEdit1.Text;
      DM_Bill.Uni_arch_supp.Params.ParamByName('p_sel_obj').AsInteger := 0;
    end
    else
    begin
      //по адресу
      DM_Bill.Uni_arch.Params.ParamByName('p_sel_obj').AsInteger := 1;
      DM_Bill.Uni_arch_supp.Params.ParamByName('p_sel_obj').AsInteger := 1;
    end;
    DM_Bill.Uni_arch_supp.Active := true;
  end
  else if (tp_ = 3) then //справка о задолжности
  begin
    wwDBEdit2.Text := wwDBEdit1.Text;
  end;

  //печатать ли по старому фонду счета
  if CheckBox2.Checked = true then
  begin
    DM_Bill2.OD_main.SetVariable('var2_', 1);
    DM_Bill2.OD_data.SetVariable('var2_', 1);
  end
  else
  begin
    DM_Bill2.OD_main.SetVariable('var2_', 0);
    DM_Bill2.OD_data.SetVariable('var2_', 0);
  end;

  //печатать ли дополнительные счета
  if chk1.Checked = true then
  begin
    DM_Bill2.OD_main.SetVariable('var3_', 0);
  end
  else
  begin
    DM_Bill2.OD_main.SetVariable('var3_', 1);
  end;

  if (tp_ = 0) or (tp_ = 1) or (tp_ = 4) then
  begin
    //Счета
    DM_Bill2.OD_main.Active := true;
    //новый счет
    if (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 1) then
    begin
      DM_Bill2.OD_detail.Active := true;
      DM_Bill2.OD_detail2.Active := true;
    end
    else if (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 2) then
    begin
      DM_Bill2.OD_detail_ext.Active := true;
    end
    else
    begin
      DM_Bill2.OD_data.Active := true;
    end;
    DM_Bill2.OD_data4.Active := true;

    DM_Bill2.OD_t_org2.Active := false;
    //Временно сделал false, надо разобраться зачем он нужен... 30.12.14
    DM_Bill2.OD_t_org3.Active := true;
  end
  else if (tp_ = 2) then
  begin
    //Арх.спр.
    DM_Bill.Uni_cmp_main_arch.Active := True;
    DM_Bill.Uni_arch.Active := True;
  end
  else if (tp_ = 5) or (tp_ = 7) then
  begin
    // Арх.спр.-2
    DM_Bill.Uni_cmp_main_arch.Active := True;
    DM_Bill.Uni_arch.Active := True;
  end
  else if tp_ = 3 then
  begin
    //Долги по периодам, для счета (Полыс)
    if sel_obj_ = 0 then
    begin
      //по л.с.
      DM_Bill2.OD_data3.SetVariable('p_lsk', wwDBEdit1.Text);
      DM_Bill2.OD_data3.SetVariable('k_lsk_id_', 0);
    end
    else
    begin
      //по адресу
      DM_Bill2.OD_data3.SetVariable('k_lsk_id_', Form_main.k_lsk_id_);
    end;

    DM_Bill2.OD_data3.SetVariable('p_flt_mg_from', fltMgFrom.KeyValue);
    DM_Bill2.OD_data3.SetVariable('p_flt_mg_to', fltMgTo.KeyValue);
    DM_Bill2.OD_data3.Active := true;
  end;

  //Датасет (долги по всем лицевым счетам адреса (для Кис.))
  if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param',
    ['DEB_FOR_BILLS']) = 1 then
  begin
    DM_Bill2.OD_data6.Active := true;
  end;

  //Кубы по дому, для 354 постановления
  DM_Bill2.OD_vvod.Active := true;

  // ЗАГРУЗКА отчёта
  if (((tp_ = 0) or (tp_ = 4)) and (DM_Bill2.OD_main.RecordCount = 0) or (tp_ =
    1)
    and (DM_Bill2.OD_main.RecordCount = 0)) then
  begin
    Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16
      + MB_APPLMODAL);
  end
  else if (((tp_ = 2) or (tp_ = 5) or (tp_ = 7)) and
    (DM_Bill.Uni_cmp_main_arch.RecordCount =
    0)) then
  begin
    Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16
      + MB_APPLMODAL);
  end
  else if ((tp_ = 3) and (DM_Bill2.OD_data3.RecordCount = 0)) then
  begin
    Application.MessageBox('Нет задолженности', 'Внимание!', 16 + MB_APPLMODAL);
  end
  else
  begin

    if (tp_ = 0) or (tp_ = 4) then
    begin
      //Счета
      frxReport1.LoadFromFile(filePathStr, True);
      //frxReport1.LoadFromFile(Form_main.exepath_ + repVar +
      //  DM_Bill2.OD_t_org.FieldByName('FNAME_SCH').asString, True);
      //filePath.Text := 'Путь к файлу:' + Form_main.exepath_ + repVar +
      //  DM_Bill2.OD_t_org.FieldByName('FNAME_SCH').asString;

      //В счет ставим реквизиты организации
      frxReport1.Variables['name_org'] := '''' +
        DM_Bill2.OD_t_org.FieldByName('name').AsString + '''';
      frxReport1.Variables['inn'] := '''' +
        DM_Bill2.OD_t_org.FieldByName('inn').AsString
        + '''';
      frxReport1.Variables['raschet_schet'] := '''' +
        DM_Bill2.OD_t_org.FieldByName('raschet_schet').AsString + '''';
      frxReport1.Variables['bank'] := '''' +
        DM_Bill2.OD_t_org.FieldByName('bank').AsString + '''';
      frxReport1.Variables['adr'] := '''' +
        DM_Bill2.OD_t_org.FieldByName('post_indx').AsString + ', ' +
        DM_Bill2.OD_t_org.FieldByName('adr').AsString + '''';
      frxReport1.Variables['phone'] := '''' +
        DM_Bill2.OD_t_org.FieldByName('phone').AsString + '''';

      if not CheckBox1.Checked then
        frxReport1.Script.Variables['var_'] := 1
      else
        frxReport1.Script.Variables['var_'] := 0;

      if ((sel_obj_ = 0) and (wwDBEdit1.Text <> wwDBEdit2.Text)) or ((sel_obj_ =
        1) and (DBLookupComboboxEh4.KeyValue = null)) then
      begin
        //много страниц
        frxReport1.Script.Variables['split_'] := 0;
      end
      else
      begin
        //одна страница
        frxReport1.Script.Variables['split_'] := 1;
      end;
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 1 then
    begin
      //Справочник квартиросъемщиков
      frxReport1.LoadFromFile(filePathStr, True);
      //frxReport1.LoadFromFile(Form_main.exepath_ + 'спр_кв.fr3', True);
      frxReport1.PrepareReport(true);
      //filePath.Text := 'Путь к файлу:' + Form_main.exepath_
      //  + 'спр_кв.fr3';
    end
    else if tp_ = 2 then
    begin
      //Справка из архива
      frxReport1.LoadFromFile(filePathStr, True);
      //frxReport1.LoadFromFile(Form_main.exepath_ + 'арх_спр1.fr3', True);
      frxReport1.PrepareReport(true);
      //filePath.Text := 'Путь к файлу:' + Form_main.exepath_
      //  + 'арх_спр1.fr3';
    end
    else if tp_ = 5 then
    begin
      //Справка из архива-2
      frxReport1.LoadFromFile(filePathStr, True);
      //frxReport1.LoadFromFile(Form_main.exepath_ + 'арх_спр4.fr3', True);
      frxReport1.PrepareReport(true);
      //filePath.Text := 'Путь к файлу:' + Form_main.exepath_
      //  + 'арх_спр4.fr3';
    end
    else if tp_ = 7 then
    begin
      //Справка из архива-3
      frxReport1.LoadFromFile(filePathStr, True);
      //frxReport1.LoadFromFile(Form_main.exepath_ + 'арх_спр5.fr3', True);
      frxReport1.PrepareReport(true);
      //filePath.Text := 'Путь к файлу:' + Form_main.exepath_
      //  + 'арх_спр5.fr3';
    end
    else if tp_ = 3 then
    begin
      //Cправка о задолженности
      if DataModule1.OraclePackage1.CallIntegerFunction //старый вариант
      ('scott.Utils.get_int_param', ['SPR_DEB_VAR']) = 0 then
      begin
        frxReport1.LoadFromFile(filePathStr, True);
        //frxReport1.LoadFromFile(Form_main.exepath_ + repVar +
        //  'Счет_на_оплату1.fr3', True);
        //filePath.Text := 'Путь к файлу:' + Form_main.exepath_
        //  + 'Счет_на_оплату1.fr3';
      end
      else if
        DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param',
        ['SPR_DEB_VAR']) = 1 then //новый вариант
      begin
        frxReport1.LoadFromFile(filePathStr,
          True);
        //frxReport1.LoadFromFile(Form_main.exepath_ + repVar + 'спр_задолжн.fr3',
        //  True);
        //filePath.Text := 'Путь к файлу:' + Form_main.exepath_
        //  + 'спр_задолжн.fr3';
      end;

      frxReport1.PrepareReport(true);
    end;
    frxReport1.ShowPreparedReport;
  end;
end;

procedure TForm_print_bills.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_bills.DBLookupComboboxEh2CloseUp(Sender: TObject; Accept:
  Boolean);
begin
  DM_Bill2.OD_houses.Active := true;
  DBLookupComboboxEh3.Enabled := true;
  DBLookupComboboxEh3.KeyValue := null;
  DBLookupComboboxEh4.KeyValue := null;
  {DM_Bill2.OD_houses.FieldByName('HOUSE_ID').AsString}
end;

procedure TForm_print_bills.DBLookupComboboxEh3CloseUp(Sender: TObject; Accept:
  Boolean);
begin
  DM_Bill2.OD_kw.Active := true;
  DBLookupComboboxEh4.Enabled := true;
  DBLookupComboboxEh4.KeyValue := null
end;

procedure TForm_print_bills.DBLookupComboboxEh2Enter(Sender: TObject);
begin
  DM_Bill2.OD_kw.Active := false;
  DBLookupComboboxEh4.Enabled := false;
  DM_Bill2.OD_houses.Active := false;
  DBLookupComboboxEh3.Enabled := false;
end;

procedure TForm_print_bills.DBLookupComboboxEh3Enter(Sender: TObject);
begin
  DM_Bill2.OD_kw.Active := false;
  DBLookupComboboxEh4.Enabled := false;
end;

procedure TForm_print_bills.set_lsk(var_: integer; lsk1_: string);
begin
  if var_ = 0 then
  begin
    //по л.с.
    Form_main.k_lsk_id_ :=
      DataModule1.OraclePackage1.CallIntegerFunction('scott.UTILS.GET_K_LSK_ID_BY_LSK', [lsk1_]);
  end
  else
  begin
    //по адресу
    if DM_Bill2.OD_kw.Active = True then
      Form_main.k_lsk_id_ := DM_Bill2.OD_kw.FieldByName('k_lsk_id').AsInteger;
  end;

end;

procedure TForm_print_bills.wwDBEdit2DblClick(Sender: TObject);
begin
  wwDBEdit2.Text := wwDBEdit1.Text;
  set_lsk(0, wwDBEdit1.Text);
end;

procedure TForm_print_bills.FormCreate(Sender: TObject);
var
  Items: TcxImageComboBoxItems;
  Item: TcxImageComboBoxItem;
begin
  // доступ к вариантам отчета
  Items := cxImageComboBox2.Properties.Items;
  Items.BeginUpdate;
  try
    Items.Clear;
    if isaccess('scott.drx_print_bills_счет') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 0;
      Item.Description := 'Счета';
      Item.ImageIndex := 0;
    end;

    if isaccess('scott.drx_print_bills_спр_квартир') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 1;
      Item.Description := 'Справочник квартиросъемщика';
      Item.ImageIndex := 1;
    end;

    if isaccess('scott.drx_print_bills_спр_арх') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 2;
      Item.Description := 'Справка из архива';
      Item.ImageIndex := 2;
    end;

    if isaccess('scott.drx_print_bills_спр_зад') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 3;
      Item.Description := 'Справка о задолженности';
      Item.ImageIndex := 3;
    end;

    if isaccess('scott.drx_print_bills_спр_усзн') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 4;
      Item.Description := 'Счет для УСЗН';
      Item.ImageIndex := 4;
    end;

    if isaccess('scott.drx_print_bills_спр_арх2') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 5;
      Item.Description := 'Справка из архива-2';
      Item.ImageIndex := 5;
    end;

    if isaccess('scott.drx_print_bills_кварт') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 6;
      Item.Description := 'Поквартирная карточка';
      Item.ImageIndex := 6;
    end;

    if isaccess('scott.drx_print_bills_спр_арх3') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 7;
      Item.Description := 'Справка из архива-3';
      Item.ImageIndex := 7;
    end;

    if isaccess('scott.drx_print_bills_движение') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 8;
      Item.Description := 'Движение средств по лиц.сч.';
      Item.ImageIndex := 8;
    end;

    if isaccess('scott.drx_print_спр_по_расчету_пени') = 1 then
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := 9;
      Item.Description := 'Справка по расчету пени';
      Item.ImageIndex := 9;
    end;
  finally
    Items.EndUpdate;
  end;

  /////////

  // Выбран поиск по адресу (по умолчанию)
  if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param',
    ['RECHARGE_BILL']) = 1 then
    CheckBox3.Checked := True;

  wwDBEdit1.Enabled := false;
  wwDBEdit2.Enabled := false;
  Label1.Enabled := false;
  Label5.Enabled := false;
  Label2.Enabled := true;
  Label6.Enabled := true;
  Label7.Enabled := true;
  DBLookupComboboxEh2.Enabled := true;
  DBLookupComboboxEh3.Enabled := false;
  DBLookupComboboxEh4.Enabled := false;
  DM_Bill2.OD_mg.Active := True;
  DM_Bill2.OD_mg1.Active := True;
  DM_Bill2.OD_reu.Active := True;
  DM_Bill2.OD_spr_services.Active := True;

  if (FF('Form_list_kart', 0) = 1) or ((wwDBEdit1.Text = wwDBEdit2.Text)
    and (wwDBEdit1.Text <> '') and (wwDBEdit2.Text <> '')) or
    (DBLookupComboboxEh4.KeyValue <> null) then
  begin
    //Возможность видеть дома старого фонда
    DM_Bill2.OD_houses.Active := false;
    DM_Bill2.OD_houses.SetVariable('var', 0);
    DM_Bill2.OD_houses.Active := true;
  end
  else
  begin
    // не возможность видеть дома старого фонда
    DM_Bill2.OD_houses.Active := false;
    DM_Bill2.OD_houses.SetVariable('var', 1);
    DM_Bill2.OD_houses.Active := true;
  end;

  DM_Bill2.OD_kw.Active := true;
  sel_lsk;
  // по умолчанию - выбор печать по адресу
  sel_obj_ := 1;
  DM_Bill2.OD_sel_obj.Active := false;
  DM_Bill2.OD_sel_obj.SetVariable(':var_', tp_);
  DM_Bill2.OD_sel_obj.Active := True;
  //wwDBLookupCombo1.LookupValue := '0';
  cx3.EditValue := '0';
  // кол-во счетов по умолчанию
  cnt_sch_ := 1000;
  Edit1.Text := IntToStr(cnt_sch_);
  // фильтр по умолчанию
  cxImageComboBox1.ItemIndex := 0;
  // наполнить списком УК
  fillUk();

  // настройка элементов управления
  prepControls();

  // настройка наименования отчёта
  selVar();

  //Настройки расположения формы
  cxprprtstr1.Active := True;
  cxprprtstr1.RestoreFrom;
end;

procedure TForm_print_bills.sel_lsk;
var
  keySel: Variant;
begin
  // настройка периода по умолчанию
  DM_Bill2.OD_mg.First;
  lkpMgFrom.EditValue := DM_Bill2.OD_mg.FieldByName('mg').AsString;

  if FF('Form_get_pay_nal', 0) = 1 then
  begin
    cxImageComboBox2.ItemIndex := 0;
    wwDBEdit1.Text := Form_get_pay_nal.OD_kart.FieldByName('lsk').AsString;
    wwDBEdit2.Text := Form_get_pay_nal.OD_kart.FieldByName('lsk').AsString;
    DM_Bill2.OD_mg.First;
    cbb1.EditValue := Form_get_pay_nal.OD_kart.FieldByName('reu').AsString;
    DBLookupComboboxEh2.KeyValue :=
      Form_get_pay_nal.OD_kart.FieldByName('kul').AsString;

    keySel := VarArrayCreate([0, 2], varVariant);
    keySel[0] := Form_list_kart.OD_list_kart.FieldByName('reu').AsString;
    keySel[1] := Form_list_kart.OD_list_kart.FieldByName('kul').AsString;
    keySel[2] := Form_list_kart.OD_list_kart.FieldByName('nd').AsString;
    DBLookupComboboxEh3.KeyValue := keySel;

    DBLookupComboboxEh4.KeyValue :=
      Form_get_pay_nal.OD_kart.FieldByName('lsk').AsString;

    Form_main.k_lsk_id_ :=
      Form_get_pay_nal.OD_kart.FieldByName('k_lsk_id').AsInteger;
  end
  else if FF('Form_list_kart', 0) = 1 then
  begin
    //ComboBox1.ItemIndex := 0;
    cxImageComboBox2.ItemIndex := 0;
    wwDBEdit1.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    wwDBEdit2.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    DM_Bill2.OD_mg.First;
    cbb1.EditValue := Form_list_kart.OD_list_kart.FieldByName('reu').AsString;
    DBLookupComboboxEh2.KeyValue :=
      Form_list_kart.OD_list_kart.FieldByName('kul').AsString;

    keySel := VarArrayCreate([0, 2], varVariant);
    keySel[0] := Form_list_kart.OD_list_kart.FieldByName('reu').AsString;
    keySel[1] := Form_list_kart.OD_list_kart.FieldByName('kul').AsString;
    keySel[2] := Form_list_kart.OD_list_kart.FieldByName('nd').AsString;

    DBLookupComboboxEh3.KeyValue := keySel;
    DBLookupComboboxEh4.KeyValue :=
      Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    Form_main.k_lsk_id_ :=
      Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger;
  end
  else
  begin
    cxImageComboBox2.ItemIndex := 0;
  end;

end;

procedure TForm_print_bills.DBLookupComboboxEh4CloseUp(Sender: TObject; Accept:
  Boolean);
begin
  wwDBEdit1.Text := DM_Bill2.OD_kw.FieldByName('lsk').AsString;
  wwDBEdit2.Text := DM_Bill2.OD_kw.FieldByName('lsk').AsString;
  //Form_main.c_lsk_id_ := DM_Bill2.OD_kw.FieldByName('c_lsk_id').AsInteger;
  Form_main.k_lsk_id_ := DM_Bill2.OD_kw.FieldByName('k_lsk_id').AsInteger;
end;

procedure TForm_print_bills.wwDBEdit1Change(Sender: TObject);
begin
  set_lsk(0, wwDBEdit1.Text);
end;

procedure TForm_print_bills.wwDBEdit2Change(Sender: TObject);
begin
  //  set_lsk(0, wwDBEdit1.Text);
end;

procedure TForm_print_bills.set_obj;
begin
  if cx3.EditValue = '0' then
  begin
    //по Адресу
    //кол-во л.с. для печати
    cxLookupComboBox4.Enabled := false;
    Label11.Enabled := false;
    Label12.Enabled := false;
    Edit1.Enabled := false;
    CheckBox3.Enabled := True;

    wwDBEdit1.Enabled := false;
    wwDBEdit2.Enabled := false;
    Label1.Enabled := false;
    Label5.Enabled := false;
    Label2.Enabled := true;
    Label6.Enabled := true;
    Label7.Enabled := true;
    DBLookupComboboxEh2.Enabled := true;

    Label8.Enabled := false;
    cbb1.Enabled := true;

    // отключить фильтр по почтовому индексу
    Label15.Enabled := False;
    cxLookupComboBox2.Enabled := False;

    set_lsk(1, '');
    sel_obj_ := 1;
  end
  else if cx3.EditValue = '1' then
  begin
    //по Л/C
    //кол-во л.с. для печати
    cxLookupComboBox4.Enabled := false;
    Label11.Enabled := false;
    Label12.Enabled := false;
    Edit1.Enabled := false;
    CheckBox3.Enabled := True;

    wwDBEdit1.Enabled := true;
    wwDBEdit2.Enabled := true;
    Label1.Enabled := true;
    Label5.Enabled := true;
    Label2.Enabled := false;
    Label6.Enabled := false;
    Label7.Enabled := false;
    DBLookupComboboxEh2.Enabled := false;
    DBLookupComboboxEh3.Enabled := false;
    DBLookupComboboxEh4.Enabled := false;

    Label8.Enabled := false;
    cbb1.Enabled := true;

    // отключить фильтр по почтовому индексу
    Label15.Enabled := False;
    cxLookupComboBox2.Enabled := False;

    set_lsk(0, wwDBEdit1.Text);
    sel_obj_ := 0;

  end
  else if cx3.EditValue = '2' then
  begin
    //по УК
    //кол-во л.с. для печати
    cxLookupComboBox4.Enabled := true;
    Label11.Enabled := true;
    Label12.Enabled := true;
    Edit1.Enabled := true;
    CheckBox3.Checked := false;
    CheckBox3.Enabled := false;

    wwDBEdit1.Enabled := false;
    wwDBEdit2.Enabled := false;
    Label1.Enabled := false;
    Label5.Enabled := false;
    Label2.Enabled := false;
    Label6.Enabled := false;
    Label7.Enabled := false;
    DBLookupComboboxEh2.Enabled := false;

    Label8.Enabled := true;
    cbb1.Enabled := true;
    cbb1.EditValue := DM_Bill2.OD_reu.FieldByName('reu').AsString;

    // включить фильтр по почтовому индексу
    Label15.Enabled := True;
    cxLookupComboBox2.Enabled := True;
    DM_Bill.Uni_postcode.ParamByName('reu').AsString := cbb1.EditValue;
    DM_Bill.Uni_postcode.Active := False;
    DM_Bill.Uni_postcode.Active := True;

    sel_obj_ := 2;
    sel_ls_cnt;
  end;
end;

procedure TForm_print_bills.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  set_obj;
end;

procedure TForm_print_bills.query_OD_ls_cnt(p_mg, p_reu: string; p_cnt:
  Integer);
begin
  DM_Bill2.OD_ls_cnt.Active := false;
  DM_Bill2.OD_ls_cnt.SetVariable('p_mg', p_mg);
  DM_Bill2.OD_ls_cnt.SetVariable('p_reu', p_reu);
  DM_Bill2.OD_ls_cnt.SetVariable('p_cnt', p_cnt);
  DM_Bill2.OD_ls_cnt.Active := true;
end;

procedure TForm_print_bills.sel_ls_cnt;
var
  l_mg, l_reu: string;
begin
  //задаем период для выборки кол-ва л.с., для печати счетов сотнями
  //DM_Bill2.OD_ls_cnt.Active := false;
  if (tp_ = 0) or (tp_ = 1)
    or (tp_ = 4) or (tp_ = 6) then
    // счет
    //DM_Bill2.OD_ls_cnt.SetVariable('p_mg', lkpMgFrom.EditValue)
    l_mg := lkpMgFrom.EditValue
  else
    // остальные отчеты (арх.справ.)
    //DM_Bill2.OD_ls_cnt.SetVariable('p_mg', lkpMgTo.EditValue);
    l_mg := lkpMgTo.EditValue;

  //DM_Bill2.OD_ls_cnt.SetVariable('p_reu', cbb1.EditValue);
  if not VarIsNull(cbb1.EditValue) then
    l_reu := cbb1.EditValue
  else
    l_reu := '';
  //DM_Bill2.OD_ls_cnt.Active := true;

  query_OD_ls_cnt(l_mg, l_reu, cnt_sch_);

  if DM_Bill2.OD_ls_cnt.RecordCount = 0 then
    cxLookupComboBox4.EditValue := 0
  else
    cxLookupComboBox4.EditValue :=
      DM_Bill2.OD_ls_cnt.FieldByName('first_rec').AsString;

  //  ShowMessage(cx3.EditValue);
    // для фильтра выбора почтового индекса
  if cx3.EditValue = '2' then
  begin
    DM_Bill.Uni_postcode.ParamByName('reu').AsString := cbb1.EditValue;
    DM_Bill.Uni_postcode.Active := False;
    DM_Bill.Uni_postcode.Active := True;
  end;

end;

procedure TForm_print_bills.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    cnt_sch_ := 1000
  else
    cnt_sch_ := StrToInt(Edit1.Text);

  sel_ls_cnt;
end;

procedure TForm_print_bills.lkpMgToCloseUp(Sender: TObject; Accept:
  Boolean);
begin
  sel_ls_cnt;
end;

procedure TForm_print_bills.DBLookupComboboxEh7CloseUp(Sender: TObject; Accept:
  Boolean);
begin
  sel_ls_cnt;
end;

procedure TForm_print_bills.cbb1PropertiesCloseUp(Sender: TObject);
begin
  sel_ls_cnt;
end;

procedure TForm_print_bills.lkpMgFromCloseUp(Sender: TObject; Accept:
  Boolean);
begin
end;

{procedure TForm_print_bills.DM_Bill2.OD_ls_cntBeforeOpen(DataSet: TDataSet);
begin
  pnl1.Visible := true;
  Update;
end;

procedure TForm_print_bills.DM_Bill2.OD_ls_cntAfterOpen(DataSet: TDataSet);
begin
  pnl1.Visible := false;
end;}

// наполнить checkComboBox значениями УК

procedure TForm_print_bills.fillUk();
var
  i: Integer;
begin
  DM_Bill2.OD_uk.Active := True;
  DM_Bill2.OD_uk.First;
  while not DM_Bill2.OD_uk.Eof do
  begin
    with cxCheckComboBox1.Properties.Items.Add do
    begin
      Description := DM_Bill2.OD_uk.FieldByName('reu').AsString + ' '
        + DM_Bill2.OD_uk.FieldByName('name').AsString;
    end;
    DM_Bill2.OD_uk.Next;
  end;
  selAllUk;
end;

// получить список УК

function TForm_print_bills.getStrUk(): string;
var
  APCheckStates: ^TcxCheckStates;
  I: Integer;
  AEditProp: TcxCheckComboBoxProperties;
  str: string;
begin
  New(APCheckStates);
  AEditProp := cxCheckComboBox1.Properties;
  str := '0';
  try
    CalculateCheckStates(cxCheckComboBox1.Value,
      AEditProp.Items, AEditProp.EditValueFormat, APCheckStates^);
    for i := 0 to AEditProp.Items.Count - 1 do
      if APCheckStates^[I] = cbsChecked then
        str := str + '''' + copy(AEditProp.Items[I].Description, 1, 3) + ''';';
  finally
    Dispose(APCheckStates)
  end;
  Result := str;
end;

// отметить все элементы cxCheckComboBox

procedure TForm_print_bills.selAllUk();
var
  i: Integer;
  ComboProp: TcxCheckComboBoxProperties;
begin
  ComboProp := cxCheckComboBox1.Properties;
  for i := 0 to ComboProp.Items.Count - 1 do
    cxCheckComboBox1.States[i] := cbsChecked;
end;

// снять отметки со всех элементов cxCheckComboBox

procedure TForm_print_bills.deSelAllUk();
var
  i: Integer;
  ComboProp: TcxCheckComboBoxProperties;
begin
  ComboProp := cxCheckComboBox1.Properties;
  for i := 0 to ComboProp.Items.Count - 1 do
    cxCheckComboBox1.States[i] := cbsUnChecked;
end;

procedure TForm_print_bills.CheckBox6Click(Sender: TObject);
begin
  if CheckBox6.Checked then
    Edit3.Enabled := true
  else
    Edit3.Enabled := false;

end;

procedure TForm_print_bills.CheckBox7Click(Sender: TObject);
begin
  // снять/установить все отмеченные элементы УК комбобокса cxCheckComboBox1
  if CheckBox7.Checked = true then
    selAllUk
  else
    deSelAllUk;
end;

procedure TForm_print_bills.cxLookupComboBox3PropertiesCloseUp(
  Sender: TObject);
begin
  set_obj;
end;

procedure TForm_print_bills.cxLookupComboBox4PropertiesPopup(
  Sender: TObject);
begin
  sel_ls_cnt;
  {  if DM_Bill2.OD_ls_cnt.GetVariable('p_cnt') <> IntToStr(cnt_sch_) then
    begin
      DM_Bill2.OD_ls_cnt.SetVariable('p_cnt', cnt_sch_);
      DM_Bill2.OD_ls_cnt.Active := False;
      DM_Bill2.OD_ls_cnt.Active := True;
    end;}
end;

procedure TForm_print_bills.cxImageComboBox2PropertiesCloseUp(
  Sender: TObject);
begin
  selVar();
end;

procedure TForm_print_bills.prepControls();
begin
  DM_Bill2.OD_spr_services.SetVariable('p_mg', lkpMgFrom.EditValue);
  DM_Bill2.OD_spr_services.Active := False;
  DM_Bill2.OD_spr_services.Active := True;
  cxLookupComboBox1.EditValue :=
    DM_Bill2.OD_spr_services.FieldByName('FNAME_SCH').AsString;
end;

procedure TForm_print_bills.selVar();
var
  repVar: string;
begin
  GroupBox5.Visible := false;
  DM_Bill2.OD_sel_obj.Active := false;
  DM_Bill2.OD_sel_obj.SetVariable(':var_', tp_);
  DM_Bill2.OD_sel_obj.Active := True;
  sel_obj_ := DM_Bill2.OD_sel_obj.FieldByName('id').AsInteger;
  cx3.EditValue := DM_Bill2.OD_sel_obj.FieldByName('id').AsString;
  set_obj;
  lkpMgFrom.Visible := false;
  lkpMgTo.Visible := false;

  if tp_ = 0 then // Счета
  begin
    Label3.Caption := 'Период отчета';
    Label13.Enabled := True;
    Label9.Visible := false;
    lkpMgFrom.Visible := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := true;
    cxImageComboBox1.Enabled := True;
  end
  else if (tp_ = 1) then
  begin
    // Справочник квартиросьемщика
    lkpMgFrom.Visible := true;
  end
  else if (tp_ = 2) or (tp_ = 5) or (tp_ = 7) then
    // Справка из архива
  begin
    Label3.Caption := 'Период отчета, с';
    Label13.Enabled := false;
    Label9.Visible := true;
    lkpMgTo.Visible := true;
    //  lkpMgFrom.Enabled := true;
    lkpMgFrom.Visible := true;
    CheckBox2.Visible := false;
    CheckBox4.Visible := false;
    CheckBox5.Visible := false;
    cxImageComboBox1.Enabled := false;
  end
  else if (tp_ = 8) then
    // Движение по лиц.счету
  begin
    Label3.Caption := 'Период отчета';
    Label13.Enabled := false;
    lkpMgFrom.Visible := true;
    Label9.Visible := false;
    CheckBox2.Visible := false;
    CheckBox4.Visible := false;
    CheckBox5.Visible := false;
    cxImageComboBox1.Enabled := false;
  end
  else if (tp_ = 9) then
    // Cправка о пене
  begin
    Label3.Caption := 'Период отчета, с';
    Label13.Enabled := false;
    Label9.Visible := true;
    lkpMgFrom.Visible := true;
    lkpMgTo.Visible := true;
    CheckBox2.Visible := false;
    CheckBox4.Visible := false;
    CheckBox5.Visible := false;
    cxImageComboBox1.Enabled := false;
  end
  else if tp_ = 3 then // Справка о задолженности
  begin
    Label3.Caption := 'Период отчета';
    Label13.Enabled := false;
    Label9.Visible := false;
    //lkpMgFrom.Enabled := true;
    lkpMgFrom.Visible := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := false;
    cxImageComboBox1.Enabled := false;
    CheckBox5.Visible := true;
    GroupBox5.Visible := true;
  end
  else
  begin
    Label3.Caption := 'Период отчета';
    Label13.Enabled := false;
    Label9.Visible := false;
    //lkpMgFrom.Enabled := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := false;
    cxImageComboBox1.Enabled := false;
  end;

  filePathStr := '';
  if (tp_ = 0) or (tp_ = 4) then
  begin
    //Счета
    // датасет основных параметров. (наим.орг, файл счета)
    DM_Bill2.OD_t_org.Active := false;
    DM_Bill2.OD_t_org.SetVariable('var_', tp_);
    DM_Bill2.OD_t_org.SetVariable('mg_', lkpMgFrom.EditValue);
    DM_Bill2.OD_t_org.Active := true;

    if (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 0) or
      (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 1) or
      (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 2) then
    begin
      // старый вариант счета
      // выбор отчета - лазерный/матричный
      if CheckBox5.Checked = True then
        // лазерный принтер
        repVar := 'lp_'
      else
        // матричный принтер
        repVar := '';
      filePathStr := Form_main.exepath_ + repVar +
        DM_Bill2.OD_t_org.FieldByName('FNAME_SCH').asString;
    end
    else if (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 3) or
      (DM_Bill2.OD_t_org.FieldByName('BILL_TP').asInteger = 4) then
    begin
      // составной счет
      filePathStr := Form_main.exepath_ +
        VarToStr(cxLookupComboBox1.EditValue);
    end
  end
  else if tp_ = 1 then
  begin
    //Справочник квартиросъемщиков
    filePathStr := Form_main.exepath_
      + 'спр_кв.fr3';
  end
  else if tp_ = 2 then
  begin
    //Справка из архива
    filePathStr := Form_main.exepath_
      + 'арх_спр1.fr3';
  end
  else if tp_ = 5 then
  begin
    //Справка из архива-2
    filePathStr := Form_main.exepath_
      + 'арх_спр4.fr3';
  end
  else if tp_ = 6 then
  begin
    // поквартирная карточка
    filePathStr := Form_main.exepath_ +
      'справка_пасп3.fr3';
  end
  else if tp_ = 7 then
  begin
    //Справка из архива-3
    filePathStr := Form_main.exepath_
      + 'арх_спр5.fr3';
  end
  else if tp_ = 8 then
    // Движение по счету
    filePathStr := Form_main.exepath_
      + 'det1_extended.fr3'
  else if tp_ = 9 then
    // Справка о пене
    filePathStr := Form_main.exepath_
      + 'справка_пеня1_extended.fr3'
  else if tp_ = 3 then
  begin
    // Cправка о задолженности
    if DataModule1.OraclePackage1.CallIntegerFunction //старый вариант
    ('scott.Utils.get_int_param', ['SPR_DEB_VAR']) = 0 then
    begin
      if CheckBox5.Checked then
        filePathStr := Form_main.exepath_
          + 'lp_Счет_на_оплату1.fr3'
      else
        filePathStr := Form_main.exepath_
          + 'Счет_на_оплату1.fr3';
    end
    else if
      DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param',
      ['SPR_DEB_VAR']) = 1 then //новый вариант
    begin
      filePathStr := Form_main.exepath_
        + 'спр_задолжн.fr3';
    end;
  end
  else
  begin
    Application.MessageBox(PChar('Некорректный bill_tp=' +
      DM_Bill2.OD_t_org.FieldByName('BILL_TP').AsString),
      'Внимание!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
  end;

  filePath.Text := 'Путь к файлу:' + filePathStr;

end;

procedure TForm_print_bills.cxImageComboBox2PropertiesChange(
  Sender: TObject);
var
  value: Variant;
begin
  // получить value cxImageComboBox
  value :=
    TcxImageComboBox(Sender).Properties.Items[TcxImageComboBox(Sender).ItemIndex].ImageIndex;
  tp_ := VarToInt(value);
end;

procedure TForm_print_bills.lkpMgFromPropertiesCloseUp(Sender: TObject);
begin
  if sel_obj_ = 2 then
    sel_ls_cnt;

  prepControls();

  selVar();
end;

procedure TForm_print_bills.lkpMgToPropertiesCloseUp(Sender: TObject);
begin
  if sel_obj_ = 2 then
    sel_ls_cnt;

end;

procedure TForm_print_bills.CheckBox5Click(Sender: TObject);
begin
  selVar();
end;

procedure TForm_print_bills.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  selVar();
end;

end.

