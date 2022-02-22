unit Unit_spr_prices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, 
  ExtCtrls, Menus, Grids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_spr_prices = class(TForm)
    OD_prices: TOracleDataSet;
    OD_pricesUSL: TStringField;
    OD_pricesSUMMA: TFloatField;
    OD_pricesNM: TStringField;
    OD_pricesSUMMA2: TFloatField;
    OD_pricesFK_ORG: TFloatField;
    OD_pricesSUMMA3: TFloatField;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button4: TButton;
    OD_t_org2: TOracleDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Button5: TButton;
    OD_pricesNAME: TStringField;
    N2: TMenuItem;
    OD_t_org2GR_NAME: TStringField;
    DS_t_org2: TDataSource;
    cbbOrg: TcxLookupComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1USL: TcxGridDBColumn;
    cxGrid1DBTableView1NM: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA3: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA2: TcxGridDBColumn;
    cxGrid1DBTableView1FK_ORG: TcxGridDBColumn;
    DS_prices: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure state_arch2(mgold_: String);
    procedure N1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure OD_pricesBeforeEdit(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure cbbOrgPropertiesCloseUp(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
  public
    upd_: Integer;
  end;

var
  Form_spr_prices: TForm_spr_prices;

implementation
  uses Utils, Unit_Mainform, Unit_price_copy, DM_module1;
{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_prices do
 begin
   if not (OD_prices.State in [dsBrowse]) then
     OD_prices.Post;
   OD_prices.Session.Commit;
   Button5.Enabled:=False;
   upd_:=0;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_prices do
 begin
  if (upd_=1) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      exit_ok;
    end
    else
    begin
    if not (OD_prices.State in [dsBrowse]) then
      OD_prices.Cancel;
    OD_prices.Session.Rollback;
    upd_:=0;
    end;
  end;
 end;
end;

procedure TForm_spr_prices.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if upd_ <> 0 then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_prices.FormCreate(Sender: TObject);
begin
  upd_:=0;
  OD_t_org2.Active:=True;

  OD_prices.Active:=False;
  OD_prices.SetVariable('var_',-1);
  OD_prices.Active:=True;

  state_arch2('');
end;

procedure TForm_spr_prices.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_spr_prices.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_spr_prices.state_arch2(mgold_: String);
begin // смена состояний формы
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
      Caption:='Справочник расценок - Архив';
      change_alias(OD_prices,'scott.prices',
        '(select * from scott.a_prices where mg='''+Form_main.arch_mg_+''')');
      OD_prices.ReadOnly:=True;
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
      Caption:='Справочник расценок';
      change_alias(OD_prices,
        '(select * from scott.a_prices where mg='''+mgold_+''')',
        'scott.prices');
      OD_prices.ReadOnly:=False;
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
      Caption:='Справочник расценок - Архив';
      change_alias(OD_prices,
        '(select * from scott.a_prices where mg='''+mgold_+''')',
        '(select * from scott.a_prices where mg='''+Form_main.arch_mg_+''')');
      OD_prices.ReadOnly:=True;
  end;
end;


procedure TForm_spr_prices.N1Click(Sender: TObject);
begin
  Application.CreateForm(TForm_price_copy, Form_price_copy);
  Form_price_copy.ShowModal;
end;

procedure TForm_spr_prices.Button5Click(Sender: TObject);
begin
  exit_ok;
end;

procedure TForm_spr_prices.OD_pricesBeforeEdit(DataSet: TDataSet);
begin
  upd_:=1;
  Button5.Enabled:=True;
end;

procedure TForm_spr_prices.N2Click(Sender: TObject);
begin
  if msg3('Удалить расценку из организации?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
   ID_YES then
  begin
    with Form_spr_prices
    do begin
//    upd_ -- это позор. надо использовать updatependings и cashedupdates 
    upd_:=1;
    Button5.Enabled:=True;
    DataModule1.OraclePackage1.CallProcedure(
    'scott.UTILS.del_price',
    [OD_prices.FieldByName('usl').AsString,
     OD_prices.FieldByName('fk_org').AsString]);
    msg2('Расценка удалена', 'Внимание!', MB_OK+MB_ICONINFORMATION);
    OD_prices.Active:=False;
    OD_prices.Active:=True;
    end;
  end;
end;

procedure TForm_spr_prices.PopupMenu1Popup(Sender: TObject);
begin
  with OD_prices do
  begin
    if FieldByName('fk_org').AsString = '' then
    begin
//    N1.Enabled:=True;
    N2.Enabled:=False;
    end
    else
    begin
//    N1.Enabled:=False;
    N2.Enabled:=True;
    end;
  end;
end;

procedure TForm_spr_prices.cbbOrgPropertiesCloseUp(Sender: TObject);
begin
  //Установка фильтра
  with OD_prices do
  begin
  if (OD_t_org2.FieldByName('id').AsInteger = 0) then
    begin
    //Все расценки
    SetVariable('var_', OD_t_org2.FieldByName('id').AsInteger);
    end
    else if (OD_t_org2.FieldByName('id').AsInteger = -1) then
    begin
    //Базовые расценки
    SetVariable('var_', OD_t_org2.FieldByName('id').AsInteger);
    end
    else
    begin
    //Расценки по организации
    SetVariable('var_',1);
    end;
    Active:=False;
    Active:=True;
  end;
end;

procedure TForm_spr_prices.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

end.

