unit Unit_check_reports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDMPExport, frxDBSet, DB, OracleData, StdCtrls,
  DBCtrls, DBCtrlsEh;

type
  TForm_check_reports = class(TForm)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    OracleDataSet2: TOracleDataSet;
    DataSource5: TDataSource;
    OracleDataSet3: TOracleDataSet;
    OD_data: TOracleDataSet;
    frxDBDataset1: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    Label1: TLabel;
    ComboBox1: TComboBox;
    frxReport1: TfrxReport;
    CheckBox2: TCheckBox;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_check_reports: TForm_check_reports;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_check_reports.Button3Click(Sender: TObject);
begin
  if (DBLookupComboBox6.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    Application.MessageBox('Не выбран период отчета!',
     'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
    Exit;
  end;

    OD_data.Active := false;
    OD_data.SetVariable('mg_', null);
    OD_data.SetVariable('mg1_', null);

    OD_data.SetVariable('mg_', DBLookupComboBox1.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.SetVariable('var_', ComboBox1.ItemIndex);
    frxReport1.Variables['mg1']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
    frxReport1.Variables['mg2']:=''''+OracleDataSet3.FieldByName('mg1').AsString+'''';
    if ComboBox1.ItemIndex=0 then
      frxReport1.Variables['var_']:=''''+'оплаты'+''''
    else if ComboBox1.ItemIndex=1 then
      frxReport1.Variables['var_']:=''''+'пени'+''''
    else
      frxReport1.Variables['var_']:=''''+'оплаты и пени'+'''';

    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.Active := true;
    frxReport1.PrepareReport(true);
    Form_status.Close;
    frxReport1.ShowPreparedReport;
end;

procedure TForm_check_reports.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_check_reports.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_check_reports.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then
  begin
    frxReport1.DotMatrixReport:=false;
  end
else
  begin
    frxReport1.DotMatrixReport:=true;
  end;
end;

end.
