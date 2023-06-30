unit u_frmLoadPdGis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB, OracleData,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DM_module1, oracle;

type
  TfrmLoadPdGis = class(TForm)
    OD_mg: TOracleDataSet;
    OD_mgMG: TStringField;
    OD_mgMG1: TStringField;
    DS_mg: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    cbbMg: TcxLookupComboBox;
    Label1: TLabel;
    OD_Pdoc: TOracleDataSet;
    OD_PdocID: TFloatField;
    OD_PdocGUID: TStringField;
    OD_PdocCD: TStringField;
    OD_PdocUNIQNUM: TStringField;
    OD_PdocFK_EOLINK: TFloatField;
    OD_PdocTGUID: TStringField;
    OD_PdocSTATUS: TFloatField;
    OD_PdocV: TFloatField;
    OD_PdocDT: TDateTimeField;
    OD_PdocERR: TFloatField;
    OD_PdocDT_CRT: TDateTimeField;
    OD_PdocDT_UPD: TDateTimeField;
    OD_PdocRESULT: TStringField;
    OD_PdocLSK: TStringField;
    OD_PdocUK: TStringField;
    OD_PdocSTREET: TStringField;
    OD_PdocND: TStringField;
    OD_PdocENTRY: TFloatField;
    OD_PdocKW: TStringField;
    OD_PdocCOMM: TStringField;
    OD_PdocSUMMA_IN: TFloatField;
    OD_PdocPENYA_IN: TFloatField;
    OD_PdocSUMMA_OUT: TFloatField;
    OD_PdocPENYA_OUT: TFloatField;
    DS_pdoc: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn;
    cxGrid1DBTableView1UK: TcxGridDBColumn;
    cxGrid1DBTableView1STREET: TcxGridDBColumn;
    cxGrid1DBTableView1ND: TcxGridDBColumn;
    cxGrid1DBTableView1KW: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRY: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1DT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1RESULT: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cbbMgPropertiesCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private    { Private declarations }
  public    { Public declarations }
  end;

var
  frmLoadPdGis: TfrmLoadPdGis;


implementation

{$R *.dfm}

uses
  Unit_status;

procedure TfrmLoadPdGis.Button1Click(Sender: TObject);
var
  cnt: Integer;
  title, str: PChar;
begin
  if (cbbMg.EditValue <> null) then
  begin
    title := PChar('Отправить платежные документы за период ' + copy(cbbMg.EditValue, 5, 2) + '.' + copy(cbbMg.EditValue, 1, 4) + ' в ГИС ЖКХ?');
    if (Application.MessageBox(title, 'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES) then
    begin
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      cnt := DataModule1.OraclePackage1.CallIntegerFunction('exs.p_gis.insert_pd_all_uk', [cbbMg.EditValue]);
      DataModule1.OraclePackage1.Session.Commit;
      str := PChar('Отправлено ' + IntToStr(cnt) + ' платежных документов');
      Application.MessageBox(str, 'Внимание!', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
      OD_Pdoc.Active := False;
      OD_Pdoc.Active := True;
      Form_status.Close;
    end;
  end;
end;

procedure TfrmLoadPdGis.cbbMgPropertiesCloseUp(Sender: TObject);
begin
  OD_Pdoc.SetVariable('mg', cbbMg.Editvalue);
  OD_Pdoc.Active := false;
  OD_Pdoc.Active := true;
end;

procedure TfrmLoadPdGis.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col: TcxGridDBColumn;
  status: string;
begin
  // цвет записи
  col := cxGrid1DBTableView1.GetColumnByFieldName('STATUS');
  status := AViewInfo.GridRecord.DisplayTexts[col.Index];

  if status = '2' then
  begin
      // ошибка загрузки
    ACanvas.Font.Color := clRed;
  end
  else if status = '0' then
  begin
    // добавлено на загрузку
    ACanvas.Font.Color := clGray;
  end;

end;

procedure TfrmLoadPdGis.FormActivate(Sender: TObject);
begin
  OD_mg.Active := True;
  cbbMg.EditValue:=OD_mg.FieldByName('mg').AsString;
  OD_Pdoc.SetVariable('mg', cbbMg.Editvalue);
  OD_Pdoc.Active := True;
end;

procedure TfrmLoadPdGis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=caFree;
end;

end.

