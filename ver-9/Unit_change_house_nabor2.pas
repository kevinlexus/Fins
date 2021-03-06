unit Unit_change_house_nabor2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, DB, OracleData, Mask, wwdbedit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ExtCtrls, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TForm_change_house_nabor2 = class(TForm)
    DS_usl: TDataSource;
    OD_usl: TOracleDataSet;
    DS_sprorg: TDataSource;
    OD_sprorg: TOracleDataSet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    OD_lsk_tp: TOracleDataSet;
    DS_lsk_tp: TDataSource;
    pnl1: TPanel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    cbb2: TcxLookupComboBox;
    lbl1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure setState(p_lvl: Integer; p_lsk: String; st_: Integer; sptarn_: Integer);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure set_sptarn(st_: Integer);
    procedure CheckBox1Click(Sender: TObject);
  private
    l_lvl, old_org_, state_ :Integer;
    old_koeff_, old_norm_ :Double;
    l_lsk:String;
  public
    var_ :Integer;
  end;

var
  Form_change_house_nabor2: TForm_change_house_nabor2;

implementation

uses DM_module1, Unit_houses_nabor, Unit_Mainform, Unit_status, Utils,
  Unit_form_kart, Unit_tree_objects, Unit_list_kart, Unit_tarif_usl;

{$R *.dfm}

procedure TForm_change_house_nabor2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_change_house_nabor2.setState(p_lvl: Integer; p_lsk: String; st_: Integer; sptarn_: Integer);
begin
  state_:=st_;
  l_lvl:=p_lvl;
  l_lsk:=p_lsk;
  set_sptarn(sptarn_);

  if p_lvl=0 then
  begin
    //�������-�����
    if (state_ = 1) then
      Caption:='���������� ������ �� ������'
    else if (state_ = 2) then
      Caption:='��������� ������ � ������';
  end
  else if p_lvl=1 then
  begin
    //�������-����
    if (state_ = 1) then
      Caption:='���������� ������ �� �����'
    else if (state_ = 2) then
      Caption:='��������� ������ � �����';
  end
  else if p_lvl=2 then
  begin
    //�������-��
    if (state_ = 1) then
      Caption:='���������� ������ �� ��'
    else if (state_ = 2) then
      Caption:='��������� ������ � ��';

  end
  else if p_lvl=3 then
  begin
    //�������-���
    if (state_ = 1) then
      Caption:='���������� ������ �� ����'
    else if (state_ = 2) then
      Caption:='��������� ������ � ����';
  end
  else if p_lvl=4 then
  begin
    cbb2.Enabled:=False;
    //�������-�/C
    if (state_ = 1) then
      Caption:='���������� ������ �� �.�.';
  end;

  if (state_ = 1) then
  begin
    wwDBLookupCombo1.Enabled:=True;
    wwDBLookupCombo2.Enabled:=True;
  end
  else if (state_ = 2) then
  begin
    old_org_:=Form_tree_objects.OD_data.FieldByName('org').AsInteger;
    old_koeff_:=Form_tree_objects.OD_data.FieldByName('koeff').AsFloat;
    old_norm_:=Form_tree_objects.OD_data.FieldByName('norm').AsFloat;
    wwDBLookupCombo1.Enabled:=False;
    wwDBLookupCombo1.Value:=
      Form_tree_objects.OD_data.FieldByName('usl').AsString;
    wwDBLookupCombo2.Value:=
      Form_tree_objects.OD_data.FieldByName('org').AsString;
    wwDBEdit3.Text:=Form_tree_objects.OD_data.FieldByName('koeff').AsString;
    wwDBEdit1.Text:=Form_tree_objects.OD_data.FieldByName('norm').AsString;
  end;

  end;

procedure TForm_change_house_nabor2.Button2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TForm_change_house_nabor2.Button1Click(Sender: TObject);
var
  l_chrg: Integer;
begin
  if FF('Form_tarif_usl', 0) = 1 then
  begin
    if Form_tarif_usl.checkbox1.checked = true then
     l_chrg:=1
     else
     l_chrg:=0;
  end;

  if (wwDBLookupCombo1.LookupValue = '') then
  begin
    msg2('�� ������� ������', '��������!', MB_OK+MB_ICONEXCLAMATION);
    Exit;
  end;
  if (wwDBLookupCombo2.LookupValue = '') then
  begin
    msg2('�� ������� �����������', '��������!', MB_OK+MB_ICONEXCLAMATION);
    Exit;
  end;

  if state_ = 1 then
  begin
  //���������� ����� ������
    if (((l_lvl = 0) or (l_lvl = 1)) and
      (msg3('������ ����� ��������� �� �������� ���-�� �/c, ����������?', '��������!', MB_YESNO+MB_ICONQUESTION) = ID_YES))
      or ((l_lvl <> 0) and (l_lvl <> 1)) then
    begin
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      if l_lvl = 4 then
      begin
        //�� �.�.
        DataModule1.OraclePackage1.CallProcedure
             ('scott.p_houses.house_add_usl',
             [l_lvl,
             Form_list_kart.OD_list_kart.FieldByName('lsk').AsString,
             null,
             null,
             null,
             OD_usl.FieldByName('usl').AsString,
             OD_sprorg.FieldByName('kod').AsInteger,
             StrToFloat(NvlStr(wwDBEdit3.Text, '0')),
             StrToFloat(NvlStr(wwDBEdit1.Text, '0')),
             l_chrg
             ]);
      end
      else
      begin
        //�� ������ ��������
        DataModule1.OraclePackage1.CallProcedure
             ('scott.p_houses.house_add_usl',
             [l_lvl,
             null,
             Form_tree_objects.MemTableEh2.FieldByName('fk_house').AsInteger,
             Form_tree_objects.MemTableEh2.FieldByName('reu').AsString,
             Form_tree_objects.MemTableEh2.FieldByName('trest').AsString,
             OD_usl.FieldByName('usl').AsString,
             OD_sprorg.FieldByName('kod').AsInteger,
             StrToFloat(NvlStr(wwDBEdit3.Text, '0')),
             StrToFloat(NvlStr(wwDBEdit1.Text, '0')),
             l_chrg]);
      end;
      Form_status.Close;

    end;
  end
  else if state_ = 2 then
  begin
    if (((l_lvl = 0) or (l_lvl = 1)) and
      (msg3('������ ����� �������� �� �������� ���-�� �/c, ����������?', '��������!', MB_YESNO+MB_ICONQUESTION) =ID_YES))
      or ((l_lvl <> 0) and (l_lvl <> 1)) then
    begin
    //��������� ������������ ������
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      DataModule1.OraclePackage1.CallProcedure
           ('scott.p_houses.house_chng_usl',
           [l_lvl,
           Form_tree_objects.MemTableEh2.FieldByName('fk_house').AsInteger,
           Form_tree_objects.MemTableEh2.FieldByName('reu').AsString,
           Form_tree_objects.MemTableEh2.FieldByName('trest').AsString,
           OD_usl.FieldByName('usl').AsString,
           old_org_,
           OD_sprorg.FieldByName('kod').AsInteger,
           old_koeff_, old_norm_,
           StrToFloat(NvlStr(wwDBEdit3.Text,'0')),
           StrToFloat(NvlStr(wwDBEdit1.Text,'0')),
           l_chrg]);
      Form_status.Close;
    end;
  end;
  ModalResult:=mrOk;
end;

procedure TForm_change_house_nabor2.wwDBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

  if Key = #13 then
    Button1.SetFocus;
end;

procedure TForm_change_house_nabor2.wwDBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_change_house_nabor2.FormCreate(Sender: TObject);
begin
  OD_lsk_tp.Active:=true;
  cbb2.EditValue:='LSK_TP_MAIN';
  
  OD_sprorg.Active:=false;
  OD_sprorg.SetVariable('var_', 1);
  OD_sprorg.Active:=true;
  OD_usl.Active:=true;

  if Form_main.org_var_ = 0 then
  begin
  //���
    Label5.Caption:='�����';
    Label1.Caption:='����.';
  end
  else
  begin
    Label5.Caption:='����.';
    Label1.Caption:='�����';
  //������ �����������
  end;
end;

procedure TForm_change_house_nabor2.set_sptarn(st_: Integer);
begin
  if st_ = 0 then
  begin
    //�����
    wwDBEdit1.Visible:=false;
    Label1.Visible:=false;

    wwDBEdit3.Visible:=true;
    Label5.Visible:=true;
  end
  else if st_ = 1 then
  begin
    //��������
    wwDBEdit3.Visible:=false;
    Label5.Visible:=false;

    wwDBEdit1.Visible:=true;
    Label1.Visible:=true;
  end
  else if (st_ = 2) or (st_ = 3) then
  begin
    //�������� � �����
    wwDBEdit3.Visible:=true;
    Label5.Visible:=true;

    wwDBEdit1.Visible:=true;
    Label1.Visible:=true;
  end;
end;


procedure TForm_change_house_nabor2.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  set_sptarn(OD_usl.FieldByName('sptarn').AsInteger);
end;

procedure TForm_change_house_nabor2.CheckBox1Click(Sender: TObject);
begin
 with OD_sprorg do
 begin
 Active:=False;
 if CheckBox1.Checked = True then
   SetVariable('var_', 0)
 else
   SetVariable('var_', 1);
 Active:=True;
 end;
end;

end.
