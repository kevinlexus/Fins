unit Unit_form_version;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, 
  DBGridEh, StdCtrls, DBCtrls, Mask;

type
  TForm_version = class(TForm)
    OData: TOracleDataSet;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    ODataDBID: TStringField;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    i: integer;
  end;

var
  Form_version: TForm_version;

implementation

{$R *.dfm}

procedure TForm_version.FormCreate(Sender: TObject);
begin
  i:=0;
end;

procedure TForm_version.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_version.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_version.FormDblClick(Sender: TObject);
begin
 i:=i+1;
 if i=8 then
 begin
  OData.Active:=true;
  DBEdit1.Visible:=true;
 end;
end;

end.
