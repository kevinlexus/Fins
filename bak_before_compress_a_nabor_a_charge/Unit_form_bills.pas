unit Unit_form_bills;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, frxClass,
  frxDBSet, StrUtils, ExtCtrls, frxBarcode, frxCross, wwdbedit, frxDesgn,
  wwdblook, DBGridEh, frxDMPExport, Oracle, frxExportXLS, frxExportRTF, Grids,
  DBGrids, wwclearbuttongroup, wwradiogroup, Wwdotdot, Wwdbcomb, syQRcode,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

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
    ComboBox1: TComboBox;
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
    OD_kart: TOracleDataSet;
    DS_kart: TDataSource;
    frxDBData_kart: TfrxDBDataset;
    OD_dataPHONE2: TStringField;
    fltfldOD_dataDOLG2: TFloatField;
    OD_dataDT_SCH: TDateTimeField;
    OD_arch: TOracleDataSet;
    frxDBDataset7: TfrxDBDataset;
    CheckBox3: TCheckBox;
    OD_main: TOracleDataSet;
    frxDB_main: TfrxDBDataset;
    OD_dataORG: TFloatField;
    OD_t_org2: TOracleDataSet;
    frxDBDataset8: TfrxDBDataset;
    OD_reu: TOracleDataSet;
    Label10: TLabel;
    OD_sel_obj: TOracleDataSet;
    wwDBLookupCombo1: TwwDBLookupCombo;
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
    cbb2: TcxLookupComboBox;
    pnl1: TPanel;
    OD_dataBILL_BRAKE: TFloatField;
    OD_detail: TOracleDataSet;
    frxDBDataset11: TfrxDBDataset;
    OD_detail2: TOracleDataSet;
    frxDBDataset12: TfrxDBDataset;
    CheckBox5: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboboxEh2CloseUp(Sender: TObject; Accept: Boolean);
    procedure DBLookupComboboxEh3CloseUp(Sender: TObject; Accept: Boolean);
    procedure DBLookupComboboxEh2Enter(Sender: TObject);
    procedure DBLookupComboboxEh3Enter(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure wwDBEdit2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboboxEh4CloseUp(Sender: TObject; Accept: Boolean);
    procedure wwDBEdit1Change(Sender: TObject);
    procedure wwDBEdit2Change(Sender: TObject);
    procedure set_lsk(var_: integer; lsk1_: string);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure set_obj;
    procedure OD_sel_objAfterOpen(DataSet: TDataSet);
    procedure sel_ls_cnt;
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboboxEh5CloseUp(Sender: TObject; Accept: Boolean);
    procedure sel_lsk;
    procedure DBLookupComboboxEh7CloseUp(Sender: TObject; Accept: Boolean);
    procedure cbb1PropertiesCloseUp(Sender: TObject);
    procedure cbb2PropertiesCloseUp(Sender: TObject);
    procedure cbb2PropertiesPopup(Sender: TObject);
    procedure DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
    procedure OD_ls_cntBeforeOpen(DataSet: TDataSet);
    procedure OD_ls_cntAfterOpen(DataSet: TDataSet);
  private
    sel_obj_: Integer;
    cnt_sch_: Integer;
  public
    { Public declarations }
  end;

var
  Form_print_bills: TForm_print_bills;

implementation

uses
  Unit_status, Unit_Mainform, DM_module1, Unit_list_kart, Utils;

{$R *.dfm}

procedure TForm_print_bills.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_print_bills.Button1Click(Sender: TObject);
var
  pen_last_month_: Integer;
  tp_: Integer;
  repVar: string;
begin
  // СЧЕТ

  // ПОДГОТОВКА датасетов, установка параметров
  wwDBEdit1.Text := RightStr('00000000' + wwDBEdit1.Text, 8);
  wwDBEdit2.Text := RightStr('00000000' + wwDBEdit2.Text, 8);

  if (DBLookupComboboxEh1.KeyValue = null) or ((DBLookupComboboxEh5.KeyValue = null) and (ComboBox1.ItemIndex = 2)) then
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

  OD_main.Active := false;
  OD_data.Active := false;
  OD_detail.Active := false;

  OD_t_org2.Active := false;
  OD_t_org3.Active := false;
  OD_data2.Active := false;
  OD_arch.Active := false;

  OD_data3.Active := false;
  OD_data6.Active := false;
  OD_vvod.Active := false;
  OD_kart.Active := false;

  OD_main.SetVariable('mg_', DBLookupComboboxEh1.KeyValue);
  OD_main.SetVariable('sel_obj_', sel_obj_);
  OD_main.SetVariable('reu_', cbb1.EditValue); //DBLookupComboboxEh7.KeyValue);
  OD_main.SetVariable('lsk_', wwDBEdit1.Text);
  OD_main.SetVariable('lsk1_', wwDBEdit2.Text);

  OD_main.SetVariable('kul_', DBLookupComboboxEh2.KeyValue);
  if DBLookupComboboxEh3.KeyValue <> null then
    OD_main.SetVariable('nd_', OD_houses.FieldByName('nd_id').AsString)
  else
    OD_main.SetVariable('nd_', null);

  if DBLookupComboboxEh4.KeyValue <> null then
    OD_main.SetVariable('kw_', OD_kw.FieldByName('kw_id').AsString)
  else
    OD_main.SetVariable('kw_', null);

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
      OD_main.SetVariable('first_rec_', OD_ls_cnt.FieldByName('first_rec').AsInteger);
      OD_main.SetVariable('last_rec_', OD_ls_cnt.FieldByName('last_rec').AsInteger);
    end;
  end
  else
  begin
    //не ограничивать диапазон записи для печати счетов
    OD_main.SetVariable('cnt_rec_', 0);
  end;

  //OD_t_org выступает в роли датасета основных параметров. (наим.орг, файл счета)
  OD_t_org.Active := false;
  OD_t_org.SetVariable('var_', ComboBox1.ItemIndex);
  OD_t_org.SetVariable('mg_', DBLookupComboboxEh1.KeyValue);
  OD_t_org.Active := true;

  if (ComboBox1.ItemIndex = 0) then //счёт
  begin
    tp_ := 0;
    OD_data.SetVariable('var_', ComboBox1.ItemIndex);
    OD_data.SetVariable('mg1_', DBLookupComboboxEh1.KeyValue);
    OD_data.SetVariable('mg2_', DBLookupComboboxEh1.KeyValue);

    if (OD_t_org.FieldByName('BILL_TP').asInteger = 1) then
    begin
      OD_detail.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
    end;
  end
  else if (ComboBox1.ItemIndex = 4) then //счёт для УСЗН
  begin
    tp_ := 4;
    OD_data.SetVariable('var_', ComboBox1.ItemIndex);
    OD_data.SetVariable('mg1_', DBLookupComboboxEh1.KeyValue);
    OD_data.SetVariable('mg2_', DBLookupComboboxEh1.KeyValue);
  end
  else if ComboBox1.ItemIndex = 1 then //справочник квартиросъемщиков
  begin
    tp_ := 1;
    OD_data.SetVariable('var_', 0);
    OD_data.SetVariable('mg1_', DBLookupComboboxEh1.KeyValue);
    OD_data.SetVariable('mg2_', DBLookupComboboxEh1.KeyValue);
  end
  else if (ComboBox1.ItemIndex = 2) then //справка арх
  begin
    tp_ := 2;
    wwDBEdit2.Text := wwDBEdit1.Text;
    OD_arch.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    OD_arch.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);
    OD_kart.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    OD_kart.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);

    if sel_obj_ = 0 then
    begin
     //по л.с.
      OD_kart.SetVariable('p_lsk', wwDBEdit1.Text);
      OD_kart.SetVariable('p_adr', 0);
    end
    else
    begin
     //по адресу
      OD_kart.SetVariable('p_lsk', OD_kw.FieldByName('lsk').AsString);
      OD_kart.SetVariable('p_adr', 1);
    end;
    OD_kart.Active := true;
  end
  else if (ComboBox1.ItemIndex = 5) then //справка арх-2
  begin
    tp_ := 5;
    wwDBEdit2.Text := wwDBEdit1.Text;
    OD_arch.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    OD_arch.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);
    OD_kart.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    OD_kart.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);

    if sel_obj_ = 0 then
    begin
     //по л.с.
      OD_kart.SetVariable('p_lsk', wwDBEdit1.Text);
      OD_kart.SetVariable('p_adr', 0);
    end
    else
    begin
     //по адресу
      OD_kart.SetVariable('p_lsk', OD_kw.FieldByName('lsk').AsString);
      OD_kart.SetVariable('p_adr', 1);
    end;
    OD_kart.Active := true;
  end
  else if ComboBox1.ItemIndex = 3 then //справка о задолжности
  begin
    tp_ := 3;
    wwDBEdit2.Text := wwDBEdit1.Text;
  end;

   //подготовку делаем в случае выбора либо 1 л.с. либо 1 квартиры
   //и только не по арх спр.
  if (tp_ <> 2) and (tp_ <> 5) and (sel_obj_ = 0) and (wwDBEdit1.Text = wwDBEdit2.Text) and (CheckBox3.Checked = True) then
  begin
      //по 1 лс.
    DataModule1.OraclePackage1.CallProcedure('scott.GEN.prepare_arch_k_lsk', [Form_main.k_lsk_id_, pen_last_month_, 0]);
  end
  else if (tp_ <> 2) and (tp_ <> 5) and (sel_obj_ = 1) and (DBLookupComboboxEh4.KeyValue <> null) and (CheckBox3.Checked = True) then
  begin
     //по 1 квартире
    DataModule1.OraclePackage1.CallProcedure('scott.GEN.prepare_arch_k_lsk', [Form_main.k_lsk_id_, pen_last_month_, 0]);
  end;

  //Справка о задолженности
  OD_data3.SetVariable('k_lsk_id_', Form_main.k_lsk_id_);

  if sel_obj_ = 0 then
  begin
    //по л.с.
    OD_data3.SetVariable('p_lsk', wwDBEdit1.Text);
  end
  else
  begin
    //по адресу
    OD_data3.SetVariable('p_lsk', OD_kw.FieldByName('lsk').AsString);
  end;

  if sel_obj_ = 0 then
  begin
  //По лицевому счету
    if (tp_ = 2) or (tp_ = 5) then //справка арх
    begin
      OD_arch.SetVariable('p_lsk', wwDBEdit1.Text);
      OD_arch.SetVariable('p_adr', 0);
      OD_data2.SetVariable('lsk_', wwDBEdit1.Text);
    end;
  end
  else if sel_obj_ = 1 then
  begin
   //По адресу
    if (tp_ = 2) or (tp_ = 5) then //справка арх
    begin
      OD_arch.SetVariable('p_k_lsk', Form_main.k_lsk_id_);
      OD_arch.SetVariable('p_adr', 1);
      OD_data2.SetVariable('lsk_', null);
      OD_data2.SetVariable('kul_', DBLookupComboboxEh2.KeyValue);
      OD_data2.SetVariable('nd_', OD_houses.FieldByName('nd_id').AsString{DBLookupComboboxEh3.KeyValue});
      if DBLookupComboboxEh4.KeyValue <> null then
        OD_data2.SetVariable('kw_', OD_kw.FieldByName('kw_id').AsString)
      else
        OD_data2.SetVariable('kw_', null);
    end;
{    else if (tp_ = 1) then // справочник квартиросъемщиков
    begin
      OD_data.SetVariable('kul_', DBLookupComboboxEh2.KeyValue);
      if DBLookupComboboxEh3.KeyValue <> null then
        OD_data.SetVariable('nd_', OD_houses.FieldByName('nd_id').AsString)
      else
        OD_data.SetVariable('nd_', null);
      if DBLookupComboboxEh4.KeyValue <> null then
        OD_data.SetVariable('kw_', OD_kw.FieldByName('kw_id').AsString)
      else
        OD_data.SetVariable('kw_', null);
    end;}
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
    else
    begin
      OD_data.Active := true;
    end;
    OD_data4.Active := true;

    OD_t_org2.Active := false; //Временно сделал false, надо разобраться зачем он нужен... 30.12.14
    OD_t_org3.Active := true;
  end
  else if (tp_ = 2) then
  begin
      //Арх.спр.
    OD_arch.Active := true;
    OD_data2.Active := true;
  end
  else if (tp_ = 5) then
  begin
      //Арх.спр.-2
    OD_arch.Active := true;
  end
  else if tp_ = 3 then
  begin
      //Долги по периодам, для счета (Полыс)
    OD_data3.Active := true;
  end;

    //Датасет (долги по всем лицевым счетам адреса (для Кис.))
  if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param', ['DEB_FOR_BILLS']) = 1 then
  begin
    OD_data6.Active := true;
  end;

    //Кубы по дому, для 354 постановления
  OD_vvod.Active := true;

    // ЗАГРУЗКА отчёта
  if (((tp_ = 0) or (tp_ = 4)) and (OD_main.RecordCount = 0) or (tp_ = 1) and (OD_main.RecordCount = 0) or (tp_ = 2) and (OD_arch.RecordCount = 0) or (tp_ = 5) and (OD_arch.RecordCount = 0)) then
  begin
    Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16 + MB_APPLMODAL);
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
    if (tp_ = 0) or (tp_ = 4) then
    begin
      // для Полыс
      if CheckBox5.Checked = True then
        // лазерный принтер
        repVar:='lp_'
        else
        // матричный принтер
        repVar:='';

        //Счета
      frxReport1.LoadFromFile(Form_main.exepath_ + repVar+OD_t_org.FieldByName('FNAME_SCH').asString , True);
      Edit2.Text := 'Путь к файлу счета:' + Form_main.exepath_ + repVar+OD_t_org.FieldByName('FNAME_SCH').asString;
      Edit2.Visible := true;

        //В счет ставим реквизиты организации
      frxReport1.Variables['name_org'] := '''' + OD_t_org.FieldByName('name').AsString + '''';
      frxReport1.Variables['inn'] := '''' + OD_t_org.FieldByName('inn').AsString + '''';
      frxReport1.Variables['raschet_schet'] := '''' + OD_t_org.FieldByName('raschet_schet').AsString + '''';
      frxReport1.Variables['bank'] := '''' + OD_t_org.FieldByName('bank').AsString + '''';
      frxReport1.Variables['adr'] := '''' + OD_t_org.FieldByName('post_indx').AsString + ', ' + OD_t_org.FieldByName('adr').AsString + '''';
      frxReport1.Variables['phone'] := '''' + OD_t_org.FieldByName('phone').AsString + '''';

      if not CheckBox1.Checked then
        frxReport1.Script.Variables['var_'] := 1
      else
        frxReport1.Script.Variables['var_'] := 0;

      if ((sel_obj_ = 0) and (wwDBEdit1.Text <> wwDBEdit2.Text)) or ((sel_obj_ = 1) and (DBLookupComboboxEh4.KeyValue = null)) then
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
      frxReport1.LoadFromFile(Form_main.exepath_ + 'арх_спр2.fr3', True);
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 3 then
    begin
      //Cправка о задолженности
      if DataModule1.OraclePackage1.CallIntegerFunction //старый вариант
        ('scott.Utils.get_int_param', ['SPR_DEB_VAR']) = 0 then
        frxReport1.LoadFromFile(Form_main.exepath_ + 'Счет_на_оплату1.fr3', True)
      else if DataModule1.OraclePackage1.CallIntegerFunction //новый вариант
        ('scott.Utils.get_int_param', ['SPR_DEB_VAR']) = 1 then
        frxReport1.LoadFromFile(Form_main.exepath_ + 'спр_задолжн.fr3', True);

      frxReport1.PrepareReport(true);
    end;
    Form_status.Close;
    frxReport1.ShowPreparedReport;
  end;
  if FF('Form_status', 0) = 1 then
    Form_status.Close;
end;

procedure TForm_print_bills.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_bills.DBLookupComboboxEh2CloseUp(Sender: TObject; Accept: Boolean);
begin
  OD_houses.Active := true;
  DBLookupComboboxEh3.Enabled := true;
  DBLookupComboboxEh3.KeyValue := null; {OD_houses.FieldByName('HOUSE_ID').AsString}
end;

procedure TForm_print_bills.DBLookupComboboxEh3CloseUp(Sender: TObject; Accept: Boolean);
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

procedure TForm_print_bills.ComboBox1CloseUp(Sender: TObject);
begin
  OD_sel_obj.Active := false;
  OD_sel_obj.SetVariable(':var_', ComboBox1.ItemIndex);
  OD_sel_obj.Active := True;
  sel_obj_ := OD_sel_obj.FieldByName('id').AsInteger;
  wwDBLookupCombo1.LookupValue := OD_sel_obj.FieldByName('id').AsString;
  set_obj;
  if ComboBox1.ItemIndex = 0 then // Счета
  begin

    Label3.Caption := 'Период отчета';
    Label9.Visible := false;
    DBLookupComboboxEh5.Visible := false;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := true;
  end
  else if (ComboBox1.ItemIndex = 2) or (ComboBox1.ItemIndex = 5) then // Справка из архива
  begin
    Label3.Caption := 'Период отчета, с';
    Label9.Visible := true;
    DBLookupComboboxEh5.Visible := true;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := false;
    CheckBox4.Visible := false;
    CheckBox5.Visible := false;
  end
  else if ComboBox1.ItemIndex = 3 then // Справка о задолженности
  begin
    Label3.Caption := 'Период отчета';
    Label9.Visible := false;
    DBLookupComboboxEh5.Visible := false;
    DBLookupComboboxEh1.Enabled := false;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := false;
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
  end
end;

procedure TForm_print_bills.set_lsk(var_: integer; lsk1_: string);
begin
  if var_ = 0 then
  begin
//по л.с.
    Form_main.c_lsk_id_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.UTILS.GET_C_LSK_ID_BY_LSK', [lsk1_]);
    Form_main.k_lsk_id_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.UTILS.GET_K_LSK_ID_BY_LSK', [lsk1_]);
  end
  else
  begin
//по адресу
    Form_main.c_lsk_id_ := OD_kw.FieldByName('c_lsk_id').AsInteger;
    Form_main.k_lsk_id_ := OD_kw.FieldByName('k_lsk_id').AsInteger;
  end;

end;

procedure TForm_print_bills.wwDBEdit2DblClick(Sender: TObject);
begin
  wwDBEdit2.Text := wwDBEdit1.Text;
  set_lsk(0, wwDBEdit1.Text);
end;

procedure TForm_print_bills.FormCreate(Sender: TObject);
begin
  Autosize := true;
  //по умолчанию для арх справки - не показывать старый фонд
  //OD_kart.SetVariable('var_', 0);
  //Выбран поиск по адресу (по умолчанию)
  if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param', ['RECHARGE_BILL']) = 1 then
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

  if (FF('Form_list_kart', 0) = 1) or ((wwDBEdit1.Text = wwDBEdit2.Text) and (wwDBEdit1.Text <> '') and (wwDBEdit2.Text <> '')) or (DBLookupComboboxEh4.KeyValue <> null) then
  begin
    //Возможность видеть дома старого фонда
    OD_houses.Active := false;
    OD_houses.SetVariable('var', 0);
    OD_houses.Active := true;
  end
  else
  begin
    //Не возможность видеть дома старого фонда
    OD_houses.Active := false;
    OD_houses.SetVariable('var', 1);
    OD_houses.Active := true;
  end;

  OD_kw.Active := true;
  sel_lsk;
  //по умолчанию - выбор печать по адресу
  sel_obj_ := 1;
  OD_sel_obj.Active := false;
  OD_sel_obj.SetVariable(':var_', ComboBox1.ItemIndex);
  OD_sel_obj.Active := True;
  wwDBLookupCombo1.LookupValue := '0';
  //кол-во счетов по умолчанию
  cnt_sch_ := 1000;
  Edit1.Text := IntToStr(cnt_sch_)
end;

procedure TForm_print_bills.sel_lsk;
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    ComboBox1.ItemIndex := 0;
    wwDBEdit1.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    wwDBEdit2.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    OD_mg.First;
    DBLookupComboboxEh2.KeyValue := Form_list_kart.OD_list_kart.FieldByName('kul').AsString;
    DBLookupComboboxEh3.KeyValue := Form_list_kart.OD_list_kart.FieldByName('house_id').AsString;
{    DBLookupComboboxEh4.KeyValue:=
      Form_list_kart.OD_list_kart.FieldByName('kw').AsString;
    OD_kw.Locate('kw_id', Form_list_kart.OD_list_kart.FieldByName('kw').AsString,
       []);
 }
    DBLookupComboboxEh4.KeyValue := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;

    DBLookupComboboxEh1.KeyValue := Form_print_bills.OD_mg.FieldByName('mg').AsString;

    Form_main.c_lsk_id_ := Form_list_kart.OD_list_kart.FieldByName('c_lsk_id').AsInteger;
    Form_main.k_lsk_id_ := Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger;
  end;

end;

procedure TForm_print_bills.DBLookupComboboxEh4CloseUp(Sender: TObject; Accept: Boolean);
begin
  wwDBEdit1.Text := OD_kw.FieldByName('lsk').AsString;
  wwDBEdit2.Text := OD_kw.FieldByName('lsk').AsString;
  Form_main.c_lsk_id_ := OD_kw.FieldByName('c_lsk_id').AsInteger;
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
  if wwDBLookupCombo1.LookupValue = '0' then
  begin
  //по Адресу
    //кол-во л.с. для печати
    cbb2.Enabled := false;
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
    cbb1.Enabled := false;
//    DBLookupComboboxEh7.Enabled:=false;
    set_lsk(1, '');
    sel_obj_ := 1;
  end
  else if wwDBLookupCombo1.LookupValue = '1' then
  begin
  //по Л/C
    //кол-во л.с. для печати
    cbb2.Enabled := false;
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
    cbb1.Enabled := false;
//    DBLookupComboboxEh7.Enabled:=false;
    set_lsk(0, wwDBEdit1.Text);
    sel_obj_ := 0;
  end
  else if wwDBLookupCombo1.LookupValue = '2' then
  begin
  //по УК
    //кол-во л.с. для печати
    cbb2.Enabled := true;
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
//    DBLookupComboboxEh7.Enabled:=true;
    cbb1.EditValue := OD_reu.FieldByName('reu').AsString;
//    DBLookupComboboxEh7.KeyValue:=OD_reu.FieldByName('reu').AsString;
    sel_obj_ := 2;
    sel_ls_cnt;
  end;
end;

procedure TForm_print_bills.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
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
  OD_ls_cnt.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_ls_cnt.SetVariable('p_reu', cbb1.EditValue);
  OD_ls_cnt.Active := true;
  cbb2.EditValue := OD_ls_cnt.FieldByName('first_rec').AsString;

end;

procedure TForm_print_bills.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    cnt_sch_ := 1000
  else
    cnt_sch_ := StrToInt(Edit1.Text);
end;

procedure TForm_print_bills.DBLookupComboboxEh5CloseUp(Sender: TObject; Accept: Boolean);
begin
  sel_ls_cnt;
end;

procedure TForm_print_bills.DBLookupComboboxEh7CloseUp(Sender: TObject; Accept: Boolean);
begin
  sel_ls_cnt;
end;

procedure TForm_print_bills.cbb1PropertiesCloseUp(Sender: TObject);
begin
  sel_ls_cnt;
end;

procedure TForm_print_bills.cbb2PropertiesCloseUp(Sender: TObject);
begin
{ if cbb2.EditValue <> '' then
  OD_ls_cnt.Locate('first_rec', StrToInt(cbb2.EditValue), [])
  else
  OD_ls_cnt.Locate('first_rec', 0, []);}
end;

procedure TForm_print_bills.cbb2PropertiesPopup(Sender: TObject);
begin
// msg2('test2','test2',mb_ok);
  if OD_ls_cnt.GetVariable('p_cnt') <> IntToStr(cnt_sch_) then
  begin
    OD_ls_cnt.SetVariable('p_cnt', cnt_sch_);
    OD_ls_cnt.Active := False;
    OD_ls_cnt.Active := True;
  end;
end;

procedure TForm_print_bills.DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
begin
  if sel_obj_ = 2 then
    sel_ls_cnt;
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

end.

