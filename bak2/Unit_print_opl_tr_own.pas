unit Unit_print_opl_tr_own;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, frxClass, frxDBSet, Grids, DBGrids, StdCtrls;

type
  TForm_print_opl_tr_own = class(TForm)
    OD_data: TOracleDataSet;
    OD_tr: TOracleDataSet;
    frxDBData: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    frxReport1: TfrxReport;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_opl_tr_own: TForm_print_opl_tr_own;

implementation

{$R *.dfm}

procedure TForm_print_opl_tr_own.Button1Click(Sender: TObject);
begin
     frxReport1.PrepareReport(true);
     frxReport1.ShowPreparedReport;
end;

end.
