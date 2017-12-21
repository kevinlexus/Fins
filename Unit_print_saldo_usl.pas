unit Unit_print_saldo_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, DBCtrls, 
  frxClass, frxDBSet, frxDMPExport, 
  frxExportXLS, 
  frxDesgn;

type
  TForm_print_saldo_usl = class(TForm)
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button1: TButton;
    OD_reu_trest: TOracleDataSet;
    OD_data: TOracleDataSet;
    OracleDataSet2: TOracleDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DS_reu: TDataSource;
    DS_data: TDataSource;
    OracleDataSet1: TOracleDataSet;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    OD_streets: TOracleDataSet;
    DS_streets: TDataSource;
    DS_houses: TDataSource;
    OD_itog1: TOracleDataSet;
    OD_itog2: TOracleDataSet;
    OD_itog3: TOracleDataSet;
    OD_itog6: TOracleDataSet;
    OD_itog5: TOracleDataSet;
    OD_itog4: TOracleDataSet;
    OD_itog7: TOracleDataSet;
    OD_itog8: TOracleDataSet;
    frxDBData3: TfrxDBDataset;
    OD_list_choice: TOracleDataSet;
    frxXLSExport1: TfrxXLSExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form_print_saldo_usl: TForm_print_saldo_usl;
  clr_: Integer;
  clr1_: Integer;

implementation

uses Unit_status, Unit_sel_houses, Unit_sel_uch, Unit_Mainform, Utils;

{$R *.dfm}

procedure SetDatasetItog (reu_: Variant; trest_: Variant; mg_: Variant; mg1_: Variant; kul_: Variant; nd_: Variant; uch_: Variant);
begin
with Form_print_saldo_usl do
 begin
    OD_itog1.Active := false;
    OD_itog1.SetVariable('trest_', trest_);
    OD_itog1.SetVariable('reu_', reu_);
    OD_itog1.SetVariable('mg_', mg_);
    OD_itog1.SetVariable('mg1_', mg1_);
    OD_itog1.SetVariable('kul_', kul_);
    OD_itog1.SetVariable('nd_', nd_);
    OD_itog1.SetVariable('uch_', uch_);
    OD_itog1.Active := true;

    OD_itog2.Active := false;
    OD_itog2.SetVariable('trest_', trest_);
    OD_itog2.SetVariable('reu_', reu_);
    OD_itog2.SetVariable('mg_', mg_);
    OD_itog2.SetVariable('mg1_', mg1_);
    OD_itog2.SetVariable('kul_', kul_);
    OD_itog2.SetVariable('nd_', nd_);
    OD_itog2.SetVariable('uch_', uch_);
    OD_itog2.Active := true;

    OD_itog3.Active := false;
    OD_itog3.SetVariable('trest_', trest_);
    OD_itog3.SetVariable('reu_', reu_);
    OD_itog3.SetVariable('mg_', mg_);
    OD_itog3.SetVariable('mg1_', mg1_);
    OD_itog3.SetVariable('kul_', kul_);
    OD_itog3.SetVariable('nd_', nd_);
    OD_itog3.SetVariable('uch_', uch_);
    OD_itog3.Active := true;

    OD_itog4.Active := false;
    OD_itog4.SetVariable('trest_', trest_);
    OD_itog4.SetVariable('reu_', reu_);
    OD_itog4.SetVariable('mg_', mg_);
    OD_itog4.SetVariable('mg1_', mg1_);
    OD_itog4.SetVariable('kul_', kul_);
    OD_itog4.SetVariable('nd_', nd_);
    OD_itog4.SetVariable('uch_', uch_);
    OD_itog4.Active := true;

    OD_itog5.Active := false;
    OD_itog5.SetVariable('trest_', trest_);
    OD_itog5.SetVariable('reu_', reu_);
    OD_itog5.SetVariable('mg_', mg_);
    OD_itog5.SetVariable('mg1_', mg1_);
    OD_itog5.SetVariable('kul_', kul_);
    OD_itog5.SetVariable('nd_', nd_);
    OD_itog5.SetVariable('uch_', uch_);
    OD_itog5.Active := true;

    OD_itog6.Active := false;
    OD_itog6.SetVariable('trest_', trest_);
    OD_itog6.SetVariable('reu_', reu_);
    OD_itog6.SetVariable('mg_', mg_);
    OD_itog6.SetVariable('mg1_', mg1_);
    OD_itog6.SetVariable('kul_', kul_);
    OD_itog6.SetVariable('nd_', nd_);
    OD_itog6.SetVariable('uch_', uch_);
    OD_itog6.Active := true;

    OD_itog7.Active := false;
    OD_itog7.SetVariable('trest_', trest_);
    OD_itog7.SetVariable('reu_', reu_);
    OD_itog7.SetVariable('mg_', mg_);
    OD_itog7.SetVariable('mg1_', mg1_);
    OD_itog7.SetVariable('kul_', kul_);
    OD_itog7.SetVariable('nd_', nd_);
    OD_itog7.SetVariable('uch_', uch_);
    OD_itog7.Active := true;

    OD_itog8.Active := false;
    OD_itog8.SetVariable('trest_', trest_);
    OD_itog8.SetVariable('reu_', reu_);
    OD_itog8.SetVariable('mg_', mg_);
    OD_itog8.SetVariable('mg1_', mg1_);
    OD_itog8.SetVariable('kul_', kul_);
    OD_itog8.SetVariable('nd_', nd_);
    OD_itog8.SetVariable('uch_', uch_);
    OD_itog8.Active := true;
 end;
end;

procedure TForm_print_saldo_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_saldo_usl.Button4Click(Sender: TObject);
var
 frxReportSel: TComponent;
 rep_file_: string;
begin
  if (DBLookupComboBox5.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('�� ������ ������ ������, ������');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = null) then
  begin
    ShowMessage('�� ������ �������� ������, ������');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = 1) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('�� ������ �����, ������');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('�� ������ ���, ������');
    Exit;
  end;

  OD_list_choice.Active := false;
  OD_list_choice.Active := true;
  if (DBLookupComboBox3.KeyValue = 3) and (OD_list_choice.RecordCount < 1) then
  begin
    ShowMessage('�� ������ ���, �� ������ �����, ������');
    Exit;
  end;

  OD_data.SetVariable('var_', 0);
  frxReportSel := FindComponent('frxReport1');

  //�������� ������
  rep_file_:='���������_��_�������1.fr3';
  try
    frxReport1.LoadFromFile(Form_main.exepath_+rep_file_, True);
  except
    msg2('�� ������ ���� ������: '+Form_main.exepath_+rep_file_,'��������!', 16);
    exit;
  end;

  OD_data.Active := false;
  //�� ���
  if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.SetVariable('kul_', null);
    OD_data.SetVariable('nd_', null);
    OD_data.SetVariable('uch_', null);
    OD_data.Active := true;

    SetDatasetItog(DBLookupComboBox7.KeyValue, null, DBLookupComboBox5.KeyValue,
      DBLookupComboBox6.KeyValue, null, null, null);
    TfrxReport(frxReportSel).Script.Variables['showfooter_']:=0;
    TfrxReport(frxReportSel).Variables['summa1']:=OD_Itog1.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa2']:=OD_Itog2.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa3']:=OD_Itog3.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa4']:=OD_Itog4.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa5']:=OD_Itog5.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa6']:=OD_Itog6.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa7']:=OD_Itog7.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa8']:=OD_Itog8.FieldByName('summa').AsFloat;

    TfrxReport(frxReportSel).Variables['name1']:=''''+OD_Itog1.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name2']:=''''+OD_Itog2.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name3']:=''''+OD_Itog3.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name4']:=''''+OD_Itog4.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name5']:=''''+OD_Itog5.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name6']:=''''+OD_Itog6.FieldByName('name').AsString+'''';

    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';

    TfrxReport(frxReportSel).PrepareReport(true);
    Form_status.Close;
    TfrxReport(frxReportSel).ShowPreparedReport;
   end
  //�� ������
  else if (DBLookupComboBox3.KeyValue = 1) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', DBLookupComboBox7.KeyValue);

    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.SetVariable('kul_', null);
    OD_data.SetVariable('nd_', null);
    OD_data.SetVariable('uch_', null);
    OD_data.Active := true;

    SetDatasetItog(null, DBLookupComboBox7.KeyValue, DBLookupComboBox5.KeyValue,
    DBLookupComboBox6.KeyValue, null, null, null);

    TfrxReport(frxReportSel).Script.Variables['showfooter_']:=0;
    TfrxReport(frxReportSel).Variables['summa1']:=OD_Itog1.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa2']:=OD_Itog2.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa3']:=OD_Itog3.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa4']:=OD_Itog4.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa5']:=OD_Itog5.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa6']:=OD_Itog6.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa7']:=OD_Itog7.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa8']:=OD_Itog8.FieldByName('summa').AsFloat;

    TfrxReport(frxReportSel).Variables['name1']:=''''+OD_Itog1.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name2']:=''''+OD_Itog2.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name3']:=''''+OD_Itog3.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name4']:=''''+OD_Itog4.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name5']:=''''+OD_Itog5.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name6']:=''''+OD_Itog6.FieldByName('name').AsString+'''';

    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';

    TfrxReport(frxReportSel).PrepareReport(true);
    Form_status.Close;
    TfrxReport(frxReportSel).ShowPreparedReport;
  end
  //�� ������
  else if (DBLookupComboBox3.KeyValue = 0) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.SetVariable('kul_', null);
    OD_data.SetVariable('nd_', null);
    OD_data.SetVariable('uch_', null);
    OD_data.Active := true;

    SetDatasetItog(null, null, DBLookupComboBox5.KeyValue,
      DBLookupComboBox6.KeyValue, null, null, null);

    TfrxReport(frxReportSel).Script.Variables['showfooter_']:=0;
    TfrxReport(frxReportSel).Variables['summa1']:=OD_Itog1.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa2']:=OD_Itog2.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa3']:=OD_Itog3.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa4']:=OD_Itog4.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa5']:=OD_Itog5.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa6']:=OD_Itog6.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa7']:=OD_Itog7.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa8']:=OD_Itog8.FieldByName('summa').AsFloat;

    TfrxReport(frxReportSel).Variables['name1']:=''''+OD_Itog1.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name2']:=''''+OD_Itog2.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name3']:=''''+OD_Itog3.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name4']:=''''+OD_Itog4.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name5']:=''''+OD_Itog5.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name6']:=''''+OD_Itog6.FieldByName('name').AsString+'''';

    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';

    TfrxReport(frxReportSel).PrepareReport(true);
    Form_status.Close;
    TfrxReport(frxReportSel).ShowPreparedReport;

  end
  //�� �����
  else if (DBLookupComboBox3.KeyValue = 3) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;

    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', 'xx');
    OD_data.SetVariable('kul_', 'xx');
    OD_data.SetVariable('nd_', 'xx');
    OD_data.SetVariable('uch_', null);

    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;

    SetDatasetItog('xx', null, DBLookupComboBox5.KeyValue,
      DBLookupComboBox6.KeyValue, 'xxx', 'xxx', null);

    TfrxReport(frxReportSel).Script.Variables['showfooter_']:=1;
    TfrxReport(frxReportSel).Variables['summa1']:=OD_Itog1.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa2']:=OD_Itog2.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa3']:=OD_Itog3.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa4']:=OD_Itog4.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa5']:=OD_Itog5.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa6']:=OD_Itog6.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa7']:=OD_Itog7.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa8']:=OD_Itog8.FieldByName('summa').AsFloat;


    TfrxReport(frxReportSel).Variables['name1']:=''''+OD_Itog1.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name2']:=''''+OD_Itog2.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name3']:=''''+OD_Itog3.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name4']:=''''+OD_Itog4.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name5']:=''''+OD_Itog5.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name6']:=''''+OD_Itog6.FieldByName('name').AsString+'''';

    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';

    TfrxReport(frxReportSel).PrepareReport(true);
    Form_status.Close;
    TfrxReport(frxReportSel).ShowPreparedReport;
end
  //�� ��������
  else if (DBLookupComboBox3.KeyValue = 4) then
 begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;

    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('kul_', null);
    OD_data.SetVariable('nd_', null);
    OD_data.SetVariable('uch_', 1);

    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;

    SetDatasetItog('xx', null, DBLookupComboBox5.KeyValue,
      DBLookupComboBox6.KeyValue, 'xxx', 'xxx', 1);

    TfrxReport(frxReportSel).Script.Variables['showfooter_']:=1;
    TfrxReport(frxReportSel).Variables['summa1']:=OD_Itog1.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa2']:=OD_Itog2.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa3']:=OD_Itog3.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa4']:=OD_Itog4.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa5']:=OD_Itog5.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa6']:=OD_Itog6.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa7']:=OD_Itog7.FieldByName('summa').AsFloat;
    TfrxReport(frxReportSel).Variables['summa8']:=OD_Itog8.FieldByName('summa').AsFloat;

    TfrxReport(frxReportSel).Variables['name1']:=''''+OD_Itog1.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name2']:=''''+OD_Itog2.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name3']:=''''+OD_Itog3.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name4']:=''''+OD_Itog4.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name5']:=''''+OD_Itog5.FieldByName('name').AsString+'''';
    TfrxReport(frxReportSel).Variables['name6']:=''''+OD_Itog6.FieldByName('name').AsString+'''';

    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';

    TfrxReport(frxReportSel).PrepareReport(true);
    Form_status.Close;
    TfrxReport(frxReportSel).ShowPreparedReport;
 end;
end;

procedure TForm_print_saldo_usl.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  if DBLookupComboBox3.KeyValue = 3 then
  begin
   DBLookupComboBox7.Enabled := false;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '';
  end
  else if DBLookupComboBox3.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '���:';
  end
  else if DBLookupComboBox3.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '�����:';
  end
  else if DBLookupComboBox3.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
end;

procedure TForm_print_saldo_usl.DBLookupComboBox3CloseUp(Sender: TObject);
begin
  if DBLookupComboBox3.KeyValue = 3 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
   if clr_=0 then
   begin
    Application.CreateForm(TForm_sel_houses, Form_sel_houses);
    Form_sel_houses.OD_list_choice.Active := false;
    Form_sel_houses.OD_list_choice.SetVariable('clr_',1);
    Form_sel_houses.OD_list_choice.Active := true;
    clr_:=1;
   end
   else
   begin
    Application.CreateForm(TForm_sel_houses, Form_sel_houses);
   end;
  end
  else if DBLookupComboBox3.KeyValue = 4 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
   if clr1_=0 then
   begin
    Application.CreateForm(TForm_sel_uch, Form_sel_uch);
    Form_sel_uch.OD_list_choice.Active := false;
    Form_sel_uch.OD_list_choice.SetVariable('clr_',1);
    Form_sel_uch.OD_list_choice.Active := true;
    clr1_:=1;
   end
   else
   begin
    Application.CreateForm(TForm_sel_uch, Form_sel_uch);
   end;
  end
  else if DBLookupComboBox3.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, name_reu as reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '���:';
  end
  else if DBLookupComboBox3.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '����:';
  end
  else if DBLookupComboBox3.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
end;

procedure TForm_print_saldo_usl.Button2Click(Sender: TObject);
begin
 if clr_=0 then
 begin
  Application.CreateForm(TForm_sel_houses, Form_sel_houses);
  Form_sel_houses.OD_list_choice.Active := false;
  Form_sel_houses.OD_list_choice.SetVariable('clr_',1);
  Form_sel_houses.OD_list_choice.Active := true;
  clr_:=1;
 end
 else
 begin
  Application.CreateForm(TForm_sel_houses, Form_sel_houses);
 end;

end;

procedure TForm_print_saldo_usl.FormShow(Sender: TObject);
begin
  clr_ := 0;
  clr1_ := 0;
end;

procedure TForm_print_saldo_usl.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_saldo_usl.DBLookupComboBox3KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then
 begin
  if DBLookupComboBox3.KeyValue = 3 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
   if clr_=0 then
   begin
    Application.CreateForm(TForm_sel_houses, Form_sel_houses);
    Form_sel_houses.OD_list_choice.Active := false;
    Form_sel_houses.OD_list_choice.SetVariable('clr_',1);
    Form_sel_houses.OD_list_choice.Active := true;
    clr_:=1;
   end
   else
   begin
    Application.CreateForm(TForm_sel_houses, Form_sel_houses);
   end;
  end
  else if DBLookupComboBox3.KeyValue = 4 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
   if clr1_=0 then
   begin
    Application.CreateForm(TForm_sel_uch, Form_sel_uch);
    Form_sel_uch.OD_list_choice.Active := false;
    Form_sel_uch.OD_list_choice.SetVariable('clr_',1);
    Form_sel_uch.OD_list_choice.Active := true;
    clr1_:=1;
   end
   else
   begin
    Application.CreateForm(TForm_sel_uch, Form_sel_uch);
   end;
  end
  else if DBLookupComboBox3.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '���:';
  end
  else if DBLookupComboBox3.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '�����:';
  end
  else if DBLookupComboBox3.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end;
 end;
end;

procedure TForm_print_saldo_usl.CheckBox1Click(Sender: TObject);
begin
  OracleDataSet1.Active:=false;
  OracleDataSet2.Active:=false;
{  if CheckBox1.Checked then
  begin
    OracleDataSet1.SetVariable('var_',14);
    OracleDataSet2.SetVariable('var_',14);
  end
  else
  begin}
    OracleDataSet1.SetVariable('var_',1);
    OracleDataSet2.SetVariable('var_',1);
//  end;
  OracleDataSet1.Active:=true;
  OracleDataSet2.Active:=true;
end;

end.






