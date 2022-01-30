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
    procedure fcxXLSXExport1PrepareSaveDialog(Sender: TObject; ADialog: TSaveDialog);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private { Private declarations }
    procedure addDimension(slice1: TfcxSlice; fieldName, fieldCaption: string; isCollapsed: Boolean);
  public { Public declarations }
    procedure createOlapReport(reportCd: string);
  end;

var
  frmOLAP: TfrmOLAP;


implementation

{$R *.dfm}

procedure TfrmOLAP.fcxXLSXExport1PrepareSaveDialog(Sender: TObject; ADialog: TSaveDialog);
begin
{         Excel := CreateOleObject('Excel.Application');
    Form_olap.PivotGrid1.ExportToExcel(Excel, true, true, true,
      Form_olap.rep_name_ + objexcel_);
    i := Excel.WorkBooks[1].WorkSheets[1].UsedRange.Rows.Count;
    if DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.Utils.get_int_param', ['REP_OLAP_SIGN_DIR']) = 1 then
    begin
      Excel.WorkBooks[1].WorkSheets[1].Cells[i + 3, 3] :=
        DataModule1.OD_rkc.FieldByName('head_name').AsString +
        ' _________________/' +
        DataModule1.OD_rkc.FieldByName('manager').AsString;
    end;
    Excel.Visible := true;
 }
end;

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

procedure TfrmOLAP.createOlapReport(reportCd: string);
begin
    { todo
      Form_olap.rep_name_ := l_rep_name;
      if two_periods_ = 1 then
      begin
        Form_olap.Caption := Form_olap.rep_name_ + ' �� ������ � ' + DBLookupComboBox5.Text + ' �� ' + DBLookupComboBox6.Text;
        Form_olap.rep_name_ := Form_olap.rep_name_ + ' �� ������ � ' + DBLookupComboBox5.Text + ' �� ' + DBLookupComboBox6.Text;
      end
      else
      begin
        Form_olap.Caption := Form_olap.rep_name_ + ' �� ' + DBLookupComboBox5.Text;
        Form_olap.rep_name_ := Form_olap.rep_name_ + ' �� ' + DBLookupComboBox5.Text;
      end;
      }

  with frmOlap.fcxDataSource1 do
  begin
    DeleteFields;
    AddFields;
    TfcxReferenceDataField(Fields.FieldByName['predpr'].DataField).CubeFieldDisplayLabel := '����';
    TfcxReferenceDataField(Fields.FieldByName['reu'].DataField).CubeFieldDisplayLabel := '��';
    TfcxReferenceDataField(Fields.FieldByName['mg1'].DataField).CubeFieldDisplayLabel := '������';
    TfcxReferenceDataField(Fields.FieldByName['name_usl'].DataField).CubeFieldDisplayLabel := '������';
    TfcxReferenceDataField(Fields.FieldByName['name_org'].DataField).CubeFieldDisplayLabel := '�����������';

    TfcxReferenceDataField(Fields.FieldByName['indebet'].DataField).CubeFieldDisplayLabel := '��.�����';
    TfcxReferenceDataField(Fields.FieldByName['inkredit'].DataField).CubeFieldDisplayLabel := '��.������';
    TfcxReferenceDataField(Fields.FieldByName['charges'].DataField).CubeFieldDisplayLabel := '���������';
  end;

  frmOlap.fcxCube1.Close;
  frmOlap.fcxCube1.Open;

  with frmOlap.fcxSlice1 do
  begin
    BeginUpdate;
    if (reportCd = '14') then
    begin
    // ��������
      addDimension(frmOlap.fcxSlice1, 'predpr', '����', true);
      addDimension(frmOlap.fcxSlice1, 'reu', '��', true);
      addDimension(frmOlap.fcxSlice1, 'name_usl', '������', true);
      addDimension(frmOlap.fcxSlice1, 'name_org', '�����������', true);

{      dimension := SliceFieldByName['predpr'];
      dimension.Collapsed := True;
      YAxisContainer.AddDimension(dimension, 'predpr', '����');
      YAxisContainer.AddDimension(SliceFieldByName['reu'], 'reu', '��');
      YAxisContainer.AddDimension(SliceFieldByName['predpr_det'], 'predpr_det', '�����');
      YAxisContainer.AddDimension(SliceFieldByName['name_usl'], 'name_usl', '������');
      YAxisContainer.AddDimension(SliceFieldByName['type'], 'type', '���');
      YAxisContainer.AddDimension(SliceFieldByName['mg1'], 'mg1', '������');
      YAxisContainer.AddDimension(SliceFieldByName['lsk'], 'lsk', '���.����');
      YAxisContainer.AddDimension(SliceFieldByName['name_org'], 'name_org', '�����������');
      YAxisContainer.AddDimension(SliceFieldByName['name_gr'], 'name_gr', '������');

      YAxisContainer.AddDimension(SliceFieldByName['status'], '������', '������');
      RemoveSliceFieldFromContainers(SliceFieldByName['status']);
                                              }
      MeasuresContainer.AddMeasure(SliceFieldByName['indebet'], 'indebet', '��.�����', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['inkredit'], 'inkredit', '��.������', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['charges'], 'charges', '���������', af_Sum);
      XAxisContainer.AddMeasuresField;
      {MeasuresContainer.AddMeasure(SliceFieldByName['changes'], 'changes', '����������', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['outdebet'], 'outdebet', '���.�����', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['outkredit'], 'outkredit', '���.������', af_Sum);

      MeasuresContainer.AddMeasure(SliceFieldByName['pinsal'], 'pinsal', '��.���.����', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['pcur'], 'pcur', '������.����', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['pn'], 'pn', '�����.����', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['poutsal'], 'poutsal', '���.���.����', af_Sum);
      }
    end;
    EndUpdate;
  end;

end;

  procedure TfrmOLAP.addDimension(slice1: TfcxSlice; fieldName, fieldCaption: string; isCollapsed: Boolean);
  var
    dim: TfcxSliceField;
  begin
      dim := slice1.SliceFieldByName[fieldName];
      dim.Collapsed := isCollapsed;
      slice1.YAxisContainer.AddDimension(dim, fieldName, fieldCaption);

  end;

end.

