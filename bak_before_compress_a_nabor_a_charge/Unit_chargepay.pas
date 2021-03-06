unit Unit_chargepay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, DB, OracleData, StdCtrls, Utils, ComCtrls,
  GridsEh, ExtCtrls, Wwdbigrd, Wwdbgrid, frxClass, frxDBSet, wwcheckbox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Menus, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TForm_chargepay = class(TForm)
    OD_chargepay: TOracleDataSet;
    DS_chargepay: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    TabSheet2: TTabSheet;
    OD_chargepay2: TOracleDataSet;
    DS_chargepay2: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    TabSheet3: TTabSheet;
    OD_chargepay3: TOracleDataSet;
    DS_chargepay3: TDataSource;
    wwDBGrid2: TwwDBGrid;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    wwDBGrid3: TwwDBGrid;
    frxDBDataset4: TfrxDBDataset;
    OD_chargepay4: TOracleDataSet;
    DS_chargepay4: TDataSource;
    CheckBox1: TCheckBox;
    TabSheet4: TTabSheet;
    OD_chargepay5: TOracleDataSet;
    DS_chargepay5: TDataSource;
    wwDBGrid4: TwwDBGrid;
    wwExpandButton1: TwwExpandButton;
    frxDBDataset5: TfrxDBDataset;
    frxReport5: TfrxReport;
    TabSheet5: TTabSheet;
    OD_chargepay6: TOracleDataSet;
    DS_chargepay6: TDataSource;
    frxDBDataset6: TfrxDBDataset;
    frxReport6: TfrxReport;
    wwDBGrid6: TwwDBGrid;
    CheckBox2: TCheckBox;
    frxrprt_e: TfrxReport;
    OD_chargepay7: TOracleDataSet;
    frxDBDataset7: TfrxDBDataset;
    DS_chargepay7: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CHARGE: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_IN: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_CURR: TcxGridDBColumn;
    cxGrid1DBTableView1ITOG: TcxGridDBColumn;
    cxGrid1DBTableView1MG: TcxGridDBColumn;
    cxGrid1DBTableView1DAYS: TcxGridDBColumn;
    cxGrid1DBTableView1DOLG_PEN: TcxGridDBColumn;
    cxGrid1DBTableView1SAL: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_PAY: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_CURR_DAYS: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_CORR: TcxGridDBColumn;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    OD_mg: TOracleDataSet;
    cxLookupComboBox1: TcxLookupComboBox;
    DS_mg1: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    N3: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure state_arch2(mgold_: String);
    procedure recalc;
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure calcFooter;
    procedure calcFooter5;
    procedure closeDts;
    procedure CheckBox2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBox2PropertiesCloseUp(Sender: TObject);
    procedure refreshGrids;
    procedure N3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_chargepay: TForm_chargepay;

implementation

uses DM_module1, Unit_list_kart, Unit_Mainform, u_frmTwoLsk;

{$R *.dfm}

procedure TForm_chargepay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_chargepay.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_chargepay.state_arch2(mgold_: String);
begin // ����� ��������� �����
with Form_chargepay do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // �� �������� � �����
    Form_chargepay.Caption:='�������� �� �/C - �����';
    change_alias(OD_chargepay,
    'select mg, sum(summa) as summa from scott.c_chargepay where period=(select period from scott.params)',
      'select mg, sum(summa) as summa from scott.c_chargepay where period=('''+Form_main.arch_mg_+''')');
    change_alias(OD_chargepay,'scott.c_penya',
      '(select * from scott.a_penya where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_chargepay,'scott.c_pen_cur',
      '(select * from scott.a_pen_cur where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // �� ������ � �������
    Form_chargepay.Caption:='�������� �� �/C';
    change_alias(OD_chargepay,
      'select mg, sum(summa) as summa from scott.c_chargepay where period=('''+mgold_+''')',
      'select mg, sum(summa) as summa from scott.c_chargepay where period=(select period from scott.params)');
    change_alias(OD_chargepay,
      '(select * from scott.a_penya where mg='''+mgold_+''')',
      'scott.c_penya');
    change_alias(OD_chargepay,
      '(select * from scott.a_pen_cur where mg='''+mgold_+''')',
      'scott.c_pen_cur');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // �� ������ � �����
    Form_chargepay.Caption:='�������� �� �/C - �����';
    change_alias(OD_chargepay,
      'select mg, sum(summa) as summa from scott.c_chargepay where period=('''+mgold_+''')',
      'select mg, sum(summa) as summa from scott.c_chargepay where period=('''+Form_main.arch_mg_+''')'
      );
    change_alias(OD_chargepay,
      '(select * from scott.a_penya where mg='''+mgold_+''')',
      '(select * from scott.a_penya where mg='''+Form_main.arch_mg_+''')'
      );
    change_alias(OD_chargepay,
      '(select * from scott.a_pen_cur where mg='''+mgold_+''')',
      '(select * from scott.a_pen_cur where mg='''+Form_main.arch_mg_+''')'
      );
  end;
end;
end;

procedure TForm_chargepay.closeDts;
begin
 //������� ��������, ����� �� ���������
 OD_chargepay.Active:=false;
 OD_chargepay2.Active:=false;
 OD_chargepay3.Active:=false;
 OD_chargepay4.Active:=false;
 OD_chargepay5.Active:=false;
 OD_chargepay6.Active:=false;
end;

procedure TForm_chargepay.recalc;
var
  sum_chrg_: Double;
  sum_chng_: Double;
  sum_pay_: Double;
begin
  //��������� �������� �� �������� �����
  DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CPENYA.gen_charge_pay',
          [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 1]);
  DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CPENYA.gen_penya',
         [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 0, 1]);

  CloseDts;
  OD_chargepay.Active:=true;
  OD_chargepay.Last;

  if PageControl1.ActivePageIndex=1 then
  begin
  Panel1.Visible:=true;
  Update;
  DataModule1.OraclePackage1.CallProcedure
   ('scott.GEN.prepare_arch_lsk',
     [Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 0]);
  OD_chargepay2.Active:=false;
  OD_chargepay2.Active:=true;
  OD_chargepay4.Active:=false;
  OD_chargepay4.Active:=true;
  OD_chargepay2.Last;
  calcFooter;
  Panel1.Visible:=false;

  end
  else if PageControl1.ActivePageIndex=2 then
  begin
  Panel1.Visible:=true;
  Update;
  OD_chargepay3.Active:=false;
  OD_chargepay3.Active:=true;

  OD_chargepay3.First;
  while not OD_chargepay3.Eof do
  begin
    sum_chrg_:=sum_chrg_+OD_chargepay3.FieldByName('sum_chrg').AsFloat;
    sum_chng_:=sum_chng_+OD_chargepay3.FieldByName('sum_chng').AsFloat;
    sum_pay_:=sum_pay_+OD_chargepay3.FieldByName('sum_pay').AsFloat;
    OD_chargepay3.Next;
  end;
  OD_chargepay3.Last;

  wwDBGrid2.ColumnByName('SUM_CHRG').FooterValue :=FloatToStrF(sum_chrg_, ffFixed, 10, 2);
  wwDBGrid2.ColumnByName('SUM_CHNG').FooterValue :=FloatToStrF(sum_chng_, ffFixed, 10, 2);
  wwDBGrid2.ColumnByName('SUM_PAY').FooterValue :=FloatToStrF(sum_pay_, ffFixed, 10, 2);
  wwDBGrid2.RedrawGrid;
  Panel1.Visible:=false;
  end
  else if PageControl1.ActivePageIndex=3 then
  begin
  Panel1.Visible:=true;
  Update;
  DataModule1.OraclePackage1.CallProcedure
   ('scott.GEN.prepare_arch_lsk',
     [Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 0]);
  OD_chargepay5.Active:=false;
  OD_chargepay5.Active:=true;
  calcFooter5;
  Panel1.Visible:=false;
  end
  else if PageControl1.ActivePageIndex=4 then
  begin
  Panel1.Visible:=true;
  Update;
  DataModule1.OraclePackage1.CallProcedure
   ('scott.GEN.prepare_arch_lsk',
     [Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 0]);
  OD_chargepay6.Active:=false;
  OD_chargepay6.Active:=true;
  Panel1.Visible:=false;
  end;
end;

procedure TForm_chargepay.FormCreate(Sender: TObject);
begin
  // �������� ����� ��������
  OD_mg.Active:=true;
  OD_mg.Last;
  cxLookupComboBox1.EditValue:=OD_mg.FieldByName('MG').AsString;
  OD_mg.First;
  cxLookupComboBox2.EditValue:=OD_mg.FieldByName('MG').AsString;
  refreshGrids;

  PageControl1.ActivePageIndex:=0;

  if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['DET_CHARGEPAY1']) = 1 then
  begin
    //�������� �������� ����������� ��� �+
    TabSheet4.TabVisible:=True;
  end
  else
  begin
    //�������� ������ ����������� ��� �+
    TabSheet4.TabVisible:=False;
  end;

  if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['DET_CHARGEPAY2']) = 1 then
  begin
    //�������� ����������� ��� ���
    TabSheet2.TabVisible:=True;
  end
  else
  begin
    //������ ����������� ��� ���
    TabSheet2.TabVisible:=False;
  end;

  if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['DET_CHARGEPAY3']) = 1 then
  begin
    //����������� ���, �������� ������ ���������
    TabSheet3.TabVisible:=True;
  end
  else
  begin
    //����������� ���, ������ ������ ���������
    TabSheet3.TabVisible:=False;
  end;

  if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['DET_CHARGEPAY4']) = 1 then
  begin
    //�������� ����������� ���������� (�� �� ��������)
    TabSheet5.TabVisible:=True;
  end
  else
  begin
    //������ ����������� ���������� (�� �� ��������)
    TabSheet5.TabVisible:=False;
  end;

  state_arch2('');
  recalc;
end;

procedure TForm_chargepay.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex= 0 then
  begin
    CheckBox1.Visible:=False;
  end
  else if PageControl1.ActivePageIndex= 1 then
  begin
    CheckBox1.Visible:=True;
  end
  else if PageControl1.ActivePageIndex= 2 then
  begin
    CheckBox1.Visible:=False;
  end
  else if PageControl1.ActivePageIndex= 3 then
  begin
    CheckBox1.Visible:=True;
  end
  else if PageControl1.ActivePageIndex= 4 then
  begin
    CheckBox1.Visible:=True;
  end;
  recalc;
end;

procedure TForm_chargepay.Button1Click(Sender: TObject);
begin

  //��������� �����������
  OD_chargepay.DisableControls;
  OD_chargepay2.DisableControls;
  OD_chargepay3.DisableControls;
  OD_chargepay4.DisableControls;
  OD_chargepay5.DisableControls;
  OD_chargepay6.DisableControls;

  if PageControl1.ActivePageIndex= 0 then
  begin
    frxReport1.Variables['lsk_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('lsk').AsString+'''';
    frxReport1.Variables['adr_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('adr').AsString+'''';

    frxReport1.Variables['mg1']:=''''+cxLookupComboBox1.EditText+'''';
    frxReport1.Variables['mg2']:=''''+cxLookupComboBox2.EditText+'''';

    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;
  end
  else if PageControl1.ActivePageIndex= 1 then
  begin
    CheckBox1.Visible:=True;
    if CheckBox1.Checked=True then
      frxReport3.Script.Variables['det_']:=1
    else
      frxReport3.Script.Variables['det_']:=0;

    frxReport3.Variables['lsk_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('lsk').AsString+'''';
    frxReport3.Variables['adr_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('adr').AsString+'''';
    frxReport3.Variables['mg1']:=''''+cxLookupComboBox1.EditText+'''';
    frxReport3.Variables['mg2']:=''''+cxLookupComboBox2.EditText+'''';

    frxReport3.PrepareReport(true);
    frxReport3.ShowPreparedReport;
  end
  else if PageControl1.ActivePageIndex= 2 then
  begin
    CheckBox1.Visible:=False;
    frxReport2.Variables['lsk_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('lsk').AsString+'''';
    frxReport2.Variables['adr_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('adr').AsString+'''';

    frxReport2.Variables['mg1']:=''''+cxLookupComboBox1.EditText+'''';
    frxReport2.Variables['mg2']:=''''+cxLookupComboBox2.EditText+'''';

    frxReport2.PrepareReport(true);
    frxReport2.ShowPreparedReport;
  end
  else if PageControl1.ActivePageIndex= 3 then
  begin
    CheckBox1.Visible:=False;
    frxReport5.Variables['lsk_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('lsk').AsString+'''';

    frxReport5.Variables['adr_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('adr').AsString+'''';

    frxReport5.Variables['mg1']:=''''+cxLookupComboBox1.EditText+'''';
    frxReport5.Variables['mg2']:=''''+cxLookupComboBox2.EditText+'''';

    frxReport5.PrepareReport(true);
    frxReport5.ShowPreparedReport;
  end
  else if PageControl1.ActivePageIndex= 4 then
  begin
    CheckBox1.Visible:=False;
    frxReport6.Variables['lsk_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('lsk').AsString+'''';

    frxReport6.Variables['adr_']:=
      ''''+Form_list_kart.OD_list_kart.FieldByName('adr').AsString+'''';

    frxReport6.Variables['mg1']:=''''+cxLookupComboBox1.EditText+'''';
    frxReport6.Variables['mg2']:=''''+cxLookupComboBox2.EditText+'''';

    frxReport6.PrepareReport(true);
    frxReport6.ShowPreparedReport;
  end;

  //��������� �����������
  OD_chargepay.EnableControls;
  OD_chargepay2.EnableControls;
  OD_chargepay3.EnableControls;
  OD_chargepay4.EnableControls;
  OD_chargepay5.EnableControls;
  OD_chargepay6.EnableControls;
end;

procedure TForm_chargepay.calcFooter;
var
  charges_, changes_, payment_ : Double;
begin
  charges_:=0;
  changes_:=0;
  payment_:=0;

  OD_chargepay2.First;
  while not OD_chargepay2.Eof do
  begin
    charges_:=charges_+OD_chargepay2.FieldByName('chrg').AsFloat;
    changes_:=changes_+OD_chargepay2.FieldByName('chng').AsFloat;
    payment_:=payment_+OD_chargepay2.FieldByName('pay').AsFloat;
    OD_chargepay2.Next;
  end;
  wwDBGrid1.ColumnByName('MG').FooterValue :='�����:';
  wwDBGrid1.ColumnByName('CHRG').FooterValue :=FloatToStrF(charges_, ffFixed, 10, 2);
  wwDBGrid1.ColumnByName('CHNG').FooterValue :=FloatToStrF(changes_, ffFixed, 10, 2);
  wwDBGrid1.ColumnByName('PAY').FooterValue :=FloatToStrF(payment_, ffFixed, 10, 2);
end;

procedure TForm_chargepay.calcFooter5;
var
  charges_, changes_, payment_ : Double;
begin
  charges_:=0;
  changes_:=0;
  payment_:=0;

  OD_chargepay5.First;
  while not OD_chargepay5.Eof do
  begin
    charges_:=charges_+OD_chargepay5.FieldByName('chrg').AsFloat;
    changes_:=changes_+OD_chargepay5.FieldByName('chng').AsFloat;
    payment_:=payment_+OD_chargepay5.FieldByName('pay').AsFloat;
    OD_chargepay5.Next;
  end;
  wwDBGrid4.ColumnByName('MG').FooterValue :='�����:';
  wwDBGrid4.ColumnByName('CHRG').FooterValue :=FloatToStrF(charges_, ffFixed, 10, 2);
  wwDBGrid4.ColumnByName('CHNG').FooterValue :=FloatToStrF(changes_, ffFixed, 10, 2);
  wwDBGrid4.ColumnByName('PAY').FooterValue :=FloatToStrF(payment_, ffFixed, 10, 2);
end;

procedure TForm_chargepay.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.checked then
      Form_chargepay.FormStyle:=fsStayOnTop
    else
      Form_chargepay.FormStyle:=fsMDIChild;
end;

procedure TForm_chargepay.N1Click(Sender: TObject);
begin
  //������ �������� ������ �� ����
  if DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.C_CPENYA.corr_sal_pen',
          [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString,
           OD_chargepay.FieldByName('mg2').AsString]) <> 0 then
  begin
    DataModule1.OracleSession1.Rollback;
    msg2('��������� ������ �� ���� ���, ���� ��� �������!', '��������!', MB_OK+MB_ICONSTOP);
  end
  else
    DataModule1.OracleSession1.Commit;
//  recalc;
end;

procedure TForm_chargepay.N2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmTwoLsk, frmTwoLsk);
  if frmTwoLsk.ShowModal = mrOk then
  begin
    //������ �������� ������ �� ����
    if DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.C_CPENYA.corr_sal_pen2',
            [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString,
             frmTwoLsk.edt2.text]) <> 0 then
    begin
      DataModule1.OracleSession1.Rollback;
      msg2('������ �� ����������!', '��������!', MB_OK+MB_ICONSTOP);
    end
    else
      DataModule1.OracleSession1.Commit;

    recalc;
  end;


end;


// �������� �����
procedure TForm_chargepay.refreshGrids;
begin

  OD_chargepay.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay2.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay2.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay3.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay3.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay4.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay4.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay5.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay5.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay6.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay6.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay7.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay7.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));

  if PageControl1.ActivePageIndex= 0 then
  begin
    OD_chargepay.Active:=false;
    OD_chargepay.Active:=true;
  end
  else if PageControl1.ActivePageIndex= 1 then
  begin
    OD_chargepay2.Active:=false;
    OD_chargepay2.Active:=true;
  end
  else if PageControl1.ActivePageIndex= 2 then
  begin
    OD_chargepay3.Active:=false;
    OD_chargepay3.Active:=true;
  end
  else if PageControl1.ActivePageIndex= 3 then
  begin
    OD_chargepay5.Active:=false;
    OD_chargepay5.Active:=true;
  end
  else if PageControl1.ActivePageIndex= 4 then
  begin
    OD_chargepay6.Active:=false;
    OD_chargepay6.Active:=true;
  end;

end;


procedure TForm_chargepay.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  refreshGrids;
end;

procedure TForm_chargepay.cxLookupComboBox2PropertiesCloseUp(
  Sender: TObject);
begin
  refreshGrids;
end;

procedure TForm_chargepay.N3Click(Sender: TObject);
begin
  //������ �������� ������ �� ����
  if DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.C_CPENYA.corr_all_sal_pen',
          [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]) <> 0 then
  begin
    DataModule1.OracleSession1.Rollback;
    msg2('��������� ������ �� ���� ���, ���� ��� �������!', '��������!', MB_OK+MB_ICONSTOP);
  end
  else
    DataModule1.OracleSession1.Commit;
  recalc;

end;

end.
