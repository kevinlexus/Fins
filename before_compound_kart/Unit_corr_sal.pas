unit Unit_corr_sal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, Wwdbigrd, Wwdbgrid, OracleData, wwdblook,
  Menus, Utils, Oracle, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ComCtrls, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxCheckComboBox;

type
  TForm_corr_sal = class(TForm)
    OD_saldo: TOracleDataSet;
    GroupBox1: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    DS_saldo: TDataSource;
    ComboBox2: TComboBox;
    Label1: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    OD_usl: TOracleDataSet;
    OD_sprorg: TOracleDataSet;
    Label4: TLabel;
    Label3: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_reu: TOracleDataSet;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Button4: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NAME_REU: TcxGridDBColumn;
    cxGrid1DBTableView1NAME_USL: TcxGridDBColumn;
    cxGrid1DBTableView1NAME_ORG: TcxGridDBColumn;
    cxGrid1DBTableView1INDEBET: TcxGridDBColumn;
    cxGrid1DBTableView1INKREDIT: TcxGridDBColumn;
    cxGrid1DBTableView1CHARGES: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT: TcxGridDBColumn;
    cxGrid1DBTableView1PN: TcxGridDBColumn;
    cxGrid1DBTableView1OUTDEBET: TcxGridDBColumn;
    cxGrid1DBTableView1OUTKREDIT: TcxGridDBColumn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1FK_DOC: TcxGridDBColumn;
    cxGridDBTableView1TEXT: TcxGridDBColumn;
    cxGridDBTableView1NAME_REU: TcxGridDBColumn;
    cxGridDBTableView1NAME_USL: TcxGridDBColumn;
    cxGridDBTableView1NAME_ORG: TcxGridDBColumn;
    cxGridDBTableView1SUMMA: TcxGridDBColumn;
    DS_reu: TDataSource;
    cxCheckComboBox1: TcxCheckComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2CloseUp(Sender: TObject);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure fillUk();
    function getStrUk(): String;
    procedure selAllUk();
  private
    tp: Integer;
  public
    { Public declarations }
  end;

var
  Form_corr_sal: TForm_corr_sal;

implementation

uses Unit_status, DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_corr_sal.FormCreate(Sender: TObject);
begin
  tp:=0;
  OD_saldo.SetVariable('var_',0);
  OD_saldo.Active:=true;
  OD_usl.Active:=true;

  OD_reu.Active:=true;
  OD_sprorg.Active:=true;
  OD_data.Active:=true;
  wwDBLookupCombo1.LookupValue:='000';
  wwDBLookupCombo2.LookupValue:='000';
  cxCheckComboBox1.Enabled:=False;
    // ��������� ������� ��
  fillUk();
end;

procedure TForm_corr_sal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_corr_sal.ComboBox2CloseUp(Sender: TObject);
begin
  OD_saldo.Active:=False;
  if ComboBox2.ItemIndex=0 then
  begin
    OD_saldo.SetVariable('var_',0);
    wwDBLookupCombo3.Enabled:=false;
  end
  else
  begin
    OD_saldo.SetVariable('var_',1);
    wwDBLookupCombo3.Enabled:=True;
  end;
  OD_saldo.Active:=True;

end;

procedure TForm_corr_sal.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_saldo.Active:=False;
  OD_saldo.SetVariable('reu_',
    wwDBLookupCombo3.LookupValue);
  OD_saldo.Active:=True;
end;

procedure TForm_corr_sal.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_corr_sal.Button2Click(Sender: TObject);
begin
  if msg3('����������� ���������� ������������, ��������� ��������������� �� �������',
     '��������!',
     MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  //�������� �������������
   DataModule1.OraclePackage1.CallProcedure
       ('scott.c_gen_pay.dist_pay_del_corr', [parNone]);
  //���������� ������������� �� ������������
   DataModule1.OraclePackage1.CallProcedure
       ('scott.c_gen_pay.dist_pay_add_corr', [0]);
  //���������� ������������� ����� ������������
   DataModule1.OraclePackage1.CallProcedure
       ('scott.c_gen_pay.dist_pay_add_corr', [1]);
  //������
  DataModule1.OraclePackage1.CallProcedure
     ('scott.gen.gen_saldo', [null]);

  DataModule1.OraclePackage1.CallProcedure
    ('scott.gen.GEN_SALDO', [null]);
  //  ������������ ������ �� ����� (xito1)
  DataModule1.OraclePackage1.CallProcedure
    ('scott.gen.GEN_SALDO_HOUSES', [parNone]);
  DataModule1.OraclePackage1.CallProcedure
    ('scott.gen.gen_xito13', parNone);
  OD_saldo.Active:=False;
  OD_saldo.Active:=True;
  Form_status.Close;
  end;
  msg2('�������� ���������, ���������� ���������� � ����� "������"!',
    '��������!', MB_ICONINFORMATION+MB_OK);
end;

procedure TForm_corr_sal.Button1Click(Sender: TObject);
var
  dst_usl_: String;
  dst_org_: Integer;
begin
  if (tp=0) and (Edit1.Text = '') then
  begin
    msg2('��������� ���� "����������"!',
      '��������!', MB_ICONSTOP+MB_OK);
  end
  else
  begin
  if wwDBLookupCombo1.LookupValue = '000' then
    dst_usl_:=''
    else
    dst_usl_:=wwDBLookupCombo1.LookupValue;
  if wwDBLookupCombo2.LookupValue = '000' then
    dst_org_:=-1
    else
    dst_org_:=StrToInt(wwDBLookupCombo2.LookupValue);

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  if tp=0 then
  begin
    if ComboBox2.ItemIndex=0 then
    begin
    DataModule1.OraclePackage1.CallProcedure
       ('scott.C_CHANGES.gen_corrects',
        [OD_saldo.FieldByName('usl').AsString,
         OD_saldo.FieldByName('fk_org').AsInteger,
         dst_usl_,
         dst_org_,
         null,
         Edit1.Text
        ]);
    end
    else
    begin
    DataModule1.OraclePackage1.CallProcedure
       ('scott.C_CHANGES.gen_corrects',
        [OD_saldo.FieldByName('usl').AsString,
         OD_saldo.FieldByName('fk_org').AsInteger,
         dst_usl_,
         dst_org_,
         OD_reu.FieldByName('reu').AsString,
         Edit1.Text
        ]);
    end;
  end
  else if tp=2 then
  begin
    if ComboBox2.ItemIndex=0 then
    begin
    DataModule1.OraclePackage1.CallProcedure
       ('scott.C_CHANGES.gen_pay_corrects',
        [OD_saldo.FieldByName('usl').AsString,
         OD_saldo.FieldByName('fk_org').AsInteger,
         dst_usl_,
         dst_org_,
         null,
         tp
        ]);
    end
    else
    begin
    DataModule1.OraclePackage1.CallProcedure
       ('scott.C_CHANGES.gen_pay_corrects',
        [OD_saldo.FieldByName('usl').AsString,
         OD_saldo.FieldByName('fk_org').AsInteger,
         dst_usl_,
         dst_org_,
         OD_reu.FieldByName('reu').AsString,
         tp
        ]);
    end;
  end
  else if tp=3 then
  begin
    // 1-�� ������������� ������
    DataModule1.OraclePackage1.CallProcedure
       ('scott.P_JAVA.correct',
        [1, Form_Main.cur_dt, getStrUk]);
  end
  else if tp=4 then
  begin
    // 2-�� ������������� ������
    DataModule1.OraclePackage1.CallProcedure
       ('scott.P_JAVA.correct',
        [2, Form_Main.cur_dt, getStrUk]);
  end;

  OD_data.Active:=false;
  OD_data.Active:=true;
  Form_status.Close;
  if tp=0 then
    msg2('�������� ������� ���������!',
      '��������!', MB_ICONINFORMATION+MB_OK)
  else if tp=1 then
    msg2('����������� ������ ������� ����������!',
      '��������!', MB_ICONINFORMATION+MB_OK)
  else if tp=2 then
    msg2('����������� ���� ������� ����������!',
      '��������!', MB_ICONINFORMATION+MB_OK);

  end;

end;

procedure TForm_corr_sal.N1Click(Sender: TObject);
begin
  if msg3('����������� �������� �������� � ����� '+
    OD_data.FieldByName('fk_doc').AsString,
     '��������!',
     MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
     DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CHANGES.del_corr',
          [OD_data.FieldByName('fk_doc').AsInteger]);
     OD_data.Active:=False;
     OD_data.Active:=True;
  end;

end;

procedure TForm_corr_sal.ComboBox1CloseUp(Sender: TObject);
begin
  tp:=ComboBox1.ItemIndex;
  if tp=0 then
  begin
    //��������� ������
    Label2.Enabled:=True;
    Edit1.Enabled:=True;

    Label1.Enabled:=true;
    Label3.Enabled:=true;
    Label4.Enabled:=true;
    Label5.Enabled:=true;
    ComboBox2.Enabled:=true;
    wwDBLookupCombo3.Enabled:=true;
    wwDBLookupCombo1.Enabled:=true;
    wwDBLookupCombo2.Enabled:=true;
    cxCheckComboBox1.Enabled:=False;
  end
  else if tp=1 then
  begin
    //��������� ����������� ������
    Label2.Enabled:=False;
    Edit1.Enabled:=False;

    Label1.Enabled:=true;
    Label3.Enabled:=true;
    Label4.Enabled:=true;
    Label5.Enabled:=true;
    ComboBox2.Enabled:=true;
    wwDBLookupCombo3.Enabled:=true;
    wwDBLookupCombo1.Enabled:=true;
    wwDBLookupCombo2.Enabled:=true;
    cxCheckComboBox1.Enabled:=False;
  end
  else if tp=2 then
  begin
    //��������� ����������� ����
    Label2.Enabled:=False;
    Edit1.Enabled:=False;

    Label1.Enabled:=true;
    Label3.Enabled:=true;
    Label4.Enabled:=true;
    Label5.Enabled:=true;
    ComboBox2.Enabled:=true;
    wwDBLookupCombo3.Enabled:=true;
    wwDBLookupCombo1.Enabled:=true;
    wwDBLookupCombo2.Enabled:=true;
    cxCheckComboBox1.Enabled:=False;
  end
  else if tp=3 then
  begin
    // ��������� ������ - 1-�� ��������
    Label2.Enabled:=False;
    Edit1.Enabled:=False;

    Label1.Enabled:=False;
    Label3.Enabled:=False;
    Label4.Enabled:=False;
    Label5.Enabled:=False;
    ComboBox2.Enabled:=False;
    wwDBLookupCombo3.Enabled:=False;
    wwDBLookupCombo1.Enabled:=False;
    wwDBLookupCombo2.Enabled:=False;
    cxCheckComboBox1.Enabled:=True;
  end
  else if tp=4 then
  begin
    // ��������� ������ - 2-�� ��������
    Label2.Enabled:=False;
    Edit1.Enabled:=False;

    Label1.Enabled:=False;
    Label3.Enabled:=False;
    Label4.Enabled:=False;
    Label5.Enabled:=False;
    ComboBox2.Enabled:=False;
    wwDBLookupCombo3.Enabled:=False;
    wwDBLookupCombo1.Enabled:=False;
    wwDBLookupCombo2.Enabled:=False;
    cxCheckComboBox1.Enabled:=True;
  end;

end;
// ��������� checkComboBox ���������� ��
procedure TForm_corr_sal.fillUk();
 var i: Integer;
begin
  OD_reu.Active := True;
  while not OD_reu.Eof do
  begin
     with cxCheckComboBox1.Properties.Items.Add do
    begin
      Description := OD_reu.FieldByName('reu').AsString+' '
        +OD_reu.FieldByName('name').AsString;
    end;
    OD_reu.Next;
  end;
  selAllUk;
end;

// �������� ��� �������� cxCheckComboBox
procedure TForm_corr_sal.selAllUk();
var
  i: Integer;
  ComboProp: TcxCheckComboBoxProperties;
begin
  ComboProp:=cxCheckComboBox1.Properties;
  for i := 0 to ComboProp.Items.Count - 1 do
   cxCheckComboBox1.States[i] := cbsChecked;
end;

// �������� ������ ��
function TForm_corr_sal.getStrUk(): String;
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
  
end.
