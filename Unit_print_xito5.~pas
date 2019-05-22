unit Unit_print_xito5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, OracleData, frxClass, frxDBSet,
  frxDMPExport, frxExportXLS;

type
  TForm_print_xito5 = class(TForm)
    DataSource1: TDataSource;
    DataSource5: TDataSource;
    OracleDataSet5: TOracleDataSet;
    OracleDataSet6: TOracleDataSet;
    OracleDataSet1: TOracleDataSet;
    OracleDataSet4: TOracleDataSet;
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    OD_data: TOracleDataSet;
    frxDBDataset1: TfrxDBDataset;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Edit2: TEdit;
    CheckBox2: TCheckBox;
    OD_perm_main: TOracleDataSet;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    OD_reu_trest: TOracleDataSet;
    DS_reu: TDataSource;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    OD_data_itog: TOracleDataSet;
    frxDBDataset2: TfrxDBDataset;
    CheckBox1: TCheckBox;
    frxXLSExport1: TfrxXLSExport;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    OD_variant: TOracleDataSet;
    DS_variant: TDataSource;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxReport4: TfrxReport;
    frxReport3: TfrxReport;
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBLookupComboBox8CloseUp(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_xito5: TForm_print_xito5;

implementation

uses Unit_status, Unit_Mainform;

{$R *.dfm}

procedure TForm_print_xito5.CheckBox3Click(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue:=null;
  DBLookupComboBox6.KeyValue:=null;

  if CheckBox6.Checked = true then
   begin
   DataSource1.DataSet := OracleDataSet5;
   DataSource5.DataSet := OracleDataSet6;
   end
  else
   begin
   DataSource1.DataSet := OracleDataSet1;
   DataSource5.DataSet := OracleDataSet4;
   end;
end;

procedure TForm_print_xito5.CheckBox6Click(Sender: TObject);
begin
   DBLookupComboBox5.KeyValue := null;
   DBLookupComboBox6.KeyValue := null;
  if CheckBox6.Checked = true then
   begin
   DataSource1.DataSet := OracleDataSet5;
   DataSource5.DataSet := OracleDataSet6;
   end
  else
   begin
   DataSource1.DataSet := OracleDataSet1;
   DataSource5.DataSet := OracleDataSet4;
   end;
end;

procedure TForm_print_xito5.Button3Click(Sender: TObject);
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

  OD_data.Active := false;
  OD_data_itog.Active := false;

  if CheckBox2.Checked = true then//Оборотка
  begin
    OD_data.SetVariable('type_', 1);
    OD_data_itog.SetVariable('type_', 1);
  end
  else                        //Инкассации
  begin
    OD_data.SetVariable('type_', 0);
    OD_data_itog.SetVariable('type_', 0);
  end;

  if (DBLookupComboBox8.KeyValue = 0) then //по всем ЖЭО
  begin
    if CheckBox1.Checked = true then //Лазерный принтер
      frxReportSel := FindComponent('frxReport4')
    else                             //Матричный принтер
      frxReportSel := FindComponent('frxReport2');
  end
  else //по другим
  begin
    if CheckBox1.Checked = true then //Лазерный принтер
      frxReportSel := FindComponent('frxReport3')
    else                             //Матричный принтер
      frxReportSel := FindComponent('frxReport1');
  end;

  if DBLookupComboBox8.KeyValue = 0 then
    TfrxReport(frxReportSel).Variables['obj_']:=''''+'('+OD_variant.FieldByName('name1').AsString+')'+''''
  else
    TfrxReport(frxReportSel).Variables['obj_']:=null;

  
  if CheckBox2.Checked = true then//Оборотка
  begin
    TfrxReport(frxReportSel).Variables['var_']:=''''+'для оборотной ведомости'+'''';
    TfrxReport(frxReportSel).Variables['var_']:=''''+'для оборотной ведомости'+'''';
  end
   else                        //Инкассации
  begin
    TfrxReport(frxReportSel).Variables['var_']:=''''+'по инкассациям'+'''';
    TfrxReport(frxReportSel).Variables['var_']:=''''+'по инкассациям'+'''';
  end;

    OD_data.SetVariable('var_', DBLookupComboBox1.KeyValue);
    OD_data_itog.SetVariable('var_', DBLookupComboBox1.KeyValue);

    OD_data.SetVariable('dat_', null);
    OD_data.SetVariable('dat1_', null);
    OD_data_itog.SetVariable('dat_', null);
    OD_data_itog.SetVariable('dat1_', null);
    OD_data.SetVariable('mg_', null);
    OD_data.SetVariable('mg1_', null);
    OD_data_itog.SetVariable('mg_', null);
    OD_data_itog.SetVariable('mg1_', null);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', null);

  if CheckBox6.Checked = true then//Платежи текущие
  begin
    OD_data.SetVariable('dat_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('dat1_', DBLookupComboBox6.KeyValue);
    OD_data_itog.SetVariable('dat_', DBLookupComboBox5.KeyValue);
    OD_data_itog.SetVariable('dat1_', DBLookupComboBox6.KeyValue);
    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet5.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet6.FieldByName('mg1').AsString+'''';
  end
    else                        //Платежи за месяц
  begin
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data_itog.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data_itog.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet4.FieldByName('mg1').AsString+'''';
  end;

  if CheckBox5.Checked = true then//Выгрузка отчета в txt
  begin
    OD_reu_trest.First;
    Application.CreateForm(TForm_status, Form_status);
    for a:=1 to OD_reu_trest.RecordCount do
    begin
     Form_status.Update;
     OD_data.Active := false;
     OD_data.SetVariable('trest_', null);
     OD_data.SetVariable('reu_', OD_reu_trest.FieldByName('key').AsString);
     OD_data.Active := true;
     frxDotMatrixExport1.ShowDialog:=false;
     frxDotMatrixExport1.SaveToFile:=true;
     if OD_data.RecordCount > 0 then
     begin
      TfrxReport(frxReportSel).PrepareReport(true);
      if CheckBox2.Checked = true then//Оборотка
      begin
        frxDotMatrixExport1.FileName:=Edit2.Text+'oper2_'+OD_reu_trest.FieldByName('key').AsString+'.txt'; //для оборотки
        TfrxReport(frxReportSel).Export(frxDotMatrixExport1);
      end
      else
      begin
        frxDotMatrixExport1.FileName:=Edit2.Text+'oper_'+OD_reu_trest.FieldByName('key').AsString+'.txt'; //для инкассации
        TfrxReport(frxReportSel).Export(frxDotMatrixExport1);
      end;
     end;

     OD_reu_trest.Next;
    end;
     frxDotMatrixExport1.ShowDialog:=true;
     frxDotMatrixExport1.SaveToFile:=false;
     Form_status.Close;
     exit;
  end;

  //По РЭУ
  if (DBLookupComboBox8.KeyValue = 2) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_data.Active := true;
    if OD_data.RecordCount =0 then
    begin
     Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
     Form_status.Close;
    end
    else
    begin
     TfrxReport(frxReportSel).PrepareReport(true);
     Form_status.Close;
     TfrxReport(frxReportSel).ShowPreparedReport;
    end;
 end
  //По Тресту
  else if (DBLookupComboBox8.KeyValue = 1) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', DBLookupComboBox7.KeyValue);
    OD_data.Active := true;
    if OD_data.RecordCount =0 then
    begin
     Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
     Form_status.Close;
    end
    else
    begin
     TfrxReport(frxReportSel).PrepareReport(true);
     Form_status.Close;
     TfrxReport(frxReportSel).ShowPreparedReport;
    end;
  end
  //По УЕЗЖКУ
  else if (DBLookupComboBox8.KeyValue = 0) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', null);
    OD_data.Active := true;
    OD_data_itog.Active := true;
    if OD_data.RecordCount =0 then
    begin
     Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
     Form_status.Close;
    end
    else
    begin
     TfrxReport(frxReportSel).PrepareReport(true);
     Form_status.Close;
     TfrxReport(frxReportSel).ShowPreparedReport;
    end;
  end;
end;

procedure TForm_print_xito5.DBLookupComboBox8CloseUp(Sender: TObject);
begin
  if DBLookupComboBox8.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, name_reu as reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := DBLookupComboBox8.Text;
   DBLookupComboBox1.Enabled:=false;
   DBLookupComboBox1.KeyValue:=0;
  end
  else if DBLookupComboBox8.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := DBLookupComboBox8.Text;
   DBLookupComboBox1.Enabled:=false;
   DBLookupComboBox1.KeyValue:=0;
  end
  else if DBLookupComboBox8.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
   DBLookupComboBox1.Enabled:=true;
  end
end;

procedure TForm_print_xito5.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_xito5.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_xito5.FormCreate(Sender: TObject);
begin
  if DBLookupComboBox8.KeyValue = 0 then
  begin
   DBLookupComboBox1.Enabled:=true;
  end;

  DBLookupComboBox1.KeyValue:=0;
  if OD_perm_main.RecordCount > 0 then
  begin
      Checkbox5.Enabled := true;
  end;
  Edit2.Text:=Form_Main.Path_unload;
end;

procedure TForm_print_xito5.CheckBox5Click(Sender: TObject);
begin
  if CheckBox5.Checked=true then
    begin
      CheckBox1.Checked:=false;
      Button3.Caption:='Выгрузка';
      Edit2.Enabled:=true;
      DBLookupComboBox8.KeyValue:=2;
      OD_reu_trest.Active:=false;
      OD_reu_trest.SQL.Text := 'select reu as key, reu from scott.v_permissions_reu';
      OD_reu_trest.Active:=true;
      DBLookupComboBox7.Enabled := true;
      DBLookupComboBox7.KeyValue := '01';
      DBLookupComboBox1.Enabled:=false;
      DBLookupComboBox1.KeyValue:=0;
    end
    else
     begin
      Button3.Caption:='Просмотр';
      Edit2.Enabled:=false;
      DBLookupComboBox8.KeyValue:=null;
      DBLookupComboBox7.KeyValue:=null;
      DBLookupComboBox1.Enabled:=true;
      DBLookupComboBox1.KeyValue:=0;
     end;
end;

end.
