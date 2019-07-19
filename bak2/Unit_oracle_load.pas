unit Unit_oracle_load;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, OracleData, StdCtrls, ComCtrls;

type
  TForm_oracle_load = class(TForm)
    Timer1: TTimer;
    OD_params: TOracleDataSet;
    ProgressBar1: TProgressBar;
    GroupBox2: TGroupBox;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_oracle_load: TForm_oracle_load;

implementation



{$R *.dfm}

procedure TForm_oracle_load.Timer1Timer(Sender: TObject);
begin
  //Нагрузка на сервер
  Timer1.Enabled:=False;
  OD_params.Active:=false;
  OD_params.Active:=true;
  if OD_params.FieldByName('cnt').AsInteger >= 10 then
    ProgressBar1.Position:=10
  else
    ProgressBar1.Position:=OD_params.FieldByName('cnt').AsInteger;
  Timer1.Enabled:=True;
end;

procedure TForm_oracle_load.Button3Click(Sender: TObject);
begin
 Close;
end;

end.
