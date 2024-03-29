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
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxImageComboBox,
  cxCheckComboBox, cxDBCheckComboBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDBExtLookupComboBox, cxCheckBox, DBCtrls;

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
    OD_arch_supp: TOracleDataSet;
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
    OD_detail_ext: TOracleDataSet;
    frxDBDataset13: TfrxDBDataset;
    OD_cmp_main: TOracleDataSet;
    OD_cmp_detail_primary: TOracleDataSet;
    OD_cmp_detail_cap: TOracleDataSet;
    OD_cmp_funds_primary: TOracleDataSet;
    OD_cmp_funds_cap: TOracleDataSet;
    frxDB_cmp_main: TfrxDBDataset;
    frxDBD_cmp_detail_primary: TfrxDBDataset;
    frxDB_cmp_detail_cap: TfrxDBDataset;
    frxDB_cmp_funds_primary: TfrxDBDataset;
    frxDB_cmp_funds_cap: TfrxDBDataset;
    OD_cmp_contractors: TOracleDataSet;
    frxDB_cmp_contractors: TfrxDBDataset;
    Label13: TLabel;
    cxImageComboBox1: TcxImageComboBox;
    OD_cmp_detail_main: TOracleDataSet;
    frxDBD_cmp_detail_main: TfrxDBDataset;
    OD_cmp_funds_main: TOracleDataSet;
    frxDB_cmp_funds_main: TfrxDBDataset;
    OD_cmp_funds_lsk: TOracleDataSet;
    frxDB_cmp_funds_lsk: TfrxDBDataset;
    OD_cmp_qr: TOracleDataSet;
    frxDB_cmp_qr: TfrxDBDataset;
    OD_uk: TOracleDataSet;
    DS_uk: TDataSource;
    cxCheckComboBox1: TcxCheckComboBox;
    Label14: TLabel;
    OD_spr_services: TOracleDataSet;
    DS_spr_services: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    OD_rep1: TOracleDataSet;
    DS_rep1: TDataSource;
    frxDBDataset14: TfrxDBDataset;
    OD_rep2: TOracleDataSet;
    DS_rep2: TDataSource;
    frxDBDataset15: TfrxDBDataset;
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
    procedure compound_report(p_var: Integer);
    procedure old_report(tp_, pen_last_month_:Integer; repVar:String);
    procedure fillUk();
    function getStrUk(): String;
    procedure selAllUk();
    procedure kart_pr_report;
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
  // ����, ���� ��� ��� �������
  // dolg, pen : Double;
begin
  // ����

  // ���������� ���������, ��������� ����������
  wwDBEdit1.Text := RightStr('00000000' + wwDBEdit1.Text, 8);
  wwDBEdit2.Text := RightStr('00000000' + wwDBEdit2.Text, 8);

  if (DBLookupComboboxEh1.KeyValue = null) or ((DBLookupComboboxEh5.KeyValue = null) and (ComboBox1.ItemIndex = 2)) then
  begin
    ShowMessage('�� ������ ������ ������, ������');
    Exit;
  end;

  if (DBLookupComboboxEh2.KeyValue = null) and (sel_obj_ = 1) then
  begin
    ShowMessage('�� ������ ����� ��� ������, ������');
    Exit;
  end;

  if CheckBox4.Checked = true then
    pen_last_month_ := 0
  else
    pen_last_month_ := 1;

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  // ������� �������� ����������. (����.���, ���� �����)
  OD_t_org.Active := false;
  OD_t_org.SetVariable('var_', ComboBox1.ItemIndex);
  OD_t_org.SetVariable('mg_', DBLookupComboboxEh1.KeyValue);
  OD_t_org.Active := true;

  // ��� ������
  tp_ := ComboBox1.ItemIndex;

  // ���������� ������ � ������ ������ ���� 1 �.�. ���� 1 ��������
  // � ������ �� �� ��� ���.
  if (tp_ <> 2) and (tp_ <> 5) and (sel_obj_ = 0)
     and (wwDBEdit1.Text = wwDBEdit2.Text)
     and (CheckBox3.Checked = True) then
  begin
      //�� 1 ��.
    DataModule1.OraclePackage1.CallProcedure('scott.GEN.prepare_arch_k_lsk',
      [Form_main.k_lsk_id_, pen_last_month_, 0]);
  end
  else if (tp_ <> 2) and (tp_ <> 5) and (tp_ <> 6) and (sel_obj_ = 1)
     and (DBLookupComboboxEh4.KeyValue <> null)
     and (CheckBox3.Checked = True) then
  begin
     //�� 1 ��������
    DataModule1.OraclePackage1.CallProcedure('scott.GEN.prepare_arch_k_lsk',
      [Form_main.k_lsk_id_, pen_last_month_, 0]);
  end;

  if (tp_ = 6) then
    // ������������ ��������
    kart_pr_report()
  else if (OD_t_org.FieldByName('BILL_TP').asInteger = 0) or
     (OD_t_org.FieldByName('BILL_TP').asInteger = 1) or
     (OD_t_org.FieldByName('BILL_TP').asInteger = 2) or
     (tp_ = 2) or (tp_ = 5) or (tp_ = 1) then
    // ������ ������� ���������� ��� ���.����� ��� ���.�����-2
    old_report(tp_, pen_last_month_, repVar)
  else if (OD_t_org.FieldByName('BILL_TP').asInteger = 3) or
          (OD_t_org.FieldByName('BILL_TP').asInteger = 4) then
    // ��������� ����
    compound_report(OD_t_org.FieldByName('BILL_TP').asInteger)
  else
     Application.MessageBox('������������ BILL_TP � ������� spr_services!',
       '��������!', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);


  if FF('Form_status', 0) = 1 then
    Form_status.Close;
end;

// ������������ ��������
procedure TForm_print_bills.kart_pr_report;
begin
  // ������� �������
  OD_cmp_main.Active:=false;
  // �� ���.�����
  OD_cmp_main.SetVariable('p_for_arch', 0);
  OD_rep1.Active:=false;
  OD_rep2.Active:=false;

  if sel_obj_ = 2 then
  begin
    //������ ��� ��
    //������������ �������� ������ ��� ������ ������
    OD_cmp_main.SetVariable('p_firstNum',
      OD_ls_cnt.FieldByName('first_rec').AsInteger);
    OD_cmp_main.SetVariable('p_lastNum',
      OD_ls_cnt.FieldByName('last_rec').AsInteger);
  end
  else
  begin
    //�� ������������ �������� ������ ��� ������ ������
    OD_cmp_main.SetVariable('p_firstNum', 0);
    OD_cmp_main.SetVariable('p_lastNum', 1000000000);
  end;

  // ���������� ���������
  OD_cmp_main.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  // ������ �� ��� �������
  OD_cmp_main.SetVariable('p_sel_uk', getStrUk());

  OD_cmp_main.SetVariable('p_sel_obj', sel_obj_);
  OD_cmp_main.SetVariable('p_reu', cbb1.EditValue);
  OD_cmp_main.SetVariable('p_lsk', wwDBEdit1.Text);
  OD_cmp_main.SetVariable('p_lsk1', wwDBEdit2.Text);

  OD_cmp_main.SetVariable('p_kul', DBLookupComboboxEh2.KeyValue);
  if DBLookupComboboxEh3.KeyValue <> null then
    OD_cmp_main.SetVariable('p_nd', OD_houses.FieldByName('nd_id').AsString)
  else
    OD_cmp_main.SetVariable('p_nd', null);

  if DBLookupComboboxEh4.KeyValue <> null then
    OD_cmp_main.SetVariable('p_kw', OD_kw.FieldByName('kw_id').AsString)
  else
    OD_cmp_main.SetVariable('p_kw', null);

  // �������� �� �������� �����
  if CheckBox2.Checked = true then
  begin
    OD_cmp_main.SetVariable('p_is_closed', 1);
  end
  else
  begin
    OD_cmp_main.SetVariable('p_is_closed', 0);
  end;

  // ������������ ��������
  OD_cmp_main.Active:=true;
  OD_rep1.Active:=true;
  OD_rep2.Active:=true;
  frxReport1.LoadFromFile(Form_main.exepath_ + '\�������_����3.fr3', True);
  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
end;


// ��������� ����
procedure TForm_print_bills.compound_report(p_var: Integer);
begin
  // ������� �������
  OD_cmp_main.Active:=false;
  // ��������� ������������
  OD_cmp_contractors.Active:=false;
  // ������ �������� � ��� ������
  OD_cmp_detail_primary.Active:=false;
  // ������ ������ �� ����������
  OD_cmp_detail_cap.Active:=false;
  // ������ �� ��������� ���� �����
  OD_cmp_detail_main.Active:=false;
  // ������ ���������� �� �������� ������ � ���
  OD_cmp_funds_primary.Active:=false;
  // ������ ���������� �� ����������
  OD_cmp_funds_cap.Active:=false;
// ������ ���������� �� ��������� ���� �����
  OD_cmp_funds_main.Active:=false;
  // ������ ���������� �� ����������� ���.�����
  OD_cmp_funds_lsk.Active:=false;
  // QR ���
  OD_cmp_qr.Active:=false;

  // �� ���.�����
  OD_cmp_main.SetVariable('p_for_arch', 0);

  if sel_obj_ = 2 then
  begin
    //������ ��� ��
    //������������ �������� ������ ��� ������ ������
    OD_cmp_main.SetVariable('p_firstNum',
      OD_ls_cnt.FieldByName('first_rec').AsInteger);
    OD_cmp_main.SetVariable('p_lastNum',
      OD_ls_cnt.FieldByName('last_rec').AsInteger);
  end
  else
  begin
    //�� ������������ �������� ������ ��� ������ ������
    OD_cmp_main.SetVariable('p_firstNum', 0);
    OD_cmp_main.SetVariable('p_lastNum', 1000000000);
  end;
  // ���������� ���������
  OD_cmp_main.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  // ������ �� ��� �������
  OD_cmp_main.SetVariable('p_sel_uk', getStrUk());

  OD_cmp_contractors.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_cmp_contractors.SetVariable('p_sel_uk', getStrUk());

  OD_cmp_detail_primary.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_cmp_detail_primary.SetVariable('p_sel_uk', getStrUk());

  OD_cmp_detail_cap.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_cmp_detail_cap.SetVariable('p_sel_uk', getStrUk());

  OD_cmp_detail_main.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_cmp_detail_main.SetVariable('p_sel_uk', getStrUk());

  OD_cmp_funds_primary.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_cmp_funds_primary.SetVariable('p_sel_uk', getStrUk());

  OD_cmp_funds_cap.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_cmp_funds_cap.SetVariable('p_sel_uk', getStrUk());

  OD_cmp_funds_main.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_cmp_funds_main.SetVariable('p_sel_uk', getStrUk());

  // ����� �� ����� ������ p_sel_uk, ��� ��� ������� �� p_lsk
  OD_cmp_funds_lsk.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);

  OD_cmp_qr.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_cmp_qr.SetVariable('p_sel_uk', getStrUk());

  // ���������� ��� ���.�����
  // ���, ����� ����������
  OD_cmp_detail_primary.SetVariable('p_sel_tp', 0);

  // ���������
  OD_cmp_detail_cap.SetVariable('p_sel_tp', 1);

  // ��������, ����� �������� (��� ���������)
  OD_cmp_detail_main.SetVariable('p_sel_tp', 3);

  // ���, ����� ����������
  OD_cmp_funds_primary.SetVariable('p_sel_tp', 0);

  // ���������
  OD_cmp_funds_cap.SetVariable('p_sel_tp', 1);

  // ��������
  OD_cmp_funds_main.SetVariable('p_sel_tp', 3);

  // ���
  OD_cmp_qr.SetVariable('p_sel_tp', 4);

  // ���������� �������������� ������
  OD_cmp_contractors.SetVariable('p_sel_flt_tp', cxImageComboBox1.ItemIndex);
  OD_cmp_detail_primary.SetVariable('p_sel_flt_tp', cxImageComboBox1.ItemIndex);
  OD_cmp_detail_cap.SetVariable('p_sel_flt_tp', cxImageComboBox1.ItemIndex);
  OD_cmp_detail_main.SetVariable('p_sel_flt_tp', cxImageComboBox1.ItemIndex);
  OD_cmp_funds_primary.SetVariable('p_sel_flt_tp', cxImageComboBox1.ItemIndex);
  OD_cmp_funds_cap.SetVariable('p_sel_flt_tp', cxImageComboBox1.ItemIndex);
  OD_cmp_funds_main.SetVariable('p_sel_flt_tp', cxImageComboBox1.ItemIndex);
  OD_cmp_qr.SetVariable('p_sel_flt_tp', cxImageComboBox1.ItemIndex);

  OD_cmp_main.SetVariable('p_sel_obj', sel_obj_);
  OD_cmp_main.SetVariable('p_reu', cbb1.EditValue);
  OD_cmp_main.SetVariable('p_lsk', wwDBEdit1.Text);
  OD_cmp_main.SetVariable('p_lsk1', wwDBEdit2.Text);

  OD_cmp_main.SetVariable('p_kul', DBLookupComboboxEh2.KeyValue);
  if DBLookupComboboxEh3.KeyValue <> null then
    OD_cmp_main.SetVariable('p_nd', OD_houses.FieldByName('nd_id').AsString)
  else
    OD_cmp_main.SetVariable('p_nd', null);

  if DBLookupComboboxEh4.KeyValue <> null then
    OD_cmp_main.SetVariable('p_kw', OD_kw.FieldByName('kw_id').AsString)
  else
    OD_cmp_main.SetVariable('p_kw', null);

  // �������� �� �������� �����
  if CheckBox2.Checked = true then
  begin
    OD_cmp_main.SetVariable('p_is_closed', 1);
    OD_cmp_detail_primary.SetVariable('p_is_closed', 1);
    OD_cmp_detail_main.SetVariable('p_is_closed', 1);
    OD_cmp_detail_cap.SetVariable('p_is_closed', 1);
    OD_cmp_contractors.SetVariable('p_is_closed', 1);
    OD_cmp_funds_primary.SetVariable('p_is_closed', 1);
    OD_cmp_funds_cap.SetVariable('p_is_closed', 1);
    OD_cmp_funds_main.SetVariable('p_is_closed', 1);
    OD_cmp_qr.SetVariable('p_is_closed', 1);
  end
  else
  begin
    OD_cmp_main.SetVariable('p_is_closed', 0);
    OD_cmp_detail_primary.SetVariable('p_is_closed', 0);
    OD_cmp_detail_main.SetVariable('p_is_closed', 0);
    OD_cmp_detail_cap.SetVariable('p_is_closed', 0);
    OD_cmp_contractors.SetVariable('p_is_closed', 0);
    OD_cmp_funds_primary.SetVariable('p_is_closed', 0);
    OD_cmp_funds_cap.SetVariable('p_is_closed', 0);
    OD_cmp_funds_main.SetVariable('p_is_closed', 0);
    OD_cmp_qr.SetVariable('p_is_closed', 0);
  end;

  OD_cmp_funds_lsk.SetVariable('P_INCLUDESALDO', 1);

  // ������������ ��������
  OD_cmp_main.Active:=true;
  OD_cmp_contractors.Active:=true;

  OD_cmp_detail_primary.Active:=true;
  OD_cmp_detail_cap.Active:=true;
  OD_cmp_detail_main.Active:=true;

  OD_cmp_funds_primary.Active:=true;
  OD_cmp_funds_cap.Active:=true;
  OD_cmp_funds_main.Active:=true;
  OD_cmp_funds_lsk.Active:=true;
  OD_cmp_qr.Active:=true;

  Edit2.Text := '���� � ����� �����:' + Form_main.exepath_ +
    VarToStr(cxLookupComboBox1.EditValue);
  frxReport1.LoadFromFile(Form_main.exepath_ +
    VarToStr(cxLookupComboBox1.EditValue) , True);
{  frxReport1.LoadFromFile(Form_main.exepath_ +
    OD_t_org.FieldByName('FNAME_SCH').asString , True);
  Edit2.Text := '���� � ����� �����:' + Form_main.exepath_ +
    OD_t_org.FieldByName('FNAME_SCH').asString;}
  Edit2.Visible := true;

  // ������� �����
  frxReport1.PrepareReport(true);
  Form_status.Close;
  frxReport1.ShowPreparedReport;

end;


// ������ ������� ����������
procedure TForm_print_bills.old_report(tp_, pen_last_month_: Integer; repVar: String);
begin
  // ������� ������� ��� ������� ���-2
  OD_cmp_main.Active:=false;
  // ������� �������
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
  OD_arch_supp.Active := false;

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

  if (tp_ = 5) then //������� ���-2
  begin
    // ���.�����
    OD_cmp_main.SetVariable('p_for_arch', 1);

    if sel_obj_ = 2 then
    begin
      //������ ��� ��
      //������������ �������� ������ ��� ������ ������
      OD_cmp_main.SetVariable('p_firstNum',
        OD_ls_cnt.FieldByName('first_rec').AsInteger);
      OD_cmp_main.SetVariable('p_lastNum',
        OD_ls_cnt.FieldByName('last_rec').AsInteger);
    end
    else
    begin
      //�� ������������ �������� ������ ��� ������ ������
      OD_cmp_main.SetVariable('p_firstNum', 0);
      OD_cmp_main.SetVariable('p_lastNum', 1000000000);
    end;

    // ���������� ���������
    OD_cmp_main.SetVariable('p_mg', DBLookupComboboxEh5.KeyValue);
    // ������ �� ��� �������
    OD_cmp_main.SetVariable('p_sel_uk', getStrUk());

    OD_cmp_main.SetVariable('p_sel_obj', sel_obj_);
    OD_cmp_main.SetVariable('p_reu', cbb1.EditValue);
    OD_cmp_main.SetVariable('p_lsk', wwDBEdit1.Text);
    OD_cmp_main.SetVariable('p_lsk1', wwDBEdit2.Text);

    OD_cmp_main.SetVariable('p_kul', DBLookupComboboxEh2.KeyValue);
    if DBLookupComboboxEh3.KeyValue <> null then
      OD_cmp_main.SetVariable('p_nd', OD_houses.FieldByName('nd_id').AsString)
    else
      OD_cmp_main.SetVariable('p_nd', null);

    if DBLookupComboboxEh4.KeyValue <> null then
      OD_cmp_main.SetVariable('p_kw', OD_kw.FieldByName('kw_id').AsString)
    else
      OD_cmp_main.SetVariable('p_kw', null);

    // �������� �� �������� �����
    if CheckBox2.Checked = true then
    begin
      OD_cmp_main.SetVariable('p_is_closed', 1);
    end
    else
    begin
      OD_cmp_main.SetVariable('p_is_closed', 0);
    end;

    // ������������ ��������
    OD_cmp_main.Active:=true;

  end;


  if sel_obj_ = 2 then
  begin
    //������ ��� ��
    //������������ �������� ������ ��� ������ ������
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
    //�� ������������ �������� ������ ��� ������ ������
    OD_main.SetVariable('cnt_rec_', 0);
  end;

  if (tp_ = 0) then //����
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
  else if (tp_ = 4) then //���� ��� ����
  begin
    OD_data.SetVariable('var_', tp_);
    OD_data.SetVariable('mg1_', DBLookupComboboxEh1.KeyValue);
    OD_data.SetVariable('mg2_', DBLookupComboboxEh1.KeyValue);
  end
  else if tp_ = 1 then //���������� �����������������
  begin
    OD_data.SetVariable('var_', 0);
    OD_data.SetVariable('mg1_', DBLookupComboboxEh1.KeyValue);
    OD_data.SetVariable('mg2_', DBLookupComboboxEh1.KeyValue);
  end
  else if (tp_ = 2) then //������� ���
  begin
    wwDBEdit2.Text := wwDBEdit1.Text;
    OD_arch.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    OD_arch.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);
    OD_arch_supp.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    OD_arch_supp.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);

    if sel_obj_ = 0 then
    begin
     //�� �.�.
      //OD_arch_supp.SetVariable('p_lsk', wwDBEdit1.Text);
      OD_arch_supp.SetVariable('p_adr', 0);
    end
    else
    begin
     //�� ������
      //OD_arch_supp.SetVariable('p_lsk', OD_kw.FieldByName('lsk').AsString);
      OD_arch_supp.SetVariable('p_adr', 1);
    end;
    OD_arch_supp.Active := true;
  end
  else if (tp_ = 5) then //������� ���-2
  begin
    wwDBEdit2.Text := wwDBEdit1.Text;
    OD_arch.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    OD_arch.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);
    OD_arch_supp.SetVariable('p_mg1', DBLookupComboboxEh1.KeyValue);
    OD_arch_supp.SetVariable('p_mg2', DBLookupComboboxEh5.KeyValue);

    if sel_obj_ = 0 then
    begin
      //�� �.�.
      OD_arch_supp.SetVariable('p_adr', 0);
    end
    else if sel_obj_ = 2 then
    begin
     // �� ��
     OD_arch_supp.SetVariable('p_adr', 0);
    end
    else if sel_obj_ = 1 then
    begin
     //�� ������
     OD_arch_supp.SetVariable('p_adr', 1);
    end;
    OD_arch_supp.Active := true;
  end
  else if (tp_ = 3) then //������� � �����������
  begin
    wwDBEdit2.Text := wwDBEdit1.Text;
  end;

  //������� � �������������
  if sel_obj_ = 0 then
  begin
    //�� �.�.
    OD_data3.SetVariable('p_lsk', wwDBEdit1.Text);
    OD_data3.SetVariable('k_lsk_id_', 0);
  end
  else
  begin
    //�� ������
    OD_data3.SetVariable('k_lsk_id_', Form_main.k_lsk_id_);
  end;

  if (sel_obj_ = 0) or (sel_obj_ = 2) then
  begin
  //�� �������� ����� ��� ��
    if (tp_ = 2) or (tp_ = 5) then //������� ���
    begin
      //OD_arch.SetVariable('p_lsk', wwDBEdit1.Text);
      OD_arch.Master:=OD_cmp_main;
      OD_arch.MasterFields:='LSK';
      OD_arch.DetailFields:='P_LSK';
      OD_arch.SetVariable('p_adr', 0);
      { ���. 07.05.2019 - ���� �����
      OD_data2.SetVariable('lsk_', wwDBEdit1.Text);        }
    end;
  end
  else if sel_obj_ = 1 then
  begin
   //�� ������
    if (tp_ = 2) or (tp_ = 5) then //������� ���
    begin
      OD_arch.Master:=OD_cmp_main;
      OD_arch.MasterFields:='K_LSK_ID';
      OD_arch.DetailFields:='P_K_LSK';
      //OD_arch.SetVariable('p_k_lsk', Form_main.k_lsk_id_);
      OD_arch.SetVariable('p_adr', 1);

      { ���. 07.05.2019 - ���� �����
      OD_data2.SetVariable('lsk_', null);
      OD_data2.SetVariable('kul_', DBLookupComboboxEh2.KeyValue);
      OD_data2.SetVariable('nd_', OD_houses.FieldByName('nd_id').AsString);
      if DBLookupComboboxEh4.KeyValue <> null then
        OD_data2.SetVariable('kw_', OD_kw.FieldByName('kw_id').AsString)
      else
        OD_data2.SetVariable('kw_', null);}
    end;
  end;

  //�������� �� �� ������� ����� �����
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

    //�������� �� �������������� �����
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
      //�����
    OD_main.Active := true;
      //����� ����
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

    OD_t_org2.Active := false; //�������� ������ false, ���� ����������� ����� �� �����... 30.12.14
    OD_t_org3.Active := true;
  end
  else if (tp_ = 2) then
  begin
      //���.���.
    OD_cmp_main.Active := true;
    OD_arch.Active := true;
  { ���. 07.05.2019 - ���� �����
    OD_data2.Active := true;}
  end
  else if (tp_ = 5) then
  begin
    // ���.���.-2
    OD_cmp_main.Active := true;
    OD_arch.Active := true;
  end
  else if tp_ = 3 then
  begin
      //����� �� ��������, ��� ����� (�����)
    OD_data3.Active := true;
  end;

    //������� (����� �� ���� ������� ������ ������ (��� ���.))
  if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param', ['DEB_FOR_BILLS']) = 1 then
  begin
    OD_data6.Active := true;
  end;

    //���� �� ����, ��� 354 �������������
  OD_vvod.Active := true;

    // �������� ������
  if (((tp_ = 0) or (tp_ = 4)) and (OD_main.RecordCount = 0) or (tp_ = 1)
  and (OD_main.RecordCount = 0) or (tp_ = 2) and (OD_arch.RecordCount = 0)
  or (tp_ = 5) and (OD_cmp_main.RecordCount = 0)) then
  begin
    Application.MessageBox('��� ���������� �� ��������� ������', '��������!', 16 + MB_APPLMODAL);
    Form_status.Close;
  end
  else if ((tp_ = 3) and (OD_data3.RecordCount = 0)) then
  begin
    Application.MessageBox('��� �������������', '��������!', 16 + MB_APPLMODAL);
    Form_status.Close;
  end
  else
  begin
    Edit2.Text := '';
    Edit2.Visible := false;
    if (tp_ = 0) or (tp_ = 4) then
    begin
      // ��� �����
      if CheckBox5.Checked = True then
        // �������� �������
        repVar:='lp_'
        else
        // ��������� �������
        repVar:='';

        //�����
      frxReport1.LoadFromFile(Form_main.exepath_ + repVar+OD_t_org.FieldByName('FNAME_SCH').asString , True);
      Edit2.Text := '���� � ����� �����:' + Form_main.exepath_ + repVar+OD_t_org.FieldByName('FNAME_SCH').asString;
      Edit2.Visible := true;

        //� ���� ������ ��������� �����������
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
          //����� �������
        frxReport1.Script.Variables['split_'] := 0;
      end
      else
      begin
          //���� ��������
        frxReport1.Script.Variables['split_'] := 1;
      end;
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 1 then
    begin
      //���������� �����������������
      frxReport1.LoadFromFile(Form_main.exepath_ + '���_��.fr3', True);
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 2 then
    begin
       //������� �� ������
      frxReport1.LoadFromFile(Form_main.exepath_ + '���_���1.fr3', True);
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 5 then
    begin
       //������� �� ������-2
      frxReport1.LoadFromFile(Form_main.exepath_ + '���_���3.fr3', True);
      frxReport1.PrepareReport(true);
    end
    else if tp_ = 3 then
    begin
      //C������ � �������������
      if DataModule1.OraclePackage1.CallIntegerFunction //������ �������
        ('scott.Utils.get_int_param', ['SPR_DEB_VAR']) = 0 then
        frxReport1.LoadFromFile(Form_main.exepath_ + '����_��_������1.fr3', True)
      else if DataModule1.OraclePackage1.CallIntegerFunction //����� �������
        ('scott.Utils.get_int_param', ['SPR_DEB_VAR']) = 1 then
        frxReport1.LoadFromFile(Form_main.exepath_ + '���_�������.fr3', True);

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
  if ComboBox1.ItemIndex = 0 then // �����
  begin
    Label3.Caption := '������ ������';
    Label9.Visible := false;
    DBLookupComboboxEh5.Visible := false;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := true;
    Label13.Enabled:=True;
    cxImageComboBox1.Enabled:=True;
  end
  else if (ComboBox1.ItemIndex = 2) or (ComboBox1.ItemIndex = 5) then // ������� �� ������
  begin
    Label3.Caption := '������ ������, �';
    Label9.Visible := true;
    DBLookupComboboxEh5.Visible := true;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := false;
    CheckBox4.Visible := false;
    CheckBox5.Visible := false;
    Label13.Enabled:=false;
    cxImageComboBox1.Enabled:=false;
  end
  else if ComboBox1.ItemIndex = 3 then // ������� � �������������
  begin
    Label3.Caption := '������ ������';
    Label9.Visible := false;
    DBLookupComboboxEh5.Visible := false;
    DBLookupComboboxEh1.Enabled := false;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := false;
    Label13.Enabled:=false;
    cxImageComboBox1.Enabled:=false;
  end
  else
  begin
    Label3.Caption := '������ ������';
    Label9.Visible := false;
    DBLookupComboboxEh5.Visible := false;
    DBLookupComboboxEh1.Enabled := true;
    CheckBox2.Visible := true;
    CheckBox4.Visible := true;
    CheckBox5.Visible := false;
    Label13.Enabled:=false;
    cxImageComboBox1.Enabled:=false;
  end
end;

procedure TForm_print_bills.set_lsk(var_: integer; lsk1_: string);
begin
  if var_ = 0 then
  begin
//�� �.�.
    Form_main.c_lsk_id_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.UTILS.GET_C_LSK_ID_BY_LSK', [lsk1_]);
    Form_main.k_lsk_id_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.UTILS.GET_K_LSK_ID_BY_LSK', [lsk1_]);
  end
  else
  begin
//�� ������
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
  Height:=422;
  Width:=417;
  //������ ����� �� ������ (�� ���������)
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
  OD_spr_services.Active := True;

  if (FF('Form_list_kart', 0) = 1) or ((wwDBEdit1.Text = wwDBEdit2.Text) and (wwDBEdit1.Text <> '') and (wwDBEdit2.Text <> '')) or (DBLookupComboboxEh4.KeyValue <> null) then
  begin
    //����������� ������ ���� ������� �����
    OD_houses.Active := false;
    OD_houses.SetVariable('var', 0);
    OD_houses.Active := true;
  end
  else
  begin
    // �� ����������� ������ ���� ������� �����
    OD_houses.Active := false;
    OD_houses.SetVariable('var', 1);
    OD_houses.Active := true;
  end;

  OD_kw.Active := true;
  sel_lsk;
  // �� ��������� - ����� ������ �� ������
  sel_obj_ := 1;
  OD_sel_obj.Active := false;
  OD_sel_obj.SetVariable(':var_', ComboBox1.ItemIndex);
  OD_sel_obj.Active := True;
  wwDBLookupCombo1.LookupValue := '0';
  // ���-�� ������ �� ���������
  cnt_sch_ := 1000;
  Edit1.Text := IntToStr(cnt_sch_);
  // ������ �� ���������
  cxImageComboBox1.ItemIndex:=0;
  // ��������� ������� ��
  fillUk();
end;

procedure TForm_print_bills.sel_lsk;
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    ComboBox1.ItemIndex := 0;
    wwDBEdit1.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    wwDBEdit2.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    OD_mg.First;
    cbb1.EditValue := Form_list_kart.OD_list_kart.FieldByName('reu').AsString;
    DBLookupComboboxEh2.KeyValue := Form_list_kart.OD_list_kart.FieldByName('kul').AsString;
    DBLookupComboboxEh3.KeyValue := Form_list_kart.OD_list_kart.FieldByName('house_id').AsString;
    DBLookupComboboxEh4.KeyValue := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;

    // �� ��������� ������
    DBLookupComboboxEh1.KeyValue := Form_print_bills.OD_mg.FieldByName('mg').AsString;
    OD_spr_services.SetVariable('p_mg', Form_print_bills.OD_mg.FieldByName('mg').AsString);
    OD_spr_services.Active:=False;
    OD_spr_services.Active:=True;
    cxLookupComboBox1.EditValue:=OD_spr_services.FieldByName('FNAME_SCH').AsString;

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
  //�� ������
    //���-�� �.�. ��� ������
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
    cbb1.Enabled := true;
    set_lsk(1, '');
    sel_obj_ := 1;
  end
  else if wwDBLookupCombo1.LookupValue = '1' then
  begin
  //�� �/C
    //���-�� �.�. ��� ������
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
    cbb1.Enabled := true;
//    DBLookupComboboxEh7.Enabled:=false;
    set_lsk(0, wwDBEdit1.Text);
    sel_obj_ := 0;
  end
  else if wwDBLookupCombo1.LookupValue = '2' then
  begin
  //�� ��
    //���-�� �.�. ��� ������
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
var
  tp_:Integer;
begin
  //������ ������ ��� ������� ���-�� �.�., ��� ������ ������ �������
  OD_ls_cnt.Active := false;
  tp_ := ComboBox1.ItemIndex;
  if tp_ = 5 then
    // ���.�����.-2
    OD_ls_cnt.SetVariable('p_mg', DBLookupComboboxEh5.KeyValue)
  else
    OD_ls_cnt.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);

  OD_ls_cnt.SetVariable('p_reu', cbb1.EditValue);
  OD_ls_cnt.Active := true;

  if OD_ls_cnt.RecordCount > 0 then
    begin
      if OD_ls_cnt.FieldByName('first_rec').AsString <> null then
        cbb2.EditValue := OD_ls_cnt.FieldByName('first_rec').AsString
      else
        cbb2.EditValue := 0;

    end
  else
    cbb2.EditValue:=0;

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
  OD_spr_services.SetVariable('p_mg', DBLookupComboboxEh1.KeyValue);
  OD_spr_services.Active:=False;
  OD_spr_services.Active:=True;
  cxLookupComboBox1.EditValue:=OD_spr_services.FieldByName('FNAME_SCH').AsString;
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

// ��������� checkComboBox ���������� ��
procedure TForm_print_bills.fillUk();
 var i: Integer;
begin
  OD_uk.Active := True;
  while not OD_uk.Eof do
  begin
     with cxCheckComboBox1.Properties.Items.Add do
    begin
      Description := OD_uk.FieldByName('reu').AsString+' '
        +OD_uk.FieldByName('name').AsString;
    end;
    OD_uk.Next;
  end;
  selAllUk;
end;

// �������� ������ ��
function TForm_print_bills.getStrUk(): String;
var
  APCheckStates: ^TcxCheckStates;
  I: Integer;
  AEditProp: TcxCheckComboBoxProperties;
  str: string;
begin
  New(APCheckStates);
  AEditProp := cxCheckComboBox1.Properties;
  str:='0';
  try
     CalculateCheckStates(cxCheckComboBox1.Value,
      AEditProp.Items, AEditProp.EditValueFormat , APCheckStates^);
     for i := 0 to AEditProp.Items.Count - 1 do
       if APCheckStates^[I] = cbsChecked then
         str:=str+''''+copy(AEditProp.Items[I].Description, 1,3)+''';';
  finally
    Dispose(APCheckStates)
  end;
  Result := str;
end;

// �������� ��� �������� cxCheckComboBox
procedure TForm_print_bills.selAllUk();
var
  i: Integer;
  ComboProp: TcxCheckComboBoxProperties;
begin
  ComboProp:=cxCheckComboBox1.Properties;
  for i := 0 to ComboProp.Items.Count - 1 do
   cxCheckComboBox1.States[i] := cbsChecked;
end;

end.

