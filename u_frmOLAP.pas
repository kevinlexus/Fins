unit u_frmOLAP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fcxControl,
  fcxZone, fcxCustomGrid, fcxCubeGrid, fcxComponent, fcxCube, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Data.DB, MemDS,
  DBAccess, Uni, cxCustomPivotGrid, cxPivotGrid, DM_module1, cxDBPivotGrid,
  cxExportPivotGridLink, Vcl.ExtCtrls, Vcl.StdCtrls, fcxDataSource,
  ufDataModuleOlap, fcxSliceGrid, fcxSlice, fcxCustomExport,
  fcxCustomSliceGridExport, fcxExportXLSX, Vcl.ToolWin, Vcl.ComCtrls,
  fcxCustomToolbar, fcxSliceGridToolbar, frxClass, fcxpComponents, fcxTypes,
  Unit_tree_objects, Utils, Unit_Mainform;

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
    frxReport1: TfrxReport;
    fcxpSliceGridProvider1: TfcxpSliceGridProvider;
    ToolButton2: TToolButton;
    Button1: TButton;
    Panel1: TPanel;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private { Private declarations }
    procedure addDimension(fieldName, fieldCaption: string; isCollapsed, isDimension: Boolean);
  public { Public declarations }
    procedure createOlapReport(reportCd, reportTitle, reportSigner: string);
  end;

var
  frmOLAP: TfrmOLAP;


implementation

{$R *.dfm}

procedure TfrmOLAP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form_Main.CloseTreeObj;
  Action := caFree;
end;

procedure TfrmOLAP.Button1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TfrmOLAP.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmOLAP.createOlapReport(reportCd, reportTitle, reportSigner: string);
begin
  frxReport1.Variables['reportTitle']:=reportTitle;
  frxReport1.Variables['reportSigner']:=reportSigner;
  with fcxDataSource1 do
  begin
    DeleteFields;
    AddFields;
  end;

  frmOlap.fcxCube1.Close;
  frmOlap.fcxCube1.Open;

  with fcxSlice1 do
  begin
    BeginUpdate;
    if (reportCd = '14') then
    begin
    // ��������
      // ���������
      addDimension('predpr', '����', true, true);
      addDimension('reu', '��', true, true);
      addDimension('name_usl', '������', true, true);
      addDimension('name_org', '�����������', true, true);
      addDimension('mg1', '������', true, true);
      addDimension('status', '������', true, true);
      addDimension('type', '���', true, true);
      addDimension('name_gr', '������', true, true);

      // ����������
      addDimension('indebet', '��.�����', true, false);
      addDimension('inkredit', '��.������', true, false);
      addDimension('charges', '���������', true, false);
      addDimension('changes', '����������', true, false);
      addDimension('outdebet', '���.�����', true, false);
      addDimension('outkredit', '���.������', true, false);
      addDimension('pinsal', '��.���.����', true, false);
      addDimension('pcur', '������.����', true, false);
      addDimension('pn', '�����.����', true, false);
      addDimension('poutsal', '���.���.����', true, false);
      XAxisContainer.AddMeasuresField;
    end;
    EndUpdate;
  end;

end;

procedure TfrmOLAP.addDimension(fieldName, fieldCaption: string; isCollapsed, isDimension: Boolean);
var
  dim: TfcxSliceField;
begin
  with fcxDataSource1 do
  begin
    TfcxReferenceDataField(Fields.FieldByName[fieldName].DataField).CubeFieldDisplayLabel := fieldCaption;
  end;

  with fcxSlice1 do
  begin
    if isDimension then
    begin
      dim := SliceFieldByName[fieldName];
      dim.Collapsed := isCollapsed;
      YAxisContainer.AddDimension(dim, fieldName, fieldCaption);
    end
    else
    begin
      MeasuresContainer.AddMeasure(SliceFieldByName[fieldName], fieldName, fieldCaption, af_Sum);
    end;

  end;
end;

end.

