unit Unit_print_bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, OracleData, frxClass, frxDBSet,
  frxDMPExport;

type
  TForm_print_bank = class(TForm)
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    CheckBox6: TCheckBox;
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    OracleDataSet4: TOracleDataSet;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    DataSource5: TDataSource;
    OracleDataSet6: TOracleDataSet;
    OracleDataSet5: TOracleDataSet;
    OD_data: TOracleDataSet;
    ComboBox1: TComboBox;
    Label1: TLabel;
    frxDBData: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxReport2: TfrxReport;
    frxReport1: TfrxReport;
    efrxReport1: TfrxReport;
    efrxReport2: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_bank: TForm_print_bank;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_print_bank.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_bank.CheckBox6Click(Sender: TObject);
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

procedure TForm_print_bank.FormActivate(Sender: TObject);
begin
  ComboBox1.Perform(CB_SETDROPPEDWIDTH,300, 0);
end;

procedure TForm_print_bank.Button3Click(Sender: TObject);
begin
  if (DBLookupComboBox5.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;
  end;

  if (ComboBox1.ItemIndex = -1) then
  begin
    ShowMessage('Не выбран параметр отчета, Отмена');
    Exit;
  end;

  OD_data.Active := false;
  OD_data.SetVariable('var_', ComboBox1.ItemIndex);

  if CheckBox6.Checked = true then//Платежи текущие
   begin
    OD_data.SetVariable('dat_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('dat1_', DBLookupComboBox6.KeyValue);
    OD_data.SetVariable('mg_', null);
    OD_data.SetVariable('mg1_', null);
    frxReport1.Variables['mg_']:=''''+OracleDataSet5.FieldByName('mg1').AsString+'''';
    frxReport1.Variables['mg1_']:=''''+OracleDataSet6.FieldByName('mg1').AsString+'''';
    frxReport2.Variables['mg_']:=''''+OracleDataSet5.FieldByName('mg1').AsString+'''';
    frxReport2.Variables['mg1_']:=''''+OracleDataSet6.FieldByName('mg1').AsString+'''';
   end
  else                        //Платежи за месяц
   begin
    OD_data.SetVariable('dat_', null);
    OD_data.SetVariable('dat1_', null);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    frxReport1.Variables['mg_']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    frxReport1.Variables['mg1_']:=''''+OracleDataSet4.FieldByName('mg1').AsString+'''';
    frxReport2.Variables['mg_']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    frxReport2.Variables['mg1_']:=''''+OracleDataSet4.FieldByName('mg1').AsString+'''';
   end;

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  OD_data.Active := true;
  if OD_data.RecordCount >0 then
   begin
    if ComboBox1.ItemIndex = 0 then
    begin
      frxReport1.PrepareReport(true);
      Form_status.Close;
      frxReport1.ShowPreparedReport;
    end
    else if ComboBox1.ItemIndex = 1 then
    begin
      frxReport2.PrepareReport(true);
      Form_status.Close;
      frxReport2.ShowPreparedReport;
    end;
   end
  else
   begin
    Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
    Form_status.Close;
   end;

end;

procedure TForm_print_bank.Button4Click(Sender: TObject);
begin
  Close;
end;

end.
