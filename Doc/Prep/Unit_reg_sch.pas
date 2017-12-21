unit Unit_reg_sch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, wwSpeedButton, wwDBNavigator,
  wwclearpanel, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Wwdatsrc, wwdblook,
  wwdbdatetimepicker, ComCtrls, wwriched, Utils;

type
  TForm_reg_sch = class(TForm)
    OD_data: TOracleDataSet;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    DS_data: TwwDataSource;
    OD_usl: TOracleDataSet;
    wwDBLookupCombo1: TwwDBLookupCombo;
    OD_dataID: TFloatField;
    OD_dataDT1: TDateTimeField;
    OD_dataFK_TP: TFloatField;
    OD_dataFK_STATE: TFloatField;
    OD_dataTEXT: TStringField;
    OD_dataFK_USL: TStringField;
    OD_dataname_usl: TStringField;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    OD_state: TOracleDataSet;
    OD_tp: TOracleDataSet;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_dataname_tp: TStringField;
    OD_dataname_state: TStringField;
    Button1: TButton;
    Button2: TButton;
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
    OD_dataLSK: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OD_dataBeforeInsert(DataSet: TDataSet);
    procedure OD_dataBeforePost(DataSet: TDataSet);
    procedure OD_dataBeforeDelete(DataSet: TDataSet);
    procedure OD_dataAfterInsert(DataSet: TDataSet);
    procedure OD_dataBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_reg_sch: TForm_reg_sch;

implementation

uses Unit_list_kart;

{$R *.dfm}

procedure TForm_reg_sch.FormCreate(Sender: TObject);
begin
  OD_data.Active:=true;
  OD_usl.Active:=true;
  OD_state.Active:=true;
  OD_tp.Active:=true;
  Button2.Enabled:=false;
end;

procedure TForm_reg_sch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure exit_ok;
begin
 with Form_reg_sch do
 begin
  if not (OD_data.State in [dsBrowse]) then
   OD_data.Post;
   OD_data.Session.ApplyUpdates([OD_data], True);
   OD_data.Session.Commit;
   Button2.Enabled:=False;
 end;
end;

procedure exit_cancel;
begin
 with Form_reg_sch do
 begin
  if not (OD_data.State in [dsBrowse]) then
   OD_data.Post;
  if (OD_data.UpdatesPending=true) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      exit_ok;
    end
    else
    begin
    if not (OD_data.State in [dsBrowse]) then
      OD_data.Cancel;
    OD_data.CancelUpdates;
    OD_data.Session.Rollback;
    end;
  end;
  end;
end;


procedure TForm_reg_sch.Button1Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_reg_sch.Button2Click(Sender: TObject);
begin
  exit_ok;
end;

procedure TForm_reg_sch.OD_dataBeforeInsert(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

procedure TForm_reg_sch.OD_dataBeforePost(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

procedure TForm_reg_sch.OD_dataBeforeDelete(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

procedure TForm_reg_sch.OD_dataAfterInsert(DataSet: TDataSet);
begin
  OD_data.FieldByName('lsk').AsString:=
    Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
end;

procedure TForm_reg_sch.OD_dataBeforeEdit(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

end.
