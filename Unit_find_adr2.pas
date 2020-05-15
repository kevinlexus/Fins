unit Unit_find_adr2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrlsEh, DB, OracleData, wwdblook, Buttons, ImgList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxClasses,
  cxPropertiesStore;

type
  TForm_find_adr2 = class(TForm)
    Button1: TButton;
    OD_streets: TOracleDataSet;
    DS_streets: TDataSource;
    OD_houses: TOracleDataSet;
    DS_houses: TDataSource;
    OD_kw: TOracleDataSet;
    DS_kw: TDataSource;
    Button2: TButton;
    OD_housesND: TStringField;
    OD_housesND2: TStringField;
    OD_housesND_ID: TStringField;
    OD_kwKW_ID: TStringField;
    OD_kwFIO: TStringField;
    OD_streetsID: TStringField;
    OD_streetsNAME: TStringField;
    OD_streetsSTREET: TStringField;
    OD_kwKW: TStringField;
    OD_kwLSK: TStringField;
    BitBtn1: TBitBtn;
    OD_streetsFIND_STREET: TFloatField;
    OD_housesPSCH: TFloatField;
    OD_t_org: TOracleDataSet;
    DS_t_org: TDataSource;
    chk1: TCheckBox;
    chk2: TCheckBox;
    OD_housesKUL: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    lkpHouse: TcxLookupComboBox;
    lkpKw: TcxLookupComboBox;
    lkpStreet: TcxLookupComboBox;
    lkpUk: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure lkpHouseKeyPress(Sender: TObject; var Key: Char);
    procedure lkpStreetKeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox4PropertiesChange(Sender: TObject);
    procedure lkpUkKeyPress(Sender: TObject; var Key: Char);
    procedure lkpKwKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure SetAccess(is_flt_reu_:Integer;
        is_flt_kul_:Integer;
        is_flt_house_:Integer;
        is_flt_kw_:Integer);
  end;

var
  Form_find_adr2: TForm_find_adr2;

implementation

uses DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_find_adr2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_find_adr2.SetAccess(is_flt_reu_:Integer;
    is_flt_kul_:Integer;
    is_flt_house_:Integer;
    is_flt_kw_:Integer);
begin
  //Установки фильтра
  chk1.Visible:=False;

  if is_flt_reu_ = 1 then
  begin
     lkpUk.Visible:=True;
  end;
  if is_flt_kul_ = 1 then
  begin
     lkpStreet.Visible:=True;
  end;
  if is_flt_house_ = 1 then
  begin
     lkpHouse.Visible:=True;
  end;
  if is_flt_kw_ = 1 then
  begin
     lkpKw.Visible:=True;
     chk1.Visible:=True;
  end;
end;

procedure TForm_find_adr2.Button1Click(Sender: TObject);
var
  house_id_: Integer;
begin
  Form_Main.cl_flt;
  Form_Main.search_type_:=0;
  //поиск по УК?
 if cxLookupComboBox4.EditValue <> Null then
 begin
   Form_Main.flt_reu_:=OD_t_org.FieldByName('reu').asString;
   Form_Main.search_type_:=6;
 end
 else
 begin
   //не введен критерий поиска
   Form_Main.flt_reu_:='';
 end;

 if Edit1.Text <> '' then
 begin
   Form_Main.flt_single_house_:=StrToInt(Edit1.Text);
   Form_Main.search_type_:=7;
 end
 else
 begin
   //не введен критерий поиска
   Form_Main.flt_single_house_:=-1;
 end;

  //поиск с точностью до улицы?
 if lkpStreet.EditValue <> Null then
 begin
   Form_Main.kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.flt_kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.search_type_:=1;
 end
 else
 begin
   //не введен критерий поиска
   Form_Main.kul_:='';
 end;

  //поиск с точностью до дома?
 if lkpHouse.EditValue <> Null then
 begin
   Form_Main.flt_reu_:=OD_t_org.FieldByName('reu').asString;
   Form_Main.kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.nd_:=OD_houses.FieldByName('nd_id').asString;
   Form_Main.flt_nd_:=OD_houses.FieldByName('nd_id').asString;
   Form_Main.search_type_:=2;
 end
 else
 begin
   // не введен критерий поиска
   Form_Main.nd_:='';
 end;

 //поиск с точностью до квартиры?
 if lkpKw.EditValue <> Null then
 begin
   Form_Main.Lsk_:=OD_kw.FieldByName('lsk').asString;
   Form_Main.flt_kw_:=OD_kw.FieldByName('kw_id').asString;
   Form_Main.k_lsk_id_:=DataModule1.OraclePackage1.CallStringFunction(
        'scott.UTILS.GET_K_LSK_ID_BY_LSK', [OD_kw.FieldByName('lsk').asString]);
   Form_Main.fio_:=OD_kw.FieldByName('fio').asString;
   Form_Main.str_adr_:=OD_streets.FieldByName('street').asString+', '+
     OD_houses.FieldByName('nd2').asString+'-'+
     OD_kw.FieldByName('kw').asString;

   Form_Main.kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.nd_:=OD_houses.FieldByName('nd_id').asString;
   Form_Main.kw_:=OD_kw.FieldByName('kw_id').asString;

   Form_Main.search_type_:=3;
 end
 else
 begin
   //не выбрана квартира
   Form_Main.Lsk_:='';
   Form_Main.k_lsk_id_:=-1;
   Form_Main.fio_:='';
   Form_Main.str_adr_:=OD_streets.FieldByName('street').asString+', '+
     OD_houses.FieldByName('nd2').asString;
 end;
end;

procedure TForm_find_adr2.FormCreate(Sender: TObject);
begin
  // вернуть сохранённые значения контролов
  cxPropertiesStore1.Active := True;
  cxPropertiesStore1.RestoreFrom;
  
  OD_t_org.active:=true;

  OD_streets.active:=false;
  OD_streets.SetVariable('var', 0);
  OD_streets.active:=true;

  if OD_streets.FieldByName('FIND_STREET').AsInteger = 1 then
  begin
    BitBtn1.Caption:='Aб';
  end
     else
  begin
    BitBtn1.Caption:='12';
  end;

  OD_houses.active:=false;
  OD_houses.SetVariable('p_var2', 1);
  OD_houses.active:=true;

  OD_kw.active:=false;
  OD_kw.SetVariable('p_var', 1);
  OD_kw.SetVariable('p_var2', 1);
  OD_kw.active:=true;
end;

procedure TForm_find_adr2.BitBtn1Click(Sender: TObject);
begin
  if OD_streets.GetVariable('var') =0 then
  begin
    if OD_streets.FieldByName('FIND_STREET').AsInteger = 1 then
    begin
      BitBtn1.Caption:='12';
      OD_streets.SetVariable('var', 2);
    end
       else
    begin
      BitBtn1.Caption:='Аб';
      OD_streets.SetVariable('var', 1);
    end;
  end
  else if OD_streets.GetVariable('var') =1 then
  begin
    BitBtn1.Caption:='12';
    OD_streets.SetVariable('var', 2);
  end
  else if OD_streets.GetVariable('var') =2 then
  begin
    BitBtn1.Caption:='Аб';
    OD_streets.SetVariable('var', 1);
  end;
  OD_streets.active:=false;
  OD_streets.active:=true;
end;

procedure TForm_find_adr2.chk1Click(Sender: TObject);
begin
 if chk1.Checked=True then
 begin
  OD_kw.active:=false;
  OD_kw.SetVariable('p_var', 1);
  OD_kw.active:=true;
 end
 else
 begin
  OD_kw.active:=false;
  OD_kw.SetVariable('p_var', 0);
  OD_kw.active:=true;
 end;

end;

procedure TForm_find_adr2.chk2Click(Sender: TObject);
begin
 if chk2.Checked=True then
 begin
  OD_kw.active:=false;
  OD_kw.SetVariable('p_var2', 1);
  OD_kw.active:=true;

  OD_houses.active:=false;
  OD_houses.SetVariable('p_var2', 1);
  OD_houses.active:=true;
 end
 else
 begin
  OD_kw.active:=false;
  OD_kw.SetVariable('p_var2', 0);
  OD_kw.active:=true;

  OD_houses.active:=false;
  OD_houses.SetVariable('p_var2', 0);
  OD_houses.active:=true;
 end;

end;

procedure TForm_find_adr2.lkpHouseKeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
  begin
    if lkpKw.Enabled = True then
      Windows.SetFocus(lkpKw.Handle) else
      Windows.SetFocus(Button1.Handle);
  end;
  except
  end;
end;

procedure TForm_find_adr2.lkpStreetKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Windows.SetFocus(lkpHouse.Handle)

end;

procedure TForm_find_adr2.cxLookupComboBox4PropertiesChange(
  Sender: TObject);
begin
  with OD_houses do
  begin
    Active:=False;
    SetVariable('flt_reu_',
      OD_t_org.FieldByName('reu').AsString);
    Active:=True;
  end;

end;

procedure TForm_find_adr2.lkpUkKeyPress(Sender: TObject;
  var Key: Char);
begin
try
  if Key = #13 then
    lkpStreet.SetFocus;
  except
  end;
end;

procedure TForm_find_adr2.lkpKwKeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
     Windows.SetFocus(Button1.Handle);
  except
  end;
end;

end.
