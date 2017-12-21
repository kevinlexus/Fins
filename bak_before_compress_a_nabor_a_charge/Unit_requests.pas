unit Unit_requests;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ComCtrls,
  wwriched, wwcheckbox, Utils, Unit_edit_request,
  ExtCtrls, OracleNavigator, ToolWin, wwSpeedButton, wwDBNavigator,
  Buttons, DBGridEh, Mask, DBCtrlsEh, DBLookupEh;

type
  TForm_requests = class(TForm)
    OD_request: TOracleDataSet;
    DS_request: TDataSource;
    wwDBGrid1: TwwDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    Button2: TButton;
    ToolButton3: TToolButton;
    wwDBGrid1IButton: TwwIButton;
    DS_mg: TDataSource;
    OD_mg: TOracleDataSet;
    OD_mgMG: TStringField;
    OD_mgMG1: TStringField;
    OracleNavigator1: TOracleNavigator;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Panel3: TPanel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    OD_requestID: TFloatField;
    OD_requestJOB: TStringField;
    OD_requestUSER_FIO: TStringField;
    OD_requestR_FIO: TStringField;
    OD_requestMEMO2: TMemoField;
    OD_doc_det: TOracleDataSet;
    DS_doc_det: TDataSource;
    OD_adr: TOracleDataSet;
    DS_adr: TDataSource;
    OD_requestFK_KLSK: TFloatField;
    OD_doc_detID: TFloatField;
    OD_doc_detNPP: TFloatField;
    OD_doc_detF_S1: TStringField;
    OD_doc_detF_S2: TStringField;
    OD_doc_detF_N1: TFloatField;
    OD_doc_detF_N2: TFloatField;
    OD_doc_detF_DT1: TDateTimeField;
    OD_doc_detF_DT2: TDateTimeField;
    OD_doc_detF_C1: TMemoField;
    OD_doc_detFK_DOC: TFloatField;
    OD_requestDT1: TDateTimeField;
    OD_requestDT2: TDateTimeField;
    OD_requestNAME: TStringField;
    OD_requestFK_DOCTP: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OD_requestBeforeScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure setTypeAcess(type_: Integer);
    procedure DBLookupComboboxEh1CloseUp(Sender: TObject; Accept: Boolean);
    procedure OD_requestBeforeQBE(Sender: TOracleDataSet);
    procedure OD_requestAfterQBE(Sender: TOracleDataSet);
    procedure ToolButton4Click(Sender: TObject);
    procedure OD_requestAfterScroll(DataSet: TDataSet);
    procedure ToolBar1DblClick(Sender: TObject);
  private
    exit_: Integer;
  public
    //доступ к документу (создание или редакт)
    access_type_, access_type_doc: Integer;
    bm: TBookmark;
end;

var
  Form_requests: TForm_requests;

implementation

uses Unit_Mainform, DM_module1;

{$R *.dfm}


procedure TForm_requests.setTypeAcess(type_: Integer);
begin
  access_type_:=type_;
  //Тип доступа к форме
  if type_=0 then
  begin
    Form_requests.WindowState:=wsMaximized;
    Form_requests.Caption:='Заявки';

    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'USER_FIO')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'DT2')].Visible:=false;
  end
  else if type_=1 then
  begin
    Form_requests.Width:=1000;
    Form_requests.Caption:='Журнал действий сотрудников';

    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'DT2')].DisplayWidth:=18;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MEMO2')].DisplayWidth:=80;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'USER_FIO')].DisplayWidth:=25;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'JOB')].DisplayWidth:=23;

    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'ADR')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'R_FIO')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'NAME_REU')].Visible:=false;
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'DT1')].Visible:=false;

  end;
  Button2.Left:=Panel1.Width-Button2.Width-15;
end;

procedure TForm_requests.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_main.Refresh;
  Action:=caFree;
end;

procedure TForm_requests.wwDBGrid1DblClick(Sender: TObject);
begin
{  Form_requests.bm:=Form_requests.OD_request.GetBookmark;
  OD_request.Edit;
  access_type_doc:=0;}
  Application.CreateForm(TForm_edit_request, Form_edit_request);
  //редакт существующий док
  Form_edit_request.ShowModal;
end;

procedure TForm_requests.FormCreate(Sender: TObject);
begin
  OD_mg.Active:=true;
  OD_mg.First;
  DBLookupComboboxEh1.KeyValue:=OD_mg.FieldByName('mg').AsString;
end;

procedure TForm_requests.ToolButton1Click(Sender: TObject);
begin
  bm:=Form_requests.OD_request.GetBookmark;
  access_type_doc:=1;
  Application.CreateForm(TForm_edit_request, Form_edit_request);
  OD_request.Insert;
  OD_request.FieldByName('fk_doctp').AsInteger:=1;
  OD_doc_det.Insert;
  OD_doc_det.FieldByName('npp').AsInteger:=1;
  OD_doc_det.FieldByName('fk_doc').AsInteger:=OD_request.FieldByName('id').AsInteger;
  //Record([null, 1, null, null, null, null, null, null, null,
  //вставка нового док.
  Form_edit_request.ShowModal;
end;

procedure TForm_requests.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_requests.OD_requestBeforeScroll(DataSet: TDataSet);
begin
  if OD_request.UpdatesPending = true then
  begin
    if Application.MessageBox('Сохранить изменения?',
       'Внимание!', MB_YESNO+MB_APPLMODAL) = IDYES then
       begin
          Form_edit_request.exit_ok;
       end
       else
       begin
          Form_edit_request.exit_cancel;
       end;
  end;
end;

procedure TForm_requests.Button1Click(Sender: TObject);
begin
  bm:=Form_requests.OD_request.GetBookmark;
  OD_request.Insert;
end;

procedure TForm_requests.Button3Click(Sender: TObject);
begin
  OD_request.Cancel;
end;

procedure TForm_requests.DBLookupComboboxEh1CloseUp(Sender: TObject;
  Accept: Boolean);
begin
  OD_request.Active:=false;
  OD_request.SetVariable('mg',OD_mg.FieldByName('mg').AsString);
  OD_request.Active:=true;
  setTypeAcess(access_type_);
end;

procedure TForm_requests.OD_requestBeforeQBE(Sender: TOracleDataSet);
begin
  wwDBGrid1.ReadOnly:=false;
end;

procedure TForm_requests.OD_requestAfterQBE(Sender: TOracleDataSet);
begin
  wwDBGrid1.ReadOnly:=true;
end;

procedure TForm_requests.ToolButton4Click(Sender: TObject);
begin
 if msg3('Удалить документ?', 'Внимание!', MB_YESNO+MB_ICONSTOP)=IDYES then
 begin
   OD_request.Delete;
   OD_request.Session.ApplyUpdates([Form_requests.OD_request], true);
 end
end;

procedure TForm_requests.OD_requestAfterScroll(DataSet: TDataSet);
begin
 if FF('Form_edit_request', 0)=1 then
   Form_edit_request.DBEditEh1.Text:=
       Form_requests.OD_adr.FieldByName('Adr').AsString;

{  if Form_requests.OD_request.FieldByName('check3').AsInteger = 1 then
    ToolButton4.Enabled:=true
  else
    ToolButton4.Enabled:=false;
 }
end;

procedure TForm_requests.ToolBar1DblClick(Sender: TObject);
begin
{    msg2('', 'JOB'+IntToStr(
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'JOB')].DisplayWidth
    ), MB_OK);

    msg2('', 'USER_FIO'+IntToStr(
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'USER_FIO')].DisplayWidth
    ), MB_OK);

    msg2('', 'MEMO2'+IntToStr(
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'MEMO2')].DisplayWidth
    ), MB_OK);

    msg2('', 'TS'+IntToStr(
    wwDBGrid1.Fields[GetGridColumnByName(wwDBGrid1,'TS')].DisplayWidth
    ), MB_OK);
}
end;

end.
