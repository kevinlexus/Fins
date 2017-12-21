unit Unit_spr_spk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Wwdatsrc, StdCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdblook, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Oracle;

type
  TForm_spr_spk = class(TForm)
    OD_spk: TOracleDataSet;
    DS_spk: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_spkID: TFloatField;
    OD_spkNAME: TStringField;
    OD_spk_usl: TOracleDataSet;
    DS_spk_usl: TwwDataSource;
    OD_spk_uslKOEF: TFloatField;
    wwDBGrid2: TwwDBGrid;
    OD_spk_uslNM: TStringField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    OD_spk_uslCHARGE_PART: TFloatField;
    OD_spk_uslDOP_PL: TFloatField;
    OD_status: TOracleDataSet;
    DS_status: TDataSource;
    OD_statusID: TFloatField;
    OD_statusNAME: TStringField;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_spkFK_STATUS_G: TFloatField;
    OD_spkfk_stat_g: TStringField;
    OD_status_k: TOracleDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    DS_status_k: TDataSource;
    OD_spkFK_STATUS_K: TFloatField;
    OD_spkfk_stat_k: TStringField;
    wwDBLookupCombo4: TwwDBLookupCombo;
    OD_spk_uslLIMIT_PART: TFloatField;
    OD_spk_uslPRIORITET: TFloatField;
    procedure Button2Click(Sender: TObject);
    procedure OD_spkAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_spkAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    exit_: Integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_spr_spk: TForm_spr_spk;

implementation

uses DM_module1;

{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_spk do
 begin
 Application.MessageBox('Необходимо будет выполнить полный перерасчет начислений!',
 'Внимание!', MB_ICONQUESTION+MB_APPLMODAL+MB_OK);
 exit_:=1;
 if not (OD_spk_usl.State in [dsBrowse]) then
   OD_spk_usl.Post;
 OD_spk_usl.Session.Commit;
 Close;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_spk do
 begin
  exit_:=0;
  OD_spk_usl.Session.Rollback;
  Close;
 end;
end;

procedure TForm_spr_spk.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_spr_spk.OD_spkAfterInsert(DataSet: TDataSet);
begin
  OD_spk_usl.Refresh;
end;

procedure TForm_spr_spk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_spk.OD_spkAfterPost(DataSet: TDataSet);
begin
  OD_spk_usl.Refresh;
end;

procedure TForm_spr_spk.wwDBGrid1Exit(Sender: TObject);
begin
if not (OD_spk.State in [dsBrowse]) then
  OD_spk.Post;

end;

procedure TForm_spr_spk.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;
end;


procedure TForm_spr_spk.FormCreate(Sender: TObject);
begin
  exit_:=2;  //Выход через закрытие окна
  TForm(Sender).AutoSize:=true;
end;

end.
