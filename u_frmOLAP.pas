unit u_frmOLAP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fcxControl,
  fcxZone, fcxCustomGrid, fcxCubeGrid, fcxComponent, fcxCube, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Data.DB, MemDS,
  DBAccess, Uni, cxCustomPivotGrid, cxPivotGrid, DM_module1, cxDBPivotGrid,
  cxExportPivotGridLink, Vcl.ExtCtrls, Vcl.StdCtrls, fcxDataSource, ufDataModuleOlap,
  fcxSliceGrid, fcxSlice, fcxCustomExport, fcxCustomSliceGridExport,
  fcxExportXLSX, Vcl.ToolWin, Vcl.ComCtrls, fcxCustomToolbar,
  fcxSliceGridToolbar;

type
  TfrmOLAP = class(TForm)
    cxDBPivotGrid1: TcxDBPivotGrid;
    DataSource1: TDataSource;
    fcxCube1: TfcxCube;
    fcxDataSource1: TfcxDataSource;
    fcxDBDataSet1: TfcxDBDataSet;
    fcxSliceGrid1: TfcxSliceGrid;
    fcxSlice1: TfcxSlice;
    fcxXLSXExport1: TfcxXLSXExport;
    fcSliceGridToolbar1: TfcxSliceGridToolbar;
    procedure ExportGrid(aGrid: TcxCustomPivotGrid);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmOLAP.Button1Click(Sender: TObject);
begin
//  ExportGrid(cxDBPivotGrid1);
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

