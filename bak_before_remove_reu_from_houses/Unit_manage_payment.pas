unit Unit_manage_payment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, Grids, DBGrids, DM_module1, DB, OracleData, frxChart,
  frxClass, frxDBSet;

type
  TForm_manage_payment = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_manage_payment: TForm_manage_payment;

implementation

{$R *.dfm}

procedure TForm_manage_payment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
