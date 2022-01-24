unit Unit_print_strah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DBCtrls,
  StdCtrls, ExtCtrls, frxClass, frxDBSet;

type
  TForm_print_strah = class(TForm)
    OracleDataSet1: TOracleDataSet;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    OracleDataSet2: TOracleDataSet;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_strah: TForm_print_strah;

implementation

{$R *.dfm}

procedure TForm_print_strah.Button1Click(Sender: TObject);
begin
  if (DBLookupComboBox5.KeyValue=null) or (DBLookupComboBox5.KeyValue='') then
    begin
     Application.MessageBox('�� ������ ������!', '��������!', MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
     exit
    end;

   OracleDataSet1.Active:=false;
   OracleDataSet1.SetVariable('mg1', DBLookupComboBox5.KeyValue);
   OracleDataSet1.Active:=true;

   frxReport1.PrepareReport;
   frxReport1.ShowReport(True);
end;

procedure TForm_print_strah.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_strah.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
