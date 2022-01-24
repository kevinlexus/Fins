unit Unit_spr_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, OracleData,
  ExtCtrls, Menus, Utils,
  Grids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_spr_usl = class(TForm)
    OD_usl: TOracleDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    DS_usl: TDataSource;
    OD_uslm: TOracleDataSet;
    DS_uslm: TDataSource;
    OD_usl_bills: TOracleDataSet;
    DS_usl_bills: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel4: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Timer2: TTimer;
    CheckBox1: TCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1USL_ID: TcxGridDBColumn;
    cxGrid1DBTableView1IS_VOL: TcxGridDBColumn;
    cxGrid1DBTableView1MG1: TcxGridDBColumn;
    cxGrid1DBTableView1MG2: TcxGridDBColumn;
    cxGrid1DBTableView1FK_TP: TcxGridDBColumn;
    cxGrid1DBTableView1FK_BILL_VAR: TcxGridDBColumn;
    cxGrid1DBTableView1FRC_GET_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1BILL_AGG: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1USLM: TcxGridDBColumn;
    cxGridDBTableView1USL: TcxGridDBColumn;
    cxGridDBTableView1KARTW: TcxGridDBColumn;
    cxGridDBTableView1KWNI: TcxGridDBColumn;
    cxGridDBTableView1LPW: TcxGridDBColumn;
    cxGridDBTableView1ED_IZM: TcxGridDBColumn;
    cxGridDBTableView1NM: TcxGridDBColumn;
    cxGridDBTableView1NM1: TcxGridDBColumn;
    cxGridDBTableView1USL_P: TcxGridDBColumn;
    cxGridDBTableView1SPTARN: TcxGridDBColumn;
    cxGridDBTableView1USL_TYPE: TcxGridDBColumn;
    cxGridDBTableView1USL_PLR: TcxGridDBColumn;
    cxGridDBTableView1USL_NORM: TcxGridDBColumn;
    cxGridDBTableView1TYP_USL: TcxGridDBColumn;
    cxGridDBTableView1USL_ORDER: TcxGridDBColumn;
    cxGridDBTableView1USL_TYPE2: TcxGridDBColumn;
    cxGridDBTableView1USL_SUBS: TcxGridDBColumn;
    cxGridDBTableView1NM2: TcxGridDBColumn;
    cxGridDBTableView1NM3: TcxGridDBColumn;
    cxGridDBTableView1CD: TcxGridDBColumn;
    cxGridDBTableView1NPP: TcxGridDBColumn;
    cxGridDBTableView1FK_CALC_TP: TcxGridDBColumn;
    cxGridDBTableView1USLG: TcxGridDBColumn;
    cxGridDBTableView1COUNTER: TcxGridDBColumn;
    cxGridDBTableView1HAVE_VVOD: TcxGridDBColumn;
    cxGridDBTableView1N_PROGS: TcxGridDBColumn;
    cxGridDBTableView1FK_USL_PEN: TcxGridDBColumn;
    cxGridDBTableView1CAN_VV: TcxGridDBColumn;
    cxGridDBTableView1IS_ITER: TcxGridDBColumn;
    cxGridDBTableView1MAX_VOL: TcxGridDBColumn;
    cxGridDBTableView1FK_USL_CHLD: TcxGridDBColumn;
    cxGridDBTableView1FRC_GET_PRICE: TcxGridDBColumn;
    cxGridDBTableView1USL_EMPT: TcxGridDBColumn;
    cxGridDBTableView1PARENT_USL: TcxGridDBColumn;
    cxGridDBTableView1CHRG_ROUND: TcxGridDBColumn;
    cxGridDBTableView1BILL_BRAKE: TcxGridDBColumn;
    cxGridDBTableView1IS_SWP_PEN_ORG: TcxGridDBColumn;
    cxGridDBTableView1FOR_ARCH: TcxGridDBColumn;
    cxGridDBTableView1LINKED_USL: TcxGridDBColumn;
    cxGridDBTableView1IDS: TcxGridDBColumn;
    cxGridDBTableView1TP_PEN_DT: TcxGridDBColumn;
    cxGridDBTableView1TP_PEN_REF: TcxGridDBColumn;
    cxGridDBTableView1USL_VOL: TcxGridDBColumn;
    cxGridDBTableView1BILL_COL: TcxGridDBColumn;
    cxGridDBTableView1BILL_COL2: TcxGridDBColumn;
    cxGridDBTableView1NM_SHORT: TcxGridDBColumn;
    cxGridDBTableView1USE_VOL_CAN: TcxGridDBColumn;
    cxGridDBTableView1HIDE_CHRG: TcxGridDBColumn;
    cxGridDBTableView1USLM_GROUP1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    flt_:string;
  public
    { Public declarations }
  end;

var
  Form_spr_usl: TForm_spr_usl;

implementation

uses Unit_add_usl, DM_module1;

{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_usl do
 begin
  if not (OD_usl.State in [dsBrowse]) then
   OD_usl.Post;
   OD_usl.Session.ApplyUpdates([OD_usl], True);
   OD_usl.Session.Commit;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_usl do
 begin
  if not (OD_usl.State in [dsBrowse]) then
   OD_usl.Post;
  if (OD_usl.UpdatesPending=true) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      exit_ok;
    end
    else
    begin
    if not (OD_usl.State in [dsBrowse]) then
      OD_usl.Cancel;
    OD_usl.CancelUpdates;
    OD_usl.Session.Rollback;
    end;
  end;
  end;
end;

procedure TForm_spr_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  exit_cancel;
  Action:=caFree;
end;


procedure TForm_spr_usl.FormCreate(Sender: TObject);
begin
  with OD_usl do
  begin
   SetVariable('varflt_', 0);
   Active:=False;
   Active:=True;
  end;

  OD_uslm.Active:=true;
  OD_usl_bills.Active:=true;
end;

procedure TForm_spr_usl.N1Click(Sender: TObject);
begin
  Application.CreateForm(TForm_add_usl, Form_add_usl);
  Form_add_usl.ShowModal;
end;

procedure TForm_spr_usl.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_spr_usl.N2Click(Sender: TObject);
begin
  if msg3('Удалить данную услугу?',
   'Внимание!',
     MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
      if msg3('БУДЕТ УДАЛЕНА ДЕЙСТВУЮЩАЯ УСЛУГА "'+
       Form_spr_usl.OD_usl.FieldByName('nm').AsString+'" ПОДТВЕРДИТЕ УДАЛЕНИЕ!',
       'Внимание!',
         MB_YESNO+MB_ICONSTOP) = IDYES then
      begin
        DataModule1.OraclePackage1.CallProcedure(
            'scott.utils.del_usl',
            [Form_spr_usl.OD_usl.FieldByName('usl').AsString]);
        OD_usl.Active:=False;
        OD_usl.Active:=True;
      end
      else
      begin
        msg2('Удаление услуги отменено!',
         'Внимание!', MB_OK+MB_ICONINFORMATION);
      end;
  end
  else
  begin
    msg2('Удаление услуги отменено!',
     'Внимание!', MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TForm_spr_usl.N3Click(Sender: TObject);
begin
  if msg3('Удалить главную услугу?',
   'Внимание!',
     MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
      if msg3('БУДЕТ УДАЛЕНА ГЛАВНАЯ УСЛУГА "'+
       Form_spr_usl.OD_uslm.FieldByName('nm1').AsString+'" ПОДТВЕРДИТЕ УДАЛЕНИЕ!',
       'Внимание!',
         MB_YESNO+MB_ICONSTOP) = IDYES then
      begin
        DataModule1.OraclePackage1.CallProcedure(
            'scott.utils.del_uslm',
            [Form_spr_usl.OD_uslm.FieldByName('uslm').AsString]);
        OD_uslm.Active:=False;
        OD_uslm.Active:=True;
      end
      else
      begin
        msg2('Удаление главной услуги отменено!',
         'Внимание!', MB_OK+MB_ICONINFORMATION);
      end;
  end
  else
  begin
    msg2('Удаление главной услуги отменено!',
     'Внимание!', MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TForm_spr_usl.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled:=False;
  if flt_ <> Edit1.Text then
  begin
    flt_:=Edit1.Text;
  end
  else if ((flt_ = Edit1.Text) and (flt_<>'')
    and (flt_ <> OD_usl.GetVariable('flt_')))
     then
  begin
  //Применить фильтр по выражению
    OD_usl.Active:=false;
    OD_usl.SetVariable('varflt_', 1);
    OD_usl.SetVariable('flt_', flt_);
    OD_usl.Active:=true;
  end
  else if (OD_usl.GetVariable('varflt_')=1) and (flt_='') then
  begin
  //Отменить фильтр по выражению
    OD_usl.Active:=false;
    OD_usl.SetVariable('varflt_', 0);
    OD_usl.Active:=true;
  end;
  Timer2.Enabled:=True;
end;

procedure TForm_spr_usl.Edit1Change(Sender: TObject);
begin
  Timer2.Enabled:=false;
  Timer2.Enabled:=true;
end;

procedure TForm_spr_usl.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
     OD_usl.ReadOnly:=false
  else
     OD_usl.ReadOnly:=true;

end;

end.
