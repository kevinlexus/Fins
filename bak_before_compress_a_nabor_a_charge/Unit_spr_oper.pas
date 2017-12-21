unit Unit_spr_oper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, OracleData, StdCtrls, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel,
  GridsEh, DBGridEh, Grids, DBGrids, DBCtrls, Utils;

type
  TForm_spr_oper = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_oper: TOracleDataSet;
    DS_oper: TwwDataSource;
    OD_operOPER: TStringField;
    OD_operNAIM: TStringField;
    OD_t_org: TOracleDataSet;
    DS_t_org: TDataSource;
    OD_t_orgNAME: TStringField;
    OD_usl: TOracleDataSet;
    DS_usl: TDataSource;
    OD_uslUSL: TStringField;
    OD_uslNM1: TStringField;
    OD_usl2: TOracleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    DS_usl2: TDataSource;
    OD_operFK_USL: TStringField;
    OD_operFK_USL_CHK: TStringField;
    OD_operusl_nm: TStringField;
    OD_operusl_nm1: TStringField;
    OD_opersprorg_name: TStringField;
    DBGridEh1: TDBGridEh;
    OD_uslNM: TStringField;
    OD_usl2NM: TStringField;
    OD_t_orgID: TFloatField;
    OD_operFK_ORG: TFloatField;
    DBNavigator2: TDBNavigator;
    OD_operISCOUNTER: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_spr_oper: TForm_spr_oper;

implementation


{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_oper do
 begin
   exit_:=1;
   if not (OD_oper.State in [dsBrowse]) then
     OD_oper.Post;
   OD_oper.Session.Commit;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_oper do
 begin
  exit_:=0;
  OD_oper.Session.Rollback;
 end;
end;

procedure TForm_spr_oper.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_oper.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_spr_oper.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_spr_oper.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbDelete) and (msg3('Удалить операцию?',
     'Подверждение', MB_YESNO+MB_ICONQUESTION) <> IDYES) then
  begin
   Abort();
  end;
end;

end.
