unit Unit_test;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, frxClass, frxDBSet, frxChart, ExtCtrls, DBCtrls,
  Grids, DBGrids;

type
  TForm_test = class(TForm)
    OD_data: TOracleDataSet;
    OD_dataSUMCHARGES: TFloatField;
    OD_dataSUMPAYMENT: TFloatField;
    OD_dataPROC: TFloatField;
    OD_dataORG: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_test: TForm_test;

implementation

{$R *.dfm}

procedure TForm_test.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
