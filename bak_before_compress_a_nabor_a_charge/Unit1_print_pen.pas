unit Unit1_print_pen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDMPExport, frxCross, frxDBSet, DB, OracleData,
  StdCtrls, DBCtrls;

type
  TForm_print_pen = class(TForm)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
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
    frxDBData: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    CheckBox5: TCheckBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    procedure DBLookupComboBox8CloseUp(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_pen: TForm_print_pen;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_print_pen.DBLookupComboBox8CloseUp(Sender: TObject);
begin
  if DBLookupComboBox8.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label3.Caption := DBLookupComboBox8.Text;
  end
  else if DBLookupComboBox8.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label3.Caption := DBLookupComboBox8.Text;
  end
  else if DBLookupComboBox8.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label3.Caption := '';
  end
end;

procedure TForm_print_pen.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_pen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_pen.Button3Click(Sender: TObject);
  var 
  frxReportSel: TComponent;
begin
    if (DBLookupComboBox6.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
    begin
      ShowMessage('Не выбран период отчета, Отмена');
      Exit;
    end;

    if (DBLookupComboBox8.KeyValue = 1) and (DBLookupComboBox7.KeyValue = null) then
    begin
      ShowMessage('Не выбран ЖЭО, Отмена');
      Exit;
    end;

    if (DBLookupComboBox8.KeyValue = 2) and (DBLookupComboBox7.KeyValue = null) then
    begin
      ShowMessage('Не выбран РЭУ, Отмена');
      Exit;
    end;

    if (ComboBox1.ItemIndex = -1) then
    begin
      ShowMessage('Не выбран параметр отчета, Отмена');
      Exit;
    end;

    frxReportSel := FindComponent('frxReport2');

    OD_data.Active := false;
    OD_data.SetVariable('var_', ComboBox1.ItemIndex);

    OD_data.SetVariable('dat_', null);
    OD_data.SetVariable('dat1_', null);
    OD_data.SetVariable('mg_', null);
    OD_data.SetVariable('mg1_', null);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', null);

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

  //По РЭУ
  if (DBLookupComboBox8.KeyValue = 2) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    if ComboBox1.ItemIndex=0 then
     TfrxReport(frxReportSel).Variables['var_']:=''''+'пеня, принятая за РЭУ '+
          DBLookupComboBox7.Text+'(исключая его трест) '+''''
    else
     TfrxReport(frxReportSel).Variables['var_']:=''''+'пеня, принятая РЭУ '+
          DBLookupComboBox7.Text+' за других(исключая его трест) '+'''';
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
  //По ЖЭО
  else if (DBLookupComboBox8.KeyValue = 1) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    if ComboBox1.ItemIndex=0 then
    TfrxReport(frxReportSel).Variables['var_']:=''''+'пеня, принятая за ЖЭО '+
          DBLookupComboBox7.Text+'(кроме сборов этого ЖЭО) '+''''
    else
    TfrxReport(frxReportSel).Variables['var_']:=''''+'пеня, принятая ЖЭО '+
          DBLookupComboBox7.Text+' за других (кроме сборов этого ЖЭО) '+'''';
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
    if ComboBox1.ItemIndex=0 then
      TfrxReport(frxReportSel).Variables['var_']:=''''+'пеня, принятая за ЖЭО, включая сборы этого ЖЭО '+''''
    else
      TfrxReport(frxReportSel).Variables['var_']:=''''+'пеня, принятая ЖЭО, за других, включая сборы за свой ЖЭО '+'''';

    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', null);
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

procedure TForm_print_pen.CheckBox5Click(Sender: TObject);
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

procedure TForm_print_pen.FormActivate(Sender: TObject);
begin
  ComboBox1.Perform(CB_SETDROPPEDWIDTH,300, 0);
end;

end.
