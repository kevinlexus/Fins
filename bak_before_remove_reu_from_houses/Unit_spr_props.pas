unit Unit_spr_props;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, wwDialog, wwrcdvw, OracleData, Wwdatsrc, StdCtrls, Grids,
  Wwdbigrd, Wwdbgrid, wwdblook, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, Utils;

type
  TForm_spr_props = class(TForm)
    GroupBox1: TGroupBox;
    Button5: TButton;
    Button4: TButton;
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
    GroupBox2: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    DS_list: TwwDataSource;
    OD_list_tp: TOracleDataSet;
    DS_list_tp: TwwDataSource;
    OD_list: TOracleDataSet;
    OD_listNAME: TStringField;
    OD_listID: TFloatField;
    OD_listCD: TStringField;
    OD_listFK_LISTTP: TFloatField;
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure OD_listBeforeInsert(DataSet: TDataSet);
    procedure OD_listAfterInsert(DataSet: TDataSet);
    procedure OD_listBeforeDelete(DataSet: TDataSet);
    procedure OD_listBeforeEdit(DataSet: TDataSet);
    procedure wwDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    l_fk_list: Integer;
  end;

var
  Form_spr_props: TForm_spr_props;

implementation

{$R *.dfm}

procedure TForm_spr_props.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 with OD_list do
 begin
   SetVariable('fk_listtp', OD_list_tp.FieldByName('id').AsInteger);
   Active:=False;
   Active:=True;
 end;

end;

procedure TForm_spr_props.FormCreate(Sender: TObject);
begin
  OD_list_tp.Active:=True;
  OD_list_tp.First;
  wwDBLookupCombo1.LookupValue:=OD_list_tp.FieldByName('id').AsString;

  with OD_list do
  begin
   SetVariable('fk_listtp', OD_list_tp.FieldByName('id').AsInteger);
   Active:=False;
   Active:=True;
  end;
end;


procedure exit_ok;
begin
 with Form_spr_props do
 begin
  if not (OD_list.State in [dsBrowse]) then
   OD_list.Post;
   OD_list.Session.ApplyUpdates([OD_list], True);
   OD_list.Session.Commit;
   Button5.Enabled:=False;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_props do
 begin
  if not (OD_list.State in [dsBrowse]) then
   OD_list.Post;
  if (OD_list.UpdatesPending=true) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      exit_ok;
    end
    else
    begin
    if not (OD_list.State in [dsBrowse]) then
      OD_list.Cancel;
    OD_list.CancelUpdates;
    OD_list.Session.Rollback;
    end;
  end;
  end;
end;

procedure TForm_spr_props.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 exit_cancel;
 Action:=caFree;
end;

procedure TForm_spr_props.Button4Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_spr_props.Button5Click(Sender: TObject);
begin
  exit_ok;
{  if not (OD_list.State in [dsBrowse]) then
    OD_list.Post;
  OD_list.Session.Commit;}
end;

procedure TForm_spr_props.OD_listBeforeInsert(DataSet: TDataSet);
begin
  Button5.Enabled:=true;
end;

procedure TForm_spr_props.OD_listAfterInsert(DataSet: TDataSet);
begin
  OD_list.FieldByName('fk_listtp').AsInteger:=
    OD_list_tp.FieldByName('id').AsInteger;
end;

procedure TForm_spr_props.OD_listBeforeDelete(DataSet: TDataSet);
begin
  Button5.Enabled:=true;
end;

procedure TForm_spr_props.OD_listBeforeEdit(DataSet: TDataSet);
begin
  Button5.Enabled:=true;
end;

procedure TForm_spr_props.wwDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
  begin
    TwwDBGrid(Sender).BeginDrag(False,10);
    if TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsString = '' then
      l_fk_list:=0
      else
      l_fk_list:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsInteger;
  end;
end;

end.
