unit Unit_print_opl_xito10_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, OracleData, frxClass, frxDBSet, frxCross,
  frxDMPExport, DBCtrlsEh, frxExportXLS;

type
  TForm_print_opl_xito10_3 = class(TForm)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    OracleDataSet2: TOracleDataSet;
    DataSource5: TDataSource;
    OracleDataSet3: TOracleDataSet;
    DataSource2: TDataSource;
    DataSource6: TDataSource;
    OracleDataSet4: TOracleDataSet;
    OracleDataSet1: TOracleDataSet;
    OD_reu_trest: TOracleDataSet;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    OracleDataSet5: TOracleDataSet;
    DS_reu: TDataSource;
    OD_data: TOracleDataSet;
    frxDBDataset1: TfrxDBDataset;
    frxCrossObject1: TfrxCrossObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DataSource4: TDataSource;
    OD_variant: TOracleDataSet;
    OD_perm_main: TOracleDataSet;
    CheckBox2: TCheckBox;
    OD_period1: TOracleDataSet;
    OD_period: TOracleDataSet;
    DS_period: TDataSource;
    DS_period1: TDataSource;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupPeriod: TDBLookupComboBox;
    DBLookupPeriod1: TDBLookupComboBox;
    frxXLSExport1: TfrxXLSExport;
    GroupBox4: TGroupBox;
    CheckBox3: TCheckBox;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Label9: TLabel;
    Edit2: TEdit;
    CheckBox5: TCheckBox;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    OD_streets: TOracleDataSet;
    DS_streets: TDataSource;
    DS_houses: TDataSource;
    OD_houses: TOracleDataSet;
    DBLookupComboBox4: TDBLookupComboBox;
    Label10: TLabel;
    OD_org: TOracleDataSet;
    DS_org: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxReport4: TfrxReport;
    frxReport1: TfrxReport;
    frxReport3: TfrxReport;
    procedure CheckBox5Click(Sender: TObject);
    procedure DBLookupComboBox8CloseUp(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frxReport4BeforePrint(c: TfrxReportComponent);
    procedure frxReport3BeforePrint(c: TfrxReportComponent);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure frxReport2BeforePrint(c: TfrxReportComponent);
    procedure frxReport1BeforePrint(c: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_opl_xito10_3: TForm_print_opl_xito10_3;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_print_opl_xito10_3.CheckBox5Click(Sender: TObject);
begin
  DBLookupComboBox1.KeyValue:=null;
  DBLookupComboBox6.KeyValue:=null;

  if CheckBox5.Checked = true then
   begin
   DataSource1.DataSet := OracleDataSet1;
   DataSource5.DataSet := OracleDataSet4;
   end
  else
   begin
   DataSource1.DataSet := OracleDataSet2;
   DataSource5.DataSet := OracleDataSet3;
   end;
end;

procedure TForm_print_opl_xito10_3.DBLookupComboBox8CloseUp(
  Sender: TObject);
begin
  OracleDataSet1.Active:=false;
  OracleDataSet4.Active:=false;
  OracleDataSet2.Active:=false;
  OracleDataSet3.Active:=false;
  if (CheckBox3.Checked) or (DBLookupComboBox8.KeyValue = 3) then
  begin
    OracleDataSet1.SetVariable('var_',15);
    OracleDataSet4.SetVariable('var_',15);
    OracleDataSet2.SetVariable('var_',15);
    OracleDataSet3.SetVariable('var_',15);
  end
  else
  begin
    OracleDataSet1.SetVariable('var_',2);
    OracleDataSet4.SetVariable('var_',2);
    OracleDataSet2.SetVariable('var_',2);
    OracleDataSet3.SetVariable('var_',2);
  end;
  OracleDataSet1.Active:=true;
  OracleDataSet4.Active:=true;
  OracleDataSet2.Active:=true;
  OracleDataSet3.Active:=true;

  if DBLookupComboBox8.KeyValue = 3 then
  begin
   Label3.Caption := '';
   Groupbox6.Visible:=true;
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Form_print_opl_xito10_3.Height:=485;
   ComboBox1.ItemIndex := 0;
   ComboBox1.Enabled := false;
  end
  else if DBLookupComboBox8.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, name_reu as reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label3.Caption := DBLookupComboBox8.Text;
   ComboBox1.Enabled := true;
   Form_print_opl_xito10_3.Height:=435;
   Groupbox6.Visible:=false;
  end
  else if DBLookupComboBox8.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label3.Caption := DBLookupComboBox8.Text;
   ComboBox1.Enabled := true;
   Form_print_opl_xito10_3.Height:=435;
   Groupbox6.Visible:=false;
  end
  else if DBLookupComboBox8.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   ComboBox1.ItemIndex := 0;
   ComboBox1.Enabled := false;
   Label3.Caption := '';
   Form_print_opl_xito10_3.Height:=435;
   Groupbox6.Visible:=false;
  end
end;

procedure TForm_print_opl_xito10_3.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_opl_xito10_3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_opl_xito10_3.Button3Click(Sender: TObject);
  var reptype_, obj_, org_, str_: String;
  a: Integer;
  frxReportSel: TComponent;
begin
  if (DBLookupComboBox6.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;
  end;

  if (DBLookupComboBox5.KeyValue = null) then
  begin
    ShowMessage('Не выбран тип предприятий, для отчета, Отмена');
    Exit;
  end;

  if (ComboBox1.ItemIndex = null) then
  begin
    ShowMessage('Не выбран вариант отчета, Отмена');
    Exit;
  end;

  if DBLookupComboBox8.KeyValue = null then
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

  if (DBLookupComboBox8.KeyValue = 3) and (DBLookupComboBox2.KeyValue = null) then
  begin
    ShowMessage('Не выбрана улица, Отмена');
    Exit;
  end;

  if (DBLookupComboBox8.KeyValue = 3) and (DBLookupComboBox3.KeyValue = null) then
  begin
    ShowMessage('Не выбран дом, Отмена');
    Exit;
  end;


  if CheckBox3.Checked then // Выбрана детализация по статусу жилья
  begin
    if CheckBox2.Checked = true then //Лазерный принтер
      frxReportSel := FindComponent('frxReport4')
    else                             //Матричный принтер
      frxReportSel := FindComponent('frxReport3');
  end
  else
  begin
    OD_data.SetVariable('status_', null);
    if CheckBox2.Checked = true then //Лазерный принтер
      frxReportSel := FindComponent('frxReport2')
    else                             //Матричный принтер
      frxReportSel := FindComponent('frxReport1');
  end;

    OD_data.Active := false;
    OD_data.SetVariable('dat_', null);
    OD_data.SetVariable('dat1_', null);
    OD_data.SetVariable('mg_', null);
    OD_data.SetVariable('mg1_', null);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', null);

    OD_data.SetVariable('var_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('reptype_', ComboBox1.ItemIndex);

    TfrxReport(frxReportSel).Variables['var_']:=''''+OD_variant.FieldByName('name1').AsString+'''';

    if DBLookupComboBox8.KeyValue = 0 then
    begin
      obj_:=OD_perm_menu.FieldByName('name1').AsString;
    end
    else if DBLookupComboBox8.KeyValue = 3 then
    begin
      obj_:=OD_perm_menu.FieldByName('name1').AsString+' '+DBLookupComboBox2.Text+' '+DBLookupComboBox3.Text
    end
    else if DBLookupComboBox8.KeyValue = 2 then
    begin
      obj_:={OD_perm_menu.FieldByName('name1').AsString+' '+}OD_reu_trest.FieldByName('reu').AsString;
    end
    else
    begin
      obj_:=OD_perm_menu.FieldByName('name1').AsString+' '+OD_reu_trest.FieldByName('reu').AsString;
    end;

    if ComboBox1.ItemIndex =1 then
    begin
      reptype_:='Ф.2.2.Средства, собранные за '+obj_+' '+' другими (кроме своих сборов)';
      TfrxReport(frxReportSel).Variables['reptype_']:=''''+reptype_+'''';
    end
    else if ComboBox1.ItemIndex =2 then
    begin
      reptype_:='Ф.2.3.Средства, собранные '+obj_+' '+' за других (кроме себя)';
      TfrxReport(frxReportSel).Variables['reptype_']:=''''+reptype_+'''';
    end
    else if ComboBox1.ItemIndex =3 then
    begin
      reptype_:='Ф.2.5.Средства, собранные '+obj_+' '+' за других (включая себя)';
      TfrxReport(frxReportSel).Variables['reptype_']:=''''+reptype_+'''';
    end
    else
    begin
      reptype_:='Ф.2.1.Для оборотной ведомости, по '+obj_;
      TfrxReport(frxReportSel).Variables['reptype_']:=''''+reptype_+'''';
    end;

  org_:='';
  if DBLookupComboBox4.KeyValue <> null then
    begin
      org_:='фильтр по организации: '+OD_org.FieldByName('name').AsString;
    end;
  OD_data.SetVariable('org_',  OD_org.FieldByName('kod').AsVariant);
  TfrxReport(frxReportSel).Variables['org_']:=''''+org_+'''';

  //Устанавливаем период оплаты для отчета
  if (OD_period.FieldByName('mg1').Value <> null) and
     (OD_period1.FieldByName('mg1').Value <> null) then
    TfrxReport(frxReportSel).Variables['period_']:=''''+', период оплаты c '+OD_period.FieldByName('mg1').AsString+' по '
        +OD_period1.FieldByName('mg1').AsString+''''
  else
    TfrxReport(frxReportSel).Variables['period_']:=null;

  OD_data.SetVariable('period_', DBLookupPeriod.KeyValue);
  OD_data.SetVariable('period1_', DBLookupPeriod1.KeyValue);

  if CheckBox5.Checked = true then//Платежи текущие
  begin
    OD_data.SetVariable('dat_', DBLookupComboBox1.KeyValue);
    OD_data.SetVariable('dat1_', DBLookupComboBox6.KeyValue);
    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet4.FieldByName('mg1').AsString+'''';
  end
    else                        //Платежи за месяц
  begin
    OD_data.SetVariable('mg_', DBLookupComboBox1.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
    TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet3.FieldByName('mg1').AsString+'''';
  end;

  if CheckBox1.Checked = true then//Выгрузка отчета в txt
  begin
    OD_reu_trest.First;
    Application.CreateForm(TForm_status, Form_status);
    for a:=1 to OD_reu_trest.RecordCount do
    begin
     Form_status.Update;
     OD_data.Active := false;
     OD_data.SetVariable('trest_', null);
     OD_data.SetVariable('reu_', OD_reu_trest.FieldByName('key').AsString);
     OD_data.SetVariable('kul_', null);
     OD_data.SetVariable('nd_',  null);
     OD_data.Active := true;
     frxDotMatrixExport1.SaveToFile:=true;
     if OD_data.RecordCount > 0 then
     begin
      frxDotMatrixExport1.ShowDialog:=false;


    if DBLookupComboBox8.KeyValue = 0 then
    begin
      obj_:=OD_perm_menu.FieldByName('name1').AsString;
    end
    else if DBLookupComboBox8.KeyValue = 3 then
    begin
      obj_:=OD_perm_menu.FieldByName('name1').AsString+' '+DBLookupComboBox2.Text+' '+DBLookupComboBox3.Text
    end
    else
    begin
      obj_:=OD_perm_menu.FieldByName('name1').AsString+' '+OD_reu_trest.FieldByName('reu').AsString;
    end;

    if ComboBox1.ItemIndex =1 then
    begin
      reptype_:='Ф.2.2.Средства, собранные за '+obj_+' '+' другими (кроме своих сборов)';
      TfrxReport(frxReportSel).Variables['reptype_']:=''''+reptype_+'''';
    end
    else if ComboBox1.ItemIndex =2 then
    begin
      reptype_:='Ф.2.3.Средства, собранные '+obj_+' '+' за других (кроме себя)';
      TfrxReport(frxReportSel).Variables['reptype_']:=''''+reptype_+'''';
    end
    else if ComboBox1.ItemIndex =3 then
    begin
      reptype_:='Ф.2.5.Средства, собранные '+obj_+' '+' за других (включая себя)';
      TfrxReport(frxReportSel).Variables['reptype_']:=''''+reptype_+'''';
    end
    else
    begin
      reptype_:='Ф.2.1.Для оборотной ведомости, по '+obj_;
      TfrxReport(frxReportSel).Variables['reptype_']:=''''+reptype_+'''';
    end;

      TfrxReport(frxReportSel).PrepareReport(true);

      frxDotMatrixExport1.FileName:=Edit2.Text+'otr_'+OD_reu_trest.FieldByName('key').AsString+'.txt'; //для оборотки
      TfrxReport(frxReportSel).Export(frxDotMatrixExport1);
      frxDotMatrixExport1.ShowDialog:=true;

     end;
     OD_reu_trest.Next;
    end;
    Form_status.Close;
    exit;
   end;

  //По РЭУ
  if (DBLookupComboBox8.KeyValue = 2) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_data.SetVariable('kul_', null);
    OD_data.SetVariable('nd_',  null);
    OD_data.SetVariable('det_', null);
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
  else if (DBLookupComboBox8.KeyValue = 1) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('kul_', null);
    OD_data.SetVariable('nd_',  null);
    OD_data.SetVariable('trest_', DBLookupComboBox7.KeyValue);
    OD_data.SetVariable('det_', null);
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
    OD_data.SetVariable('kul_', null);
    OD_data.SetVariable('nd_',  null);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('det_', null);
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
  //По Адресу
  else if (DBLookupComboBox8.KeyValue = 3) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', OD_houses.FieldByName('reu').AsString);
    OD_data.SetVariable('kul_', OD_houses.FieldByName('kul').AsString);
    OD_data.SetVariable('nd_',  OD_houses.FieldByName('nd').AsString);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('det_', null);
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
  end;

end;

procedure TForm_print_opl_xito10_3.FormCreate(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue:=0;
  ComboBox1.ItemIndex:=0;

  if OD_perm_main.RecordCount > 0 then
  begin
      Checkbox1.Enabled := true;
  end;
  Form_print_opl_xito10_3.Height:=435;
end;

procedure TForm_print_opl_xito10_3.frxReport4BeforePrint(
  c: TfrxReportComponent);
begin
  if c is TfrxReportTitle then
  begin
    if c.Name = 'ReportTitle1' then      // основной лист частное жильё
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 1);
      OD_data.SetVariable('det_', 0);
      OD_data.Active:=true;
    end
    else if c.Name = 'ReportTitle2' then // основной лист муницип. жильё
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 0);
      OD_data.SetVariable('det_', 0);
      OD_data.Active:=true;
    end;
{    else if c.Name = 'ReportTitle3' then // частное жильё разделение организаций
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 1);
      OD_data.SetVariable('det_', 1);
      OD_data.Active:=true;
    end
    else if c.Name = 'ReportTitle4' then // муницип. жильё разделение организаций
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 0);
      OD_data.SetVariable('det_', 1);
      OD_data.Active:=true;
    end
  end;}


{  if c is TfrxReportTitle then
  begin
    if c.Name = 'ReportTitle1' then
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 1);
      OD_data.Active:=true;
    end
    else
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 0);
      OD_data.Active:=true;
    end}
  end;
end;

procedure TForm_print_opl_xito10_3.frxReport3BeforePrint(
  c: TfrxReportComponent);
begin
  if c is TfrxReportTitle then
  begin
    if c.Name = 'ReportTitle1' then      // основной лист частное жильё
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 1);
      OD_data.SetVariable('det_', 0);
      OD_data.Active:=true;
    end
    else if c.Name = 'ReportTitle2' then // основной лист муницип. жильё
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 0);
      OD_data.SetVariable('det_', 0);
      OD_data.Active:=true;
    end;
{    else if c.Name = 'ReportTitle3' then // частное жильё разделение организаций
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 1);
      OD_data.SetVariable('det_', 1);
      OD_data.Active:=true;
    end
    else if c.Name = 'ReportTitle4' then // муницип. жильё разделение организаций
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', 0);
      OD_data.SetVariable('det_', 1);
      OD_data.Active:=true;
    end}
  end;
end;

procedure TForm_print_opl_xito10_3.CheckBox3Click(Sender: TObject);
begin
  OracleDataSet1.Active:=false;
  OracleDataSet4.Active:=false;
  OracleDataSet2.Active:=false;
  OracleDataSet3.Active:=false;
  if (CheckBox3.Checked) or (DBLookupComboBox8.KeyValue = 3) then
  begin
    OracleDataSet1.SetVariable('var_',15);
    OracleDataSet4.SetVariable('var_',15);
    OracleDataSet2.SetVariable('var_',15);
    OracleDataSet3.SetVariable('var_',15);
  end
  else
  begin
    OracleDataSet1.SetVariable('var_',2);
    OracleDataSet4.SetVariable('var_',2);
    OracleDataSet2.SetVariable('var_',2);
    OracleDataSet3.SetVariable('var_',2);
  end;
  OracleDataSet1.Active:=true;
  OracleDataSet4.Active:=true;
  OracleDataSet2.Active:=true;
  OracleDataSet3.Active:=true;
end;

procedure TForm_print_opl_xito10_3.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    Button3.Caption:='Выгрузка';
    CheckBox2.Checked:=false;
    CheckBox3.Checked:=false;
    CheckBox3.Enabled:=false;
    CheckBox5.Checked:=false;
    CheckBox5.Enabled:=false;
    Edit2.Enabled:=true;

    DBLookupComboBox8.KeyValue:=2;
    OD_reu_trest.Active:=false;
    OD_reu_trest.SQL.Text := 'select reu as key, reu from scott.v_permissions_reu';
    OD_reu_trest.Active:=true;
    DBLookupComboBox7.Enabled := true;
    DBLookupComboBox7.KeyValue := '01';

  end
  else
  begin
    Button3.Caption:='Просмотр';
    CheckBox3.Enabled:=true;
    CheckBox5.Enabled:=true;
    Edit2.Enabled:=false;
    DBLookupComboBox8.KeyValue:=null;
    DBLookupComboBox7.KeyValue:=null;

    Form_print_opl_xito10_3.Height:=400;
    Groupbox6.Visible:=false;
  end;

  DBLookupComboBox1.KeyValue:=null; //режим работы формы - за месяц
  DBLookupComboBox6.KeyValue:=null;
  DataSource1.DataSet := OracleDataSet2;
  DataSource5.DataSet := OracleDataSet3;
end;

procedure TForm_print_opl_xito10_3.frxReport2BeforePrint(
  c: TfrxReportComponent);
begin
  if c is TfrxReportTitle then
  begin
    if c.Name = 'ReportTitle1' then      // основной лист
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', null);
      OD_data.SetVariable('det_', 0);
      OD_data.Active:=true;
    end
    else if c.Name = 'ReportTitle2' then // разделение организаций
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', null);
      OD_data.SetVariable('det_', 1);
      OD_data.Active:=true;
    end
  end;
end;

procedure TForm_print_opl_xito10_3.frxReport1BeforePrint(
  c: TfrxReportComponent);
begin
  if c is TfrxReportTitle then
  begin
    if c.Name = 'ReportTitle1' then      // основной лист
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', null);
      OD_data.SetVariable('det_', 0);
      OD_data.Active:=true;
    end
    else if c.Name = 'ReportTitle2' then // разделение организаций
    begin
      OD_data.Active:=false;
      OD_data.SetVariable('status_', null);
      OD_data.SetVariable('det_', 1);
      OD_data.Active:=true;
    end
  end;
end;

end.
