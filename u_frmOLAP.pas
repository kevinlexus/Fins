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
      // статистика
      // измерения
      addDimension('mg1', 'Период', 1);
      addDimension('reu_name', 'УК', 0);
      addDimension('predpr_det', 'Адрес', 0);
      addDimension('status_name', 'Статус', 0);
      
      addDimension('name_usl', 'Услуга', 0);
      addDimension('name_org', 'Организация', 0);
      
      addDimension('val_group', 'Коэфф.', 1);
      addDimension('val_group2', 'Норматив', 1);
      addDimension('uch', 'Котельная', 1);
      addDimension('lsk', 'Лиц.счет', 1);
      addDimension('odpu_ex', 'ОДПУ', 1);
      addDimension('name_gr', 'Участок', 1);
      addDimension('psch_name', 'Признак', 1);
      
      addDimension('isHotPipe', 'Гв.изол.', 1);
      addDimension('isTowel', 'Полот.суш', 1);
      addDimension('fio', 'Фамилия', 1);

      // показатели
      addDimension('cnt', 'Кол-во (Ед.)', 2);
      addDimension('opl', 'Площадь', 2);
      addDimension('chng_vol', 'Перерасчет', 2);
      addDimension('klsk', 'кол-во лиц.сч.', 2);
      addDimension('kpr', 'кол-во прожив.в т.ч.В.О.', 2);
      addDimension('kpr_ot', 'Вр.отсут.', 2);
      addDimension('kpr_wr', 'Вр.зарег.', 2);
      addDimension('cnt_room', 'Комнат', 2);
      addDimension('odpu_kub', 'ОДПУ, Ед.', 2);
      addDimension('fact_cons', 'Факт.потреб.', 2);
      addDimension('kr_soi', 'КР на СОИ', 2);
    end
    else if (reportCd = '14') then
    begin
    // оборотка
      // измерения
      addDimension('mg1', 'Период', 1);
      addDimension('predpr', 'Фонд', 0);
      addDimension('reu', 'УК', 0);
      addDimension('predpr_det', 'Адрес', 0);
      addDimension('type', 'Тип', 0);
      addDimension('status', 'Статус', 0);

      addDimension('usl_name', 'Услуга', 0);
      addDimension('org_name', 'Организация', 0);
      addDimension('name_gr', 'Участок', 1);
      addDimension('lsk', 'Лиц.счет', 1);
      addDimension('odpu_ex', 'ОДПУ', 1);
      addDimension('other_name', 'Прочие орг.', 1);
      addDimension('grp', 'Группа', 1);
      addDimension('psch_name', 'Признак', 1);
      addDimension('isHotPipe', 'Гв.изол.', 1);
      addDimension('isTowel', 'Полот.суш', 1);
      addDimension('fio', 'Фамилия', 1);

      // показатели
      addDimension('indebet', 'Вх.дебет', 2);
      addDimension('inkredit', 'Вх.кредит', 2);
      addDimension('charges', 'Начислено', 2);
      addDimension('changes', 'Скидки', 2);
      addDimension('changes2', 'Доб./Возвр.', 2);
      addDimension('changes3', 'Корр.сал.', 2);
      addDimension('changeall', 'Изменения', 2);
      addDimension('payment', 'Оплата', 2);
      addDimension('outdebet', 'Исх.дебет', 2);
      addDimension('outkredit', 'Исх.кредит', 2);
      addDimension('pinsal', 'Вх.сал.пени', 2);
      addDimension('pcur', 'Начисл.Пени', 2);
      addDimension('pn', 'Оплач.Пени', 2);
      addDimension('poutsal', 'Исх.сал.Пени', 2);
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
      Application.MessageBox(PChar('Компонент TfcxSourceField ' + fieldName + ' не найден!'), 'Внимание!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
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

