unit Unit_spr_deb_org;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, wwSpeedButton, wwDBNavigator, ExtCtrls,
  Wwdbgrid, OracleData, Wwdatsrc, DBCtrls, Utils, Grids, Wwdbigrd;

type
  TForm_spr_deb_org = class(TForm)
    DS_sprorg: TwwDataSource;
    OD_sprorg: TOracleDataSet;
    wwDBGrid1: TwwDBGrid;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_sprorgID: TFloatField;
    OD_sprorgCD: TStringField;
    OD_sprorgFK_ORGTP: TFloatField;
    OD_sprorgNAME: TStringField;
    OD_sprorgNPP: TFloatField;
    OD_sprorgV: TFloatField;
    OD_sprorgPARENT_ID: TFloatField;
    OD_sprorgREU: TStringField;
    OD_sprorgTREST: TStringField;
    OD_sprorgUCH: TFloatField;
    DBNavigator2: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_sprorgAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_spr_deb_org: TForm_spr_deb_org;

implementation

{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_deb_org do
 begin
   exit_:=1;
   if not (OD_sprorg.State in [dsBrowse]) then
     OD_sprorg.Post;
   OD_sprorg.Session.Commit;
   Close;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_deb_org do
 begin
  exit_:=0;
  OD_sprorg.Session.Rollback;
  Close;
 end;
end;

procedure TForm_spr_deb_org.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_spr_deb_org.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_spr_deb_org.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_deb_org.OD_sprorgAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('fk_orgtp').AsInteger:=2;
end;

procedure TForm_spr_deb_org.FormCreate(Sender: TObject);
begin
  exit_:=2;  //Выход через закрытие окна
  TForm(Sender).AutoSize:=true;
end;

procedure TForm_spr_deb_org.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbDelete) and (msg3('Удалить организацию?',
     'Подверждение', MB_YESNO+MB_ICONQUESTION) <> IDYES) then
  begin
   Abort();
  end;
end;

end.
