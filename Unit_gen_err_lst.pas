unit Unit_gen_err_lst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Wwdbgrid, DB, OracleData, StdCtrls, ExtCtrls, Grids, Wwdbigrd;

type
  TForm_gen_err_lst = class(TForm)
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_gen_err_lst: TForm_gen_err_lst;

implementation

{$R *.dfm}

procedure TForm_gen_err_lst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
