unit Unit_spr_street;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, wwSpeedButton, wwDBNavigator, ExtCtrls,
  GridsEh, DBGridEh, Wwdatsrc, OracleData, DBCtrls, Utils;

type
  TForm_spr_street = class(TForm)
    OD_street: TOracleDataSet;
    DS_oper: TwwDataSource;
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_streetID: TStringField;
    OD_streetNAME: TStringField;
    DBNavigator2: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_spr_street: TForm_spr_street;

implementation

{$R *.dfm}
procedure exit_ok;
begin
 with Form_spr_street do
 begin
   exit_:=1;
   if not (OD_street.State in [dsBrowse]) then
     OD_street.Post;
   OD_street.Session.Commit;
   Close;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_street do
 begin
  exit_:=0;
  OD_street.Session.Rollback;
  Close;
 end;
end;

procedure TForm_spr_street.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_street.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;

end;

procedure TForm_spr_street.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;

end;

procedure TForm_spr_street.FormCreate(Sender: TObject);
begin
  exit_:=2;  //Выход через закрытие окна
  AutoSize:=True;
end;

procedure TForm_spr_street.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbDelete) and (msg3('Удалить улицу?',
     'Подверждение', MB_YESNO+MB_ICONQUESTION) <> IDYES) then
  begin
   Abort();
  end;
end;

end.
