unit Unit_form_saldo_check;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, OracleData, StdCtrls, Mask, DBCtrlsEh,
  DBLookupEh, DBGridEh;

type
  TForm_saldo_check = class(TForm)
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Button1: TButton;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_saldo_check: TForm_saldo_check;

implementation

{$R *.dfm}

procedure TForm_saldo_check.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_saldo_check.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_saldo_check.DBLookupComboboxEh1CloseUp(Sender: TObject;
  Accept: Boolean);
begin

OracleDataSet1.Active:=false;

if  DBLookupComboboxEh1.KeyValue=0  then
  begin
    OracleDataSet1.SQL.Text:='select * from scott.v_check_saldo t'
  end
else  if  DBLookupComboboxEh1.KeyValue=1  then
  begin
    OracleDataSet1.SQL.Text:='select * from scott.v_check_saldo_trest t'
  end
else  if  DBLookupComboboxEh1.KeyValue=2  then
  begin
    OracleDataSet1.SQL.Text:='select * from scott.v_check_saldo_reu t'
  end;
OracleDataSet1.Active:=true;

end;

end.
