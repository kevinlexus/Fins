unit Unit_check_days;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, OracleData, StdCtrls;

type
  TForm_check_days = class(TForm)
    OracleDataSet1: TOracleDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_check_days: TForm_check_days;

implementation

{$R *.dfm}

procedure TForm_check_days.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_check_days.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
