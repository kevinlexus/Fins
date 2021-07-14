unit Unit_form_params;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBGridEh, ExtCtrls, 
  StdCtrls, DBCtrls, OracleData, ComCtrls, Wwdatsrc,
  wwriched;

type
  TForm_params = class(TForm)
    PageControl1: TPageControl;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_services: TOracleDataSet;
    DS_services: TwwDataSource;
    TabSheet1: TTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_params: TForm_params;

implementation



{$R *.dfm}

procedure exit_ok;
begin
 with Form_params do
 begin
   exit_:=1;
   if not (OD_services.State in [dsBrowse]) then
     OD_services.Post;
   OD_services.Session.Commit;
 end;
end;

procedure exit_cancel;
begin
 with Form_params do
 begin
  exit_:=0;
  OD_services.Session.Rollback;
  Close;
 end;
end;

procedure TForm_params.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_params.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_params.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_params.FormCreate(Sender: TObject);
begin
  exit_:=2;  //����� ����� �������� ����
  TForm(Sender).AutoSize:=true;
end;

end.
