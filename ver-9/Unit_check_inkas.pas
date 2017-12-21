unit Unit_check_inkas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pr_Common, pr_TxClasses, StdCtrls, DB, OracleData, Grids,
  DBGrids, DBCtrls;

type
  TForm_check_inkas = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    OracleDataSet1: TOracleDataSet;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    OD_dat1: TOracleDataSet;
    DataSource2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_check_inkas: TForm_check_inkas;

implementation

{$R *.dfm}

procedure TForm_check_inkas.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_check_inkas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_check_inkas.Button3Click(Sender: TObject);
begin
      OracleDataSet1.Active:=false;
      OracleDataSet1.SetVariable('dat1',DBLookupComboBox1.KeyValue);
      OracleDataSet1.SetVariable('dat2',DBLookupComboBox2.KeyValue);
      OracleDataSet1.Active:=true;
end;

end.
