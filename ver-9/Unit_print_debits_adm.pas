unit Unit_print_debits_adm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, OracleData, frxClass, frxDBSet;

type
  TForm_print_debits_adm = class(TForm)
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button1: TButton;
    OD_data: TOracleDataSet;
    Label7: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    OD_period: TOracleDataSet;
    DS_period: TDataSource;
    frxDBData_deb: TfrxDBDataset;
    OD_period1: TOracleDataSet;
    frxReport1: TfrxReport;
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_debits_adm: TForm_print_debits_adm;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_print_debits_adm.Button4Click(Sender: TObject);
var
  frxReportSel: TComponent;
begin
  if (DBLookupComboBox5.KeyValue = null) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;
  end;

  frxReportSel := FindComponent('frxReport1');
  OD_data.Active := false;
  OD_data.SetVariable('dat_', null);
  OD_data.SetVariable('mg_', null);

  if CheckBox1.Checked = true then
    OD_data.SetVariable('dat_', DBLookupComboBox5.KeyValue)
  else
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
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

procedure TForm_print_debits_adm.CheckBox1Click(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue := null;
  if CheckBox1.Checked = true then
   begin
   DS_period.DataSet := OD_period1;
   end
  else
   begin
   DS_period.DataSet := OD_period;
   end;
end;

procedure TForm_print_debits_adm.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_debits_adm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
