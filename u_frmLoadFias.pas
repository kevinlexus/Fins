unit u_frmLoadFias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls,
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  StdCtrls, dxCustomWizardControl,
  dxWizardControl, ExtCtrls, Oracle, 
  DB, 
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, 
  OracleData, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxDBLookupComboBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxDateRanges;

type
  TfrmLoadFias = class(TForm)
    dxwzrdcntrl1: TdxWizardControl;
    dxwzrdcntrlpg1: TdxWizardControlPage;
    pnl1: TPanel;
    dxwzrdcntrlpg3: TdxWizardControlPage;
    dxwzrdcntrlpg4: TdxWizardControlPage;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    OD_prep_street: TOracleDataSet;
    DS_prep_street: TDataSource;
    OD_prep_house: TOracleDataSet;
    DS_prep_house: TDataSource;
    OD_lkp_house: TOracleDataSet;
    DS_lkp_house: TDataSource;
    chk2: TCheckBox;
    OD_file: TOracleDataSet;
    DS_file: TDataSource;
    dxwzrdcntrlpg6: TdxWizardControlPage;
    mmo2: TMemo;
    OD_data: TOracleDataSet;
    cxGridDBTableView1HOUSENUM: TcxGridDBColumn;
    cxGrid1DBTableView1KUL: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1OFFNAME: TcxGridDBColumn;
    cxGrid1DBTableView1AOGUID: TcxGridDBColumn;
    cxGridDBTableView1FullNdName: TcxGridDBColumn;
    cxGridDBTableView1HOUSEGUID: TcxGridDBColumn;
    Memo1: TMemo;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxwzrdcntrl1ButtonClick(Sender: TObject;
      AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
    procedure dxwzrdcntrl1PageChanging(Sender: TObject;
      ANewPage: TdxWizardControlCustomPage; var AAllow: Boolean);
    procedure OD_prep_houseAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure chk2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1MouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGridDBTableView1MouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoadFias: TfrmLoadFias;

implementation

uses DM_module1, Utils;

type
  TControlAccess = class(TControl);

{$R *.dfm}

procedure TfrmLoadFias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (OD_prep_house.State = dsEdit) then
    OD_prep_house.Post;
  Action:=caFree;
end;

procedure TfrmLoadFias.dxwzrdcntrl1ButtonClick(Sender: TObject;
  AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
var
  clr, i, err: Integer;
  AFilename: WideString;
begin
  if AKind=wcbkCancel then
    Close
  else if AKind=wcbkNext then
  begin
    if dxwzrdcntrl1.ActivePageIndex=0 then //при переходе с очистки файлов к справочнику улиц
    begin
    Panel1.Visible:=true;
    Refresh;
    if chk2.Checked then //очистить если задано, справочники соответствий
        DataModule1.OraclePackage1.CallProcedure(
         'scott.c_load_fias.clear_spr', [parNone]);
      clr:=1;
      //заполнить справочники, недостающими запис€ми
      DataModule1.OraclePackage1.CallProcedure(
           'scott.c_load_fias.prep_street', [parNone]);
            DataModule1.OracleSession1.Commit;
      OD_prep_street.Active:=False;
      OD_prep_street.Active:=True;
    Panel1.Visible:=false;
    end
    else if dxwzrdcntrl1.ActivePageIndex=1 then //при переходе со справочника улиц к справочнику домов
    begin
    Panel1.Visible:=true;
    Refresh;
      if (OD_prep_street.State = dsEdit) then
        OD_prep_street.Post;
      DataModule1.OraclePackage1.CallProcedure(
           'scott.c_load_fias.prep_house', [parNone]);
          DataModule1.OracleSession1.Commit;
      OD_prep_house.Active:=False;
      OD_prep_house.Active:=True;
    Panel1.Visible:=false;
    end;
  end
  else if AKind=wcbkFinish then
  begin
    Close;
  end;

end;

procedure TfrmLoadFias.dxwzrdcntrl1PageChanging(Sender: TObject;
  ANewPage: TdxWizardControlCustomPage; var AAllow: Boolean);
begin
  if ANewPage.PageIndex=2 then
  begin
    //проверка справочника ”лиц
    DataModule1.OD_spul.Active:=True;

    OD_prep_street.Active:=False;
    OD_prep_street.Active:=True;
  end
  else if ANewPage.PageIndex=3 then
  begin
    //проверка справочника ƒомов
    OD_prep_house.Active:=False;
    OD_prep_house.Active:=True;
  end
{  if ANewPage.PageIndex=0 then //если перва€ страница
  begin
     dxwzrdcntrl1.Buttons.Next.Caption:='ѕропустить'
  end
  else
  begin
     dxwzrdcntrl1.Buttons.Next.Caption:='ƒалее'
  end;
 }

end;

procedure TfrmLoadFias.OD_prep_houseAfterScroll(DataSet: TDataSet);
begin
{  with OD_lkp_house do
  begin
   Active:=False;
   SetVariable('kul', OD_prep_house.FieldByName('kul').AsString);
   //SetVariable('nd', OD_prep_house.FieldByName('housenum').AsString);
   Active:=True;
  end;}
                
end;

procedure TfrmLoadFias.cxGridDBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 //дл€ того чтобы отобразить значение пол€, которое не в списке lookup
    if ARecord.Values[4] <> null then
      AText :=  ARecord.Values[4];
 //по хорошему, выше, нужно брать не по индексу а по имени
 // if (AText = null) then
//   AText :=  ARecord.Values[TcxGridDBColumn(Sender).Index];
//   AText :=  ARecord.Values[1];
//   AText :=  ARecord.Values[cxGridDBTableView1.GetColumnByFieldName('nd').];

end;

procedure TfrmLoadFias.chk2Click(Sender: TObject);
begin
  if (chk2.Checked) and (msg3('¬нимание! ѕолностью очищаютс€ справочники соответствий, если они были заполнены! ќтметить?',
   'ѕодтверждение', MB_YESNO+MB_ICONQUESTION) =
   ID_YES) then
  begin
  end
  else
  begin
    chk2.Checked:=False;
  end;
end;

procedure TfrmLoadFias.FormCreate(Sender: TObject);
begin
  OD_lkp_house.Active:=true;
  DataModule1.OD_spul.Active:=True;
end;

procedure TfrmLoadFias.cxGrid1DBTableView1MouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  //«апретить колесо мышки в lookupcombobox      - не работает это! 
  with cxGrid1DBTableView1.Controller.EditingController do
    if Edit <> nil then
    begin
      HideEdit(False);
      TControlAccess(cxGrid1DBTableView1.Site).DoMouseWheel(Shift, WheelDelta, MousePos);
    end;
end;

procedure TfrmLoadFias.cxGridDBTableView1MouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  //«апретить колесо мышки в lookupcombobox
  with cxGridDBTableView1.Controller.EditingController do
    if Edit <> nil then
    begin
      HideEdit(False);
      TControlAccess(cxGridDBTableView1.Site).DoMouseWheel(Shift, WheelDelta, MousePos);
    end;
end;

end.
