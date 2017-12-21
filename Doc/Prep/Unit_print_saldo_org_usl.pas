unit Unit_print_saldo_org_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DBCtrls, StdCtrls, DM_module1, 
  frxClass, frxDMPExport, frxDBSet,
  frxExportXLS, frxDesgn;

type
  TForm_print_saldo_org_usl = class(TForm)
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    OD_data: TOracleDataSet;
    DataSource1: TDataSource;
    OracleDataSet2: TOracleDataSet;
    DataSource2: TDataSource;
    OD_reu_trest: TOracleDataSet;
    DS_reu: TDataSource;
    DS_data: TDataSource;
    OracleDataSet1: TOracleDataSet;
    OD_itog1: TOracleDataSet;
    OD_itog2: TOracleDataSet;
    OD_itog3: TOracleDataSet;
    OD_itog6: TOracleDataSet;
    OD_itog5: TOracleDataSet;
    OD_itog4: TOracleDataSet;
    OD_itog7: TOracleDataSet;
    OD_itog8: TOracleDataSet;
    OD_streets: TOracleDataSet;
    OD_houses: TOracleDataSet;
    DS_streets: TDataSource;
    DS_houses: TDataSource;
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button1: TButton;
    DBLookupComboBox3: TDBLookupComboBox;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    frxDBData3: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_saldo_org_usl: TForm_print_saldo_org_usl;
  clr_: Integer;
  clr1_: Integer;

implementation

uses Unit_status, Unit_sel_houses, Unit_Mainform, Utils;

{$R *.dfm}

procedure TForm_print_saldo_org_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure SetDatasetItog (reu_: Variant; trest_: Variant; mg_: Variant; mg1_: Variant; kul_: Variant; nd_: Variant);
begin
with Form_print_saldo_org_usl do
 begin
    OD_itog1.Active := false;
    OD_itog1.SetVariable('trest_', trest_);
    OD_itog1.SetVariable('reu_', reu_);
    OD_itog1.SetVariable('mg_', mg_);
    OD_itog1.SetVariable('mg1_', mg1_);
    OD_itog1.SetVariable('kul_', kul_);
    OD_itog1.SetVariable('nd_', nd_);
    OD_itog1.Active := true;

    OD_itog2.Active := false;
    OD_itog2.SetVariable('trest_', trest_);
    OD_itog2.SetVariable('reu_', reu_);
    OD_itog2.SetVariable('mg_', mg_);
    OD_itog2.SetVariable('mg1_', mg1_);
    OD_itog2.SetVariable('kul_', kul_);
    OD_itog2.SetVariable('nd_', nd_);
    OD_itog2.Active := true;

    OD_itog3.Active := false;
    OD_itog3.SetVariable('trest_', trest_);
    OD_itog3.SetVariable('reu_', reu_);
    OD_itog3.SetVariable('mg_', mg_);
    OD_itog3.SetVariable('mg1_', mg1_);
    OD_itog3.SetVariable('kul_', kul_);
    OD_itog3.SetVariable('nd_', nd_);
    OD_itog3.Active := true;

    OD_itog4.Active := false;
    OD_itog4.SetVariable('trest_', trest_);
    OD_itog4.SetVariable('reu_', reu_);
    OD_itog4.SetVariable('mg_', mg_);
    OD_itog4.SetVariable('mg1_', mg1_);
    OD_itog4.SetVariable('kul_', kul_);
    OD_itog4.SetVariable('nd_', nd_);
    OD_itog4.Active := true;

    OD_itog5.Active := false;
    OD_itog5.SetVariable('trest_', trest_);
    OD_itog5.SetVariable('reu_', reu_);
    OD_itog5.SetVariable('mg_', mg_);
    OD_itog5.SetVariable('mg1_', mg1_);
    OD_itog5.SetVariable('kul_', kul_);
    OD_itog5.SetVariable('nd_', nd_);
    OD_itog5.Active := true;

    OD_itog6.Active := false;
    OD_itog6.SetVariable('trest_', trest_);
    OD_itog6.SetVariable('reu_', reu_);
    OD_itog6.SetVariable('mg_', mg_);
    OD_itog6.SetVariable('mg1_', mg1_);
    OD_itog6.SetVariable('kul_', kul_);
    OD_itog6.SetVariable('nd_', nd_);
    OD_itog6.Active := true;

    OD_itog7.Active := false;
    OD_itog7.SetVariable('trest_', trest_);
    OD_itog7.SetVariable('reu_', reu_);
    OD_itog7.SetVariable('mg_', mg_);
    OD_itog7.SetVariable('mg1_', mg1_);
    OD_itog7.SetVariable('kul_', kul_);
    OD_itog7.SetVariable('nd_', nd_);
    OD_itog7.Active := true;

    OD_itog8.Active := false;
    OD_itog8.SetVariable('trest_', trest_);
    OD_itog8.SetVariable('reu_', reu_);
    OD_itog8.SetVariable('mg_', mg_);
    OD_itog8.SetVariable('mg1_', mg1_);
    OD_itog8.SetVariable('kul_', kul_);
    OD_itog8.SetVariable('nd_', nd_);
    OD_itog8.Active := true;
 end;
end;

procedure TForm_print_saldo_org_usl.Button4Click(Sender: TObject);
var
 frxReportSel: TComponent;
 rep_file_: String;
begin
  if (DBLookupComboBox5.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = null) then
  begin
    ShowMessage('Не выбран параметр отчета, Отмена');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = 1) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('Не выбран трест, Отмена');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('Не выбран РЭУ, Отмена');
    Exit;
  end;

  // Невыбрана детализация по статусу жилья
  OD_data.SetVariable('var_', 0);
  frxReportSel := FindComponent('frxReport1');

  //Загрузка отчета
  rep_file_:='Оборотная_по_предпр1.fr3';
  try
    frxReport1.LoadFromFile(Form_main.exepath_+rep_file_, True);
  except
    msg2('Не найден файл отчета: '+Form_main.exepath_+rep_file_,'Внимание!', 16);
    exit;
  end;

  OD_data.Active := false;
  //По РЭУ
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
    OD_data.Active := true;

    SetDatasetItog(DBLookupComboBox7.KeyValue, null, DBLookupComboBox5.KeyValue,
      DBLookupComboBox6.KeyValue, null, null);

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
  //По Тресту
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
    OD_data.Active := true;

    SetDatasetItog(null, DBLookupComboBox7.KeyValue, DBLookupComboBox5.KeyValue,
      DBLookupComboBox6.KeyValue, null, null);

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
  //По УЕЗЖКУ
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
    OD_data.Active := true;

    SetDatasetItog(null, null, DBLookupComboBox5.KeyValue,
      DBLookupComboBox6.KeyValue, null, null);

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
  //По адресу
  else if (DBLookupComboBox3.KeyValue = 3) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', 'xx');
    OD_data.SetVariable('kul_', 'xx');
    OD_data.SetVariable('nd_', 'xx');

    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;

    SetDatasetItog(OD_houses.FieldByName('reu').AsString, null, DBLookupComboBox5.KeyValue,
      DBLookupComboBox6.KeyValue, 'xx', 'xx');

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
  else
  begin
    ShowMessage('Не выбран трест/РЭУ/дом, Отмена');
    Exit;
  end;
end;

procedure TForm_print_saldo_org_usl.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_saldo_org_usl.CheckBox1Click(Sender: TObject);
begin
  OracleDataSet1.Active:=false;
  OracleDataSet2.Active:=false;

  //Статус жилья
  OracleDataSet1.SetVariable('var_',1);
  OracleDataSet2.SetVariable('var_',1);

  OracleDataSet1.Active:=true;
  OracleDataSet2.Active:=true;
end;

procedure TForm_print_saldo_org_usl.DBLookupComboBox3CloseUp(
  Sender: TObject);
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
{  if DBLookupComboBox3.KeyValue = 3 then
  begin
   DBLookupComboBox2.KeyValue := null;
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
   Form_print_saldo_org_usl.Height:=256;
   Groupbox1.Visible:=true;
  end}
  else if DBLookupComboBox3.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, name_reu as reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := 'ЖЭО:';
  end
  else if DBLookupComboBox3.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := 'Фонд:';
  end
  else if DBLookupComboBox3.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
end;

procedure TForm_print_saldo_org_usl.FormCreate(Sender: TObject);
begin
  clr_ := 0;
  clr1_ := 0;
end;

end.
