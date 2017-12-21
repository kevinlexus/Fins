unit Unit_changes_lsk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Mask,
  wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, Oracle, Utils, wwriched,
  GridsEh, DBGridEh, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  OracleNavigator, Menus, Wwintl, wwDialog, wwfltdlg, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls;

type
  TForm_changes_lsk = class(TForm)
    OD_changes: TOracleDataSet;
    DS_changes: TDataSource;
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
    GroupBox2: TGroupBox;
    Button2: TButton;
    OD_changesLSK: TStringField;
    OD_changesDTEK: TDateTimeField;
    OD_changesMGCHANGE: TStringField;
    OD_changesPROC: TFloatField;
    OD_changesSUMMA: TFloatField;
    OD_changesNM: TStringField;
    OD_changesNAME: TStringField;
    OD_changesFIO: TStringField;
    OD_changesTS: TDateTimeField;
    OD_changesTEXT: TStringField;
    OD_changesCNT_DAYS: TFloatField;
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
    PopupMenu3: TPopupMenu;
    mnu1: TMenuItem;
    mnu2: TMenuItem;
    OD_changesID: TFloatField;
    OD_changesDOC_ID: TFloatField;
    wwDBGrid1: TwwDBGrid;
    wwFilterDialog1: TwwFilterDialog;
    wwIntl1: TwwIntl;
    wwDBRichEdit1: TwwDBRichEdit;
    OD_changesMG2: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure state_arch2(mgold_: String);
    procedure setAllowEdit;
    procedure OD_changesBeforeDelete(DataSet: TDataSet);
    procedure mnu1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure OD_changesAfterRefresh(DataSet: TDataSet);
    procedure OD_changesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure recalc;
  end;

var
  Form_changes_lsk: TForm_changes_lsk;

implementation

uses DM_module1, Unit_list_kart, Unit_form_kart, Unit_Mainform,
  Unit_chargepay;

{$R *.dfm}

procedure TForm_changes_lsk.setAllowEdit;
begin
  //разрешить ли редактирование 
  if (Form_list_kart.isAllowEdit_ = 0) and (Form_main.arch_mg_ = '') then
    begin
      Caption:='Перерасчеты по лицевому счету - ввод запрещен';
      OD_changes.ReadOnly:=true;
    end
  else if Form_main.arch_mg_ <> '' then
    begin
      Caption:='Перерасчеты по лицевому счету - Архив';
      OD_changes.ReadOnly:=true;
    end
  else
    begin
      Caption:='Перерасчеты по лицевому счету';
      //права на удаление пререасчетов
      if have_rights('drx_Удал_перерасч') <> 0 then
        OD_changes.ReadOnly:=true
      else
        OD_changes.ReadOnly:=false;
    end;
end;

procedure TForm_changes_lsk.state_arch2(mgold_: String);
begin // смена состояний формы
with Form_changes_lsk do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
    change_alias(Form_changes_lsk.OD_changes,'scott.kart',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
    change_alias(Form_changes_lsk.OD_changes, 'scott.c_change ',
      '(select * from scott.a_change where mg='''+Form_main.arch_mg_+''')');
    change_alias(Form_changes_lsk.OD_changes, 'scott.c_change_docs',
      '(select * from scott.a_change_docs where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
    change_alias(Form_changes_lsk.OD_changes,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      'scott.kart');
    change_alias(Form_changes_lsk.OD_changes,
      '(select * from scott.a_change where mg='''+mgold_+''')',
      'scott.c_change ');
    change_alias(Form_changes_lsk.OD_changes,
      '(select * from scott.a_change_docs where mg='''+mgold_+''')',
      'scott.c_change_docs');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
    change_alias(Form_changes_lsk.OD_changes,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
    change_alias(Form_changes_lsk.OD_changes,
      '(select * from scott.a_change where mg='''+mgold_+''')',
      '(select * from scott.a_change where mg='''+Form_main.arch_mg_+''')'
      );
    change_alias(Form_changes_lsk.OD_changes,
      '(select * from scott.a_change_docs where mg='''+mgold_+''')',
      '(select * from scott.a_change_docs where mg='''+Form_main.arch_mg_+''')'
      );
  end;

end;
end;

procedure TForm_changes_lsk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FF('Form_kart', 0) = 1 then
    Form_kart.recalc_kart;
  Action:=caFree;
end;

procedure TForm_changes_lsk.Button2Click(Sender: TObject);
begin
  if FF('Form_kart', 0) = 1 then
    Form_kart.recalc_kart;
  Close;
end;

procedure TForm_changes_lsk.FormCreate(Sender: TObject);
begin
  SetAllowEdit;
  state_arch2('');
end;

procedure TForm_changes_lsk.OD_changesBeforeDelete(DataSet: TDataSet);
begin
  if msg3('Удалить строку?',
     'Внимание!',
     MB_YESNO+MB_ICONQUESTION) <> IDYES then
  Abort;

end;

procedure TForm_changes_lsk.mnu1Click(Sender: TObject);
begin
  //удаление строки перерасчета
  DataModule1.OraclePackage1.CallProcedure
     ('scott.C_CHANGES.del_chng', [OD_changes.FieldByName('id').AsInteger]);
  OD_changes.Active:=False;
  OD_changes.Active:=True;
end;

procedure TForm_changes_lsk.mnu2Click(Sender: TObject);
begin
  //удаление перерасчета в целом
  DataModule1.OraclePackage1.CallProcedure
     ('scott.C_CHANGES.del_chng_doc', [OD_changes.FieldByName('doc_id').AsInteger]);
  OD_changes.Active:=False;
  OD_changes.Active:=True;
end;

procedure TForm_changes_lsk.OD_changesAfterRefresh(DataSet: TDataSet);
begin
  recalc;

end;

procedure TForm_changes_lsk.recalc;
var
  bm:TBookmark;
  summa_ : Double;
begin
//пересчет итога
  summa_:=0;
  bm:=OD_changes.GetBookmark;
  OD_changes.First;
  while not OD_changes.Eof do
  begin
    summa_:=summa_+OD_changes.FieldByName('summa').AsFloat;
    OD_changes.Next;
  end;
    OD_changes.Next;
  OD_changes.GotoBookmark(bm);

  wwDBGrid1.ColumnByName('LSK').FooterValue :='Итого:';
  wwDBGrid1.ColumnByName('SUMMA').FooterValue :=FloatToStrF(summa_, ffFixed, 10, 2);
end;

procedure TForm_changes_lsk.OD_changesAfterOpen(DataSet: TDataSet);
begin
  recalc;

end;

end.
