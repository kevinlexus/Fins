unit Unit_print_opl_xito3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, DBCtrls, 
  ExtCtrls, 
  frxCross, frxClass, frxDBSet, frxExportXLS,
  frxDMPExport;

type
  TForm_print_opl_xito3 = class(TForm)
    DataSource1: TDataSource;
    OracleDataSet2: TOracleDataSet;
    OracleDataSet3: TOracleDataSet;
    DataSource5: TDataSource;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    CheckBox3: TCheckBox;
    Edit2: TEdit;
    DS_perm_menu: TDataSource;
    OD_reu_trest: TOracleDataSet;
    DS_reu_trest: TDataSource;
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button2: TButton;
    OD_data: TOracleDataSet;
    frxDBDataset1: TfrxDBDataset;
    frxCrossObject1: TfrxCrossObject;
    OD_perm_menu: TOracleDataSet;
    CheckBox2: TCheckBox;
    OD_perm_main: TOracleDataSet;
    frxXLSExport2: TfrxXLSExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox8CloseUp(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_opl_xito3: TForm_print_opl_xito3;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_print_opl_xito3.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_opl_xito3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_opl_xito3.FormShow(Sender: TObject);
begin
  if OD_perm_main.RecordCount > 0 then
  begin
      Checkbox3.Enabled := true;
  end;
end;

procedure TForm_print_opl_xito3.DBLookupComboBox8CloseUp(Sender: TObject);
begin
  if DBLookupComboBox8.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, name_reu as reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := DBLookupComboBox8.Text;
  end
  else if DBLookupComboBox8.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := DBLookupComboBox8.Text;
  end
  else if DBLookupComboBox8.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
end;

procedure TForm_print_opl_xito3.Button3Click(Sender: TObject);
Var
  a: Integer;
  frxReportSel: TComponent;
begin
  if (DBLookupComboBox5.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;
  end;

  if (DBLookupComboBox8.KeyValue = null) then
  begin
    ShowMessage('Не выбран параметр отчета, Отмена');
    Exit;
  end;

  if (DBLookupComboBox8.KeyValue = 1) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('Не выбран трест, Отмена');
    Exit;
  end;

  if (DBLookupComboBox8.KeyValue = 2) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('Не выбран РЭУ, Отмена');
    Exit;
  end;

  OD_data.Active:=false;
  OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
  OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
  OD_data.SetVariable('trest_', null);
  OD_data.SetVariable('reu_', null);

  if CheckBox2.Checked = true then //Лазерный принтер
   frxReportSel := FindComponent('frxReport2')
  else                             //Матричный принтер
   frxReportSel := FindComponent('frxReport1');

  TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
  TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet3.FieldByName('mg1').AsString+'''';

if (CheckBox3.Checked = true) then
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  OD_reu_trest.First;
  for a:=1 to OD_reu_trest.RecordCount do
   begin
     OD_data.Active:=false;
     OD_data.SetVariable('reu_', OD_reu_trest.FieldByName('key').AsString);
     OD_data.Active:=true;
     frxDotMatrixExport1.SaveToFile:=true;
     if OD_data.RecordCount > 0 then
     begin
      TfrxReport(frxReportSel).PrepareReport(true);
      frxDotMatrixExport1.ShowDialog:=false;
      frxDotMatrixExport1.FileName:=Edit2.Text+'o_pnk_'+OD_reu_trest.FieldByName('key').AsString+'.txt'; //для оборотки
      TfrxReport(frxReportSel).Export(frxDotMatrixExport1);
      frxDotMatrixExport1.ShowDialog:=true;
     end;
    OD_reu_trest.Next;
   end;
  Form_status.Close;
Exit;
end;

if (DBLookupComboBox8.KeyValue=1) then
begin
  //По тресту
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  OD_data.SetVariable('trest_', DBLookupComboBox7.KeyValue);
  OD_data.Active:=true;
  TfrxReport(frxReportSel).PrepareReport(true);
  Form_status.Close;
  TfrxReport(frxReportSel).ShowPreparedReport;
end
else if (DBLookupComboBox8.KeyValue=2) then
begin
  //По РЭУ
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
  OD_data.Active:=true;
  TfrxReport(frxReportSel).PrepareReport(true);
  Form_status.Close;
  TfrxReport(frxReportSel).ShowPreparedReport;
end
else if (DBLookupComboBox8.KeyValue=0) then
begin
  //По МП УЕЗЖКУ
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  OD_data.Active:=true;
  TfrxReport(frxReportSel).PrepareReport(true);
  Form_status.Close;
  TfrxReport(frxReportSel).ShowPreparedReport;
end;
end;

procedure TForm_print_opl_xito3.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked=true then
     begin
      CheckBox2.Checked:=false;
      Edit2.Enabled:=true;
      Button3.Caption:='Выгрузка';
      DBLookupComboBox8.KeyValue:=2;
      OD_reu_trest.Active:=false;
      OD_reu_trest.SQL.Text := 'select reu as key, reu from scott.v_permissions_reu';
      OD_reu_trest.Active:=true;
      DBLookupComboBox7.Enabled := true;
      DBLookupComboBox7.KeyValue := '01';
     end
    else
     begin
      CheckBox2.Checked:=true;
      Edit2.Enabled:=false;
      Button3.Caption:='Просмотр';
      DBLookupComboBox8.KeyValue:=null;
      DBLookupComboBox7.KeyValue:=null;
     end;
end;

end.
