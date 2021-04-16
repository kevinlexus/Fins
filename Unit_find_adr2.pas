unit Unit_find_adr2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrlsEh, DB, OracleData, wwdblook, Buttons, ImgList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxClasses,
  cxPropertiesStore, cxGroupBox, ExtCtrls, cxDBData, cxFilterControl, cxCustomData,
  cxFilter,  
  cxGridCustomView, cxGrid, cxDBExtLookupComboBox, cxStyles, cxData,
  cxDataStorage, cxNavigator, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Utils, StrUtils;

type
  TForm_find_adr2 = class(TForm)
    Button1: TButton;
    OD_streets: TOracleDataSet;
    DS_streets: TDataSource;
    OD_houses: TOracleDataSet;
    DS_houses: TDataSource;
    OD_kw: TOracleDataSet;
    DS_kw: TDataSource;
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
    OD_streetsFIND_STREET: TFloatField;
    OD_housesPSCH: TFloatField;
    OD_t_org: TOracleDataSet;
    DS_t_org: TDataSource;
    OD_housesKUL: TStringField;
    cxPropertiesStore1: TcxPropertiesStore;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel1: TPanel;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    lkpUk: TcxLookupComboBox;
    chk1: TCheckBox;
    chk2: TCheckBox;
    lkpKw: TcxLookupComboBox;
    lkpHouse: TcxLookupComboBox;
    lkpStreet: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    cxPropertiesStore2: TcxPropertiesStore;
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
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure lkpStreetPropertiesEditValueChanged(Sender: TObject);
    procedure lkpHousePropertiesEditValueChanged(Sender: TObject);
    procedure lkpStreetPropertiesChange(Sender: TObject);
    procedure lkpStreetPropertiesCloseUp(Sender: TObject);
    procedure lkpStreetExit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure SetAccess(is_flt_reu_: Integer;
      is_flt_kul_: Integer;
      is_flt_house_: Integer;
      is_flt_kw_: Integer);
  end;

var
  Form_find_adr2: TForm_find_adr2;

implementation

uses DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_find_adr2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_find_adr2.SetAccess(is_flt_reu_: Integer;
  is_flt_kul_: Integer;
  is_flt_house_: Integer;
  is_flt_kw_: Integer);
begin
  //Установки фильтра
  chk1.Visible := False;

  if is_flt_reu_ = 1 then
  begin
    lkpUk.Visible := True;
  end;
  if is_flt_kul_ = 1 then
  begin
    lkpStreet.Visible := True;
  end;
  if is_flt_house_ = 1 then
  begin
    lkpHouse.Visible := True;
  end;
  if is_flt_kw_ = 1 then
  begin
    lkpKw.Visible := True;
    chk1.Visible := True;
  end;
end;

procedure TForm_find_adr2.Button1Click(Sender: TObject);
var
  house_id_,kartType: Integer;
  lsk: string;
begin
  Form_Main.cl_flt;
  Form_Main.search_type_ := 0;
  Form_Main.flt_single_house_ := -1;
  Form_Main.flt_reu_ := '';
  Form_Main.flt_klsk_premise := -1;
  Form_Main.flt_els_ := '';
  Form_Main.k_lsk_id_ := -1;
  Form_Main.kul_ := '';
  Form_Main.nd_ := '';
  Form_Main.Lsk_ := '';
  Form_Main.fio_ := '';
  Form_Main.isNotMain := false;
  Form_Main.isClosed := false;
  
  if not chk1.Checked then
    Form_Main.isNotMain := true;
  if not chk2.Checked then
    Form_Main.isClosed := true;
    

  if RadioButton1.Checked then
  begin
    //поиск по УК?
    if lkpUk.EditValue <> Null then
    begin
      Form_Main.flt_reu_ := OD_t_org.FieldByName('reu').asString;
      Form_Main.search_type_ := 6;
    end;

    //поиск с точностью до улицы?
    if lkpStreet.EditValue <> Null then
    begin
      Form_Main.kul_ := lkpStreet.EditValue;
      Form_Main.flt_kul_ := lkpStreet.EditValue;
      Form_Main.search_type_ := 1;
    end;

    //поиск с точностью до дома?
    if lkpHouse.EditValue <> Null then
    begin
      Form_Main.flt_reu_ := OD_t_org.FieldByName('reu').asString;
      Form_Main.kul_ := OD_streets.FieldByName('id').asString;
      Form_Main.nd_ := OD_houses.FieldByName('nd_id').asString;
      Form_Main.flt_nd_ := OD_houses.FieldByName('nd_id').asString;
      Form_Main.search_type_ := 2;
    end;

    //поиск с точностью до квартиры?
    if lkpKw.EditValue <> Null then
    begin
      Form_Main.Lsk_ := OD_kw.FieldByName('lsk').asString;
      Form_Main.flt_kw_ := OD_kw.FieldByName('kw_id').asString;
      Form_Main.k_lsk_id_ := DataModule1.OraclePackage1.CallStringFunction(
        'scott.UTILS.GET_K_LSK_ID_BY_LSK', [OD_kw.FieldByName('lsk').asString]);
      Form_Main.fio_ := OD_kw.FieldByName('fio').asString;
      Form_Main.str_adr_ := OD_streets.FieldByName('street').asString + ', ' +
        OD_houses.FieldByName('nd2').asString + '-' +
        OD_kw.FieldByName('kw').asString;

      Form_Main.kul_ := OD_streets.FieldByName('id').asString;
      Form_Main.nd_ := OD_houses.FieldByName('nd_id').asString;
      Form_Main.kw_ := OD_kw.FieldByName('kw_id').asString;
      Form_Main.search_type_ := 3;
    end;
  end
  else
  begin
    // по ID дома
    if Edit1.Text <> '' then
    begin
      Form_Main.flt_single_house_ := StrToInt(Edit1.Text);
      Form_Main.search_type_ := 7;
    end
    else if Edit2.Text <> '' then
    begin
      // по ID помещения
      Form_Main.flt_klsk_premise := StrToInt(Edit2.Text);
      Form_Main.search_type_ := 8;
    end
    else if Edit3.Text <> '' then
    begin
      // по фин.лиц.сч.
      Form_Main.flt_k_lsk_id_ := StrToInt(Edit3.Text);
      Form_Main.search_type_ := 3;
    end
    else if Edit4.Text <> '' then
    begin
      // по ЕЛС
      Form_Main.flt_els_ := Edit4.Text;
      Form_Main.search_type_ := 9;
    end
    else if Edit5.Text <> '' then
    begin
      // по Лиц.счету (найти klsk)
      lsk := RightStr('00000000' + Trim(Edit5.Text), 8);
      Form_Main.flt_k_lsk_id_ := DataModule1.OraclePackage1.CallIntegerFunction(
        'scott.utils.get_k_lsk_id_by_lsk',
        [lsk]);
      Form_Main.search_type_ := 10;
      kartType := DataModule1.OraclePackage1.CallIntegerFunction(
          'scott.utils_ext.get_type_of_kart',
             [lsk]);
      if (kartType = 0) or (kartType = 10) then
        Form_Main.isClosed := True
      else
        Form_Main.isClosed := False;
        
      if (kartType = 0) or (kartType = 1) then
        Form_Main.isNotMain := True
      else
        Form_Main.isNotMain := False;
             
    end;
  end;
end;

procedure TForm_find_adr2.FormCreate(Sender: TObject);
begin
  // вернуть сохранённые значения контролов
  cxPropertiesStore1.Active := True;
  cxPropertiesStore1.RestoreFrom;

  OD_t_org.active := true;

  OD_streets.active := false;
  OD_streets.SetVariable('var', 0);
  OD_streets.active := true;

  if OD_streets.FieldByName('FIND_STREET').AsInteger = 1 then
  begin
    BitBtn1.Caption := 'Aб';
  end
  else
  begin
    BitBtn1.Caption := '12';
  end;

  OD_houses.active := false;
  OD_houses.SetVariable('p_var2', 1);
  OD_houses.active := true;

  OD_kw.active := false;
  OD_kw.SetVariable('p_var', 1);
  OD_kw.SetVariable('p_var2', 1);
  OD_kw.active := true;
  Windows.SetFocus(lkpStreet.Handle)

end;

procedure TForm_find_adr2.BitBtn1Click(Sender: TObject);
begin
  if OD_streets.GetVariable('var') = 0 then
  begin
    if OD_streets.FieldByName('FIND_STREET').AsInteger = 1 then
    begin
      BitBtn1.Caption := '12';
      OD_streets.SetVariable('var', 2);
    end
    else
    begin
      BitBtn1.Caption := 'Аб';
      OD_streets.SetVariable('var', 1);
    end;
  end
  else if OD_streets.GetVariable('var') = 1 then
  begin
    BitBtn1.Caption := '12';
    OD_streets.SetVariable('var', 2);
  end
  else if OD_streets.GetVariable('var') = 2 then
  begin
    BitBtn1.Caption := 'Аб';
    OD_streets.SetVariable('var', 1);
  end;
  OD_streets.active := false;
  OD_streets.active := true;
end;

procedure TForm_find_adr2.chk1Click(Sender: TObject);
begin
  if chk1.Checked = True then
  begin
    OD_kw.active := false;
    OD_kw.SetVariable('p_var', 1);
    OD_kw.active := true;
  end
  else
  begin
    OD_kw.active := false;
    OD_kw.SetVariable('p_var', 0);
    OD_kw.active := true;
  end;

end;

procedure TForm_find_adr2.chk2Click(Sender: TObject);
begin
  if chk2.Checked = True then
  begin
    OD_kw.active := false;
    OD_kw.SetVariable('p_var2', 1);
    OD_kw.active := true;

    OD_houses.active := false;
    OD_houses.SetVariable('p_var2', 1);
    OD_houses.active := true;
  end
  else
  begin
    OD_kw.active := false;
    OD_kw.SetVariable('p_var2', 0);
    OD_kw.active := true;

    OD_houses.active := false;
    OD_houses.SetVariable('p_var2', 0);
    OD_houses.active := true;
  end;

end;

procedure TForm_find_adr2.lkpHouseKeyPress(Sender: TObject;
  var Key: Char);
begin
  try
    if (Key = #13) or (Key = #9) then
    begin
      if lkpKw.Properties.ReadOnly = False then
        Windows.SetFocus(lkpKw.Handle);
    end;
  except
  end;
end;

procedure TForm_find_adr2.lkpStreetKeyPress(Sender: TObject;
  var Key: Char);
begin
  try
    if (Key = #13) or (Key = #9) then
    begin
      Windows.SetFocus(lkpHouse.Handle)
    end;
  except
  end;
end;

procedure TForm_find_adr2.cxLookupComboBox4PropertiesChange(
  Sender: TObject);
begin
  with OD_houses do
  begin
    Active := False;
    SetVariable('flt_reu_',
      OD_t_org.FieldByName('reu').AsString);
    Active := True;
  end;

end;

procedure TForm_find_adr2.lkpUkKeyPress(Sender: TObject;
  var Key: Char);
begin
  try
    if (Key = #13) or (Key = #9) then
      lkpStreet.SetFocus;
  except
  end;
end;

procedure TForm_find_adr2.lkpKwKeyPress(Sender: TObject;
  var Key: Char);
begin
  try
    if (Key = #13) or (Key = #9) then
      Windows.SetFocus(Button1.Handle);
  except
  end;
end;

procedure TForm_find_adr2.RadioButton1Click(Sender: TObject);
begin
  cxGroupBox1.Enabled := true;
  cxGroupBox1.PanelStyle.Active := True;
  cxGroupBox2.Enabled := false;
  cxGroupBox2.PanelStyle.Active := False;
end;

procedure TForm_find_adr2.RadioButton2Click(Sender: TObject);
begin
  cxGroupBox1.Enabled := false;
  cxGroupBox1.PanelStyle.Active := False;
  cxGroupBox2.Enabled := true;
  cxGroupBox2.PanelStyle.Active := True;
end;

procedure TForm_find_adr2.RadioButton3Click(Sender: TObject);
begin
  Edit1.Enabled := True;
  Edit2.Enabled := False;
  Edit3.Enabled := False;
end;

procedure TForm_find_adr2.RadioButton4Click(Sender: TObject);
begin
  Edit1.Enabled := False;
  Edit2.Enabled := True;
  Edit3.Enabled := False;

end;

procedure TForm_find_adr2.RadioButton5Click(Sender: TObject);
begin
  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := True;

end;

procedure TForm_find_adr2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    ModalResult := mrAbort;
    Key := #0;
    Close;
  end;

end;

procedure TForm_find_adr2.Panel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cxGroupBox1.Enabled := False;
  cxGroupBox2.Enabled := True;
end;

procedure TForm_find_adr2.Panel2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cxGroupBox1.Enabled := True;
  cxGroupBox2.Enabled := False;

end;

procedure TForm_find_adr2.Panel1Click(Sender: TObject);
begin
  cxGroupBox1.Enabled := False;
  cxGroupBox2.Enabled := True;
  RadioButton1.Checked := False;
  RadioButton2.Checked := True;
end;

procedure TForm_find_adr2.Panel2Click(Sender: TObject);
begin
  cxGroupBox1.Enabled := True;
  cxGroupBox2.Enabled := False;
  RadioButton1.Checked := True;
  RadioButton2.Checked := False;

end;

procedure TForm_find_adr2.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  try
    if (Key = #13) or (Key = #9) then
      Windows.SetFocus(Button1.Handle);
  except
  end;

end;

procedure TForm_find_adr2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  try
    if (Key = #13) or (Key = #9) then
      Windows.SetFocus(Button1.Handle);
  except
  end;

end;

procedure TForm_find_adr2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  try
    if (Key = #13) or (Key = #9) then
      Windows.SetFocus(Button1.Handle);
  except
  end;

end;

procedure TForm_find_adr2.Edit1Change(Sender: TObject);
begin
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
end;

procedure TForm_find_adr2.Edit2Change(Sender: TObject);
begin
  Edit1.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
end;

procedure TForm_find_adr2.Edit3Change(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
end;

procedure TForm_find_adr2.Edit4Change(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit5.Text := '';
end;

procedure TForm_find_adr2.Edit5Change(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
end;

procedure TForm_find_adr2.lkpStreetPropertiesEditValueChanged(
  Sender: TObject);
begin
  lkpHouse.EditValue := Null;
  lkpKw.EditValue := Null;
  if lkpStreet.EditValue <> Null then
    lkpHouse.Properties.ReadOnly := False;
end;

procedure TForm_find_adr2.lkpHousePropertiesEditValueChanged(
  Sender: TObject);
begin
  lkpKw.EditValue := Null;
  if lkpHouse.EditValue <> Null then
    lkpKw.Properties.ReadOnly := False;

end;


procedure TForm_find_adr2.lkpStreetPropertiesChange(Sender: TObject);
var
  S: TcxDBLookupComboBox;
begin
  S := TcxDBLookupComboBox(Sender);
  ApplySearchFilter(S.Properties.DataController, S.Properties.ListFieldNames, S.Text);

  // для тестирования
  cxLabel1.Caption := S.Properties.DataController.Filter.FilterText;

end;

procedure TForm_find_adr2.lkpStreetPropertiesCloseUp(Sender: TObject);
begin
{  OD_houses.SetVariable('kul',lkpStreet.EditValue);
  OD_houses.Active:=False;
  OD_houses.Active:=True;}
end;

procedure TForm_find_adr2.lkpStreetExit(Sender: TObject);
begin
      OD_houses.SetVariable('kul',lkpStreet.EditValue);
      OD_houses.Active:=False;
      OD_houses.Active:=True;

end;

procedure TForm_find_adr2.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 try
    if (Key = #13) or (Key = #9) then
      Windows.SetFocus(Button1.Handle);
  except
  end;
end;


procedure TForm_find_adr2.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
 try
    if (Key = #13) or (Key = #9) then
      Windows.SetFocus(Button1.Handle);
  except
  end;
end;

end.

