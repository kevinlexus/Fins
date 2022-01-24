unit Unit_spr_oper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, 
  ExtCtrls, 
  DBCtrls, Utils, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TForm_spr_oper = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_oper: TOracleDataSet;
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
    OD_uslNM: TStringField;
    OD_usl2NM: TStringField;
    OD_t_orgID: TFloatField;
    OD_operFK_ORG: TFloatField;
    OD_operISCOUNTER: TFloatField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1OPER: TcxGridDBColumn;
    cxGrid1DBTableView1NAIM: TcxGridDBColumn;
    cxGrid1DBTableView1sprorg_name: TcxGridDBColumn;
    cxGrid1DBTableView1usl_nm: TcxGridDBColumn;
    cxGrid1DBTableView1usl_nm1: TcxGridDBColumn;
    cxGrid1DBTableView1ISCOUNTER: TcxGridDBColumn;
    DS_oper: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
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

procedure TForm_spr_oper.FormCreate(Sender: TObject);
begin
  OD_oper.Active:=True;
end;

end.
