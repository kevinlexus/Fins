unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    OracleDataSet1: TOracleDataSet;
    OracleDataSet1R_REQ_ID: TFloatField;
    OracleDataSet1R_WORK_ID: TFloatField;
    OracleDataSet1RN: TFloatField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit_requests;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  with Form_requests.OD_request do
  begin
    if not (State in [dsBrowse]) then
     Cancel;

    OracleDataSet1.Session.CancelUpdates([Form_requests.OD_request]);
    GotoBookmark(Form_requests.bm);
  end;
end;

end.
