unit u_frmAccFlow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridLevel, cxClasses, 
  cxGridDBTableView, cxGrid,
  
  cxGridExportLink, cxDBLookupComboBox, cxPC, StdCtrls, Menus,
  ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, dxBarBuiltInMenu, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView;

type
  TfrmAccFlow = class(TForm)
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTabControl1: TcxTabControl;
    cxLookupComboBox1: TcxLookupComboBox;
    OD_mg1: TOracleDataSet;
    DS_mg1: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    OD_mg2: TOracleDataSet;
    DS_mg2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    cxGrid1DBTableView1USL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ORG_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1INDEBET: TcxGridDBColumn;
    cxGrid1DBTableView1INKREDIT: TcxGridDBColumn;
    cxGrid1DBTableView1CHARGES: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT: TcxGridDBColumn;
    cxGrid1DBTableView1PN: TcxGridDBColumn;
    cxGrid1DBTableView1OUTDEBET: TcxGridDBColumn;
    cxGrid1DBTableView1OUTKREDIT: TcxGridDBColumn;
    cxGrid1DBTableView1POUTSAL: TcxGridDBColumn;
    cxGrid1DBTableView1PINSAL: TcxGridDBColumn;
    cxGrid1DBTableView1PCUR: TcxGridDBColumn;
    cxGrid1DBTableView1PERIOD: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES2: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES3: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_CORR: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_CORR: TcxGridDBColumn;
    Label3: TLabel;
    dlgSave1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    Excel2: TMenuItem;
    pnl1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccFlow: TfrmAccFlow;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TfrmAccFlow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmAccFlow.FormCreate(Sender: TObject);
var
 period: string;
begin

  period:=Form_main.OD_params.FieldByName('period').asString;
  cxLookupComboBox1.EditValue:=period;
  cxLookupComboBox2.EditValue:=period;
  OD_data.SetVariable('p_mg1', period);
  OD_data.SetVariable('p_mg2', period);
  OD_data.Active:=True;

end;

procedure TfrmAccFlow.cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  pnl1.Show;
  Update;
  OD_data.SetVariable('p_mg1', cxLookupComboBox1.EditValue);
  OD_data.SetVariable('p_mg2', cxLookupComboBox2.EditValue);
  OD_data.Active:=False;
  OD_data.Active:=True;
  pnl1.Hide;
end;

procedure TfrmAccFlow.Excel2Click(Sender: TObject);
var
   ExcelFile : Variant;
   WorkBook : Variant;
   WorkSheet : Variant;
begin
  dlgSave1.Execute;
  if dlgSave1.FileName <> '' then
  begin
  ExportGridToExcel(dlgSave1.FileName, cxGrid1);
  Application.MessageBox(PChar('Экспортировано в '+dlgSave1.FileName),
    'Внимание!', MB_OK + 
    MB_ICONINFORMATION + MB_DEFBUTTON2);

  end;

end;

end.
