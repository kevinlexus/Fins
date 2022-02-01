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
    procedure createDimensions(reportCd: string; setCaption: bool);
    procedure addDimension(fieldName, fieldCaption: string; tp: Integer; setCaption: bool);
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
    //Fields.FieldByName['mg1'].DataField.CubeFieldDisplayLabel := '��������';
  end;

  // ������� ��������� �����
  createDimensions(reportCd, true);

  frmOlap.fcxCube1.Close;
  frmOlap.fcxCube1.Open;

  with fcxSlice1 do
  begin
    BeginUpdate;

    // ������� ���������
    createDimensions(reportCd, false);

    XAxisContainer.AddMeasuresField;
    EndUpdate;
  end;

end;

procedure TfrmOLAP.createDimensions(reportCd: string; setCaption: bool);
begin
  if (reportCd = '13') then
  begin
      // ����������
      // ���������
    addDimension('mg1', '������', 1, setCaption);
    addDimension('reu_name', '��', 0, setCaption);
    addDimension('predpr_det', '�����', 0, setCaption);
    addDimension('status_name', '������', 0, setCaption);

    addDimension('name_usl', '������', 0, setCaption);
    addDimension('name_org', '�����������', 0, setCaption);

    addDimension('val_group', '�����.', 1, setCaption);
    addDimension('val_group2', '��������', 1, setCaption);
    addDimension('uch', '���������', 1, setCaption);
    addDimension('lsk', '���.����', 1, setCaption);
    addDimension('odpu_ex', '����', 1, setCaption);
    addDimension('name_gr', '�������', 1, setCaption);
    addDimension('psch_name', '�������', 1, setCaption);

    addDimension('isHotPipe', '��.����.', 1, setCaption);
    addDimension('isTowel', '�����.���', 1, setCaption);
    addDimension('fio', '�������', 1, setCaption);

      // ����������
    addDimension('cnt', '���-�� (��.)', 2, setCaption);
    addDimension('opl', '�������', 2, setCaption);
    addDimension('chng_vol', '����������', 2, setCaption);
    addDimension('klsk', '���-�� ���.��.', 2, setCaption);
    addDimension('kpr', '���-�� ������.� �.�.�.�.', 2, setCaption);
    addDimension('kpr_ot', '��.�����.', 2, setCaption);
    addDimension('kpr_wr', '��.�����.', 2, setCaption);
    addDimension('cnt_room', '������', 2, setCaption);
    addDimension('odpu_kub', '����, ��.', 2, setCaption);
    addDimension('fact_cons', '����.������.', 2, setCaption);
    addDimension('kr_soi', '�� �� ���', 2, setCaption);
  end
  else if (reportCd = '14') then
  begin
    // ��������
      // ���������
    addDimension('mg1', '������', 1, setCaption);
    addDimension('predpr', '����', 0, setCaption);
    addDimension('reu', '��', 0, setCaption);
    addDimension('predpr_det', '�����', 0, setCaption);
    addDimension('type', '���', 0, setCaption);
    addDimension('status', '������', 0, setCaption);

    addDimension('usl_name', '������', 0, setCaption);
    addDimension('org_name', '�����������', 0, setCaption);
    addDimension('name_gr', '�������', 1, setCaption);
    addDimension('lsk', '���.����', 1, setCaption);
    addDimension('odpu_ex', '����', 1, setCaption);
    addDimension('other_name', '������ ���.', 1, setCaption);
    addDimension('grp', '������', 1, setCaption);
    addDimension('psch_name', '�������', 1, setCaption);
    addDimension('isHotPipe', '��.����.', 1, setCaption);
    addDimension('isTowel', '�����.���', 1, setCaption);
    addDimension('fio', '�������', 1, setCaption);

      // ����������
    addDimension('indebet', '��.�����', 2, setCaption);
    addDimension('inkredit', '��.������', 2, setCaption);
    addDimension('charges', '���������', 2, setCaption);
    addDimension('changes', '������', 2, setCaption);
    addDimension('changes2', '���./�����.', 2, setCaption);
    addDimension('changes3', '����.���.', 2, setCaption);
    addDimension('changeall', '���������', 2, setCaption);
    addDimension('payment', '������', 2, setCaption);
    addDimension('outdebet', '���.�����', 2, setCaption);
    addDimension('outkredit', '���.������', 2, setCaption);
    addDimension('pinsal', '��.���.����', 2, setCaption);
    addDimension('pcur', '������.����', 2, setCaption);
    addDimension('pn', '�����.����', 2, setCaption);
    addDimension('poutsal', '���.���.����', 2, setCaption);
  end
  else if (reportCd = '35') then
  begin
    // ������
      // ���������
    addDimension('mg_name', '������', 1, setCaption);
    addDimension('predp', '����', 0, setCaption);
    addDimension('reu', '��', 0, setCaption);
    addDimension('predpr_det', '�����', 0, setCaption);
    addDimension('org_name', '�����������', 0, setCaption);
    addDimension('dat', '����', 0, setCaption);
    addDimension('var_name', '������� ���.', 0, setCaption);
    addDimension('dopl_name', '������ ������', 0, setCaption);
    addDimension('dopl_name', '������ ������', 0, setCaption);
    addDimension('nm', '������', 0, setCaption);
    addDimension('opername', '��������', 0, setCaption);
    addDimension('cd_tp', '��� �����������', 0, setCaption);

      // ����������
    addDimension('summa', '�����', 2, setCaption);
  end;
end;

procedure TfrmOLAP.addDimension(fieldName, fieldCaption: string; tp: Integer; setCaption: bool);
var
  dim: TfcxSliceField;
  fld: TfcxSourceField;
begin
  if setCaption then
  begin
    with fcxDataSource1 do
    begin
      fld := Fields.FieldByName[fieldName];
      if fld = nil then
      begin
        Application.MessageBox(PChar('��������� TfcxSourceField ' + fieldName + ' �� ������!'), '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
        Exit;
      end;
//    TfcxReferenceDataField(Fields.FieldByName[fieldName].DataField).CubeFieldDisplayLabel := fieldCaption;
      Fields.FieldByName[fieldName].DataField.CubeFieldDisplayLabel := fieldCaption;
    end;
  end
  else
  begin

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

end;

end.

