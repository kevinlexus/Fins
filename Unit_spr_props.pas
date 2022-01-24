unit Unit_spr_props;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, 
  ExtCtrls,
  Utils, Grids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TForm_spr_props = class(TForm)
    GroupBox1: TGroupBox;
    Button5: TButton;
    Button4: TButton;
    GroupBox2: TGroupBox;
    OD_list_tp: TOracleDataSet;
    OD_list: TOracleDataSet;
    OD_listNAME: TStringField;
    OD_listID: TFloatField;
    OD_listCD: TStringField;
    OD_listFK_LISTTP: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cbbTp: TcxLookupComboBox;
    DS_list: TDataSource;
    DS_list_tp: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure OD_listBeforeInsert(DataSet: TDataSet);
    procedure OD_listAfterInsert(DataSet: TDataSet);
    procedure OD_listBeforeDelete(DataSet: TDataSet);
    procedure OD_listBeforeEdit(DataSet: TDataSet);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    l_fk_list: Integer;
  end;

var
  Form_spr_props: TForm_spr_props;

implementation

{$R *.dfm}

procedure TForm_spr_props.FormCreate(Sender: TObject);
begin
  OD_list_tp.Active:=True;
  OD_list_tp.First;
  cbbTp.EditValue:=OD_list_tp.FieldByName('id').AsString;

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

procedure TForm_spr_props.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
 with OD_list do
 begin
   SetVariable('fk_listtp', cbbTp.EditValue);
   Active:=False;
   Active:=True;
 end;
end;

end.
