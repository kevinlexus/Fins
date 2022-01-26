unit u_frmOLAP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fcxControl,
  fcxZone, fcxCustomGrid, fcxCubeGrid, fcxComponent, fcxCube, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Data.DB, MemDS,
  DBAccess, Uni, cxCustomPivotGrid, cxPivotGrid, DM_module1, cxDBPivotGrid,
  cxExportPivotGridLink, Vcl.ExtCtrls, Vcl.StdCtrls, fcxDataSource;

type
  TfrmOLAP = class(TForm)
    UniQuery1: TUniQuery;
    cxDBPivotGrid1: TcxDBPivotGrid;
    DataSource1: TDataSource;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ExportGrid(aGrid: TcxCustomPivotGrid);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmOLAP: TfrmOLAP;


implementation

{$R *.dfm}

procedure TfrmOLAP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmOLAP.FormCreate(Sender: TObject);
begin
  UniQuery1.Active := false;
  UniQuery1.Active := true;
end;

procedure TfrmOLAP.Button1Click(Sender: TObject);
begin
  ExportGrid(cxDBPivotGrid1);
end;

procedure TfrmOLAP.Button2Click(Sender: TObject);
var
  p: Pointer;
  list: TStringList;
begin
  GetMem(p, 100);
  list := TStringList.Create;

end;

procedure TfrmOLAP.ExportGrid(aGrid: TcxCustomPivotGrid);
var
  fileName: string;
begin
  if not Assigned(aGrid) then
    Exit;
  fileName := 'd:\temp\4\check.xls';
  cxExportPivotGridToExcel(fileName, aGrid);
  Application.MessageBox(PWideChar('Выгружено в' + fileName), 'Внимание!', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

end.

