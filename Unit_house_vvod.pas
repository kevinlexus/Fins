unit Unit_house_vvod;

interface

uses                         
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Grids, wwSpeedButton,
  wwDBNavigator, ExtCtrls, StdCtrls, Utils, Buttons, Oracle,
  frxClass, frxDBSet, Menus, cxControls, 
  cxStyles,       
  
  cxEdit, cxGridLevel, cxClasses, 
  cxGridDBTableView, cxGrid,
  cxGridCustomTableView, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxCheckBox, cxGridTableView, cxGridCustomView;

type
  TForm_house_vvod = class(TForm)
    OD_vvod: TOracleDataSet;
    DS_vvod: TDataSource;
    OD_vvodKUL: TStringField;
    OD_vvodREU: TStringField;
    OD_vvodNAME: TStringField;
    OD_vvodND: TStringField;
    OD_vvodVVOD: TStringField;
    OD_vvodKUB: TFloatField;
    OD_vvodKUB_MAN: TFloatField;
    OD_vvodKPR: TFloatField;
    OD_vvodKUB_SCH: TFloatField;
    OD_vvodSCH_CNT: TFloatField;
    u: TFloatField;
    OD_vvodCNT_LSK: TFloatField;
    OD_vvodND_ID: TStringField;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OD_vvodHOUSE_ID: TFloatField;
    OD_vvodVVOD_NUM: TFloatField;
    OD_vvodOPL: TFloatField;
    Button4: TButton;
    Button5: TButton;
    OD_vvodID: TFloatField;
    OD_vvodVOL_ADD: TFloatField;
    GroupBox2: TGroupBox;
    OD_vvodSCH_ADD: TFloatField;
    OD_vvodKUB_FACT: TFloatField;
    OD_vvodVOL_ADD_FACT: TFloatField;
    OD_vvodITG_FACT: TFloatField;
    OD_vvodOPL_ADD: TFloatField;
    Button6: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    OD_vvodNAME_REU: TStringField;
    OD_vvodADR: TStringField;
    OD_vvodUSL: TStringField;
    OD_vvodKUB_NORM: TFloatField;
    CheckBox1: TCheckBox;
    OD_vvodUSE_SCH: TFloatField;
    OD_vvodKUB_NRM_FACT: TFloatField;
    OD_vvodKUB_SCH_FACT: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OD_vvodDIST_TP: TFloatField;
    OD_vvodALL_VL: TFloatField;
    OD_vvodOPL_AR: TFloatField;
    OD_vvodKUB_AR: TFloatField;
    OD_vvodKUB_AR_FACT: TFloatField;
    OD_vvodLIMIT_PROC: TFloatField;
    OD_vvodKUB_DIST: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1KUL: TcxGridDBColumn;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1NAME_REU: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ND: TcxGridDBColumn;
    cxGrid1DBTableView1VVOD: TcxGridDBColumn;
    cxGrid1DBTableView1USL: TcxGridDBColumn;
    cxGrid1DBTableView1KUB: TcxGridDBColumn;
    cxGrid1DBTableView1KUB_DIST: TcxGridDBColumn;
    cxGrid1DBTableView1VVOD_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1KPR: TcxGridDBColumn;
    cxGrid1DBTableView1KUB_SCH: TcxGridDBColumn;
    cxGrid1DBTableView1SCH_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1SCH_KPR: TcxGridDBColumn;
    cxGrid1DBTableView1CNT_LSK: TcxGridDBColumn;
    cxGrid1DBTableView1OPL: TcxGridDBColumn;
    cxGrid1DBTableView1VOL_ADD: TcxGridDBColumn;
    cxGrid1DBTableView1KUB_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1KUB_NRM_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1KUB_SCH_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1OPL_ADD: TcxGridDBColumn;
    cxGrid1DBTableView1KUB_NORM: TcxGridDBColumn;
    cxGrid1DBTableView1USE_SCH: TcxGridDBColumn;
    cxGrid1DBTableView1DIST_TP: TcxGridDBColumn;
    cxGrid1DBTableView1ALL_VL: TcxGridDBColumn;
    cxGrid1DBTableView1OPL_AR: TcxGridDBColumn;
    cxGrid1DBTableView1KUB_AR: TcxGridDBColumn;
    cxGrid1DBTableView1KUB_AR_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1ID1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1DBTableView1LIMIT_PROC: TcxGridDBColumn;
    OD_vvodWO_LIMIT: TFloatField;
    cxGrid1DBTableView1WO_LIMIT: TcxGridDBColumn;
    OD_vvodEDT_NORM: TFloatField;
    chk1: TCheckBox;
    pnl1: TPanel;
    OD_vvodKUB_FACT_UPNORM: TFloatField;
    cxGrid1DBTableView1KUB_FACT_UPNORM: TcxGridDBColumn;
    OD_vvodISHOTPIPEINSULATED: TFloatField;
    OD_vvodISTOWELHEATEXIST: TFloatField;
    cxGrid1DBTableView1ISHOTPIPEINSULATED: TcxGridDBColumn;
    cxGrid1DBTableView1ISTOWELHEATEXIST: TcxGridDBColumn;
    OD_vvodNON_HEAT_PER: TFloatField;
    cxGrid1DBTableView1NONHEATPERIOD: TcxGridDBColumn;
    OD_vvodMG: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure state_arch2(mgold_: String);
    procedure FormPaint(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure cxGrid1DBTableView1EditKeyPress(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Char);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure OD_vvodAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure SetFilter;
  end;

var
  Form_house_vvod: TForm_house_vvod;

implementation

uses Unit_Mainform, Unit_list_kart, Unit_find_adr, DM_module1,
  Unit_house_new_vvod, Unit_houses_nabor;

{$R *.dfm}

procedure TForm_house_vvod.FormCreate(Sender: TObject);
begin
  SetMenuItem(3, N3, 'drn62_������_��_�����');

  state_arch2('');

  if FF('Form_list_kart',0) =1 then
  begin
   //���� ������� ����� ��������, �� ����� ��������������
   Form_Main.flt_house_:=Form_list_kart.OD_list_kart.FieldByName('HOUSE_ID').AsInteger;
   SetFilter;
  end
  else
  begin
    // ������� ��� �����
    with OD_vvod do
    begin
      Active:=false;
      SetVariable('var_',0);
      SetVariable('flt_reu_', null);
      SetVariable('flt_house_', -1);
      Active:=True;
    end;
  end;

end;

procedure TForm_house_vvod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_house_vvod.Button1Click(Sender: TObject);
var
  recno_, a : Integer;
  lsk_: String;
begin
//  Application.CreateForm(TForm_status, Form_status);
//  Form_status.Update;

  //������������ ���� - �������� ������ onAfterPost
  if not (OD_vvod.State in [dsBrowse]) then
    OD_vvod.Post;

//    Form_status.Close;
//  msg2('����� ����������!','��������!', MB_ICONINFORMATION+MB_OK);
end;

procedure TForm_house_vvod.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_house_vvod.state_arch2(mgold_: String);
begin // ����� ��������� �����
with Form_house_vvod do
begin
  OD_vvod.SetVariable('sel_period', Form_Main.sel_period);

  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // �� �������� � �����
    Caption:='���� ������� �� ����� - �����';
    change_alias(OD_vvod,'scott.c_vvod',
      '(select * from scott.a_vvod where mg='''+Form_main.arch_mg_+''')', true);
    change_alias(OD_vvod,'scott.c_houses',
      '(select * from scott.a_houses where mg='''+Form_main.arch_mg_+''')', true);
    change_alias(OD_vvod,'scott.kart',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')', true);

{    change_alias(OD_rep,'scott.c_vvod',
      '(select * from scott.a_vvod where mg='''+Form_main.arch_mg_+''')', false);
    change_alias(OD_rep,'scott.c_houses',
      '(select * from scott.a_houses where mg='''+Form_main.arch_mg_+''')', false);
    change_alias(OD_rep,'scott.kart',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')', false);
 }
    OD_vvod.ReadOnly:=True;
    Button4.Enabled:=false;
    Button5.Enabled:=false;
//    Button3.Enabled:=false;
    Button1.Enabled:=false;
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // �� ������ � �������
    Caption:='���� ������� �� �����';
    change_alias(OD_vvod,
      '(select * from scott.a_vvod where mg='''+mgold_+''')',
      'scott.c_vvod');
    change_alias(OD_vvod,
      '(select * from scott.a_houses where mg='''+mgold_+''')',
      'scott.c_houses');
    change_alias(OD_vvod,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      'scott.kart');

{    change_alias(OD_rep,
      '(select * from scott.a_vvod where mg='''+mgold_+''')',
      'scott.c_vvod');
    change_alias(OD_rep,
      '(select * from scott.a_houses where mg='''+mgold_+''')',
      'scott.c_houses');
    change_alias(OD_rep,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      'scott.kart');
 }
    OD_vvod.ReadOnly:=False;
    Button4.Enabled:=true;
    Button5.Enabled:=true;
    Button1.Enabled:=true;
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // �� ������ � �����
    Caption:='���� ������� �� ����� - �����';
    change_alias(OD_vvod,
      '(select * from scott.a_vvod where mg='''+mgold_+''')',
      '(select * from scott.a_vvod where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_vvod,
      '(select * from scott.a_houses where mg='''+mgold_+''')',
      '(select * from scott.a_houses where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_vvod,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');

{    change_alias(OD_rep,
      '(select * from scott.a_vvod where mg='''+mgold_+''')',
      '(select * from scott.a_vvod where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_rep,
      '(select * from scott.a_houses where mg='''+mgold_+''')',
      '(select * from scott.a_houses where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_rep,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
 }
    OD_vvod.ReadOnly:=True;
    Button4.Enabled:=false;
    Button5.Enabled:=false;
    Button1.Enabled:=false;
  end;
end;
end;

procedure TForm_house_vvod.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (Field<>Nil) and ((Field.FieldName='KUB') or (Field.FieldName='VOL_ADD')) then
   begin
    ABrush.Color:= clSkyBlue;
    AFont.Color:=clBlack;
   end;

{   if (Field<>Nil) and (Field.FieldName='KUB_FACT') then
   begin
    ABrush.Color:= clHighlight;
    AFont.Color:=clBlack;
   end;

   if (Field<>Nil) and ((Field.FieldName='KUB_NRM_FACT') or (Field.FieldName='KUB_NORM')) then
   begin
    ABrush.Color:= clMoneyGreen;
    AFont.Color:=clBlack;
   end;

   if (Field<>Nil) and ((Field.FieldName='KUB_SCH_FACT') or (Field.FieldName='KUB_SCH')) then
   begin
    ABrush.Color:= clLime;
    AFont.Color:=clBlack;
   end;
 }
end;

procedure TForm_house_vvod.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_house_vvod.SetFilter;
begin
    with OD_vvod do
    begin
      Active:=false;
      SetVariable('flt_reu_', Form_Main.flt_reu_);
      SetVariable('flt_house_', Form_Main.flt_house_);
      SetVariable('flt_kul_', Form_Main.flt_kul_);
      SetVariable('var_',0);
      Active:=true;
    end;
end;


procedure TForm_house_vvod.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  Form_find_adr.cbbKw.Enabled:=false;
  Form_find_adr.SetAccess(1,1,1,0);
  if Form_find_adr.ShowModal = mrOk then
    SetFilter;

end;

procedure TForm_house_vvod.SpeedButton2Click(Sender: TObject);
begin
  Form_Main.flt_reu_:='';
  Form_Main.flt_kul_:='';
  Form_Main.flt_house_:=-1;
  SetFilter;
end;

procedure TForm_house_vvod.Button3Click(Sender: TObject);
begin
  //������� ������������� ������, - ������������ � ��������
{  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  DataModule1.OraclePackage1.CallProcedure
     ('scott.P_VVOD.gen_dist_all_houses', [parNone]);
  Form_status.Close;
  OD_vvod.Active:=false;
  OD_vvod.Active:=true;
  msg2('����� �� ���� ����� ����������!','��������!', MB_ICONINFORMATION+MB_OK);
  }
end;

procedure TForm_house_vvod.Button4Click(Sender: TObject);
begin
  if FF('Form_house_new_vvod', 1) = 0 then
    Application.CreateForm(TForm_house_new_vvod, Form_house_new_vvod);
  Form_house_new_vvod.ShowModal;  

end;

procedure TForm_house_vvod.Button5Click(Sender: TObject);
var
  i: Integer;
begin
   if msg3('������� ������ ����?',
          '��������!', MB_ICONWARNING+MB_YESNO+MB_APPLMODAL) = ID_YES then
   begin
     i:=DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.P_VVOD.delete_vvod', [OD_vvod.FieldByName('id').AsInteger]);
     if i = 0 then
       msg2('���� �����!',
            '��������!', MB_ICONINFORMATION +MB_OK+MB_APPLMODAL)
     else
       msg2('������ ���� �� ����������!',
            '��������!', MB_ICONSTOP +MB_OK+MB_APPLMODAL);

{     if FF('Form_list_kart', 0)=1 then
     begin
       Form_list_kart.OD_c_vvod_hw.Refresh;
       Form_list_kart.OD_c_vvod_gw.Refresh;
     end;}
     OD_vvod.Refresh;
   end;

end;

procedure TForm_house_vvod.FormPaint(Sender: TObject);
begin
//  Button2.Left:=GroupBox1.Width-Button2.Width-10;
//  Button1.Left:=Button2.Left-Button1.Width-10;
//  Button6.Left:=Button3.Left-Button6.Width-10;
end;

procedure TForm_house_vvod.Button6Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(Form_main.exepath_+'\rep_vvod.fr3', True);
  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
end;

procedure TForm_house_vvod.CheckBox1Click(Sender: TObject);
begin
  OD_vvod.Active:=false;
  if CheckBox1.Checked=True then
  begin
    OD_vvod.SetVariable('var_',1);
  end
  else
  begin
    OD_vvod.SetVariable('var_',0);
  end;
  OD_vvod.Active:=True;
end;

procedure TForm_house_vvod.N3Click(Sender: TObject);
begin
  if FF('Form_houses_nabor',1) =0 then
    Application.CreateForm(TForm_houses_nabor, Form_houses_nabor);
  Form_Main.flt_house_:=OD_vvod.FieldByName('HOUSE_ID').AsInteger;
  Form_houses_nabor.SetFilter(1);
end;

procedure TForm_house_vvod.cxGrid1DBTableView1EditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

procedure TForm_house_vvod.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

procedure TForm_house_vvod.OD_vvodAfterPost(DataSet: TDataSet);
var
  i, a: Integer;
begin

  if (chk1.Checked) and (OD_vvod.FieldByName('usl').AsString <>'') then
  begin
   pnl1.Visible:=True;
   Update;
   //������������ ����
   DataModule1.OraclePackage1.CallProcedure
           ('scott.p_vvod.gen_vvod',
            [OD_vvod.FieldByName('id').AsInteger]);

   //����������� ����������
        a :=
          DataModule1.OraclePackage1.CallFloatFunction('SCOTT.P_JAVA.GEN',
          [0, null, OD_vvod.FieldByName('id').AsInteger, null,
          null, null, Form_Main.cur_dt, 0, Form_main.javaServer]);

//   a:=DataModule1.OraclePackage1.CallIntegerFunction
//           ('scott.c_charges.gen_charges',
//            [null, null, null, OD_vvod.FieldByName('id').AsInteger, 1, 0]);

  //OD_vvod.Session.ApplyUpdates([OD_vvod], true);//������
  i:=OD_vvod.FieldByName('id').AsInteger;
  OD_vvod.Active:=False;
  OD_vvod.Active:=True;
  OD_vvod.Locate('id', i, []);

  pnl1.Visible:=False;

  {  if FF('Form_list_kart', 0) = 1 then
   begin
    lsk_:=Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    Form_list_kart.OD_list_kart.RefreshRecord;
    Form_list_kart.OD_list_kart.SearchRecord('lsk', lsk_, [srFromBeginning]);
   end;
 }

  end;
end;

end.
