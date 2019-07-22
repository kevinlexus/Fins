unit Unit_prep_doc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, OracleData, StdCtrls, Grids,
  Wwdbigrd, Wwdbgrid, wwSpeedButton, wwDBNavigator, wwclearpanel,
  wwdbdatetimepicker, Mask, wwdbedit, Wwdotdot, Wwdbcomb, MemDS, DBAccess, DM_module1,
  Uni;

type
  TForm_prep_doc = class(TForm)
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
    GroupBox2: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    KMP: TOracleDataSet;
    KMPID: TFloatField;
    KMPGR_NAME: TStringField;
    KMPPARNAME: TStringField;
    KMPCDTP: TFloatField;
    KMPVAL: TStringField;
    KMPPARN1: TFloatField;
    KMPPARVC1: TStringField;
    KMPPARDT1: TDateTimeField;
    DS_spr_params: TDataSource;
    wwDBGrid2: TwwDBGrid;
    wwDBComboBox1: TwwDBComboBox;
    Uni_spr_params: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SetAccess(cd_: String);
    procedure edit_par;
    procedure wwDBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBComboBox1DropDown(Sender: TObject);
    procedure wwDBComboBox1DblClick(Sender: TObject);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_prep_doc: TForm_prep_doc;

implementation

uses Unit_tree_par_edit;

{$R *.dfm}

procedure TForm_prep_doc.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
  exit_:=2;  //Выход через закрытие окна
end;

procedure exit_cancel;
begin
 with Form_prep_doc do
 begin
  exit_:=0;
   if not (Uni_spr_params.State in [dsBrowse]) then
     Uni_spr_params.Cancel;
//   OD_spr_params.Session.Rollback;
  DataModule1.UniConnection1.Rollback;
  ModalResult:=mrCancel;
 end;
end;

procedure exit_ok;
begin
 with Form_prep_doc do
 begin
   exit_:=1;
   if not (Uni_spr_params.State in [dsBrowse]) then
     Uni_spr_params.Post;
   Uni_spr_params.CommitUpdates;
{   if not (OD_data2.State in [dsBrowse]) then
     OD_data2.Post;
   if not (OD_data3.State in [dsBrowse]) then
     OD_data3.Post;}
   ModalResult:=mrOk;
 end;
end;

procedure TForm_prep_doc.SetAccess(cd_: String);
begin
//установка параметров формы
  Uni_spr_params.Active:=False;
  Uni_spr_params.Params.ParamByName('cd_').AsString:=cd_;
  Uni_spr_params.Active:=True;
{  OD_data.Active:=False;
  OD_data2.Active:=False;
  OD_data3.Active:=False;
  OD_acc.Active:=False;
  OD_acc.SetVariable('cd_', cd_);
  OD_acc.Active:=True;
  OD_data.Active:=True;
  OD_data2.Active:=True;
  OD_data3.Active:=True;

  GroupBox1.Visible:=False;
  GroupBox3.Visible:=False;
  GroupBox4.Visible:=False;
  with OD_acc do
  begin
    while not Eof do
    begin
     if FieldByName('cd').Asstring='REP_PREP_FIO' then
     begin
       GroupBox1.Visible:=True;
     end
     else;

     if FieldByName('cd').Asstring='REP_PREP_DT1' then
     begin
       GroupBox3.Visible:=True;
     end;

     if FieldByName('cd').Asstring='REP_PREP_VC' then
     begin
       GroupBox4.Visible:=True;
     end;
     Next;
    end;
  end;}
end;

procedure TForm_prep_doc.edit_par;
var
  id_: Integer;
begin
  Application.CreateForm(TForm_tree_par_edit, Form_tree_par_edit);
  Form_tree_par_edit.SetAccess(DS_spr_params);
  Form_tree_par_edit.ShowModal;

  id_:=Uni_spr_params.FieldByName('id').AsInteger;
  Uni_spr_params.Active:=False;
  Uni_spr_params.Active:=True;
  Uni_spr_params.Locate('id', id_, []);
//  wwDBGrid2.SetFocus;
Windows.SetFocus(wwDBGrid2.Handle);
  wwDBGrid2.Repaint;
end;

procedure TForm_prep_doc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
//  Action:=caFree;
end;

procedure TForm_prep_doc.Button1Click(Sender: TObject);
begin
  exit_ok;
//  close;

end;

procedure TForm_prep_doc.Button2Click(Sender: TObject);
begin
  exit_cancel;
end;

procedure TForm_prep_doc.wwDBComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  edit_par;
end;

procedure TForm_prep_doc.wwDBComboBox1DropDown(Sender: TObject);
begin
  edit_par;
  Abort;
end;

procedure TForm_prep_doc.wwDBComboBox1DblClick(Sender: TObject);
begin
  edit_par;
end;

end.
