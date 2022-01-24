unit Unit_find_adr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, Buttons, ImgList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TForm_find_adr = class(TForm)
    Button1: TButton;
    OD_streets: TOracleDataSet;
    DS_streets: TDataSource;
    OD_houses: TOracleDataSet;
    DS_houses: TDataSource;
    OD_kw: TOracleDataSet;
    DS_kw: TDataSource;
    Button2: TButton;
    OD_housesREU: TStringField;
    OD_housesND: TStringField;
    OD_housesND2: TStringField;
    OD_housesND_ID: TStringField;
    OD_housesHOUSE_ID: TFloatField;
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
    cbbUk: TcxLookupComboBox;
    cbbStreet: TcxLookupComboBox;
    cbbNd: TcxLookupComboBox;
    cbbKw: TcxLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure setAddrToFormMain;
    procedure cbbStreetPropertiesChange(Sender: TObject);
    procedure cbbUkKeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cbbNdKeyPress(Sender: TObject; var Key: Char);
    procedure cbbKwKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure SetAccess(is_flt_reu_:Integer;
        is_flt_kul_:Integer;
        is_flt_house_:Integer;
        is_flt_kw_:Integer);
  end;

var
  Form_find_adr: TForm_find_adr;

implementation

uses DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_find_adr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_find_adr.SetAccess(is_flt_reu_:Integer;
    is_flt_kul_:Integer;
    is_flt_house_:Integer;
    is_flt_kw_:Integer);
begin
  //��������� �������
  cbbUk.Visible:=False;
  cbbStreet.Visible:=False;
  cbbNd.Visible:=False;
  cbbKw.Visible:=False;
  chk1.Visible:=False;

  if is_flt_reu_ = 1 then
  begin
     cbbUk.Visible:=True;
  end;
  if is_flt_kul_ = 1 then
  begin
     cbbStreet.Visible:=True;
  end;
  if is_flt_house_ = 1 then
  begin
     cbbNd.Visible:=True;
  end;
  if is_flt_kw_ = 1 then
  begin
     cbbKw.Visible:=True;
     chk1.Visible:=True;
  end;
end;

procedure TForm_find_adr.Button1Click(Sender: TObject);
var
  house_id_: Integer;
begin
//�������� ����������� �� house_id � �.�. � ���������� � flt_house_ � �.�.
  Form_Main.cl_flt;
  Form_Main.search_type_:=0;
  //����� � ��������� �� ��?
 if cbbUk.Text <> '' then
 begin
//   Form_Main.flt_reu_:=OD_t_org.FieldByName('reu').asString;
   Form_Main.flt_reu_:=cbbUk.EditValue;
   Form_Main.search_type_:=6;
 end
 else
 begin
   //�� ������ �������� ������
   Form_Main.flt_reu_:='';
 end;

  //����� � ��������� �� �����?
 if cbbStreet.Text <> '' then
 begin
   Form_Main.kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.flt_kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.search_type_:=1;
 end
 else
 begin
   //�� ������ �������� ������
   Form_Main.kul_:='';
 end;

  //����� � ��������� �� ����?
 if cbbNd.Text <> '' then
 begin
   house_id_:=OD_houses.FieldByName('house_id').asInteger;
//   Form_Main.flt_reu_:=OD_t_org.FieldByName('reu').asString;
   Form_Main.flt_reu_:=cbbUk.EditValue;
   Form_Main.reu_:=OD_houses.FieldByName('reu').asString;
   Form_Main.kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.nd_:=OD_houses.FieldByName('nd_id').asString;
   Form_Main.house_id_:=OD_houses.FieldByName('house_id').asInteger;
   Form_Main.flt_nd_:=OD_houses.FieldByName('nd_id').asString;
   Form_Main.flt_house_:=OD_houses.FieldByName('house_id').asInteger;
   Form_Main.search_type_:=2;
 end
 else
 begin
   //�� ������ �������� ������
   house_id_:=0;
   Form_Main.reu_:='';
   Form_Main.house_id_:=-1;
   Form_Main.flt_house_:=-1;
   Form_Main.nd_:='';
 end;

 //����� � ��������� �� ��������?
 if cbbKw.Text <> '' then
 begin
   setAddrToFormMain;

   Form_Main.search_type_:=3;
 end
 else
 begin
   //�� ������� ��������
   Form_Main.Lsk_:='';
   Form_Main.k_lsk_id_:=-1;
   Form_Main.fio_:='';
   Form_Main.str_adr_:=OD_streets.FieldByName('street').asString+', '+
     OD_houses.FieldByName('nd2').asString;
 end;
end;

procedure TForm_find_adr.setAddrToFormMain;
begin
   Form_Main.Lsk_:=OD_kw.FieldByName('lsk').asString;
   Form_Main.flt_kw_:=OD_kw.FieldByName('kw_id').asString;
   Form_Main.k_lsk_id_:=DataModule1.OraclePackage1.CallStringFunction(
        'scott.UTILS.GET_K_LSK_ID_BY_LSK', [OD_kw.FieldByName('lsk').asString]);
   Form_Main.fio_:=OD_kw.FieldByName('fio').asString;
   Form_Main.str_adr_:=OD_streets.FieldByName('street').asString+', '+
     OD_houses.FieldByName('nd2').asString+'-'+
     OD_kw.FieldByName('kw').asString;

   //Form_Main.reu_:=OD_houses.FieldByName('reu').asString;
   Form_Main.reu_:=cbbUk.EditValue;
   Form_Main.kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.nd_:=OD_houses.FieldByName('nd_id').asString;
   Form_Main.kw_:=OD_kw.FieldByName('kw_id').asString;
end;

procedure TForm_find_adr.FormCreate(Sender: TObject);
begin
  OD_t_org.active:=true;

  OD_streets.active:=false;
  OD_streets.SetVariable('var', 0);
  OD_streets.active:=true;

  if OD_streets.FieldByName('FIND_STREET').AsInteger = 1 then
  begin
    BitBtn1.Caption:='A�';
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

procedure TForm_find_adr.BitBtn1Click(Sender: TObject);
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
      BitBtn1.Caption:='��';
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
    BitBtn1.Caption:='��';
    OD_streets.SetVariable('var', 1);
  end;
  OD_streets.active:=false;
  OD_streets.active:=true;
end;


procedure TForm_find_adr.chk1Click(Sender: TObject);
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

procedure TForm_find_adr.chk2Click(Sender: TObject);
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

procedure TForm_find_adr.cbbStreetPropertiesChange(Sender: TObject);
begin
  with OD_houses do
  begin
    Active:=False;
//    SetVariable('flt_reu_',
//      OD_t_org.FieldByName('reu').AsString);
    SetVariable('flt_reu_',
      cbbUk.EditValue);
    Active:=True;
  end;
  cbbStreet.EditValue:='';
  cbbNd.EditValue:='';
  cbbKw.EditValue:='';

end;

procedure TForm_find_adr.cbbUkKeyPress(Sender: TObject; var Key: Char);
begin
 try
  if Key = #13 then
     Windows.SetFocus(cbbNd.Handle);
  except
  end;
end;

procedure TForm_find_adr.cxLookupComboBox1PropertiesChange(
  Sender: TObject);
begin
  cbbNd.Text:='';
end;

procedure TForm_find_adr.cbbNdKeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
  begin
    if cbbKw.Enabled = True then
      Windows.SetFocus(cbbKw.Handle) else
      Windows.SetFocus(Button1.Handle);
  end;
  except
  end;
end;

procedure TForm_find_adr.cbbKwKeyPress(Sender: TObject; var Key: Char);
begin
 try
  if Key = #13 then
     Windows.SetFocus(Button1.Handle);
  except
  end;

end;

end.
