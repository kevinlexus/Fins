unit u_frmPenCorr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridLevel, cxClasses, 
  cxGridDBTableView, cxGrid,
  cxPropertiesStore, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxMaskEdit, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, dxSkinsCore, dxSkinsDefaultPainters,
  dxDateRanges;

type
  TfrmPenCorr = class(TForm)
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1DOPL: TcxGridDBColumn;
    cxGrid1DBTableView1DTEK: TcxGridDBColumn;
    cxGrid1DBTableView1TS: TcxGridDBColumn;
    cxGrid1DBTableView1USER_NAME: TcxGridDBColumn;
    OD_dataID: TFloatField;
    OD_dataLSK: TStringField;
    OD_dataPENYA: TFloatField;
    OD_dataDOPL: TStringField;
    OD_dataDTEK: TDateTimeField;
    OD_dataTS: TDateTimeField;
    OD_dataFK_USER: TFloatField;
    OD_dataUSER_NAME: TStringField;
    cxprprtstr1: TcxPropertiesStore;
    OD_dataREU: TStringField;
    OD_dataSTREET_NAME: TStringField;
    OD_dataND: TStringField;
    OD_dataKW: TStringField;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1STREET_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ND: TcxGridDBColumn;
    cxGrid1DBTableView1KW: TcxGridDBColumn;
    OD_dataUSL: TStringField;
    cxGrid1DBTableView1USL: TcxGridDBColumn;
    OD_dataORG: TFloatField;
    cxGrid1DBTableView1ORG: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1LSKPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1DOPLPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
  public
    procedure state_arch2(mgold_: String);
  end;

var
  frmPenCorr: TfrmPenCorr;

implementation

uses Unit_list_kart, Unit_Mainform, Utils;

{$R *.dfm}

procedure TfrmPenCorr.FormCreate(Sender: TObject);
begin
  state_arch2('');
  if FF('Form_list_kart', 0) =1 then
  begin
     frmPenCorr.OD_data.SetVariable('k_lsk_id',
       Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger);
     frmPenCorr.OD_data.Active:=false;
     frmPenCorr.OD_data.Active:=true;
  end;
  OD_data.Active;
end;



procedure TfrmPenCorr.state_arch2(mgold_: String);
begin // ����� ��������� �����
with frmPenCorr do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // �� �������� � �����
    change_alias(frmPenCorr.OD_data,'scott.kart',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
    change_alias(frmPenCorr.OD_data, 'scott.c_pen_corr',
      '(select * from scott.a_pen_corr where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // �� ������ � �������
    change_alias(frmPenCorr.OD_data,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      'scott.kart');
    change_alias(frmPenCorr.OD_data,
      '(select * from scott.a_pen_corr where mg='''+mgold_+''')',
      'scott.c_pen_corr');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // �� ������ � �����
    change_alias(frmPenCorr.OD_data,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
    change_alias(frmPenCorr.OD_data,
      '(select * from scott.a_pen_corr where mg='''+mgold_+''')',
      '(select * from scott.a_pen_corr where mg='''+Form_main.arch_mg_+''')'
      );
  end;

end;
end;


procedure TfrmPenCorr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 cxprprtstr1.StoreTo(True);
 if (OD_data.State in [dsEdit, dsInsert]) then
   OD_data.Post;
  Action:=caFree;
end;

procedure TfrmPenCorr.cxGrid1DBTableView1LSKPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if Error then
  begin
    msg2('�� ���������� �������� ���� "���.����"',
     '��������', MB_OK+MB_ICONERROR);
    Abort;
  end;
end;

procedure TfrmPenCorr.cxGrid1DBTableView1DOPLPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if Error then
  begin
    msg2('�� ���������� �������� ���� "������"',
     '��������', MB_OK+MB_ICONERROR);
    Abort;
  end;
end;

end.
