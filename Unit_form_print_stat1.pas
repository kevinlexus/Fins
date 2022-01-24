unit Unit_form_print_stat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDesgn, ExtCtrls, OleCtrls,
  DBCtrls, frxDBSet, DB, OracleData;

type
  TForm_print_stat = class(TForm)
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    OD_data: TOracleDataSet;
    frxDBDs_lg_stat: TfrxDBDataset;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    frxDesigner1: TfrxDesigner;
    CheckBox1: TCheckBox;
    OracleDataSet2: TOracleDataSet;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_stat: TForm_print_stat;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_print_stat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_stat.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_stat.Button4Click(Sender: TObject);
begin
  if (DBLookupComboBox5.KeyValue = null) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;   
  end;

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  OD_data.Active:=false;
  OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
  OD_data.Active:=true;

  frxReport2.Variables['mg_']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';

  frxReport2.PrepareReport(true);
  Form_status.Close;
  frxReport2.ShowPreparedReport;
end;

procedure TForm_print_stat.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
   begin
    DataSource1.DataSet := OracleDataSet2;
   end
  else
   begin
    DataSource1.DataSet := OracleDataSet1;
   end;
end;

end.
