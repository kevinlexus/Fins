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
    procedure addDimension(fieldName, fieldCaption: string; tp: Integer);
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
  frxReport1.Variables['reportTitle'] := reportTitle;
  frxReport1.Variables['reportSigner'] := reportSigner;
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
    if (reportCd = '13') then
    begin
      // ����������
      // ���������
      addDimension('mg1', '������', 1);
      addDimension('reu_name', '��', 0);
      addDimension('predpr_det', '�����', 0);
      addDimension('status_name', '������', 0);
      
      addDimension('name_usl', '������', 0);
      addDimension('name_org', '�����������', 0);
      
      addDimension('val_group', '�����.', 1);
      addDimension('val_group2', '��������', 1);
      addDimension('uch', '���������', 1);
      addDimension('lsk', '���.����', 1);
      addDimension('odpu_ex', '����', 1);
      addDimension('name_gr', '�������', 1);
      addDimension('psch_name', '�������', 1);
      
      addDimension('isHotPipe', '��.����.', 1);
      addDimension('isTowel', '�����.���', 1);
      addDimension('fio', '�������', 1);

      // ����������
      addDimension('cnt', '���-�� (��.)', 2);
      addDimension('opl', '�������', 2);
      addDimension('chng_vol', '����������', 2);
      addDimension('klsk', '���-�� ���.��.', 2);
      addDimension('kpr', '���-�� ������.� �.�.�.�.', 2);
      addDimension('kpr_ot', '��.�����.', 2);
      addDimension('kpr_wr', '��.�����.', 2);
      addDimension('cnt_room', '������', 2);
      addDimension('odpu_kub', '����, ��.', 2);
      addDimension('fact_cons', '����.������.', 2);
      addDimension('kr_soi', '�� �� ���', 2);
    end
    else if (reportCd = '14') then
    begin
    // ��������
      // ���������
      addDimension('mg1', '������', 1);
      addDimension('predpr', '����', 0);
      addDimension('reu', '��', 0);
      addDimension('predpr_det', '�����', 0);
      addDimension('type', '���', 0);
      addDimension('status', '������', 0);

      addDimension('usl_name', '������', 0);
      addDimension('org_name', '�����������', 0);
      addDimension('name_gr', '�������', 1);
      addDimension('lsk', '���.����', 1);
      addDimension('odpu_ex', '����', 1);
      addDimension('other_name', '������ ���.', 1);
      addDimension('grp', '������', 1);
      addDimension('psch_name', '�������', 1);
      addDimension('isHotPipe', '��.����.', 1);
      addDimension('isTowel', '�����.���', 1);
      addDimension('fio', '�������', 1);

      // ����������
      addDimension('indebet', '��.�����', 2);
      addDimension('inkredit', '��.������', 2);
      addDimension('charges', '���������', 2);
      addDimension('changes', '������', 2);
      addDimension('changes2', '���./�����.', 2);
      addDimension('changes3', '����.���.', 2);
      addDimension('changeall', '���������', 2);
      addDimension('payment', '������', 2);
      addDimension('outdebet', '���.�����', 2);
      addDimension('outkredit', '���.������', 2);
      addDimension('pinsal', '��.���.����', 2);
      addDimension('pcur', '������.����', 2);
      addDimension('pn', '�����.����', 2);
      addDimension('poutsal', '���.���.����', 2);
    end;
    XAxisContainer.AddMeasuresField;
    EndUpdate;
  end;

end;

procedure TfrmOLAP.addDimension(fieldName, fieldCaption: string; tp: Integer);
var
  dim: TfcxSliceField;
  fld: TfcxSourceField;
begin
  with fcxDataSource1 do
  begin
    fld := Fields.FieldByName[fieldName];
    if fld = nil then
    begin
      Application.MessageBox(PChar('��������� TfcxSourceField ' + fieldName + ' �� ������!'), '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
      Exit;
    end;
    TfcxReferenceDataField(Fields.FieldByName[fieldName].DataField).CubeFieldDisplayLabel := fieldCaption;
  end;

  with fcxSlice1 do
  begin
    dim := SliceFieldByName[fieldName];

    if tp = 0 then
    begin
      // dimension
      dim.Collapsed := true;
      YAxisContainer.AddDimension(dim, fieldName, fieldCaption);
    end
    else if tp = 1 then
    begin
      // filter
      fcxSlice1.PageContainer.AddFilterField(dim, fieldName, fieldCaption);

    end
    else if tp = 2 then
    begin
    // measure
      MeasuresContainer.AddMeasure(SliceFieldByName[fieldName], fieldName, fieldCaption, af_Sum);
    end;
  end;

end;

end.

