unit u_frmDebtRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  MemDS, DBAccess, Uni, DM_module1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView, cxCheckBox, cxMemo,
  dxBar, Vcl.StdCtrls, Vcl.ExtCtrls, cxDBLookupComboBox, Oracle, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

  //const
//  UM_CHECK = WM_USER + 10000;

type
  TfrmDebtRequest = class(TForm)
    Uni_debt: TUniQuery;
    DS_debt: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1ID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1REQUEST_NUMBER: TcxGridDBCardViewRow;
    cxGrid1DBCardView1REQUEST_GUID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1FIRST_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1LAST_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1MIDDLE_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1SNILS: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DOC_SERIA: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DOC_NUMBER: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DOC_TYPE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ADDRESS: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ADDRESS_DETAIL: TcxGridDBCardViewRow;
    cxGrid1DBCardView1STATUS_GIS: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RESULT_GIS_GUID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1SENT_DATE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RESPONSE_DATE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1HAS_DEBT: TcxGridDBCardViewRow;
    cxGrid1DBCardView1EXECUTOR_GUID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1EXECUTOR_FIO: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DT_CRT: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DT_UPD: TcxGridDBCardViewRow;
    cxGrid1DBCardView1FK_USER: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ORG_FROM_GUID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ORG_FROM_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ORG_FROM_PHONE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1STATUS: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RESPONSE_STATUS: TcxGridDBCardViewRow;
    cxGrid1DBCardView1FK_EOLINK_HOUSE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1SEL: TcxGridDBCardViewRow;
    cxGrid1DBCardView1FK_USER_RESPONSE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DESCRIPTION: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RESULT: TcxGridDBCardViewRow;
    cxGrid1DBCardView1TGUID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1IS_REVOKED: TcxGridDBCardViewRow;
    cxGrid1DBCardView1IS_ERROR_ON_RESPONSE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ROWID: TcxGridDBCardViewRow;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1REQUEST_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1FIRST_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1LAST_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1MIDDLE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ADDRESS: TcxGridDBColumn;
    cxGrid1DBTableView1ADDRESS_DETAIL: TcxGridDBColumn;
    cxGrid1DBTableView1SENT_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1RESPONSE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1HAS_DEBT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_CRT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_UPD: TcxGridDBColumn;
    cxGrid1DBTableView1ORG_FROM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1RESULT: TcxGridDBColumn;
    cxGrid1DBTableView1IS_REVOKED: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBCardView3: TcxGridDBCardView;
    cxGrid1DBCardView3REQUEST_NUMBER: TcxGridDBCardViewRow;
    cxGrid1DBCardView3FIRST_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView3LAST_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView3MIDDLE_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView3SNILS: TcxGridDBCardViewRow;
    cxGrid1DBCardView3DOC_SERIA: TcxGridDBCardViewRow;
    cxGrid1DBCardView3DOC_NUMBER: TcxGridDBCardViewRow;
    cxGrid1DBCardView3DOC_TYPE: TcxGridDBCardViewRow;
    cxGrid1DBCardView3ADDRESS: TcxGridDBCardViewRow;
    cxGrid1DBCardView3ADDRESS_DETAIL: TcxGridDBCardViewRow;
    cxGrid1DBCardView3SENT_DATE: TcxGridDBCardViewRow;
    cxGrid1DBCardView3RESPONSE_DATE: TcxGridDBCardViewRow;
    cxGrid1DBCardView3ORG_FROM_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView3ORG_FROM_PHONE: TcxGridDBCardViewRow;
    cxGrid1DBCardView3DESCRIPTION: TcxGridDBCardViewRow;
    Uni_debtID: TFloatField;
    Uni_debtREQUEST_NUMBER: TStringField;
    Uni_debtREQUEST_GUID: TStringField;
    Uni_debtFIRST_NAME: TStringField;
    Uni_debtLAST_NAME: TStringField;
    Uni_debtMIDDLE_NAME: TStringField;
    Uni_debtSNILS: TStringField;
    Uni_debtDOC_SERIA: TStringField;
    Uni_debtDOC_NUMBER: TStringField;
    Uni_debtDOC_TYPE: TStringField;
    Uni_debtADDRESS: TStringField;
    Uni_debtADDRESS_DETAIL: TStringField;
    Uni_debtSTATUS_GIS: TFloatField;
    Uni_debtSENT_DATE: TDateTimeField;
    Uni_debtRESPONSE_DATE: TDateTimeField;
    Uni_debtHAS_DEBT: TFloatField;
    Uni_debtEXECUTOR_GUID: TStringField;
    Uni_debtEXECUTOR_FIO: TStringField;
    Uni_debtDT_CRT: TDateTimeField;
    Uni_debtDT_UPD: TDateTimeField;
    Uni_debtFK_USER: TFloatField;
    Uni_debtORG_FROM_GUID: TStringField;
    Uni_debtORG_FROM_NAME: TStringField;
    Uni_debtORG_FROM_PHONE: TStringField;
    Uni_debtSTATUS: TFloatField;
    Uni_debtRESPONSE_STATUS: TFloatField;
    Uni_debtFK_EOLINK_HOUSE: TFloatField;
    Uni_debtSEL: TFloatField;
    Uni_debtFK_USER_RESPONSE: TFloatField;
    Uni_debtDESCRIPTION: TStringField;
    Uni_debtRESULT: TStringField;
    Uni_debtTGUID: TStringField;
    Uni_debtIS_REVOKED: TFloatField;
    Uni_debtIS_ERROR_ON_RESPONSE: TFloatField;
    Uni_debtROWID: TStringField;
    Panel1: TPanel;
    Button1: TButton;
    cxGrid1DBCardView3IS_REVOKED: TcxGridDBCardViewRow;
    cxGrid1DBCardView3HAS_DEBT: TcxGridDBCardViewRow;
    cxGrid1DBCardView3HEADER: TcxGridDBCardViewRow;
    Uni_doc_nsi_95: TUniQuery;
    DS_doc_nsi_95: TDataSource;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1IS_ERROR_ON_RESPONSE: TcxGridDBColumn;
    cxGrid1DBTableView1USER_ID: TcxGridDBColumn;
    Uni_debtUSER_ID: TFloatField;
    Uni_debtRESPONSE_STATUS_NAME: TStringField;
    cxGrid1DBTableView1RESPONSE_STATUS_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1RESPONSE_STATUS: TcxGridDBColumn;
    Uni_debtUK_NAME: TStringField;
    cxGrid1DBTableView1UK_NAME: TcxGridDBColumn;
    cbbUser: TcxLookupComboBox;
    Label1: TLabel;
    Uni_t_user: TUniQuery;
    DS_t_user: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private    { Private declarations }
  public    { Public declarations }
  end;

var
  frmDebtRequest: TfrmDebtRequest;


implementation

{$R *.dfm}

procedure TfrmDebtRequest.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col: TcxGridDBColumn;
  status, error, response: string;
begin
  // цвет записи
  col := cxGrid1DBTableView1.GetColumnByFieldName('STATUS');
  status := AViewInfo.GridRecord.DisplayTexts[col.Index];

  col := cxGrid1DBTableView1.GetColumnByFieldName('IS_ERROR_ON_RESPONSE');
  error := AViewInfo.GridRecord.DisplayTexts[col.Index];

  col := cxGrid1DBTableView1.GetColumnByFieldName('RESPONSE_STATUS');
  response := AViewInfo.GridRecord.DisplayTexts[col.Index];

  if (AViewInfo.Item.Name = 'cxGrid1DBTableView1RESULT') and (response = '2') then
  begin
      // сформировано автоматически ГИС (нежелательный статус)
    ACanvas.Font.Color := clPurple;
  end
  else if (AViewInfo.Item.Name = 'cxGrid1DBTableView1RESULT') and (error = '1') then
  begin
      // ошибка последней отправки в ГИС
    ACanvas.Font.Color := clRed;
  end
  else if (status = '1') then
  begin
    // добавлено на загрузку
    ACanvas.Font.Color := clBlue;
  end
  else if (response = '1') then
  begin
    // отправлено успешно
  end
  else
  begin
    // незагруженный в ГИС ответ
    ACanvas.Font.Color := clGray;
  end;
end;

procedure TfrmDebtRequest.cxGrid1DBTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  if cxGrid1DBTableView1.Controller.SelectedRecordCount > 0 then
    Button1.Enabled := true
  else
    Button1.Enabled := false;
end;

procedure TfrmDebtRequest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrmDebtRequest.FormCreate(Sender: TObject);
begin
  Uni_t_user.Active := true;
  Uni_debt.Active := true;
  Uni_doc_nsi_95.Active := true;
end;

procedure TfrmDebtRequest.Button1Click(Sender: TObject);
var
  I: integer;
  id, ids: string;
begin
  ids := '';
  if not (Uni_debt.State in [dsBrowse]) then
    Uni_debt.Post;
  with cxGrid1DBTableView1.Controller do
    for I := 0 to SelectedRecordCount - 1 do
    begin
      id := VarToStr(cxGrid1DBTableView1.Controller.SelectedRecords[I].Values[0]);
      with Uni_debt do
      begin
        if Locate('id', id, []) = True then
        begin
          Edit;
          FieldByName('status').AsInteger := 1;

          if cbbUser.EditValue <> null then
            FieldByName('fk_user_response').AsInteger := cbbUser.EditValue // выбранный пользователь
          else
            FieldByName('fk_user_response').AsInteger := FieldByName('user_id').AsInteger; // проставить из поля рядом
          Post;
        end;
      end;

      ids := ids + id;
      if I < SelectedRecordCount - 1 then
        ids := ids + ',';

    end;

  DataModule1.OraclePackage1.CallProcedure('scott.P_JAVA.putTaskToWork', [ids, parInteger]);
  if DataModule1.OraclePackage1.GetParameter(1) > 0 then
  begin
    cxGrid1DBTableView1.Controller.ClearSelection;
    Application.MessageBox('Ответы направлены в ГИС ЖКХ, ожидайте их обработки', 'Внимание!', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);

  end
  else
    Application.MessageBox('Повторите отправку позднее', 'Внимание!', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);

end;

end.

