unit u_frmKartExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  OracleData, StdCtrls, ExtCtrls, ComCtrls, ToolWin, cxCheckBox;

type
  TfrmKartExt = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    OD_kartExt: TOracleDataSet;
    DS_kartExt: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1EXT_LSK: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_CRT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_UPD: TcxGridDBColumn;
    cxGrid1DBTableView1NAME_REU: TcxGridDBColumn;
    cxGrid1DBTableView1KUL: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1N_ND: TcxGridDBColumn;
    cxGrid1DBTableView1N_KW: TcxGridDBColumn;
    cxGrid1DBTableView1KPR: TcxGridDBColumn;
    cxGrid1DBTableView1OPL: TcxGridDBColumn;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1PSCH: TcxGridDBColumn;
    cxGrid1DBTableView1LSK_TP_CD: TcxGridDBColumn;
    OD_kartExtREU: TStringField;
    OD_kartExtLSK: TStringField;
    OD_kartExtEXT_LSK: TStringField;
    OD_kartExtFIO: TStringField;
    OD_kartExtDT_CRT: TDateTimeField;
    OD_kartExtDT_UPD: TDateTimeField;
    OD_kartExtNAME_REU: TStringField;
    OD_kartExtKUL: TStringField;
    OD_kartExtNAME: TStringField;
    OD_kartExtN_ND: TStringField;
    OD_kartExtN_KW: TStringField;
    OD_kartExtPSCH: TIntegerField;
    OD_kartExtKPR: TIntegerField;
    OD_kartExtOPL: TFloatField;
    OD_kartExtLSK_TP_CD: TStringField;
    OD_kartExtV: TFloatField;
    cxGrid1DBTableView1V: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKartExt: TfrmKartExt;

implementation

{$R *.dfm}

procedure TfrmKartExt.FormCreate(Sender: TObject);
begin
  OD_kartExt.Active:=True;
end;

procedure TfrmKartExt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmKartExt.ToolButton1Click(Sender: TObject);
begin
  OD_kartExt.QBEMode:=True;
end;

procedure TfrmKartExt.ToolButton2Click(Sender: TObject);
begin
  OD_kartExt.ExecuteQBE;
end;

procedure TfrmKartExt.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 col,col2: TcxGridDBColumn;
 s,s2 : string;
begin
  // ���� ������
  col:=cxGrid1DBTableView1.GetColumnByFieldName('PSCH');
  s := AViewInfo.GridRecord.DisplayTexts[col.Index];
  col2:=cxGrid1DBTableView1.GetColumnByFieldName('LSK_TP_CD');
  s2 := AViewInfo.GridRecord.DisplayTexts[col2.Index];
  if (s = '8') or (s = '9') then
  begin
    // �������� ���.��.
    ACanvas.Font.Color := clBlack;
    ACanvas.Brush.Color := clSilver;
  end
  else if (s2 = 'LSK_TP_ADDIT') or (s2 = 'LSK_TP_RSO') then
  begin
    // ��������� ��� ��� �����
    ACanvas.Font.Color := clBlack;
    ACanvas.Brush.Color := clMoneyGreen;
  end;

end;

end.