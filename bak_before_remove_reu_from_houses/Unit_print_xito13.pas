unit Unit_print_xito13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxDMPExport, frxClass, frxExportXLS, frxDBSet, DB, OracleData,
  StdCtrls, DBCtrls;

type
  TForm_print_xito13 = class(TForm)
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
    DS_streets: TDataSource;
    DS_houses: TDataSource;
    frxDBData3: TfrxDBDataset;
    OD_list_choice: TOracleDataSet;
    frxXLSExport1: TfrxXLSExport;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    frxReport2: TfrxReport;
    frxReport1: TfrxReport;
    procedure Button4Click(Sender: TObject);
    procedure DBLookupComboBox3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_xito13: TForm_print_xito13;
  clr_: Integer;
  clr1_: Integer;

implementation

uses Unit_status, Unit_sel_houses, Unit_sel_uch;

{$R *.dfm}

procedure TForm_print_xito13.Button4Click(Sender: TObject);
var
 frxReportSel: TComponent;
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

  OD_list_choice.Active := false;
  OD_list_choice.Active := true;
  if (DBLookupComboBox3.KeyValue = 3) and (OD_list_choice.RecordCount < 1) then
  begin
    ShowMessage('Не выбран Дом, из списка домов, Отмена');
    Exit;
  end;

  OD_data.Active := false;

  if CheckBox1.Checked then
  begin
    frxReportSel := FindComponent('frxReport1');
    OD_data.SetVariable('det_', 0);
  end
  else
  begin
    frxReportSel := FindComponent('frxReport2');
    OD_data.SetVariable('det_', 1);
    TfrxReport(frxReportSel).Variables['var_']:=''''+ComboBox1.Text+'''';
  end;

  OD_data.SetVariable('type_', ComboBox1.ItemIndex);
  OD_data.SetVariable('var_', DBLookupComboBox3.KeyValue);

  //По РЭУ
  if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;

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
    OD_data.Active := true;

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
    OD_data.Active := true;

    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';

    TfrxReport(frxReportSel).PrepareReport(true);
    Form_status.Close;
    TfrxReport(frxReportSel).ShowPreparedReport;

  end
  //По домам
  else if (DBLookupComboBox3.KeyValue = 3) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;

    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;

    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';

    TfrxReport(frxReportSel).PrepareReport(true);
    Form_status.Close;
    TfrxReport(frxReportSel).ShowPreparedReport;
end
end;

procedure TForm_print_xito13.DBLookupComboBox3KeyUp(Sender: TObject;
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
   Label6.Caption := 'РЭУ:';
  end
  else if DBLookupComboBox3.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := 'Трест:';
  end
  else if DBLookupComboBox3.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end;
 end;
end;

procedure TForm_print_xito13.FormShow(Sender: TObject);
begin
  clr_ := 0;
  clr1_ := 0;
end;

procedure TForm_print_xito13.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_xito13.DBLookupComboBox3CloseUp(Sender: TObject);
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
   Label6.Caption := 'РЭУ:';
  end
  else if DBLookupComboBox3.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := 'Трест:';
  end
  else if DBLookupComboBox3.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
end;

procedure TForm_print_xito13.CheckBox1Click(Sender: TObject);
begin
  OracleDataSet1.Active:=false;
  OracleDataSet2.Active:=false;
  if CheckBox1.Checked then
  begin
    OracleDataSet1.SetVariable('var_',19);
    OracleDataSet2.SetVariable('var_',19);
  end
  else
  begin
    OracleDataSet1.SetVariable('var_',1);
    OracleDataSet2.SetVariable('var_',1);
  end;
  OracleDataSet1.Active:=true;
  OracleDataSet2.Active:=true;

 if CheckBox1.Checked then
  begin
   ComboBox1.ItemIndex:=0;
   ComboBox1.Enabled:=false;
  end
  else
   ComboBox1.Enabled:=true;
end;

procedure TForm_print_xito13.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
