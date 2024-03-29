unit Unit_find_adr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrlsEh, DB, OracleData, wwdblook, Buttons, ImgList;

type
  TForm_find_adr = class(TForm)
    Button1: TButton;
    OD_streets: TOracleDataSet;
    DS_streets: TDataSource;
    OD_houses: TOracleDataSet;
    DS_houses: TDataSource;
    OD_kw: TOracleDataSet;
    DS_kw: TDataSource;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
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
    ImageList1: TImageList;
    OD_t_org: TOracleDataSet;
    DS_t_org: TDataSource;
    wwDBLookupCombo2: TwwDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure wwDBLookupCombo3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo4KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBLookupCombo2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo2Change(Sender: TObject);
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
  wwDBLookupCombo2.Visible:=False;
  wwDBLookupCombo1.Visible:=False;
  wwDBLookupCombo3.Visible:=False;
  wwDBLookupCombo4.Visible:=False;

  if is_flt_reu_ = 1 then
  begin
     wwDBLookupCombo2.Visible:=True;
  end;
  if is_flt_kul_ = 1 then
  begin
     wwDBLookupCombo1.Visible:=True;
  end;
  if is_flt_house_ = 1 then
  begin
     wwDBLookupCombo3.Visible:=True;
  end;
  if is_flt_kw_ = 1 then
  begin
     wwDBLookupCombo4.Visible:=True;
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
 if wwDBLookupCombo2.Text <> '' then
 begin
   Form_Main.flt_reu_:=OD_t_org.FieldByName('reu').asString;
   Form_Main.search_type_:=6;
 end
 else
 begin
   //�� ������ �������� ������
   Form_Main.flt_reu_:='';
 end;

  //����� � ��������� �� �����?
 if wwDBLookupCombo1.Text <> '' then
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
 if wwDBLookupCombo3.Text <> '' then
 begin
   house_id_:=OD_houses.FieldByName('house_id').asInteger;
   Form_Main.flt_reu_:=OD_t_org.FieldByName('reu').asString;
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
 if wwDBLookupCombo4.Text <> '' then
 begin
   Form_Main.Lsk_:=OD_kw.FieldByName('lsk').asString;
   Form_Main.flt_kw_:=OD_kw.FieldByName('kw_id').asString;
   //��� ������ ����� c_lsk_id_
   Form_Main.k_lsk_id_:=DataModule1.OraclePackage1.CallStringFunction(
        'scott.UTILS.GET_K_LSK_ID_BY_LSK', [OD_kw.FieldByName('lsk').asString]);
   Form_Main.c_lsk_id_:=DataModule1.OraclePackage1.CallStringFunction(
        'scott.UTILS.GET_C_LSK_ID_BY_LSK', [OD_kw.FieldByName('lsk').asString]);
   Form_Main.fio_:=OD_kw.FieldByName('fio').asString;
   Form_Main.str_adr_:=OD_streets.FieldByName('street').asString+', '+
     OD_houses.FieldByName('nd2').asString+'-'+
     OD_kw.FieldByName('kw').asString;

   Form_Main.reu_:=OD_houses.FieldByName('reu').asString;
   Form_Main.kul_:=OD_streets.FieldByName('id').asString;
   Form_Main.nd_:=OD_houses.FieldByName('nd_id').asString;
   Form_Main.kw_:=OD_kw.FieldByName('kw_id').asString;

   Form_Main.search_type_:=3;
 end
 else
 begin
   //�� ������� ��������
   Form_Main.Lsk_:='';
   //��� ������ ����� c_lsk_id_
   Form_Main.k_lsk_id_:=-1;
   Form_Main.fio_:='';
   Form_Main.str_adr_:=OD_streets.FieldByName('street').asString+', '+
     OD_houses.FieldByName('nd2').asString;
 end;
 Close;
end;

procedure TForm_find_adr.wwDBLookupCombo3KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
  begin
    if wwDBLookupCombo4.Enabled = True then
      wwDBLookupCombo4.SetFocus else
     Button1.SetFocus;
  end;
  except
  end;

end;

procedure TForm_find_adr.wwDBLookupCombo4KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
    Button1.SetFocus;
  except
  end;

end;

procedure TForm_find_adr.wwDBLookupCombo1KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
    wwDBLookupCombo3.SetFocus;
  except
  end;
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
  
  OD_houses.active:=true;
  OD_kw.active:=true;
end;

procedure TForm_find_adr.wwDBLookupCombo1Change(Sender: TObject);
begin
  wwDBLookupCombo3.Text:='';
end;

procedure TForm_find_adr.Button2Click(Sender: TObject);
begin
  Close;
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

procedure TForm_find_adr.wwDBLookupCombo2KeyPress(Sender: TObject;
  var Key: Char);
begin
try
  if Key = #13 then
    wwDBLookupCombo1.SetFocus;
  except
  end;
end;

procedure TForm_find_adr.wwDBLookupCombo2Change(Sender: TObject);
begin
  with OD_houses do
  begin
    Active:=False;
    SetVariable('flt_reu_',
      OD_t_org.FieldByName('reu').AsString);
    Active:=True;
  end;
  wwDBLookupCombo1.LookupValue:='';
  wwDBLookupCombo3.LookupValue:='';
  wwDBLookupCombo4.LookupValue:='';

end;

end.
