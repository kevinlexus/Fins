unit Unit_spr_sprorg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, OracleData, StdCtrls, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, Utils,
  DBGridEh, Mask, DBCtrlsEh, DBLookupEh, wwDialog, wwrcdvw, wwdblook,
  OracleNavigator, Oracle, DBGrids, DBConsts;

type
  TForm_spr_sprorg = class(TForm)
    DS_sprorg: TwwDataSource;
    GroupBox2: TGroupBox;
    OD_org_tp: TOracleDataSet;
    DS_org_tp: TwwDataSource;
    wwRecordViewDialog1: TwwRecordViewDialog;
    wwDBLookupCombo1: TwwDBLookupCombo;
    OD_org_tp2: TOracleDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    DS_org_tp2: TwwDataSource;
    OD_t_orgp: TOracleDataSet;
    wwDBLookupCombo2: TwwDBLookupCombo;
    DS_t_orgp: TwwDataSource;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_sprorg: TOracleDataSet;
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
    OD_sprorgADR: TStringField;
    OD_sprorgINN: TStringField;
    OD_sprorgMANAGER: TStringField;
    OD_sprorgBUH: TStringField;
    OD_sprorgRASCHET_SCHET: TStringField;
    OD_sprorgK_SCHET: TStringField;
    OD_sprorgKOD_OKONH: TStringField;
    OD_sprorgKOD_OGRN: TStringField;
    OD_sprorgBIK: TStringField;
    OD_sprorgPHONE: TStringField;
    OD_sprorgKPP: TStringField;
    OD_sprorgBANK: TStringField;
    OD_sprorgID_EXP: TFloatField;
    OD_sprorgADR_RECIP: TStringField;
    OD_sprorgAUTHORIZED_DIR: TStringField;
    OD_sprorgAUTHORIZED_BUH: TStringField;
    OD_sprorgAUTH_DIR_DOC: TStringField;
    OD_sprorgAUTH_BUH_DOC: TStringField;
    OD_sprorgOKPO: TStringField;
    OD_sprorgVER_CD: TStringField;
    OD_sprorgFULL_NAME: TStringField;
    OD_sprorgPHONE2: TStringField;
    wwDBGrid1: TwwDBGrid;
    OD_sprorgPARENT_ID2: TFloatField;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    OD_sprorgLKTP: TStringField;
    OD_sprorgLKPAR: TStringField;
    OD_t_orgp2: TOracleDataSet;
    DS_t_orgp2: TwwDataSource;
    OD_sprorgLKPAR2: TStringField;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Memo1: TMemo;
    OD_sprorgLVL: TStringField;
    OD_sprorgBANK_CD: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    Timer2: TTimer;
    OD_sprorgADR_WWW: TStringField;
    OD_sprorgEMAIL: TStringField;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    OD_sprorgHEAD_NAME: TStringField;
    OD_sprorgRASCHET_SCHET2: TStringField;
    OD_sprorgPOST_INDX: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OD_sprorgBeforeEdit(DataSet: TDataSet);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
    procedure OD_sprorgTranslateMessage(Sender: TOracleDataSet;
      ErrorCode: Integer; const ConstraintName: String; Action: Char;
      var Msg: String);
    procedure OD_sprorgBeforePost(DataSet: TDataSet);
    procedure Timer2Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure OD_sprorgBeforeInsert(DataSet: TDataSet);
  private
    flt_:string;
  public
    { Public declarations }
  end;

var
  Form_spr_sprorg: TForm_spr_sprorg;

implementation

{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_sprorg do
 begin
  if not (OD_sprorg.State in [dsBrowse]) then
   OD_sprorg.Post;
   OD_sprorg.Session.ApplyUpdates([OD_sprorg], True);
   OD_sprorg.Session.Commit;
   Button1.Enabled:=False;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_sprorg do
 begin
  if not (OD_sprorg.State in [dsBrowse]) then
   OD_sprorg.Post;
  if (OD_sprorg.UpdatesPending=true) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      exit_ok;
    end
    else
    begin
    if not (OD_sprorg.State in [dsBrowse]) then
      OD_sprorg.Cancel;
    OD_sprorg.CancelUpdates;
    OD_sprorg.Session.Rollback;
    end;
  end;
  end;
end;

procedure TForm_spr_sprorg.FormCreate(Sender: TObject);
begin
  OD_t_orgp.Active:=True;
  OD_t_orgp2.Active:=True;
  OD_org_tp.Active:=True;
  OD_org_tp.First;
  OD_org_tp2.Active:=True;
  wwDBLookupCombo1.LookupValue:=OD_org_tp.FieldByName('id').AsString;

  with OD_sprorg do
  begin
   SetVariable('fk_orgtp', OD_org_tp.FieldByName('id').AsInteger);
   SetVariable('varflt_', 0);
   Active:=False;
   Active:=True;
  end;
end;

procedure TForm_spr_sprorg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_sprorg.wwDBGrid1DblClick(Sender: TObject);
begin
  wwDBGrid1.FlushChanges;
  wwRecordViewDialog1.Execute;
end;

procedure TForm_spr_sprorg.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_sprorg.FieldByName('FK_ORGTP').AsInteger:=
    OD_org_tp2.FieldByName('ID').AsInteger;
 
end;

procedure TForm_spr_sprorg.wwDBLookupCombo2Exit(Sender: TObject);
begin
{  if OD_org_tp2.SearchRecord('NAME', wwDBLookupCombo2.Text,
    [srFromBeginning]) <> true then
  begin
    msg2('Данный тип не найден!', 'Ошибка', MB_OK);
  end;}
end;

procedure TForm_spr_sprorg.Button1Click(Sender: TObject);
begin
  exit_ok;
end;

procedure TForm_spr_sprorg.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_spr_sprorg.OD_sprorgBeforeEdit(DataSet: TDataSet);
begin
  Button1.Enabled:=True;
end;

procedure TForm_spr_sprorg.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 with OD_sprorg do
 begin
   SetVariable('fk_orgtp', OD_org_tp.FieldByName('id').AsInteger);
   Active:=False;
   Active:=True;
 end;
end;

procedure TForm_spr_sprorg.wwDBNavigator1DeleteClick(Sender: TObject);
begin
  if msg3('Удалить организацию?',
   'Внимание!',
   MB_YESNO+MB_ICONQUESTION) <> IDYES then
  begin
    abort;
  end;
end;

procedure TForm_spr_sprorg.OD_sprorgTranslateMessage(
  Sender: TOracleDataSet; ErrorCode: Integer; const ConstraintName: String;
  Action: Char; var Msg: String);
begin
  if Pos('01436', ConstraintName) > 0 then
  begin
   Msg:='Установленно значение родит.организации приводящее к циклу!';
  end
  else
  begin

  end;


end;

procedure TForm_spr_sprorg.OD_sprorgBeforePost(DataSet: TDataSet);
begin
  Button1.Enabled:=true;
end;

procedure TForm_spr_sprorg.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled:=False;
  if flt_ <> Edit1.Text then
  begin
    flt_:=Edit1.Text;
  end
  else if ((flt_ = Edit1.Text) and (flt_<>'')
    and (flt_ <> OD_sprorg.GetVariable('flt_')))
     then
  begin
  //Применить фильтр по выражению
    OD_sprorg.Active:=false;
    OD_sprorg.SetVariable('varflt_', 1);
    OD_sprorg.SetVariable('flt_', flt_);
    OD_sprorg.Active:=true;
  end
  else if (OD_sprorg.GetVariable('varflt_')=1) and (flt_='') then
  begin
  //Отменить фильтр по выражению
    OD_sprorg.Active:=false;
    OD_sprorg.SetVariable('varflt_', 0);
    OD_sprorg.Active:=true;
  end;
  Timer2.Enabled:=True;
end;

procedure TForm_spr_sprorg.Edit1Change(Sender: TObject);
begin
  Timer2.Enabled:=false;
  Timer2.Enabled:=true;
end;

procedure TForm_spr_sprorg.OD_sprorgBeforeInsert(DataSet: TDataSet);
begin
  Button1.Enabled:=true;
end;

end.
