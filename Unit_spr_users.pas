unit Unit_spr_users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, OracleData, StdCtrls,
  wwdblook, Wwdbdlg, DBGridEh, ExtCtrls, DBCtrls, DBCtrlsEh,
  DBLookupEh, Menus, cxControls, 
  
  
  
  cxGridDBTableView, cxGridLevel, cxClasses, cxGrid,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, Mask, cxGridCustomTableView, cxGridTableView, cxGridCustomView;

type
  TForm_spr_users = class(TForm)
    DS_c_users: TwwDataSource;
    OD_s_reu_trest: TOracleDataSet;
    DS_s_reu_trest: TwwDataSource;
    OD_user_perm: TOracleDataSet;
    DS_user_perm: TwwDataSource;
    GroupBox1: TGroupBox;
    Button1: TButton;
    OD_t_org: TOracleDataSet;
    DS_t_org: TwwDataSource;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    GroupBox4: TGroupBox;
    wwDBGrid3: TwwDBGrid;
    GroupBox5: TGroupBox;
    Splitter1: TSplitter;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    OD_permtp: TOracleDataSet;
    DS_permtp: TwwDataSource;
    OD_permtpID: TFloatField;
    OD_permtpNAME: TStringField;
    OD_user_permNAME_REU: TStringField;
    OD_user_permNAME_ORG: TStringField;
    OD_s_reu_trestID: TStringField;
    OD_s_reu_trestREU: TStringField;
    OD_s_reu_trestNAME_ORG: TStringField;
    OD_t_orgID: TFloatField;
    OD_t_orgREU: TStringField;
    OD_t_orgNAME_ORG: TStringField;
    OD_permtpCD: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    OD_user_permFK_REU: TStringField;
    OD_user_permFK_PASP_ORG: TFloatField;
    OD_c_comps: TOracleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    DS_c_comps: TwwDataSource;
    OD_c_compsID: TStringField;
    OD_s_reu_trestNKOM: TStringField;
    OD_t_orgNKOM: TStringField;
    OD_c_compsNKOM: TStringField;
    OD_user_permFK_COMP: TStringField;
    OD_c_users: TOracleDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1USERNAME: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure DBNavigator3BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
    procedure set_access;
    procedure wwDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure wwDBGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure wwDBGrid2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormPaint(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure OD_c_usersAfterScroll(DataSet: TDataSet);
  private
    fk_pasp_org_: Integer;
    fk_comp_, fk_reu_: String;
  public
    { Public declarations }
  end;

var
  Form_spr_users: TForm_spr_users;

implementation

uses DM_module1, Utils;

{$R *.dfm}

procedure TForm_spr_users.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//ужасный бред, запихать сюда это...
 if not (OD_c_users.State in [dsBrowse]) then
   OD_c_users.Post;
  Action:=caFree;
end;

procedure TForm_spr_users.FormCreate(Sender: TObject);
begin
  TForm(Sender).AutoSize:=true;
  OD_c_users.Active:=True;
  OD_s_reu_trest.Active:=True;
  OD_user_perm.Active:=True;
  OD_permtp.Active:=True;
  OD_t_org.Active:=True;
  OD_c_comps.Active:=True;
  DBLookupComboboxEh1.KeyValue:=OD_permtp.FieldByName('id').AsInteger;
  with OD_user_perm do
  begin
    Active:=false;
    SetVariable('PERMTP', OD_permtp.FieldByName('ID').AsInteger);
    Active:=True;
  end;
  set_access;
end;


procedure TForm_spr_users.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_spr_users.wwDBGrid1Exit(Sender: TObject);
begin
   if not (OD_c_users.State in [dsBrowse]) then
     OD_c_users.Post;
end;

procedure TForm_spr_users.DBNavigator3BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbDelete) and (Application.MessageBox('Удалить пользователя?',
     'Подверждение', MB_YESNO+MB_APPLMODAL) <> IDYES) then
   begin
    Abort();
   end
  else
   begin
    if DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.UTILS.count_krt_kpr', [OD_c_users.FieldByName('id').AsInteger]) > 0 then
      begin
        Application.MessageBox('Удалить пользователя не возможно, существуют записи',
         'Внимание', MB_OK+MB_ICONSTOP);
        Abort();
      end;
   end;
end;

procedure TForm_spr_users.set_access;
begin
with OD_permtp do
begin
  if (FieldByName('CD').AsString='доступ к карт.рэу')
      or (FieldByName('CD').AsString='доступ к карт.площадь')
      or (FieldByName('CD').AsString='доступ к карт.статус')
      then
  begin
    wwDBGrid3.DataSource:=DS_s_reu_trest;

    wwDBGrid2.Selected.Clear;
    wwDBGrid2.Selected.Add('NAME_REU' + #9 + '64' + #9 + 'Организация');
    wwDBGrid2.ApplySelected;
  end
  else if (FieldByName('CD').AsString='доступ к отчётам')then
  begin
    wwDBGrid3.DataSource:=DS_s_reu_trest;

    wwDBGrid2.Selected.Clear;
    wwDBGrid2.Selected.Add('NAME_REU' + #9 + '64' + #9 + 'Организация');
    wwDBGrid2.ApplySelected;
  end
  else if (FieldByName('CD').AsString='доступ к льготам') then
  begin
    wwDBGrid3.DataSource:=DS_s_reu_trest;

    wwDBGrid2.Selected.Clear;
    wwDBGrid2.Selected.Add('NAME_REU' + #9 + '64' + #9 + 'Организация');
    wwDBGrid2.ApplySelected;
  end
  else if FieldByName('CD').AsString='доступ к пасп.столу' then
  begin
    wwDBGrid3.DataSource:=DS_t_org;

    wwDBGrid2.Selected.Clear;
    wwDBGrid2.Selected.Add('NAME_ORG' + #9 + '64' + #9 + 'Организация');
    wwDBGrid2.ApplySelected;
  end
  else if FieldByName('CD').AsString='доступ к компьютерам' then
  begin
    wwDBGrid3.DataSource:=DS_c_comps;

    wwDBGrid2.Selected.Clear;
    wwDBGrid2.Selected.Add('FK_COMP' + #9 + '64' + #9 + 'Компьютер');
    wwDBGrid2.ApplySelected;
  end;
end;
end;

procedure TForm_spr_users.DBLookupComboboxEh1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
  with OD_user_perm do
  begin
    Active:=false;
    SetVariable('PERMTP', OD_permtp.FieldByName('ID').AsInteger);
    Active:=True;
  end;
  set_access;
end;

procedure TForm_spr_users.wwDBGrid2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
Var
  AGrd:TGridCoord;
begin
  Accept:=True;
end;

procedure TForm_spr_users.wwDBGrid3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
  begin
    TwwDBGrid(Sender).BeginDrag(False,10);
    fk_reu_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('reu').AsString;
    fk_comp_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('nkom').AsString;
    if TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsString = '' then
      fk_pasp_org_:=0
      else
      fk_pasp_org_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsInteger;
  end;
end;

procedure TForm_spr_users.wwDBGrid2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  DataModule1.OraclePackage1.CallProcedure(
     'scott.ADMIN.user_add_perm',
      [fk_pasp_org_, fk_reu_,
      OD_c_users.FieldByName('ID').AsInteger,
      OD_permtp.FieldByName('ID').AsInteger, fk_comp_]);

  OD_user_perm.Active:=false;
  OD_user_perm.Active:=True;
end;

procedure TForm_spr_users.FormPaint(Sender: TObject);
begin
  Button1.Left:=GroupBox1.Width-Button1.Width-10;
end;

procedure TForm_spr_users.N1Click(Sender: TObject);
begin
  //Удаление привилегии
  if msg3('Удалить привилегию на объект?',
   'Внимание!',
   MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
  DataModule1.OraclePackage1.CallProcedure(
     'scott.ADMIN.user_del_perm',
      [OD_user_perm.FieldByName('FK_PASP_ORG').AsInteger,
      OD_user_perm.FieldByName('FK_REU').AsString,
      OD_c_users.FieldByName('ID').AsInteger,
      OD_permtp.FieldByName('ID').AsInteger,
      OD_user_perm.FieldByName('FK_COMP').AsString]);
  OD_user_perm.Active:=false;
  OD_user_perm.Active:=True;
  end;
end;

procedure TForm_spr_users.OD_c_usersAfterScroll(DataSet: TDataSet);
begin
  with OD_user_perm do
  begin
    Active:=false;
    SetVariable('USER_ID', OD_c_users.FieldByName('ID').AsInteger);
    Active:=True;
  end;
  set_access;
end;

end.
