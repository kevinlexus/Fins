unit Unit_get_pay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Grids, DBGridEh, StdCtrls, Mask, DBCtrlsEh,
  wwdbedit, Wwdbigrd, Wwdbgrid, DBSumLst, Buttons, Wwdotdot,
  Wwdbcomb, Oracle, DBLookupEh, Utils, wwcheckbox, Menus, ComCtrls,
  wwdbdatetimepicker, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGridCardView, cxGrid;

type
  TForm_get_pay = class(TForm)
    OD_c_kwtp: TOracleDataSet;
    DS_c_kwtp: TDataSource;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Edit2: TEdit;
    OD_oper: TOracleDataSet;
    DS_oper: TDataSource;
    Label5: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
    CheckBox1: TCheckBox;
    OD_c_kwtp_mg: TOracleDataSet;
    DS_c_kwtp_mg: TDataSource;
    DS_typespay: TDataSource;
    OD_typespay: TOracleDataSet;
    OD_typespayID: TFloatField;
    OD_typespayCD: TStringField;
    OD_typespayNAME: TStringField;
    OD_typespayNPP: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Button1: TButton;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    Edit1: TEdit;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    Label8: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label9: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    cxGrid1: TcxGrid;
    cxGrid1CardView1: TcxGridCardView;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1SUMM_ITG: TcxGridDBColumn;
    cxGrid1DBTableView1DOPL: TcxGridDBColumn;
    cxGrid1DBTableView1DTEK: TcxGridDBColumn;
    cxGrid1DBTableView1NKVIT: TcxGridDBColumn;
    cxGrid1DBTableView1TS: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2OPER: TcxGridDBColumn;
    cxGrid1DBTableView2DOPL: TcxGridDBColumn;
    cxGrid1DBTableView2SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView2PENYA: TcxGridDBColumn;
    cxGrid1DBTableView2SUMM_ITG: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    OD_c_kwtpLSK: TStringField;
    OD_c_kwtpADR: TStringField;
    OD_c_kwtpSUMMA: TFloatField;
    OD_c_kwtpPENYA: TFloatField;
    OD_c_kwtpOPER: TStringField;
    OD_c_kwtpNINK: TFloatField;
    OD_c_kwtpNKOM: TStringField;
    OD_c_kwtpDTEK: TDateTimeField;
    OD_c_kwtpNKVIT: TFloatField;
    OD_c_kwtpDAT_INK: TDateTimeField;
    OD_c_kwtpDOPL: TStringField;
    OD_c_kwtpTS: TDateTimeField;
    OD_c_kwtpID: TFloatField;
    OD_c_kwtpISCORRECT: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure recalcGrid;
    procedure setEnterType(type_: Integer);
    procedure Button2Click(Sender: TObject);
    procedure wwDBEdit3DblClick(Sender: TObject);
    procedure wwDBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBLookupComboboxEh2KeyPress(Sender: TObject; var Key: Char);
    procedure OD_operAfterScroll(DataSet: TDataSet);
    procedure DBLookupComboboxEh3CloseUp(Sender: TObject; Accept: Boolean);
    procedure N1Click(Sender: TObject);
    procedure selTpPay;
  private
    //��� ����� (�� �������� ��� �� �.�.)
    enter_type_: Integer;
  public
  end;

var
  Form_get_pay: TForm_get_pay;

implementation

uses DM_module1, Unit_find_adr, Unit_Mainform, Unit_chargepay;

{$R *.dfm}

procedure TForm_get_pay.setEnterType(type_: Integer);
begin
  enter_type_:=type_;
  if enter_type_ =1 then
  begin
  //���� ��-��������
//  DBComboBoxEh1.ItemIndex:=1;
//  DBComboBoxEh1.Enabled:=false;
  DBLookupComboboxEh2.KeyValue:=null;
  DBLookupComboboxEh2.Enabled:=true;
  end
  else
  begin
//  DBComboBoxEh1.Enabled:=true;
  //���� ��-�/�
  end;

end;

procedure TForm_get_pay.recalcGrid;
begin
{  DBSumList1.RecalcAll;
  wwDBGrid1.ColumnByName('Lsk').FooterValue := '�����:';
  wwDBGrid1.ColumnByName('Summa').FooterValue :=
    FloatToStr(DBSumList1.SumCollection.Items[0].SumValue);
  wwDBGrid1.ColumnByName('Penya').FooterValue :=
    FloatToStr(DBSumList1.SumCollection.Items[1].SumValue);}
end;

procedure TForm_get_pay.Button1Click(Sender: TObject);
var
  summa_: Extended;
  pn_: Extended;
  l_par: Integer;
begin
{  l_par:=DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.UTILS.can_nkom_pay_lsk', [wwDBEdit3.Text]);
  if l_par = 0 then
  begin
     msg2('������� ������� ������ ����������������� � ����������!', '��������!', MB_OK+MB_ICONSTOP);
     exit;
  end;}

  if wwDBEdit1.Text <> '' then
    summa_:=SuperStrToDouble(wwDBEdit1.Text, 0)
  else
    summa_:=0;

  if wwDBEdit2.Text <> '' then
    pn_:=SuperStrToDouble(wwDBEdit2.Text, 0)
  else
    pn_:=0;

  if (DBLookupComboboxEh2.KeyValue = null)
    and (OD_typespay.FieldByName('CD').AsString='�������������') then
  begin
    Application.MessageBox('�� ������ ������ �����, ��� ������������� ������!','��������',
            MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
    Abort;
  end;

  try
  DataModule1.OraclePackage1.CallProcedure
         ('scott.C_GET_PAY.get_payment',
         [null, wwDBEdit3.Text, summa_, pn_,
          OD_oper.FieldByName('oper').asString,
          DBLookupComboboxEh2.KeyValue,
           DBLookupComboboxEh3.KeyValue, null, 1,
           wwDBEdit4.Text,
           wwDBDateTimePicker1.DateTime
           ])
  except
   on E:EOracleError do
   begin
    if Pos('C_KWTP_F_KART', E.Message) <> 0 then
     Application.MessageBox('��������� ������� ���� �� ����������',
      '��������!', MB_ICONSTOP+MB_OK+MB_APPLMODAL)
    else if Pos('C_KWTP_F_OPER', E.Message) <> 0 then
     Application.MessageBox('��������� ��� �������� �� ����������',
      '��������!', MB_ICONSTOP+MB_OK+MB_APPLMODAL)
    else
     Application.MessageBox(PCHar(E.Message),
      '��������!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
    exit;
   end;
  end;

  if FF('Form_chargepay', 0) = 1 then
     Form_chargepay.recalc;

  OD_c_kwtp.Refresh;
  OD_c_kwtp_mg.Refresh;
//  DBSumList1.RecalcAll;
  recalcGrid;

  OD_c_kwtp.Last;
  DBLookupComboboxEh2.KeyValue:=null;
  wwDBEdit1.Text:='';
  wwDBEdit2.Text:='';
  wwDBEdit3.Text:='';
  wwDBEdit4.Text:='';
  wwDBDateTimePicker1.Text:='';

  wwDBEdit3.SetFocus;

  if enter_type_ = 1 then
  begin
    Application.CreateForm(TForm_find_adr, Form_find_adr);
    Form_find_adr.ShowModal;
    wwDBEdit3.Text := Form_Main.Lsk_;
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);
  end;

end;

procedure TForm_get_pay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_get_pay.wwDBGrid1UpdateFooter(Sender: TObject);
begin
{  wwDBGrid1.ColumnByName('Lsk').FooterValue := '�����:';
  wwDBGrid1.ColumnByName('Summa').FooterValue :=
    FloatToStr(DBSumList1.SumCollection.Items[0].SumValue);
  wwDBGrid1.ColumnByName('Penya').FooterValue :=
    FloatToStr(DBSumList1.SumCollection.Items[1].SumValue);
  wwDBGrid1.CalcCellRow;}
end;

procedure TForm_get_pay.wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
var
  formexist_, a: Integer;
begin
  if Key = #13 then
  begin
    wwDBEdit1.SetFocus;
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [wwDBEdit3.Text]);
  end;
end;

procedure TForm_get_pay.wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if OD_typespay.FieldByName('CD').AsString = '������ ������' then
    begin
      if Key = #13 then
        Button1.SetFocus;
    end
    else
    begin
      if Key = #13 then
        wwDBEdit2.SetFocus;
    end;
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_get_pay.wwDBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (DBLookupComboboxEh2.Enabled = true) then
    DBLookupComboboxEh2.SetFocus
  else if (Key = #13) and (DBLookupComboboxEh2.Enabled = false) then
    Button1.SetFocus;

  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_get_pay.FormCreate(Sender: TObject);
begin
  DecimalSeparator:='.';

  //�������� �� ����������� ��������� �� ����� ������
  if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['EXTENDED_PAY']) = 1 then
  begin
   Label8.Visible:=true;
   Label9.Visible:=true;
   wwDBEdit4.Visible:=true;
   wwDBDateTimePicker1.Visible:=true;
  end
  else
  begin
   Label8.Visible:=false;
   Label9.Visible:=false;
   wwDBEdit4.Visible:=false;
   wwDBDateTimePicker1.Visible:=false;
  end;

{  if OD_typespay.FieldByName('CD').AsString <> '������� ������' then
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=true;
    end
    else
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=false;
    end;
 }
  DBLookupComboboxEh3.KeyValue:=OD_typespay.FieldByName('id').AsInteger;
  //������� �������� � ������������ � ����� �������
  selTpPay;

  OD_oper.Active:=true;
  OD_c_kwtp.Active:=True;
  OD_c_kwtp_mg.Active:=True;
  OD_c_kwtp.SetVariable('var', 0); //�� ���������
  OD_c_kwtp.Refresh;
  DBLookupComboboxEh1.KeyValue:='01';
  Edit2.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.INIT.get_nkom', parNone);
{  DBSumList1.RecalcAll;}
  recalcGrid;

end;

procedure TForm_get_pay.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_pay.wwDBEdit3DblClick(Sender: TObject);
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  Form_find_adr.ShowModal;
  wwDBEdit3.Text := Form_Main.Lsk_;
  Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);

end;

procedure TForm_get_pay.wwDBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  formexist_, a: Integer;
begin
  if Key=34 then
  begin
    Application.CreateForm(TForm_find_adr, Form_find_adr);
    Form_find_adr.ShowModal;
    wwDBEdit3.Text := Form_Main.Lsk_;
    Edit1.Text:=DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.GET_ADR_BY_LSK', [Form_Main.Lsk_]);
  end;

end;

procedure TForm_get_pay.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
   OD_c_kwtp.SetVariable('var', 1) //�� ���������
   else
   OD_c_kwtp.SetVariable('var', 0); //�� ���������

   OD_c_kwtp.Refresh;
end;

procedure TForm_get_pay.DBLookupComboboxEh2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Button1.SetFocus;
end;

procedure TForm_get_pay.OD_operAfterScroll(DataSet: TDataSet);
begin
  recalcGrid;
end;

procedure TForm_get_pay.selTpPay;
begin
  //������� �������� � ������������ � ����� �������
  if OD_typespay.FieldByName('CD').AsString = '������ ������' then
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=false;
      wwDBEdit2.Text:='';
      wwDBEdit2.Enabled:=false;
    end
  else if OD_typespay.FieldByName('CD').AsString <> '������� ������' then
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=true;
      wwDBEdit2.Enabled:=true;
    end
  else
    begin
      DBLookupComboboxEh2.KeyValue:=null;
      DBLookupComboboxEh2.Enabled:=false;
      wwDBEdit2.Enabled:=true;
    end;
end;

procedure TForm_get_pay.DBLookupComboboxEh3CloseUp(Sender: TObject;
  Accept: Boolean);
begin
  //������� �������� � ������������ � ����� �������
  selTpPay;
end;

procedure TForm_get_pay.N1Click(Sender: TObject);
var
  bm: TBookmark;
begin
if msg3('������� ������ � ������ '+OD_c_kwtp.FieldByName('summa').AsString+
   '���., �/� '+OD_c_kwtp.FieldByName('lsk').AsString,
   '��������!',
   MB_YESNO+MB_ICONQUESTION) = IDYES then
   begin
   DataModule1.OraclePackage1.CallProcedure
       ('scott.C_GET_PAY.remove_pay',
         [OD_c_kwtp.FieldByName('id').AsInteger]);
   OD_c_kwtp.Prior;
//   bm:=OD_c_kwtp.GetBookmark;
   OD_c_kwtp.Active:=False;
   OD_c_kwtp.Active:=true;
{   try
    OD_c_kwtp.GotoBookmark(bm);
   except
   end;}

   msg2('������ ������ �������!',
      '��������!',
   MB_OK+MB_ICONINFORMATION)
   end;
end;

end.



