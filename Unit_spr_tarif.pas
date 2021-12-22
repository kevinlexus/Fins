unit Unit_spr_tarif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  DB, Wwdatsrc, OracleData, wwdblook, Wwintl,
  wwcheckbox, wwrcdpnl, wwDialog, wwrcdvw, MemTableDataEh, MemTableEh,
  DataDriverEh, GridsEh, DBGridEh, DBCtrlsEh, Menus,
  wwriched, wwdbedit, DBCtrls;

type
  TForm_spr_tarif = class(TForm)
    OD_spr_tarif: TOracleDataSet;
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
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_usl: TOracleDataSet;
    OD_uslUSL: TStringField;
    OD_uslNM: TStringField;
    DS_usl: TDataSource;
    DS_spr_tarif_prices: TwwDataSource;
    OD_spr_tarif_prices: TOracleDataSet;
    OD_spr_tarif_pricesFK_TARIF: TFloatField;
    OD_spr_tarif_pricesCENA: TFloatField;
    OD_spr_tarif_pricesMG1: TStringField;
    OD_spr_tarif_pricesMG2: TStringField;
    wwExpandButton1: TwwExpandButton;
    Button4: TButton;
    DBGridEh3: TDBGridEh;
    DataSetDriverEh1: TDataSetDriverEh;
    Mem_spr_tarif: TMemTableEh;
    DS_spr_tarif: TDataSource;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DBGridEh1: TDBGridEh;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwRecordViewDialog1: TwwRecordViewDialog;
    OD_spr_tarifNAME: TStringField;
    OD_spr_tarifID: TFloatField;
    OD_spr_tarifPARENT_ID: TFloatField;
    OD_spr_tarifCENA: TFloatField;
    OD_spr_tarif2: TOracleDataSet;
    StringField2: TStringField;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    OD_spr_tarif3: TOracleDataSet;
    DS_spr_tarif3: TDataSource;
    OD_spr_tarif3ID: TFloatField;
    OD_spr_tarif3USL: TStringField;
    OD_spr_tarif3NAME: TStringField;
    OD_spr_tarif3CD: TStringField;
    PopupMenu2: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N3: TMenuItem;
    OD_spr_tarifCD: TStringField;
    OD_uslN_PROGS: TFloatField;
    Button3: TButton;
    OD_spr_tarif3MASK: TStringField;
    OD_spr_tarifTP_NAME: TStringField;
    OD_spr_tarifTP: TFloatField;
    OD_spr_tarifCDTP: TStringField;
    OD_spr_tarif3CDTP: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Mem_spr_tarifAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure OD_spr_tarif_pricesAfterInsert(DataSet: TDataSet);
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure DBGridEh3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh3DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGridEh3DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure recalc;
    procedure OD_spr_tarif3AfterPost(DataSet: TDataSet);
    procedure N6Click(Sender: TObject);
    procedure OD_spr_tarif3AfterInsert(DataSet: TDataSet);
    procedure del_prog_tarif;
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    old_parent_id_, id_, exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_spr_tarif: TForm_spr_tarif;

implementation

uses Unit_spr_tarif_chng, Utils, DM_module1, Unit_edit_bitmask;


{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_tarif do
 begin
   exit_:=1;
   if not (OD_spr_tarif_prices.State in [dsBrowse]) then
     OD_spr_tarif_prices.Post;
   if not (OD_spr_tarif3.State in [dsBrowse]) then
     OD_spr_tarif3.Post;

//   Application.MessageBox('Необходимо будет выполнить полный перерасчет начислений!',
//   'Внимание!', MB_ICONQUESTION+MB_APPLMODAL+MB_OK);
   OD_spr_tarif.Session.Commit;
   Close;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_tarif do
 begin
  exit_:=0;
  OD_spr_tarif.Session.Rollback;
  Close;
 end;
end;

procedure TForm_spr_tarif.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_tarif.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_spr_tarif.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_spr_tarif.wwDBGrid1DblClick(Sender: TObject);
begin
//  wwDBGrid1.FlushChanges;
//  wwRecordViewDialog2.execute;
end;

procedure TForm_spr_tarif.wwDBGrid2DblClick(Sender: TObject);
begin
//  wwDBGrid2.FlushChanges;
//  wwRecordViewDialog1.execute;
end;

procedure TForm_spr_tarif.Button3Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_tarif_chng, Form_spr_tarif_chng);
  Form_spr_tarif_chng.ShowModal;
end;

procedure TForm_spr_tarif.Button4Click(Sender: TObject);
var
  bm: TBookmark;
  numstr_: string;
begin
  if not (OD_spr_tarif_prices.State in [dsBrowse]) then
    OD_spr_tarif_prices.Post;
  if not (OD_spr_tarif3.State in [dsBrowse]) then
    OD_spr_tarif3.Post;

  OD_spr_tarif.Session.Commit;

  OD_spr_tarif.Active:=false;
  OD_spr_tarif.Active:=True;
  bm:=Mem_spr_tarif.GetBookmark;
  Mem_spr_tarif.Active:=false;
  Mem_spr_tarif.Active:=true;
  try
  Mem_spr_tarif.GotoBookmark(bm);
        except
      end;

end;

procedure TForm_spr_tarif.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';


end;

procedure TForm_spr_tarif.wwDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_spr_tarif.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
{  OD_spr_tarif.SetVariable('usl',
    OD_usl.FieldByName('usl').AsString);
  OD_spr_tarif.SetVariable('n_progs',
    OD_usl.FieldByName('n_progs').AsInteger);
  OD_spr_tarif.Active:=False;
  OD_spr_tarif.Active:=true;}
  if OD_usl.FieldByName('n_progs').AsInteger=1 then
    Button3.Visible:=False
  else
    Button3.Visible:=True;

  Mem_spr_tarif.Active:=False;
  Mem_spr_tarif.Active:=true;

end;

procedure TForm_spr_tarif.Mem_spr_tarifAfterScroll(DataSet: TDataSet);
begin
  if Mem_spr_tarif.FieldByName('tp').AsInteger = 2 then
  begin
     N6.Enabled:=true;
  end
  else
  begin
     N6.Enabled:=false;
  end;

   OD_spr_tarif_prices.Active:=False;
   OD_spr_tarif_prices.SetVariable('fk_tarif',
    Mem_spr_tarif.FieldByName('id').AsInteger);
   OD_spr_tarif_prices.Active:=True;

   OD_spr_tarif3.Active:=False;
   OD_spr_tarif3.SetVariable('id',
    Mem_spr_tarif.FieldByName('id').AsInteger);
   OD_spr_tarif3.Active:=True;
end;

procedure TForm_spr_tarif.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  exit_:=2;
  OD_spr_tarif.Active:=True;
  OD_spr_tarif2.Active:=True;
  wwDBLookupCombo1.LookupValue:=OD_usl.FieldByName('usl').AsString;
  if OD_usl.FieldByName('n_progs').AsInteger=1 then
    Button3.Visible:=False
  else
    Button3.Visible:=True;
end;

procedure TForm_spr_tarif.OD_spr_tarif_pricesAfterInsert(
  DataSet: TDataSet);
begin
   OD_spr_tarif_prices.FieldByName('fk_tarif').AsInteger:=
      Mem_spr_tarif.FieldByName('id').AsInteger;
end;

procedure TForm_spr_tarif.DBGridEh3DblClick(Sender: TObject);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('CD').AsString
    <> '000' then
  begin
    wwRecordViewDialog1.Execute;
  end;
  //чтобы предотвратить залипание мыши при BeginDrag
  Abort;
end;

procedure TForm_spr_tarif.DBGridEh3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
  begin
  //Перенос программы из ветки в ветку
  TDBGridEh(Sender).BeginDrag(False,10);
  id_:=TDBGridEh(Sender).DataSource.DataSet.FieldByName('id').AsInteger;
  old_parent_id_:=TDBGridEh(Sender).DataSource.DataSet.FieldByName('parent_id').AsInteger;
  end;
end;

procedure TForm_spr_tarif.DBGridEh3DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
Var
  AGrd:TGridCoord;
begin
  Accept:=True;
//  TDBGridEh(Sender).SetFocus;
Windows.SetFocus(TDBGridEh(Sender).Handle);
  AGrd:=TDBGridEh(Sender).MouseCoord(X,Y);
  if AGrd.Y-1 >= TDBGridEh(Sender).Row then
  begin
  TDBGridEh(Sender).DataSource.DataSet.MoveBy(1);
  TDBGridEh(Sender).Refresh;
  Sleep(10);
  end
  else if AGrd.Y < TDBGridEh(Sender).Row then
  begin
  TDBGridEh(Sender).DataSource.DataSet.MoveBy(-1);
  TDBGridEh(Sender).Refresh;
  Sleep(10);
  end;
end;

procedure TForm_spr_tarif.DBGridEh3DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin

PopupMenu1.Popup(DBGridEh3.Left+Left+X, DBGridEh3.Top+Top+Y);

end;

{procedure TForm_spr_tarif.N1Click(Sender: TObject);
var
  cnt_: Integer;
  bm: TBookmark;
begin
  //Удаление программы/пакета
  cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
   'scott.P_HOUSES.del_prog_tarif',
    [Mem_spr_tarif.FieldByName('id').AsInteger,
     Mem_spr_tarif.FieldByName('parent_id').AsInteger]);

  bm:=Mem_spr_tarif.GetBookmark;
  OD_spr_tarif.Active:=False;
  OD_spr_tarif.Active:=True;
  Mem_spr_tarif.Active:=False;
  Mem_spr_tarif.Active:=True;
  Mem_spr_tarif.GotoBookmark(bm);
end;}

procedure TForm_spr_tarif.recalc;
var
  bm: TBookmark;
begin
  bm:=Mem_spr_tarif.GetBookmark;
  OD_spr_tarif.Active:=False;
  OD_spr_tarif.Active:=True;
  Mem_spr_tarif.Active:=False;
  Mem_spr_tarif.Active:=True;
  try
  Mem_spr_tarif.GotoBookmark(bm);
  except
  end
end;

procedure TForm_spr_tarif.N2Click(Sender: TObject);
var
  cnt_: Integer;
begin
  //перемещение программы из пакета в пакет
  cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
   'scott.P_HOUSES.change_prog_tarif',
    [id_, Mem_spr_tarif.FieldByName('id').AsInteger,
     old_parent_id_]);

  recalc;
end;

procedure TForm_spr_tarif.N1Click(Sender: TObject);
var
  cnt_: Integer;
begin
  //копирование программы из пакета в пакет
  cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
   'scott.P_HOUSES.copy_prog_tarif',
    [id_, Mem_spr_tarif.FieldByName('id').AsInteger]);

  recalc;
end;

procedure TForm_spr_tarif.del_prog_tarif;
var
  cnt_: Integer;
begin
  //Удаление программы из пакета
  if msg3('Удалить данный тариф/программу?',
   'Внимание!',
   MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
  cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
   'scott.P_HOUSES.del_prog_tarif',
    [Mem_spr_tarif.FieldByName('id').AsInteger,
      Mem_spr_tarif.FieldByName('parent_id').AsInteger]);
  if cnt_ = 1 then
     msg2('Удаление запрещено, тариф/программа используются в наборе услуг абонента!', 'Внимание!', MB_OK+MB_ICONINFORMATION)
  else
    recalc;
  end;
end;

procedure TForm_spr_tarif.N3Click(Sender: TObject);
begin
  del_prog_tarif;
end;

procedure TForm_spr_tarif.OD_spr_tarif3AfterPost(DataSet: TDataSet);
begin
  recalc;
end;

procedure TForm_spr_tarif.N6Click(Sender: TObject);
begin
  if FF('Form_edit_bitmask', 1) = 0 then
  begin
    OD_spr_tarif3.Edit;
    Application.CreateForm(TForm_edit_bitmask, Form_edit_bitmask);
    Form_edit_bitmask.ShowModal;
    if not (OD_spr_tarif3.State in [dsBrowse]) then
      OD_spr_tarif3.Post;
  end;
  //чтобы предотвратить залипание мыши при BeginDrag
  Abort;
end;

procedure TForm_spr_tarif.OD_spr_tarif3AfterInsert(DataSet: TDataSet);
begin
  Dataset.FieldByName('usl').AsString:=wwDBLookupCombo1.LookupValue;
end;

procedure TForm_spr_tarif.wwDBNavigator1DeleteClick(Sender: TObject);
begin
  del_prog_tarif;
  //предовратить отработку удаления строки навигатором
  abort;
end;

procedure TForm_spr_tarif.wwDBNavigator1InsertClick(Sender: TObject);
begin
  OD_spr_tarif3.Insert;
  wwRecordViewDialog1.Execute;
  //предовратить отработку удаления строки навигатором
  abort;
end;

procedure TForm_spr_tarif.N5Click(Sender: TObject);
begin
  if Mem_spr_tarif.FieldByName('CD').AsString
    <> '000' then
  begin
    wwRecordViewDialog1.Execute;
  end;
  //чтобы предотвратить залипание мыши при BeginDrag
  Abort;
end;

end.
