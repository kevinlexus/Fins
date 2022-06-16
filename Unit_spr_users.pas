unit Unit_spr_users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DB, Wwdatsrc, OracleData, StdCtrls, ExtCtrls, DBCtrls, Menus,
  cxControls, cxGridDBTableView, cxGridLevel, cxClasses, cxGrid, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, Mask,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, dxSkinsCore,
  dxSkinsDefaultPainters, dxDateRanges, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit;

type
  TForm_spr_users = class(TForm)
    OD_s_reu_trest: TOracleDataSet;
    OD_user_perm: TOracleDataSet;
    OD_t_org: TOracleDataSet;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Splitter1: TSplitter;
    OD_permtp: TOracleDataSet;
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
    cxGrid2: TcxGrid;
    cxgridAvailable: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DS_c_users2: TDataSource;
    DS_user_perm2: TDataSource;
    cxGrid3: TcxGrid;
    cxgridAllObjects: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    DS_s_reu_trest2: TDataSource;
    cxgridAllObjectsNAME_ORG: TcxGridDBColumn;
    cxgridAllObjectsNKOM: TcxGridDBColumn;
    DS_permtp2: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    DS_t_org: TDataSource;
    DS_c_comps: TDataSource;
    cxgridAvailableNAME_REU: TcxGridDBColumn;
    cxgridAvailableNAME_ORG: TcxGridDBColumn;
    cxgridAvailableFK_COMP: TcxGridDBColumn;
    cxGrid1DBTableView1GUID: TcxGridDBColumn;
    OD_c_usersID: TFloatField;
    OD_c_usersCD: TStringField;
    OD_c_usersNAME: TStringField;
    OD_c_usersGUID: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure DBNavigator3BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
    procedure set_access;
    procedure wwDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure wwDBGrid3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure wwDBGrid2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure OD_c_usersAfterScroll(DataSet: TDataSet);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxgridAllObjectsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxgridAvailableDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxgridAvailableDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
  private
    fk_pasp_org_: Integer;
    fk_comp_, fk_reu_: string;
  public    { Public declarations }
  end;

var
  Form_spr_users: TForm_spr_users;


implementation

uses
  DM_module1, Utils;

{$R *.dfm}

procedure TForm_spr_users.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//ужасный бред, запихать сюда это...
  if not (OD_c_users.State in [dsBrowse]) then
    OD_c_users.Post;
  Action := caFree;
end;

procedure TForm_spr_users.FormCreate(Sender: TObject);
begin
  OD_c_users.Active := True;
  OD_s_reu_trest.Active := True;
  OD_user_perm.Active := True;
  OD_permtp.Active := True;
  OD_t_org.Active := True;
  OD_c_comps.Active := True;
  cxLookupComboBox1.EditValue := OD_permtp.FieldByName('id').AsInteger;
  with OD_user_perm do
  begin
    Active := false;
    SetVariable('PERMTP', OD_permtp.FieldByName('ID').AsInteger);
    Active := True;
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

procedure TForm_spr_users.DBNavigator3BeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  if (Button = nbDelete) and (Application.MessageBox('Удалить пользователя?', 'Подверждение', MB_YESNO + MB_APPLMODAL) <> IDYES) then
  begin
    Abort();
  end
  else
  begin
    if DataModule1.OraclePackage1.CallIntegerFunction('scott.UTILS.count_krt_kpr', [OD_c_users.FieldByName('id').AsInteger]) > 0 then
    begin
      Application.MessageBox('Удалить пользователя нельзя, существуют записи', 'Внимание', MB_OK + MB_ICONSTOP);
      Abort();
    end;
  end;
end;

procedure TForm_spr_users.set_access;
var
  col: TcxGridDBColumn;
begin
  col := cxgridAvailable.GetColumnByFieldName('NAME_ORG');
  col.Visible := false;
  col := cxgridAvailable.GetColumnByFieldName('NAME_REU');
  col.Visible := false;
  col := cxgridAvailable.GetColumnByFieldName('FK_COMP');
  col.Visible := false;
  with OD_permtp do
  begin
    if (FieldByName('CD').AsString = 'доступ к карт.рэу') or (FieldByName('CD').AsString = 'доступ к карт.площадь') or (FieldByName('CD').AsString = 'доступ к карт.статус') then
    begin
      cxgridAllObjects.DataController.DataSource := DS_s_reu_trest2;
      col := cxgridAvailable.GetColumnByFieldName('NAME_REU');
      col.Visible := true;
    end
    else if (FieldByName('CD').AsString = 'доступ к отчётам') then
    begin
      cxgridAllObjects.DataController.DataSource := DS_s_reu_trest2;
      col := cxgridAvailable.GetColumnByFieldName('NAME_REU');
      col.Visible := true;
    end
    else if (FieldByName('CD').AsString = 'доступ к льготам') then
    begin
      cxgridAllObjects.DataController.DataSource := DS_s_reu_trest2;
      col := cxgridAvailable.GetColumnByFieldName('NAME_REU');
      col.Visible := true;
    end
    else if (FieldByName('CD').AsString = 'EXP_DEB_SUB_REQUEST') then
    begin
      cxgridAllObjects.DataController.DataSource := DS_s_reu_trest2;
      col := cxgridAvailable.GetColumnByFieldName('NAME_REU');
      col.Visible := true;
    end
    else if FieldByName('CD').AsString = 'доступ к пасп.столу' then
    begin
      cxgridAllObjects.DataController.DataSource := DS_t_org;
      col := cxgridAvailable.GetColumnByFieldName('NAME_ORG');
      col.Visible := true;
    end
    else if FieldByName('CD').AsString = 'доступ к компьютерам' then
    begin
      cxgridAllObjects.DataController.DataSource := DS_c_comps;
      col := cxgridAvailable.GetColumnByFieldName('FK_COMP');
      col.Visible := true;
    end;
  end;
end;

procedure TForm_spr_users.cxgridAllObjectsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  begin
    TcxGrid(Sender).BeginDrag(False, 10);
    fk_reu_ := OD_s_reu_trest.FieldByName('reu').AsString;
    fk_comp_ := OD_c_comps.FieldByName('nkom').AsString;
    if OD_t_org.FieldByName('id').AsString = '' then
      fk_pasp_org_ := 0
    else
      fk_pasp_org_ := OD_t_org.FieldByName('id').AsInteger;

  end;

end;

procedure TForm_spr_users.cxgridAvailableDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  DataModule1.OraclePackage1.CallProcedure('scott.ADMIN.user_add_perm', [fk_pasp_org_, fk_reu_, OD_c_users.FieldByName('ID').AsInteger, OD_permtp.FieldByName('ID').AsInteger, fk_comp_]);

  OD_user_perm.Active := false;
  OD_user_perm.Active := True;

end;

procedure TForm_spr_users.cxgridAvailableDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TForm_spr_users.cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  with OD_user_perm do
  begin
    Active := false;
    SetVariable('PERMTP', OD_permtp.FieldByName('ID').AsInteger);
    Active := True;
  end;
  set_access;
end;

procedure TForm_spr_users.DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
begin
{ ### with OD_user_perm do
  begin
    Active:=false;
    SetVariable('PERMTP', OD_permtp.FieldByName('ID').AsInteger);
    Active:=True;
  end;
  set_access;
  }
end;

procedure TForm_spr_users.wwDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  AGrd: TGridCoord;
begin
  Accept := True;
end;

procedure TForm_spr_users.wwDBGrid3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
{ ### if (Button = mbLeft) then
  begin
    TwwDBGrid(Sender).BeginDrag(False,10);
    fk_reu_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('reu').AsString;
    fk_comp_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('nkom').AsString;
    if TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsString = '' then
      fk_pasp_org_:=0
      else
      fk_pasp_org_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsInteger;
  end;
  }
end;

procedure TForm_spr_users.wwDBGrid2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  DataModule1.OraclePackage1.CallProcedure('scott.ADMIN.user_add_perm', [fk_pasp_org_, fk_reu_, OD_c_users.FieldByName('ID').AsInteger, OD_permtp.FieldByName('ID').AsInteger, fk_comp_]);

  OD_user_perm.Active := false;
  OD_user_perm.Active := True;
end;

procedure TForm_spr_users.N1Click(Sender: TObject);
begin
  //Удаление привилегии
//  if msg3('Удалить привилегию на объект?', 'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
//  begin
  DataModule1.OraclePackage1.CallProcedure('scott.ADMIN.user_del_perm', [OD_user_perm.FieldByName('FK_PASP_ORG').AsInteger, OD_user_perm.FieldByName('FK_REU').AsString, OD_c_users.FieldByName('ID').AsInteger, OD_permtp.FieldByName('ID').AsInteger, OD_user_perm.FieldByName('FK_COMP').AsString]);
  OD_user_perm.Active := false;
  OD_user_perm.Active := True;
//  end;
end;

procedure TForm_spr_users.OD_c_usersAfterScroll(DataSet: TDataSet);
begin
  with OD_user_perm do
  begin
    Active := false;
    SetVariable('USER_ID', OD_c_users.FieldByName('ID').AsInteger);
    Active := True;
  end;
  set_access;
end;

end.

