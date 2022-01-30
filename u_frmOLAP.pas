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
        Form_olap.Caption := Form_olap.rep_name_ + ' за период с ' + DBLookupComboBox5.Text + ' по ' + DBLookupComboBox6.Text;
        Form_olap.rep_name_ := Form_olap.rep_name_ + ' за период с ' + DBLookupComboBox5.Text + ' по ' + DBLookupComboBox6.Text;
      end
      else
      begin
        Form_olap.Caption := Form_olap.rep_name_ + ' за ' + DBLookupComboBox5.Text;
        Form_olap.rep_name_ := Form_olap.rep_name_ + ' за ' + DBLookupComboBox5.Text;
      end;
      }

  with frmOlap.fcxDataSource1 do
  begin
    DeleteFields;
    AddFields;
    TfcxReferenceDataField(Fields.FieldByName['predpr'].DataField).CubeFieldDisplayLabel := 'Фонд';
    TfcxReferenceDataField(Fields.FieldByName['reu'].DataField).CubeFieldDisplayLabel := 'УК';
    TfcxReferenceDataField(Fields.FieldByName['mg1'].DataField).CubeFieldDisplayLabel := 'Период';
    TfcxReferenceDataField(Fields.FieldByName['name_usl'].DataField).CubeFieldDisplayLabel := 'Услуга';
    TfcxReferenceDataField(Fields.FieldByName['name_org'].DataField).CubeFieldDisplayLabel := 'Организация';

    TfcxReferenceDataField(Fields.FieldByName['indebet'].DataField).CubeFieldDisplayLabel := 'Вх.дебет';
    TfcxReferenceDataField(Fields.FieldByName['inkredit'].DataField).CubeFieldDisplayLabel := 'Вх.кредит';
    TfcxReferenceDataField(Fields.FieldByName['charges'].DataField).CubeFieldDisplayLabel := 'Начислено';
  end;

  frmOlap.fcxCube1.Close;
  frmOlap.fcxCube1.Open;

  with frmOlap.fcxSlice1 do
  begin
    BeginUpdate;
    if (reportCd = '14') then
    begin
    // оборотка
      addDimension(frmOlap.fcxSlice1, 'predpr', 'Фонд', true);
      addDimension(frmOlap.fcxSlice1, 'reu', 'УК', true);
      addDimension(frmOlap.fcxSlice1, 'name_usl', 'Услуга', true);
      addDimension(frmOlap.fcxSlice1, 'name_org', 'Организация', true);

{      dimension := SliceFieldByName['predpr'];
      dimension.Collapsed := True;
      YAxisContainer.AddDimension(dimension, 'predpr', 'Фонд');
      YAxisContainer.AddDimension(SliceFieldByName['reu'], 'reu', 'УК');
      YAxisContainer.AddDimension(SliceFieldByName['predpr_det'], 'predpr_det', 'Адрес');
      YAxisContainer.AddDimension(SliceFieldByName['name_usl'], 'name_usl', 'Услуга');
      YAxisContainer.AddDimension(SliceFieldByName['type'], 'type', 'Тип');
      YAxisContainer.AddDimension(SliceFieldByName['mg1'], 'mg1', 'Период');
      YAxisContainer.AddDimension(SliceFieldByName['lsk'], 'lsk', 'Лиц.счет');
      YAxisContainer.AddDimension(SliceFieldByName['name_org'], 'name_org', 'Организация');
      YAxisContainer.AddDimension(SliceFieldByName['name_gr'], 'name_gr', 'Группа');

      YAxisContainer.AddDimension(SliceFieldByName['status'], 'Статус', 'Статус');
      RemoveSliceFieldFromContainers(SliceFieldByName['status']);
                                              }
      MeasuresContainer.AddMeasure(SliceFieldByName['indebet'], 'indebet', 'Вх.дебет', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['inkredit'], 'inkredit', 'Вх.кредит', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['charges'], 'charges', 'Начислено', af_Sum);
      XAxisContainer.AddMeasuresField;
      {MeasuresContainer.AddMeasure(SliceFieldByName['changes'], 'changes', 'Перерасчет', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['outdebet'], 'outdebet', 'Исх.дебет', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['outkredit'], 'outkredit', 'Исх.кредит', af_Sum);

      MeasuresContainer.AddMeasure(SliceFieldByName['pinsal'], 'pinsal', 'Вх.сал.пени', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['pcur'], 'pcur', 'Начисл.Пени', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['pn'], 'pn', 'Оплач.Пени', af_Sum);
      MeasuresContainer.AddMeasure(SliceFieldByName['poutsal'], 'poutsal', 'Исх.сал.Пени', af_Sum);
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

