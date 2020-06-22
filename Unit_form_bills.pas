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
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxDBEdit;

type
  TForm_print_bills = class(TForm)
    OD_data: TOracleDataSet;
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    OD_streets: TOracleDataSet;
    DS_streets: TDataSource;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    OD_houses: TOracleDataSet;
    DS_houses: TDataSource;
    OD_kw: TOracleDataSet;
    DS_kw: TDataSource;
    CheckBox1: TCheckBox;
    DBLookupComboboxEh5: TDBLookupComboboxEh;
    Label9: TLabel;
    OD_mg1: TOracleDataSet;
    DS_mg1: TDataSource;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    frxReport1: TfrxReport;
    CheckBox2: TCheckBox;
    OD_data2: TOracleDataSet;
    frxDBDataset2: TfrxDBDataset;
    OD_data3: TOracleDataSet;
    frxDBDataset3: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    OD_data4: TOracleDataSet;
    frxDBDataset4: TfrxDBDataset;
    OD_dataMG1: TStringField;
    OD_dataMG2: TStringField;
    OD_dataMG: TStringField;
    OD_dataLSK: TStringField;
    OD_dataSTREETNAME: TStringField;
    OD_dataFIO: TStringField;
    OD_dataMONTHYEAR: TStringField;
    OD_dataSTATUS: TFloatField;
    OD_dataPSCH: TFloatField;
    OD_dataPEL: TFloatField;
    OD_dataKUL: TStringField;
    OD_dataOPL: TFloatField;
    OD_dataPLDOP: TFloatField;
    OD_dataKPR: TFloatField;
    OD_dataKPR_OT: TFloatField;
    OD_dataKI: TFloatField;
    OD_dataSUBS_INF: TFloatField;
    OD_dataUSL: TStringField;
    OD_dataNM: TStringField;
    OD_dataLG_MAINS: TFloatField;
    OD_dataLG_IDS: TStringField;
    OD_dataTARIF: TFloatField;
    OD_dataVOL: TFloatField;
    OD_dataCHARGES: TFloatField;
    OD_dataPRIVS: TFloatField;
    OD_dataCHANGES0: TFloatField;
    OD_dataCHANGES1: TFloatField;
    OD_dataCHANGES2: TFloatField;
    OD_dataSUBS: TFloatField;
    OD_dataSUB_EL: TFloatField;
    OD_dataITOG: TFloatField;
    OD_dataLGNAME: TStringField;
    OD_dataLG_ID: TFloatField;
    OD_dataCNT: TFloatField;
    OD_dataLG_KOEF: TFloatField;
    OD_dataFNAME_SCH: TStringField;
    OD_dataPREV_CHRG: TFloatField;
    OD_dataPREV_PAY: TFloatField;
    OD_dataPAYMENT: TFloatField;
    OD_dataPENYA: TFloatField;
    OD_dataMONTHPENYA: TFloatField;
    OD_dataMONTHPENYA2: TFloatField;
    OD_dataMONTHPENITG: TFloatField;
    OD_dataDOLG: TFloatField;
    OD_dataOLD_DOLG: TFloatField;
    OD_dataITOG_DOLG: TFloatField;
    OD_dataOVRPAYMNT: TFloatField;
    OD_dataSAL_IN: TFloatField;
    OD_dataITOG_USZN: TFloatField;
    OD_dataPL_SVNORM: TFloatField;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    OD_dataITG_PEN: TFloatField;
    OD_dataITG_PAY: TFloatField;
    CheckBox4: TCheckBox;
    OD_dataKPR_WR: TFloatField;
    OD_t_org: TOracleDataSet;
    frxDBDataset5: TfrxDBDataset;
    OD_dataNAME_ORG: TStringField;
    OD_dataPHW: TFloatField;
    OD_dataPGW: TFloatField;
    OD_dataPHONE: TStringField;
    frxDBDataset6: TfrxDBDataset;
    OD_data6: TOracleDataSet;
    OD_data6LSK: TStringField;
    OD_data6SUMMA: TFloatField;
    OD_dataK_LSK_ID: TFloatField;
    frxDB_arch_supp: TfrxDBDataset;
    OD_dataPHONE2: TStringField;
    fltfldOD_dataDOLG2: TFloatField;
    OD_dataDT_SCH: TDateTimeField;
    frxDBData_arch: TfrxDBDataset;
    CheckBox3: TCheckBox;
    OD_main: TOracleDataSet;
    frxDB_main: TfrxDBDataset;
    OD_dataORG: TFloatField;
    OD_t_org2: TOracleDataSet;
    frxDBDataset8: TfrxDBDataset;
    OD_reu: TOracleDataSet;
    Label10: TLabel;
    OD_sel_obj: TOracleDataSet;
    Label11: TLabel;
    OD_ls_cnt: TOracleDataSet;
    DS_ls_cnt: TDataSource;
    DS_reu: TDataSource;
    Edit1: TEdit;
    Label12: TLabel;
    OD_dataCH_PROC0: TFloatField;
    OD_vvod: TOracleDataSet;
    frxDBDataset9: TfrxDBDataset;
    OD_t_org3: TOracleDataSet;
    frxDBDataset10: TfrxDBDataset;
    GroupBox4: TGroupBox;
    Edit2: TEdit;
    OD_dataKPR_WRP: TFloatField;
    OD_dataITG_PEN_PAY: TFloatField;
    OD_dataSL: TFloatField;
    chk1: TCheckBox;
    Label8: TLabel;
    cbb1: TcxLookupComboBox;
    OD_dataBILL_BRAKE: TFloatField;
    OD_detail: TOracleDataSet;
    frxDBDataset11: TfrxDBDataset;
    OD_detail2: TOracleDataSet;
    frxDBDataset12: TfrxDBDataset;
    CheckBox5: TCheckBox;
    OD_detail_ext: TOracleDataSet;
    frxDBDataset13: TfrxDBDataset;
    frxDB_cmp_main: TfrxDBDataset;
    frxDBD_cmp_detail_primary: TfrxDBDataset;
    frxDB_cmp_detail_cap: TfrxDBDataset;
    frxDB_cmp_funds_primary: TfrxDBDataset;
    frxDB_cmp_funds_cap: TfrxDBDataset;
    frxDB_cmp_contractors: TfrxDBDataset;
    Label13: TLabel;
    cxImageComboBox1: TcxImageComboBox;
    frxDBD_cmp_detail_main: TfrxDBDataset;
    frxDB_cmp_funds_main: TfrxDBDataset;
    frxDB_cmp_funds_lsk: TfrxDBDataset;
    frxDB_cmp_qr: TfrxDBDataset;
    OD_uk: TOracleDataSet;
    DS_uk: TDataSource;
    cxCheckComboBox1: TcxCheckComboBox;
    Label14: TLabel;
    OD_spr_services: TOracleDataSet;
    DS_spr_services: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    KMP_rep1: TOracleDataSet;
    frxDBDataset14: TfrxDBDataset;
    KMP_rep2: TOracleDataSet;
    frxDBDataset15: TfrxDBDataset;
    cxprprtstr1: TcxPropertiesStore;
    CheckBox6: TCheckBox;
    frxPDFExport1: TfrxPDFExport;
    Edit3: TEdit;
    CheckBox7: TCheckBox;
    frxDB_cmp_main_arch: TfrxDBDataset;
    pnl1: TPanel;
    Label15: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cx3: TcxLookupComboBox;
    DS_sel_obj: TDataSource;
    cxLookupComboBox4: TcxLookupComboBox;
    cxImageComboBox2: TcxImageComboBox;
    frxDBData_arch3: TfrxDBDataset;
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
    procedure OD_sel_objAfterOpen(DataSet: TDataSet);
    procedure sel_ls_cnt;
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboboxEh5CloseUp(Sender: TObject; Accept: Boolean);
    procedure sel_lsk;
    procedure DBLookupComboboxEh7CloseUp(Sender: TObject; Accept: Boolean);
    procedure cbb1PropertiesCloseUp(Sender: TObject);
    procedure DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
    procedure OD_ls_cntBeforeOpen(DataSet: TDataSet);
    procedure OD_ls_cntAfterOpen(DataSet: TDataSet);
    procedure compound_report(p_var: Integer);
    procedure old_report(pen_last_month_: Integer; repVar: string);
    procedure fillUk();
    function getStrUk(): string;
    procedure selAllUk();
    procedure deSelAllUk();
    procedure kart_pr_report;
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure cxLookupComboBox3PropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBox4PropertiesPopup(Sender: TObject);
    procedure cxImageComboBox2PropertiesCloseUp(Sender: TObject);
    procedure cxImageComboBox2PropertiesChange(Sender: TObject);
  private
    sel_obj_: Integer;
    cnt_sch_: Integer;
    tp_: Integer;
  public
    { Public declarations }
  end;

var
  Form_print_bills: TForm_print_bills;

implementation

uses
  Unit_status, Unit_Mainform, DM_module1, Unit_list_kart, Utils,
  Unit_get_pay_nal;
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
  repVar: string;
begin
  // СЧЕТ

  // ПОДГОТОВКА датасетов, установка параметров
  wwDBEdit1.Text := RightStr('00000000' + wwDBEdit1.Text, 8);
  wwDBEdit2.Text := RightStr('00000000' + wwDBEdit2.Text, 8);

  if (DBLookupComboboxEh1.KeyValue = null) or ((DBLookupComboboxEh5.KeyValue =
    null) and ((tp_ = 2) or (tp_ = 5) or (tp_ = 7))) then
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

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  // датасет основных параметров. (наим.орг, файл счета)
  OD_t_org.Active := false;
  OD_t_org.SetVariable('var_', tp_);
  OD_t_org.SetVariable('mg_', DBLookupComboboxEh1.KeyValue);
  OD_t_org.Active := true;

  // подготовку делаем в случае выбора либо 1 л.с. либо 1 квартиры
  // и только не по арх спр.
  if (tp_ <> 2) and (tp_ <> 5)  and (tp_ <> 7) and (sel_obj_ = 0)
    and (wwDBEdit1.Text = wwDBEdit2.Text)
    and (CheckBox3.Checked = True) then
  begin
    //по 1 лс.
    DataModule1.OraclePackage1.CallProcedure('scott.GEN.prepare_arch_k_lsk',
      [Form_main.k_lsk_id_, pen_last_month_, 0]);
  end
  else if (tp_ <> 2) and (tp_ <> 5)  and (tp_ <> 7) and (tp_ <> 6) and (sel_obj_ = 1)
    and (DBLookupComboboxEh4.KeyValue <> null)
    and (CheckBox3.Checked = True) then
  begin
    //по 1 квартире
    DataModule1.OraclePackage1.CallProcedure('scott.GEN.prepare_arch_k_lsk',
      [Form_main.k_lsk_id_, pen_last_month_, 0]);
  end;

  // тип отчета

  if (tp_ = 6) then
    // поквартирная карточка
    kart_pr_report()
  else if (OD_t_org.FieldByName('BILL_TP').asInteger = 0) or
    (OD_t_org.FieldByName('BILL_TP').asInteger = 1) or
    (OD_t_org.FieldByName('BILL_TP').asInteger = 2) or
    (tp_ = 2) or (tp_ = 5)  or (tp_ = 7) or (tp_ = 1) then
    // старый вариант отчетности или арх.справ или арх.справ-2
    old_report(pen_last_month_, repVar)
  else if (OD_t_org.FieldByName('BILL_TP').asInteger = 3) or
    (OD_t_org.FieldByName('BILL_TP').asInteger = 4) then
    // составной счет
    compound_report(OD_t_org.FieldByName('BILL_TP').asInteger)
  else
    Application.MessageBox('Некорректный BILL_TP в таблице spr_services!',
      'Внимание!', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);

  if FF('Form_status', 0) = 1 then
    Form_status.Close;
end;

// поквартирная карточка

procedure TForm_print_bills.kart_pr_report;
begin
  // главный датасет
  //OD_cmp_main.Active:=false;
  //OD_cmp_main.SetVariable('p_for_arch', 1); // как для арх справ?
  DM_Bill.Uni_cmp_main.Active := False;
  //DM_Bill.Uni_cmp_main.ParamByName('p_for_arch').AsInteger := 1;

  DM_Bill.Uni_rep1.Active := false;
  DM_Bill.Uni_rep2.Active := false;

  if sel_obj_ = 2 then
  begin
    //только для УК
    //ограничивать диапазон записи для печати счетов
    //OD_cmp_main.SetVariable('p_firstNum',
      //OD_ls_cnt.FieldByName('first_rec').AsInteger);
    //OD_cmp_main.SetVariable('p_lastNum',
      //OD_ls_cnt.FieldByName('last_rec').AsInteger);
    DM_Bill.Uni_cmp_main.ParamByName('p_firstNum').AsInteger :=
      OD_ls_cnt.FieldByName('first_rec').AsInteger;
    DM_Bill.Uni_cmp_main.ParamByName('p_lastNum').AsInteger :=
      OD_ls_cnt.FieldByName('last_rec').AsInteger;
  end
  else
  begin
    //не ограничивать диапазон записи для печати счетов
    //OD_cmp_main.SetVariable('p_firstNum', 0);
    //OD_cmp_main.SetVariable('p_lastNum', 1000000000);
    DM_Bill.Uni_cmp_main.ParamByName('p_firstNum').AsInteger :=
      0;
    DM_Bill.Uni_cmp_main.ParamByName('p_lastNum').AsInteger :=
      1000000000;
  end;

  // установить параметры
  //OD_cmp_main.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  DM_Bill.Uni_cmp_main.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;

  // список УК для фильтра
  //OD_cmp_main.SetVariable('p_sel_uk', getStrUk());
  DM_Bill.Uni_cmp_main.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  //OD_cmp_main.SetVariable('p_sel_obj', sel_obj_);
  DM_Bill.Uni_cmp_main.ParamByName('p_sel_obj').AsInteger :=
    sel_obj_;

  //OD_cmp_main.SetVariable('p_reu', cbb1.EditValue);
  //OD_cmp_main.SetVariable('p_lsk', wwDBEdit1.Text);
  //OD_cmp_main.SetVariable('p_lsk1', wwDBEdit2.Text);
  //OD_cmp_main.SetVariable('p_kul', DBLookupComboboxEh2.KeyValue);
  DM_Bill.Uni_cmp_main.ParamByName('p_reu').AsString := cbb1.EditValue;
  DM_Bill.Uni_cmp_main.ParamByName('p_lsk').AsString := wwDBEdit1.Text;
  DM_Bill.Uni_cmp_main.ParamByName('p_lsk1').AsString := wwDBEdit2.Text;
  if not VarIsNull(DBLookupComboboxEh2.KeyValue) then
    DM_Bill.Uni_cmp_main.ParamByName('p_kul').AsString :=
      DBLookupComboboxEh2.KeyValue
  else
    DM_Bill.Uni_cmp_main.ParamByName('p_kul').clear;

  //if DBLookupComboboxEh3.KeyValue <> null then
  if not VarIsNull(DBLookupComboboxEh3.KeyValue) then
    //OD_cmp_main.SetVariable('p_nd', OD_houses.FieldByName('nd_id').AsString)
    DM_Bill.Uni_cmp_main.ParamByName('p_nd').AsString :=
      OD_houses.FieldByName('nd_id').AsString
  else
    //OD_cmp_main.SetVariable('p_nd', null);
    DM_Bill.Uni_cmp_main.ParamByName('p_nd').Clear;

  if DBLookupComboboxEh4.KeyValue <> null then
    //OD_cmp_main.SetVariable('p_kw', OD_kw.FieldByName('kw_id').AsString)
    DM_Bill.Uni_cmp_main.ParamByName('p_kw').AsString :=
      OD_kw.FieldByName('kw_id').AsString
  else
    DM_Bill.Uni_cmp_main.ParamByName('p_kw').Clear;
  //OD_cmp_main.SetVariable('p_kw', null);

  // печатать ли закрытые счета
  if CheckBox2.Checked = true then
  begin
    //OD_cmp_main.SetVariable('p_is_closed', 1);
    DM_Bill.Uni_cmp_main.ParamByName('p_is_closed').AsInteger := 1;
  end
  else
  begin
    //OD_cmp_main.SetVariable('p_is_closed', 0);
    DM_Bill.Uni_cmp_main.ParamByName('p_is_closed').AsInteger := 0;
  end;

  // активировать датасеты
  //OD_cmp_main.Active := true;
  DM_Bill.Uni_cmp_main.Active := True;
  DM_Bill.Uni_rep1.Active := true;
  DM_Bill.Uni_rep2.Active := true;
  frxReport1.LoadFromFile(Form_main.exepath_ + '\справка_пасп3.fr3', True);
  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
end;

// составной счет

procedure TForm_print_bills.compound_report(p_var: Integer);
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

  if sel_obj_ = 2 then
  begin
    //только для УК
    //ограничивать диапазон записи для печати счетов
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_firstNum').AsInteger :=
      OD_ls_cnt.FieldByName('first_rec').AsInteger;
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_lastNum').AsInteger :=
      OD_ls_cnt.FieldByName('last_rec').AsInteger;
    if cxLookupComboBox2.EditValue <> null then
      DM_Bill.Uni_cmp_main.Params.ParamByName('p_postcode').AsString :=
        cxLookupComboBox2.EditValue
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
    DBLookupComboboxEh1.KeyValue;
  // список УК для фильтра
  DM_Bill.Uni_cmp_main.Params.ParamByName('p_sel_uk').AsString := getStrUk();

  DM_Bill.Uni_cmp_contractors.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;

  DM_Bill.Uni_cmp_contractors.Params.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;
  DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;
  DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;
  DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;
  DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;
  DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;
  DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_sel_uk').AsString :=
    getStrUk();

  // здесь не нужен фильтр p_sel_uk, так как выборка по p_lsk
  DM_Bill.Uni_cmp_funds_lsk.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;

  DM_Bill.Uni_cmp_qr.Params.ParamByName('p_mg').AsString :=
    DBLookupComboboxEh1.KeyValue;
  DM_Bill.Uni_cmp_qr.Params.ParamByName('p_sel_uk').AsString :=
    getStrUk();

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
    cxImageComboBox1.ItemIndex;
  DM_Bill.Uni_cmp_detail_primary.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    cxImageComboBox1.ItemIndex;
  DM_Bill.Uni_cmp_detail_cap.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    cxImageComboBox1.ItemIndex;
  DM_Bill.Uni_cmp_detail_main.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    cxImageComboBox1.ItemIndex;
  DM_Bill.Uni_cmp_funds_primary.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    cxImageComboBox1.ItemIndex;
  DM_Bill.Uni_cmp_funds_cap.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    cxImageComboBox1.ItemIndex;
  DM_Bill.Uni_cmp_funds_main.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    cxImageComboBox1.ItemIndex;
  DM_Bill.Uni_cmp_qr.Params.ParamByName('p_sel_flt_tp').AsInteger :=
    cxImageComboBox1.ItemIndex;
  DM_Bill.Uni_cmp_main.Params.ParamByName('p_sel_obj').AsInteger := sel_obj_;
  if cbb1.EditValue <> null then
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_reu').AsString := cbb1.EditValue
  else
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_reu').Clear;

  DM_Bill.Uni_cmp_main.Params.ParamByName('p_lsk').AsString := wwDBEdit1.Text;
  DM_Bill.Uni_cmp_main.Params.ParamByName('p_lsk1').AsString := wwDBEdit2.Text;
  if not VarIsNull(DBLookupComboboxEh2.KeyValue) then
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_kul').AsString :=
      DBLookupComboboxEh2.KeyValue
  else
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_kul').Clear;

  if not VarIsNull(DBLookupComboboxEh3.KeyValue) then
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_nd').AsString :=
      OD_houses.FieldByName('nd_id').AsString
  else
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_nd').Clear;

  if DBLookupComboboxEh4.KeyValue <> null then
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_kw').AsString :=
      OD_kw.FieldByName('kw_id').AsString
  else
    DM_Bill.Uni_cmp_main.Params.ParamByName('p_kw').Clear;

  // печатать ли закрытые счета
  if CheckBox2.Checked = true then
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

  Edit2.Text := 'Путь к файлу счета:' + Form_main.exepath_ +
    VarToStr(cxLookupComboBox1.EditValue);
  frxReport1.LoadFromFile(Form_main.exepath_ +
    VarToStr(cxLookupComboBox1.EditValue), True);
  Edit2.Visible := true;

  // открыть отчет
  frxReport1.PrepareReport(true);
  Form_status.Close;

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

  if CheckBox6.Checked then
  begin
    // экспортировать в PDF
    frxPDFExport1.FileName := Edit3.Text;
    frxReport1.Export(frxPDFExport1);
  end
  else
    // показать отчет
    frxReport1.ShowPreparedReport;

end;

// старый вариант отчетности

procedure TForm_print_bills.old_report(pen_last_month_: Integer; repVar:
  string);
begin
  // главный датасет для справки арх-2
  DM_Bill.Uni_cmp_main_arch.Active := false;
  // главный датасет
  OD_main.Active := false;
  OD_data.Active := false;
  OD_detail.Active := false;

  OD_t_org2.Active := false;
  OD_t_org3.Active := false;
  OD_data2.Active := false;
  DM_Bill.Uni_arch.Active := false;

  OD_data3.Active := false;
  OD_data6.Active := false;
  OD_vvod.Active := false;
  //OD_arch_supp.Active := false;
  DM_Bill.Uni_arch_supp.Active := false;

  OD_main.SetVariable('mg_', DBLookupComboboxEh1.KeyValue);

  OD_main.SetVariable('sel_obj_', sel_obj_);
  OD_main.SetVariable('reu_', cbb1.EditValue);
  OD_main.SetVariable('lsk_', wwDBEdit1.Text);
  OD_main.SetVariable('lsk1_', wwDBEdit2.Text);

  if not VarIsNull(DBLookupComboboxEh2.KeyValue) then
    OD_main.SetVariable('kul_', DBLookupComboboxEh2.KeyValue)
  else
    OD_main.SetVariable('kul_', null);

  if not VarIsNull(DBLookupComboboxEh3.KeyValue) then
    OD_main.SetVariable('nd_', OD_houses.FieldByName('nd_id').AsString)
  else
    OD_main.SetVariable('nd_', null);

  if DBLookupComboboxEh4.KeyValue <> null then
    OD_main.SetVariable('kw_', OD_kw.FieldByName('kw_id').AsString)
  else
    OD_main.SetVariable('kw_', null);

  if (tp_ = 5) or (tp_ = 7) then //справка арх-2
  begin
    if sel_obj_ = 2 then
    begin
      //только для УК
      //ограничивать диапазон записи для печати счетов
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_firstNum').AsInteger :=
        OD_ls_cnt.FieldByName('first_rec').AsInteger;

      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_lastNum').AsInteger :=
        OD_ls_cnt.FieldByName('last_rec').AsInteger;
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
    //  DBLookupComboboxEh5.KeyValue;
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
        OD_houses.FieldByName('nd_id').AsString
    else
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_nd').Clear;

    if not VarIsNull(DBLookupComboboxEh4.KeyValue) then
      DM_Bill.Uni_cmp_main_arch.Params.ParamByName('p_kw').AsString :=
        OD_kw.FieldByName('kw_id').AsString
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
    if OD_ls_cnt.FieldByName('first_rec').AsInteger = 0 then
    begin
      OD_main.SetVariable('cnt_rec_', 0);
    end
    else
    begin
      OD_main.SetVariable('cnt_rec_', 1);
      OD_main.SetVariable('first_rec_',
        OD_ls_cnt.FieldByName('first_rec').AsInteger);
      OD_main.SetVariable('last_rec_',
        OD_ls_cnt.FieldByName('last_rec').AsInteger);
    end;
  end
  else
  begin
    //не ограничивать диапазон записи для печати счетов
    OD_main.SetVariable('cnt_rec_', 0);
  end;

  if (tp_ = 0) then //счёт
  begin
    OD_data.SetVariable('var_', tp_);
    OD_data.SetVariable('mg1_', DBLookupComboboxEh1.KeyValue);
    OD_data.SetVariable('mg2_', DBLookupComboboxEh1.KeyValue);

    if (OD_t_org.FieldByName('BILL_TP').asInteger = 1) or
      (OD_t_org.FieldByName('BILL_TP').asInteger = 2) then
    begin
      OD_detail.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
      OD_detail_ext.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
    end;
  end
  else if (tp_ = 4) then //счёт для УСЗН
  begin
    OD_data.SetVariable('var_', tp_);
    OD_data.SetVariable('mg1_', DBLookupComboboxEh1.KeyValue);
    OD_data.SetVariable('mg2_', DBLookupComboboxEh1.KeyValue);
  end
  else if tp_ = 1 then //справочник квартиросъемщиков
  begin
    OD_data.SetVariable('var_', 0);
    OD_data.SetVariable('mg1_', DBLookupComboboxEh1.KeyValue);
    OD_data.SetVariable('mg2_', DBLookupComboboxEh1.KeyValue);
  end
  else if (tp_ = 5) or (tp_ = 7) then //справка арх-2
  begin
    wwDBEdit2.Text := wwDBEdit1.Text;
    //OD_arch.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    //OD_arch.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);
    DM_Bill.Uni_arch.Params.ParamByName('p_sel_uk').AsString :=
      getStrUk();
      
    if tp_=5 then  
      DM_Bill.Uni_arch.Params.ParamByName('p_tp').AsInteger :=0
    else
      DM_Bill.Uni_arch.Params.ParamByName('p_tp').AsInteger :=1;
    
    DM_Bill.Uni_arch.Params.ParamByName('p_mg1').AsString :=
      DBLookupComboboxEh1.KeyValue;
    DM_Bill.Uni_arch.Params.ParamByName('p_mg2').AsString :=
      DBLookupComboboxEh5.KeyValue;

    DM_Bill.Uni_arch_supp.Params.ParamByName('p_sel_uk').AsString :=
      getStrUk();
    DM_Bill.Uni_arch_supp.Params.ParamByName('p_mg1').AsString :=
      DBLookupComboboxEh1.KeyValue;
    DM_Bill.Uni_arch_supp.Params.ParamByName('p_mg2').AsString :=
      DBLookupComboboxEh5.KeyValue;

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

  //Справка о задолженности
  if sel_obj_ = 0 then
  begin
    //по л.с.
    OD_data3.SetVariable('p_lsk', wwDBEdit1.Text);
    OD_data3.SetVariable('k_lsk_id_', 0);
  end
  else
  begin
    //по адресу
    OD_data3.SetVariable('k_lsk_id_', Form_main.k_lsk_id_);
  end;

  //печатать ли по старому фонду счета
  if CheckBox2.Checked = true then
  begin
    OD_main.SetVariable('var2_', 1);
    OD_data.SetVariable('var2_', 1);
  end
  else
  begin
    OD_main.SetVariable('var2_', 0);
    OD_data.SetVariable('var2_', 0);
  end;

  //печатать ли дополнительные счета
  if chk1.Checked = true then
  begin
    OD_main.SetVariable('var3_', 0);
  end
  else
  begin
    OD_main.SetVariable('var3_', 1);
  end;

  if (tp_ = 0) or (tp_ = 1) or (tp_ = 4) then
  begin
    //Счета
    OD_main.Active := true;
    //новый счет
    if (OD_t_org.FieldByName('BILL_TP').asInteger = 1) then
    begin
      OD_detail.Active := true;
      OD_detail2.Active := true;
    end
    else if (OD_t_org.FieldByName('BILL_TP').asInteger = 2) then
    begin
      OD_detail_ext.Active := true;
    end
    else
    begin
      OD_data.Active := true;
    end;
    OD_data4.Active := true;

    OD_t_org2.Active := false;
    //Временно сделал false, надо разобраться зачем он нужен... 30.12.14
    OD_t_org3.Active := true;
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
    OD_data3.Active := true;
  end;

  //Датасет (долги по всем лицевым счетам адреса (для Кис.))
  if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param',
    ['DEB_FOR_BILLS']) = 1 then
  begin
    OD_data6.Active := true;
  end;

  //Кубы по дому, для 354 постановления
  OD_vvod.Active := true;

  // ЗАГРУЗКА отчёта
  if (((tp_ = 0) or (tp_ = 4)) and (OD_main.RecordCount = 0) or (tp_ = 1)
    and (OD_main.RecordCount = 0)) then
  begin
    Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16
      + MB_APPLMODAL);
    Form_status.Close;
  end
  else if (((tp_ = 2) or (tp_ = 5) or (tp_ = 7)) and (DM_Bill.Uni_cmp_main_arch.RecordCount =
    0)) then
  begin
    Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16
      + MB_APPLMODAL);
    Form_status.Close;
  end
  else if ((tp_ = 3) and (OD_data3.RecordCount = 0)) then
  begin
    Application.MessageBox('Нет задолженности', 'Внимание!', 16 + MB_APPLMODAL);
    Form_status.Close;
  end
  else
  begin
    Edit2.Text := '';
    Edit2.Visible := false;

    // выбор отчета - лазерный/матричный
    if CheckBox5.Checked = True then
      // лазерный принтер
      repVar := 'lp_'
    else
      // матричный принтер
      repVar := '';

    if (tp_ = 0) or (tp_ = 4) then
    begin
      //Счета
      frxReport1.LoadFromFile(Form_main.exepath_ + repVar +
        OD_t_org.FieldByName('FNAME_SCH').asString, True);
      Edit2.Text := 'Путь к файлу счета:' + Form_main.exepath_ + repVar +
        OD_t_org.FieldByName('FNAME_SCH').asString;
      Edit2.Visible := true;

      //В счет ставим реквизиты организации
      frxReport1.Variables['name_org'] := '''' +
        OD_t_org.FieldByName('name').AsString + '''';
      frxReport1.Variables['inn'] := '''' + OD_t_org.FieldByName('inn').AsString
        + '''';
      frxReport1.Variables['raschet_schet'] := '''' +
        OD_t_org.FieldByName('raschet_schet').AsString + '''';
      frxReport1.Variables['bank'] := '''' +
        OD_t_org.FieldByName('bank').AsString + '''';
      frxReport1.Variables['adr'] := '''' +
        OD_t_org.FieldByName('post_indx').AsString + ', ' +
        OD_t_org.FieldByName('adr').AsString + '''';
      frxReport1.Variables['phone'] := '''' +
        OD_t_org.FieldByName('phone').AsString + '''';

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
      frxReport1.LoadFromFile(Form_main.exepath_ + 'спр_кв.fr3', True);
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 2 then
    begin
      //Справка из архива
      frxReport1.LoadFromFile(Form_main.exepath_ + 'арх_спр1.fr3', True);
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 5 then
    begin
      //Справка из архива-2
      frxReport1.LoadFromFile(Form_main.exepath_ + 'арх_спр4.fr3', True);
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 7 then
    begin
      //Справка из архива-3
      frxReport1.LoadFromFile(Form_main.exepath_ + 'арх_спр5.fr3', True);
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 3 then
    begin
      //Cправка о задолженности
      if DataModule1.OraclePackage1.CallIntegerFunction //старый вариант
      ('scott.Utils.get_int_param', ['SPR_DEB_VAR']) = 0 then
        frxReport1.LoadFromFile(Form_main.exepath_ + repVar +
          'Счет_на_оплату1.fr3', True)
      else if DataModule1.OraclePackage1.CallIntegerFunction //новый вариант
      ('scott.Utils.get_int_param', ['SPR_DEB_VAR']) = 1 then
        frxReport1.LoadFromFile(Form_main.exepath_ + repVar + 'спр_задолжн.fr3',
          True);

      frxReport1.PrepareReport(true);
    end;
    Form_status.Close;
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
  OD_houses.Active := true;
  DBLookupComboboxEh3.Enabled := true;
  DBLookupComboboxEh3.KeyValue := null;
  {OD_houses.FieldByName('HOUSE_ID').AsString}
end;

procedure TForm_print_bills.DBLookupComboboxEh3CloseUp(Sender: TObject; Accept:
  Boolean);
begin
  OD_kw.Active := true;
  DBLookupComboboxEh4.Enabled := true;
  DBLookupComboboxEh4.KeyValue := null
end;

procedure TForm_print_bills.DBLookupComboboxEh2Enter(Sender: TObject);
begin
  OD_kw.Active := false;
  DBLookupComboboxEh4.Enabled := false;
  OD_houses.Active := false;
  DBLookupComboboxEh3.Enabled := false;
end;

procedure TForm_print_bills.DBLookupComboboxEh3Enter(Sender: TObject);
begin
  OD_kw.Active := false;
  DBLookupComboboxEh4.Enabled := false;
end;

procedure TForm_print_bills.set_lsk(var_: integer; lsk1_: string);
begin
  if var_ = 0 then
  begin
    //по л.с.
        //Form_main.c_lsk_id_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.UTILS.GET_C_LSK_ID_BY_LSK', [lsk1_]);
    Form_main.k_lsk_id_ :=
      DataModule1.OraclePackage1.CallIntegerFunction('scott.UTILS.GET_K_LSK_ID_BY_LSK', [lsk1_]);
  end
  else
  begin
    //по адресу
        //Form_main.c_lsk_id_ := OD_kw.FieldByName('c_lsk_id').AsInteger;
    Form_main.k_lsk_id_ := OD_kw.FieldByName('k_lsk_id').AsInteger;
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

  finally
    Items.EndUpdate;
  end;

  /////////

  //Выбран поиск по адресу (по умолчанию)
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
  OD_mg.Active := True;
  OD_mg1.Active := True;
  OD_reu.Active := True;
  OD_spr_services.Active := True;

  if (FF('Form_list_kart', 0) = 1) or ((wwDBEdit1.Text = wwDBEdit2.Text)
    and (wwDBEdit1.Text <> '') and (wwDBEdit2.Text <> '')) or
    (DBLookupComboboxEh4.KeyValue <> null) then
  begin
    //Возможность видеть дома старого фонда
    OD_houses.Active := false;
    OD_houses.SetVariable('var', 0);
    OD_houses.Active := true;
  end
  else
  begin
    // не возможность видеть дома старого фонда
    OD_houses.Active := false;
    OD_houses.SetVariable('var', 1);
    OD_houses.Active := true;
  end;

  OD_kw.Active := true;
  sel_lsk;
  // по умолчанию - выбор печать по адресу
  sel_obj_ := 1;
  OD_sel_obj.Active := false;
  OD_sel_obj.SetVariable(':var_', tp_);
  OD_sel_obj.Active := True;
  //wwDBLookupCombo1.LookupValue := '0';
  cx3.EditValue := '0';
  // кол-во счетов по умолчанию
  cnt_sch_ := 1000;
  Edit1.Text := IntToStr(cnt_sch_);
  // фильтр по умолчанию
  cxImageComboBox1.ItemIndex := 0;
  // наполнить списком УК
  fillUk();
  //Настройки расположения формы
  cxprprtstr1.Active := True;
  cxprprtstr1.RestoreFrom;
end;

procedure TForm_print_bills.sel_lsk;
var
  keySel: Variant;
begin
  if FF('Form_get_pay_nal', 0) = 1 then
  begin
    //ComboBox1.ItemIndex := 0;
    cxImageComboBox2.ItemIndex := 0;
    wwDBEdit1.Text := Form_get_pay_nal.OD_kart.FieldByName('lsk').AsString;
    wwDBEdit2.Text := Form_get_pay_nal.OD_kart.FieldByName('lsk').AsString;
    OD_mg.First;
    cbb1.EditValue := Form_get_pay_nal.OD_kart.FieldByName('reu').AsString;
    DBLookupComboboxEh2.KeyValue :=
      Form_get_pay_nal.OD_Kart.FieldByName('kul').AsString;

    keySel := VarArrayCreate([0, 2], varVariant);
    keySel[0] := Form_list_kart.OD_list_kart.FieldByName('reu').AsString;
    keySel[1] := Form_list_kart.OD_list_kart.FieldByName('kul').AsString;
    keySel[2] := Form_list_kart.OD_list_kart.FieldByName('nd').AsString;
    //DBLookupComboboxEh3.Enabled:=True;
    DBLookupComboboxEh3.KeyValue := keySel;

    //DBLookupComboboxEh3.KeyValue := Form_get_pay_nal.OD_Kart.FieldByName('house_id').AsString;
    //DBLookupComboboxEh4.KeyValue := Form_get_pay_nal.OD_Kart.FieldByName('lsk').AsString;
    DBLookupComboboxEh4.KeyValue :=
      Form_get_pay_nal.OD_Kart.FieldByName('k_lsk_id').AsString;

    // по умолчанию период
    DBLookupComboboxEh1.KeyValue :=
      Form_print_bills.OD_mg.FieldByName('mg').AsString;
    OD_spr_services.SetVariable('p_mg',
      Form_print_bills.OD_mg.FieldByName('mg').AsString);
    OD_spr_services.Active := False;
    OD_spr_services.Active := True;
    cxLookupComboBox1.EditValue :=
      OD_spr_services.FieldByName('FNAME_SCH').AsString;

    //Form_main.c_lsk_id_ := Form_get_pay_nal.OD_Kart.FieldByName('c_lsk_id').AsInteger;
    Form_main.k_lsk_id_ :=
      Form_get_pay_nal.OD_Kart.FieldByName('k_lsk_id').AsInteger;
  end
  else if FF('Form_list_kart', 0) = 1 then
  begin
    //ComboBox1.ItemIndex := 0;
    cxImageComboBox2.ItemIndex := 0;
    wwDBEdit1.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    wwDBEdit2.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    OD_mg.First;
    cbb1.EditValue := Form_list_kart.OD_list_kart.FieldByName('reu').AsString;
    DBLookupComboboxEh2.KeyValue :=
      Form_list_kart.OD_list_kart.FieldByName('kul').AsString;

    keySel := VarArrayCreate([0, 2], varVariant);
    keySel[0] := Form_list_kart.OD_list_kart.FieldByName('reu').AsString;
    keySel[1] := Form_list_kart.OD_list_kart.FieldByName('kul').AsString;
    keySel[2] := Form_list_kart.OD_list_kart.FieldByName('nd').AsString;

    //DBLookupComboboxEh3.Enabled:=True;
    DBLookupComboboxEh3.KeyValue := keySel;
    //DBLookupComboboxEh3.KeyValue := Form_list_kart.OD_list_kart.FieldByName('house_id').AsString;
    DBLookupComboboxEh4.KeyValue :=
      Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger;
    //DBLookupComboboxEh4.KeyValue := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    //Exit;
    // по умолчанию период
    DBLookupComboboxEh1.KeyValue :=
      Form_print_bills.OD_mg.FieldByName('mg').AsString;
    OD_spr_services.SetVariable('p_mg',
      Form_print_bills.OD_mg.FieldByName('mg').AsString);
    OD_spr_services.Active := False;
    OD_spr_services.Active := True;
    cxLookupComboBox1.EditValue :=
      OD_spr_services.FieldByName('FNAME_SCH').AsString;

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
  wwDBEdit1.Text := OD_kw.FieldByName('lsk').AsString;
  wwDBEdit2.Text := OD_kw.FieldByName('lsk').AsString;
  //Form_main.c_lsk_id_ := OD_kw.FieldByName('c_lsk_id').AsInteger;
  Form_main.k_lsk_id_ := OD_kw.FieldByName('k_lsk_id').AsInteger;
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
    cbb1.EditValue := OD_reu.FieldByName('reu').AsString;

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

procedure TForm_print_bills.OD_sel_objAfterOpen(DataSet: TDataSet);
begin
  if sel_obj_ = 2 then
    OD_ls_cnt.Active := true;
end;

procedure TForm_print_bills.sel_ls_cnt;
begin
  //задаем период для выборки кол-ва л.с., для печати счетов сотнями
  OD_ls_cnt.Active := false;
  if (tp_ = 0) or (tp_ = 1)
    or (tp_ = 4) or (tp_ = 6) then
    // счет
    OD_ls_cnt.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue)
  else
    // остальные отчеты (арх.справ.)
    OD_ls_cnt.SetVariable('p_mg', DBLookupComboboxEh5.KeyValue);

  OD_ls_cnt.SetVariable('p_reu', cbb1.EditValue);
  OD_ls_cnt.Active := true;
  if OD_ls_cnt.RecordCount = 0 then
    cxLookupComboBox4.EditValue := 0
  else
    cxLookupComboBox4.EditValue := OD_ls_cnt.FieldByName('first_rec').AsString;

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

procedure TForm_print_bills.DBLookupComboboxEh5CloseUp(Sender: TObject; Accept:
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

procedure TForm_print_bills.DBLookupComboboxEh1CloseUp(Sender: TObject; Accept:
  Boolean);
begin
  if sel_obj_ = 2 then
    sel_ls_cnt;
  OD_spr_services.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_spr_services.Active := False;
  OD_spr_services.Active := True;
  cxLookupComboBox1.EditValue :=
    OD_spr_services.FieldByName('FNAME_SCH').AsString;
end;

procedure TForm_print_bills.OD_ls_cntBeforeOpen(DataSet: TDataSet);
begin
  pnl1.Visible := true;
  Update;
end;

procedure TForm_print_bills.OD_ls_cntAfterOpen(DataSet: TDataSet);
begin
  pnl1.Visible := false;
end;

// наполнить checkComboBox значениями УК

procedure TForm_print_bills.fillUk();
var
  i: Integer;
begin
  OD_uk.Active := True;
  while not OD_uk.Eof do
  begin
    with cxCheckComboBox1.Properties.Items.Add do
    begin
      Description := OD_uk.FieldByName('reu').AsString + ' '
        + OD_uk.FieldByName('name').AsString;
    end;
    OD_uk.Next;
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
  if OD_ls_cnt.GetVariable('p_cnt') <> IntToStr(cnt_sch_) then
  begin
    OD_ls_cnt.SetVariable('p_cnt', cnt_sch_);
    OD_ls_cnt.Active := False;
    OD_ls_cnt.Active := True;
  end;
end;

procedure TForm_print_bills.cxImageComboBox2PropertiesCloseUp(
  Sender: TObject);
begin
  OD_sel_obj.Active := false;
  OD_sel_obj.SetVariable(':var_', tp_);
  OD_sel_obj.Active := True;
  sel_obj_ := OD_sel_obj.FieldByName('id').AsInteger;
  //wwDBLookupCombo1.LookupValue := OD_sel_obj.FieldByName('id').AsString;
  cx3.EditValue := OD_sel_obj.FieldByName('id').AsString;
  set_obj;
  if tp_ = 0 then // Счета
  begin
    Label3.Caption := 'Период отчета';
    Label9.Visible := false;
    DBLookupComboboxEh5.Visible := false;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := true;
    Label13.Enabled := True;
    cxImageComboBox1.Enabled := True;
  end
  else if (tp_ = 2) or (tp_ = 5) or (tp_ = 7) then
    // Справка из архива
  begin
    Label3.Caption := 'Период отчета, с';
    Label9.Visible := true;
    DBLookupComboboxEh5.Visible := true;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := false;
    CheckBox4.Visible := false;
    CheckBox5.Visible := false;
    Label13.Enabled := false;
    cxImageComboBox1.Enabled := false;
  end
  else if tp_ = 3 then // Справка о задолженности
  begin
    Label3.Caption := 'Период отчета';
    Label9.Visible := false;
    DBLookupComboboxEh5.Visible := false;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := false;
    Label13.Enabled := false;
    cxImageComboBox1.Enabled := false;
    CheckBox5.Visible := true;
  end
  else
  begin
    Label3.Caption := 'Период отчета';
    Label9.Visible := false;
    DBLookupComboboxEh5.Visible := false;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := false;
    Label13.Enabled := false;
    cxImageComboBox1.Enabled := false;
  end
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

end.

