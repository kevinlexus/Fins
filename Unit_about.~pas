unit Unit_about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DM_module1, StdCtrls, Grids, DBGrids;

type
  TForm_about = class(TForm)
    OD_roles: TOracleDataSet;
    DS_roles: TDataSource;
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_about: TForm_about;

implementation

{$R *.dfm}

procedure TForm_about.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_about.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_about.FormCreate(Sender: TObject);
begin
  OD_roles.Active:=true;
end;

end.
