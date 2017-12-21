unit Unit_form_plan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls;

type
  TForm_plan = class(TForm)
    GroupBox3: TGroupBox;
    Button2: TButton;
    DBGrid1: TDBGrid;
    OD_data: TOracleDataSet;
    DataSource1: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    OracleDataSet2: TOracleDataSet;
    DataSource2: TDataSource;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_plan: TForm_plan;

implementation

{$R *.dfm}

procedure TForm_plan.DBLookupComboBox1CloseUp(Sender: TObject);
begin
    OD_data.Active:=false;
    OD_data.SetVariable('mg', DBLookupComboBox1.KeyValue);
    OD_data.Active:=true;
end;

procedure TForm_plan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_plan.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_plan.FormShow(Sender: TObject);
begin
     OD_data.Active:=true;
     OracleDataset2.Active:=true;
end;

end.
