unit Unit_form_kart_pr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_form_kart, StdCtrls, Mask, DBCtrls,
  ExtCtrls, DB, OracleData, 
  DM_module1, Oracle, Utils, Buttons, Wwintl, ComCtrls, frxClass, frxDBSet,
  cxGraphics, cxControls,
  cxDBEdit,

  cxGridDBTableView, cxGridLevel, cxClasses, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView, Grids, Wwdbigrd, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxCalendar;

type
  TForm_kart_pr = class(TForm)
    Button3: TButton;
    OD_pol: TOracleDataSet;
    DS_pol: TDataSource;
    OD_spk: TOracleDataSet;
    DS_spk: TDataSource;
    OD_relations: TOracleDataSet;
    DS_relations: TDataSource;
    OD_spkID: TFloatField;
    OD_spkNAME: TStringField;
    OD_spkGR_ID: TFloatField;
    OD_spkSPK_STAT_ID: TFloatField;
    OD_spkGR_LG_ID: TFloatField;
    OD_relationsID: TFloatField;
    OD_relationsNAME: TStringField;
    OD_relationsNAME2: TStringField;
    OD_relationsFK_RELAT_TP: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    OD_nac: TOracleDataSet;
    DS_nac: TDataSource;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Panel1: TPanel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label16: TLabel;
    Label12: TLabel;
    OD_ovd: TOracleDataSet;
    DS_ovd: TDataSource;
    OD_nacID: TFloatField;
    OD_nacCD: TStringField;
    OD_nacNAME: TStringField;
    OD_nacNM: TStringField;
    OD_nacFK_LISTTP: TFloatField;
    OD_nacNPP: TFloatField;
    OD_ovdID: TFloatField;
    OD_ovdCD: TStringField;
    OD_ovdNAME: TStringField;
    OD_ovdNM: TStringField;
    OD_ovdFK_LISTTP: TFloatField;
    OD_ovdNPP: TFloatField;
    Bevel1: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    OD_country: TOracleDataSet;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DS_country: TDataSource;
    OD_regn: TOracleDataSet;
    FloatField4: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    DS_regn: TDataSource;
    Label19: TLabel;
    OD_distr: TOracleDataSet;
    FloatField7: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    DS_distr: TDataSource;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit7: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit8: TDBEdit;
    Label24: TLabel;
    DBEdit9: TDBEdit;
    Label25: TLabel;
    DBEdit10: TDBEdit;
    Label26: TLabel;
    OD_ub: TOracleDataSet;
    FloatField10: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    DS_ub: TDataSource;
    OD_rep2: TOracleDataSet;
    DS_rep2: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    Label37: TLabel;
    OD_citiz: TOracleDataSet;
    FloatField13: TFloatField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    DS_citiz: TDataSource;
    DS_milit: TDataSource;
    OD_milit: TOracleDataSet;
    OD_distrID: TFloatField;
    OD_distrCD: TStringField;
    OD_distrNAME: TStringField;
    OD_distrNM: TStringField;
    OD_distrFK_LISTTP: TFloatField;
    OD_distrNPP: TFloatField;
    Label38: TLabel;
    Label39: TLabel;
    OD_milit_regn: TOracleDataSet;
    FloatField16: TFloatField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    DS_milit_regn: TDataSource;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Bevel3: TBevel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit11: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    Button2: TButton;
    DBNavigator2: TDBNavigator;
    frxReport_base: TfrxReport;
    Label40: TLabel;
    TabSheet5: TTabSheet;
    OD_c_states: TOracleDataSet;
    DS_c_states: TDataSource;
    OD_c_states2: TOracleDataSet;
    DS_c_states2: TDataSource;
    OD_c_statesFK_STATUS: TFloatField;
    OD_c_statesDT1: TDateTimeField;
    OD_c_statesDT2: TDateTimeField;
    OD_c_states2FK_STATUS: TFloatField;
    OD_c_states2DT1: TDateTimeField;
    OD_c_states2DT2: TDateTimeField;
    OD_c_statesFK_KART_PR: TFloatField;
    OD_c_states2FK_KART_PR: TFloatField;
    OD_c_status_pr: TOracleDataSet;
    DS_c_status_pr: TDataSource;
    OD_c_status_pr2: TOracleDataSet;
    DS_c_status_pr2: TDataSource;
    Label41: TLabel;
    DBEdit14: TDBEdit;
    OD_c_statesLK_NAME: TStringField;
    OD_c_states2LK_NAME: TStringField;
    frxDBDataset5: TfrxDBDataset;
    OD_rep5: TOracleDataSet;
    lbl1: TLabel;
    dbedtK_OT: TDBEdit;
    Label42: TLabel;
    DBEdit15: TDBEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    Label43: TLabel;
    DBEdit16: TDBEdit;
    Label44: TLabel;
    DBEdit17: TDBEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DT1: TcxGridDBColumn;
    cxGrid1DBTableView1DT2: TcxGridDBColumn;
    cxGrid1DBTableView1State: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBState: TcxGridDBColumn;
    cxGridDBDt1: TcxGridDBColumn;
    cxGridDBDt2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label45: TLabel;
    Label46: TLabel;
    cbbRELAT: TcxDBLookupComboBox;
    cxdbdtdtDAT_PROP: TcxDBDateEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cbb2STATUS: TcxDBLookupComboBox;
    cbb2POL: TcxDBLookupComboBox;
    cbb2FK_NAC: TcxDBLookupComboBox;
    cbb2FK_CITIZ: TcxDBLookupComboBox;
    cbb2FK_DOC_TP: TcxDBLookupComboBox;
    cbb2DOK_V: TcxDBLookupComboBox;
    cbb2FK_FRM_COUNTRY: TcxDBLookupComboBox;
    cbb2FK_FRM_REGION: TcxDBLookupComboBox;
    cbb2FK_FRM_DISTR: TcxDBLookupComboBox;
    cbb2FK_FRM_KUL: TcxDBLookupComboBox;
    cxdbdtdtFRM_DAT: TcxDBDateEdit;
    cbb2FK_MILIT: TcxDBLookupComboBox;
    cbb2FK_MILIT_REGN: TcxDBLookupComboBox;
    cbb2FK_UB: TcxDBLookupComboBox;
    cxDBDateEdit5: TcxDBDateEdit;
    cbb2FK_TO_CNTR: TcxDBLookupComboBox;
    cbb2FK_TO_REGN: TcxDBLookupComboBox;
    cbb2FK_TO_DISTR: TcxDBLookupComboBox;
    cbb2FK_TO_KUL: TcxDBLookupComboBox;
    cxdbdtdtDOK_D: TcxDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_lg_docsSPK_IDValidate(Sender: TField);
    procedure OD_lg_docsTYPEValidate(Sender: TField);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure setAllowEdit;
    procedure state_arch2(mgold_: string);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure save_changes(ask_: Integer);
    procedure CMDialogKey(var Msg: TWMKey); message CM_DIALOGKEY;
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2Exit(Sender: TObject);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3Exit(Sender: TObject);
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
    procedure wwNavButton6Click(Sender: TObject);
    procedure OD_c_statesBeforePost(DataSet: TDataSet);
    procedure OD_c_states2BeforePost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure exit_ok;
    procedure exit_cancel;
    procedure save_krt_pr;
    procedure save_all;
    procedure cancel_all;
    function check_upd: Integer;
    procedure OD_c_statesBeforeEdit(DataSet: TDataSet);
    procedure OD_c_states2BeforeEdit(DataSet: TDataSet);
    procedure OD_c_states2BeforeInsert(DataSet: TDataSet);
    procedure OD_c_states2BeforeDelete(DataSet: TDataSet);
    procedure OD_c_statesBeforeDelete(DataSet: TDataSet);
    procedure OD_c_statesBeforeInsert(DataSet: TDataSet);
//    procedure DBLookupComboboxEh6EditButtons0Click(Sender: TObject;
//      var Handled: Boolean);
    procedure DBLookupComboboxEh18EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh19EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh7EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh15EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh16EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
//    procedure DBLookupComboboxEh4EditButtons0Click(Sender: TObject;
//      var Handled: Boolean);
    procedure DBLookupComboboxEh5EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh17EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh20EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh11EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh12EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh13EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBLookupComboboxEh13CloseUp(Sender: TObject;
      Accept: Boolean);
    procedure setFieldsDokDeath(isVisible, isCheckVisible: Boolean);
  private
    id2_: Integer;
//    procedure add_prop(tp_: string; ds: TDBLookupComboboxEh);
  public
    sel_id_: Integer;
  end;

var
  Form_kart_pr: TForm_kart_pr;
implementation

uses Unit_list_kart, Unit_Mainform;

type
  EPasswordInvalid = class(Exception);
{$R *.dfm}

procedure TForm_kart_pr.save_changes(ask_: Integer);
var
  ask1_: Integer;
  id_: Integer;
begin
  //делаем Post заранее, иначе не виден в UpdatesPending статус
  if not (OD_c_states.State in [dsBrowse]) then
    OD_c_states.Post;
  if not (OD_c_states2.State in [dsBrowse]) then
    OD_c_states2.Post;
  if not (Form_kart.OD_kart_pr.State in [dsBrowse]) then
    Form_kart.OD_kart_pr.Post;

  id_ := Form_kart.OD_kart_pr.FieldByName('id').AsInteger;

  if (Form_kart.OD_kart_pr.UpdatesPending = true)
    or (OD_c_states.UpdatesPending = true)
    or (OD_c_states2.UpdatesPending = true)
    or (Form_kart.OD_kart_pr.UpdateStatus in [usInserted, usModified, usDeleted]) then
    ask1_ := 1
  else
    ask1_ := 0;

  if ask_ = 0 then //записываем без вопросов
  begin
    OD_c_states.Session.ApplyUpdates([OD_c_states], true);
    OD_c_states2.Session.ApplyUpdates([OD_c_states2], true);
    Form_kart.OD_kart_pr.Session.ApplyUpdates([Form_kart.OD_kart_pr], true);

    //Commit ( изменения были сделаны через пакеты, сохраняем так)
    Form_kart.saveOrRollbackKart(0, True);
    Form_kart.recalc_kart;
  end
  else if ask_ = 2 then //отменяем без вопросов
  begin
    OD_c_states.Session.CancelUpdates([OD_c_states]);
    OD_c_states2.Session.CancelUpdates([OD_c_states2]);
    Form_kart.OD_kart_pr.Session.CancelUpdates([Form_kart.OD_kart_pr]);
    Form_kart.recalc_kart;
  end
  else if (ask_ = 1) and (ask1_ = 1) then
  begin
    if (Application.MessageBox('Сохранить измения карточки?',
      'Подтверждение', MB_ICONQUESTION + MB_APPLMODAL + MB_YESNO) = IDYES) then
      // сохраняем с вопросом
    begin
      OD_c_states.Session.ApplyUpdates([OD_c_states], true);
      OD_c_states2.Session.ApplyUpdates([OD_c_states2], true);
      Form_kart.OD_kart_pr.Session.ApplyUpdates([Form_kart.OD_kart_pr], true);

      //Commit ( изменения были сделаны через пакеты, сохраняем так)
      Form_kart.saveOrRollbackKart(0, True);
      Form_kart.recalc_kart;
    end
    else
    begin
      Form_kart.OD_kart_pr.Session.CancelUpdates([Form_kart.OD_kart_pr]);
      Form_kart.recalc_kart;
    end;
  end;
  if id_ = 0 then
    Form_kart.OD_kart_pr.Last //новая запись
  else
    Form_kart.OD_kart_pr.Locate('id', id_, []); //update существующей
end;

procedure TForm_kart_pr.setAllowEdit;
begin
  Button2.Enabled := false;

  //разрешить ли редактирование проживающих
  if (Form_list_kart.isAllowEdit_k_ = 0) and (Form_main.arch_mg_ = '') then
  begin
    Caption := 'Карточка проживающего (собственника)';
    OD_c_states.ReadOnly := true;
    OD_c_states2.ReadOnly := true;
  end
  else if Form_main.arch_mg_ <> '' then
  begin
    Caption := 'Карточка проживающего (собственника) - Архив';
    OD_c_states.ReadOnly := true;
    OD_c_states2.ReadOnly := true;
  end
  else
  begin
    Button2.Enabled := true;
    OD_c_states.ReadOnly := false;
    OD_c_states2.ReadOnly := false;
  end;

  //разрешить ли редактирование льгот
{  ред.21.05.2019 - льготы не нужны

if (Form_list_kart.isAllowEdit_l_ = 0) and (Form_main.arch_mg_ = '') then
    begin
      //Caption:='Проживающий - Редактирование запрещено';
      Button1.Enabled:=false;
      Button4.Enabled:=false;
      OD_lg_docs.ReadOnly:=true;
      OD_lg_pr.ReadOnly:=true;
    end
  else if Form_main.arch_mg_ <> '' then
    begin
      //Caption:='Проживающий - Архив';
      Button1.Enabled:=false;
      Button4.Enabled:=false;
      OD_lg_docs.ReadOnly:=true;
      OD_lg_pr.ReadOnly:=true;
    end
  else
    begin
      //Caption:='Проживающий';
      Button1.Enabled:=true;
      Button4.Enabled:=true;
      OD_lg_docs.ReadOnly:=false;
      OD_lg_pr.ReadOnly:=false;
      Button2.Enabled:=true;
    end;}
end;

procedure TForm_kart_pr.state_arch2(mgold_: string);
begin // смена состояний формы
  with Form_kart_pr do
  begin
    if (Form_main.arch_mg_ <> '') and (mgold_ = '') then
    begin // из текущего в архив
    end
    else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
    begin // из архива в текущее
    end
    else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
    begin // из архива в архив
    end;
  end;
end;

procedure TForm_kart_pr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  exit_cancel;
  Form_kart.OD_kart_pr.Locate('id', id2_, []);
  Action := caFree;
end;

procedure TForm_kart_pr.OD_lg_docsSPK_IDValidate(Sender: TField);
begin
  if sender.Text = '' then
    raise EPasswordInvalid.Create('Указанный код льготы не существует!');

end;

procedure TForm_kart_pr.OD_lg_docsTYPEValidate(Sender: TField);
begin
  if sender.Text = '' then
    raise EPasswordInvalid.Create('Указанный тип льготы не существует!');

end;

procedure TForm_kart_pr.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbDelete) and (msg3('Удалить проживающего?',
    'Подверждение', MB_YESNO + MB_ICONQUESTION) <> IDYES) then
  begin
    Abort();
  end;

  if (Button = nbInsert) and (msg3('Добавить проживающего?',
    'Подверждение', MB_YESNO + MB_ICONQUESTION) <> IDYES) then
  begin
    Abort();
  end;
end;

procedure TForm_kart_pr.FormCreate(Sender: TObject);
begin
  id2_ := Form_kart.OD_kart_pr.FieldByName('id').AsInteger;
  PageControl1.ActivePageIndex := 0;

  OD_c_states.Active := true;
  OD_c_states2.Active := true;
  OD_c_status_pr.Active := true;
  OD_c_status_pr2.Active := true;
  //отчет-отключить
  OD_rep2.Active := false;

  //датасеты-включить
  OD_ub.Active := true;
  OD_nac.Active := true;
  OD_ovd.Active := true;
  OD_country.Active := true;
  OD_regn.Active := true;
  OD_distr.Active := true;
  OD_pol.Active := true;
  OD_citiz.Active := true;

  state_arch2('');
  SetAllowEdit;
  setFieldsDokDeath(False, True);
  TForm(Sender).AutoSize := true;
end;

{procedure TForm_kart_pr.Button1Click(Sender: TObject);
begin
  if not (Form_kart.OD_kart_pr.State in [dsBrowse]) then
    Form_kart.OD_kart_pr.Post;

  if Form_kart.OD_kart_pr.RecordCount <> 0 then
  begin
    // без коммита сохраняем id проживающего
    DataModule1.OraclePackage1.CallProcedure(
      'scott.UTILS.ins_lg_doc',
      [Form_kart.OD_kart_pr.FieldByName('id').AsInteger]);
  end
  else
  begin
    ShowMessage('Не внесён проживающий!');
  end;
end;
procedure TForm_kart_pr.Button4Click(Sender: TObject);
begin

  DataModule1.OraclePackage1.CallProcedure(
    'scott.UTILS.del_lg_doc', [OD_lg_pr.FieldByName('c_lg_docs_id').AsInteger]);
  OD_lg_pr.Active := False;
  OD_lg_pr.Active := True;
  OD_lg_pr.Last;
end;
}

function TForm_kart_pr.check_upd: Integer;
begin
  //есть ли обновления записей?
  if not (OD_c_states.State in [dsBrowse]) then
    OD_c_states.Post;
  if not (OD_c_states2.State in [dsBrowse]) then
    OD_c_states2.Post;
  if not (Form_kart.OD_kart_pr.State in [dsBrowse]) then
    Form_kart.OD_kart_pr.Post;

  if (OD_c_states.UpdatesPending = True)
    or (OD_c_states2.UpdatesPending = True)
    or (Form_kart.OD_kart_pr.UpdatesPending = True) then
    Result := 1
  else
    Result := 0;
end;

procedure TForm_kart_pr.exit_ok;
var
  id_: Integer;
begin
  if (check_upd = 1) then
  begin
    save_all;
  end;
end;

procedure TForm_kart_pr.save_all;
var
  err_, id_: Integer;
begin
  //Сохранить все изменения
  if not (OD_c_states.State in [dsBrowse]) then
    OD_c_states.Post;
  if not (OD_c_states2.State in [dsBrowse]) then
    OD_c_states2.Post;
  if not (Form_kart.OD_kart_pr.State in [dsBrowse]) then
    Form_kart.OD_kart_pr.Post;

  Form_kart.OD_kart_pr.Session.ApplyUpdates([Form_kart.OD_kart_pr], True);
  Form_kart.OD_kart_pr.Session.ApplyUpdates([OD_c_states2], True);
  Form_kart.OD_kart_pr.Session.ApplyUpdates([OD_c_states], True);

  id_ := Form_kart.OD_kart_pr.FieldByName('id').AsInteger;

  Form_kart.check_kart_correct;

  // пересчитать начисление
  Form_kart.saveOrRollbackKart(0, True);

  //если не выполнить то будет record used by another user... (refresh before edit
  //в Form_list_kart.OD_list_kart глючит
  with Form_list_kart.OD_list_kart do
  begin
    RefreshRecord;
  end;
  with Form_kart.OD_kart_pr do
  begin
    Active := False;
    Active := True;
    First;

    Locate('id', id_, [loCaseInsensitive]);
    {    if Locate('id', id_, [loCaseInsensitive]) = false then
          ShowMessage('не найден проживающий');}
  end;
end;

procedure TForm_kart_pr.cancel_all;
begin
  //Отменить все изменения
  OD_c_states.CancelUpdates;
  OD_c_states2.CancelUpdates;
  Form_kart.OD_kart_pr.CancelUpdates;
  OD_c_states.Session.Rollback;
end;

procedure TForm_kart_pr.exit_cancel;
begin
  if not (Form_kart.OD_kart_pr.State in [dsBrowse]) then
    Form_kart.OD_kart_pr.Post;

  if (check_upd = 1) and (msg3('Сохранить изменения?',
    'Внимание!',
    MB_YESNO + MB_ICONQUESTION) = IDYES) then
  begin
    if (check_upd = 1) then
    begin
      save_all;
      {      with Form_kart.OD_kart_pr do --зачем, если в save_all есть это...
            begin
              Active:=False;
              Active:=true;
            end;}
    end;
  end
  else
  begin
    if (check_upd = 1) then
    begin
      cancel_all;
    end;
  end;
  {  if (Upd_=1) and (msg3('Сохранить изменения?',
     'Внимание!',
     MB_YESNO+MB_ICONQUESTION) = IDYES) then
    begin
     OD_lg_docs.Session.Commit;
     ShowMessage('сохранено');
     Upd_:=0;
    end
    else
    begin
      if Upd_=1 then
      begin
       OD_lg_docs.Session.Rollback;
       ShowMessage('отменено');
       Upd_:=0;
      end;
    end;}
end;

procedure TForm_kart_pr.Button3Click(Sender: TObject);
begin
  exit_cancel;
  Close;
end;



procedure TForm_kart_pr.CMDialogKey(var Msg: TWMKey);
begin
  // Замена кода TAB на Enter
  if not (ActiveControl is TButton) then
    if Msg.Charcode = 13 then
      Msg.Charcode := 9;
  inherited;
end;

procedure TForm_kart_pr.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  {  OD_c_states.FieldByName('FK_STATUS').AsInteger:=
      OD_c_status_pr.FieldByName('ID').AsInteger;
   }
end;

procedure TForm_kart_pr.wwDBLookupCombo2Exit(Sender: TObject);
begin
  {  if OD_c_status_pr.SearchRecord('NAME', wwDBLookupCombo2.Text,
      [srFromBeginning]) <> true then
    begin
      msg2('Данный статус не найден!', 'Ошибка', MB_OK+MB_ICONSTOP);
    end;
   }
end;

procedure TForm_kart_pr.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  {  OD_c_states2.FieldByName('FK_STATUS').AsInteger:=
      OD_c_status_pr2.FieldByName('ID').AsInteger;
   }
end;

procedure TForm_kart_pr.wwDBLookupCombo3Exit(Sender: TObject);
begin
  {  if OD_c_status_pr2.SearchRecord('NAME', wwDBLookupCombo3.Text,
      [srFromBeginning]) <> true then
    begin
      msg2('Данный статус не найден!', 'Ошибка', MB_OK+MB_ICONSTOP);
    end;
   }
end;

procedure TForm_kart_pr.wwDBNavigator1DeleteClick(Sender: TObject);
begin
  {  if msg3('Удалить данный статус?',
     'Внимание!',
     MB_YESNO+MB_ICONQUESTION) <> IDYES then
    begin
      Abort;
    end;}
end;

procedure TForm_kart_pr.wwNavButton6Click(Sender: TObject);
begin
  {  if msg3('Удалить данный статус?',
     'Внимание!',
     MB_YESNO+MB_ICONQUESTION) <> IDYES then
    begin
      Abort;
    end;}
end;

procedure TForm_kart_pr.OD_c_statesBeforePost(DataSet: TDataSet);
begin
  if OD_c_states.FieldByName('FK_STATUS').AsString = '' then
  begin
    msg2('Поле статуса должно быть заполнено!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
    abort;
  end;
end;

procedure TForm_kart_pr.OD_c_states2BeforePost(DataSet: TDataSet);
begin
  if OD_c_states2.FieldByName('FK_STATUS').AsString = '' then
  begin
    msg2('Поле статуса должно быть заполнено!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
    abort;
  end;

end;

procedure TForm_kart_pr.Button2Click(Sender: TObject);
begin
  exit_ok;
end;

procedure TForm_kart_pr.save_krt_pr;
var
  err_: Integer;
begin
  if not (Form_kart.OD_kart_pr.State in [dsBrowse]) then
    Form_kart.OD_kart_pr.Post;
  if (Form_kart.OD_kart_pr.UpdatesPending = True) and
    (msg3('Сохранить карточку проживающего?',
    'Подверждение', MB_YESNO + MB_ICONQUESTION) = IDYES) then
  begin
    //Сохранить c коммитом (без коммита нельзя - произойдет исключение потом)
    err_ := DataModule1.OraclePackage1.CallStringFunction(
      'scott.UTILS.tst_krt',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 1]);
    Form_kart.OD_kart_pr.Session.ApplyUpdates([Form_kart.OD_kart_pr], True);
  end
  else if (Form_kart.OD_kart_pr.UpdatesPending = True) then
  begin
    Form_kart.OD_kart_pr.CancelUpdates;
  end;

end;

procedure TForm_kart_pr.OD_c_statesBeforeEdit(DataSet: TDataSet);
begin
  // save_krt_pr;
end;

procedure TForm_kart_pr.OD_c_states2BeforeEdit(DataSet: TDataSet);
begin
  // save_krt_pr;

end;

procedure TForm_kart_pr.OD_c_states2BeforeInsert(DataSet: TDataSet);
begin
  if Form_kart.OD_kart_pr.State = dsInsert then
  begin
    if msg3('Сохранить карточку нового проживающего?', 'Подтверждение', MB_YESNO
      + MB_ICONQUESTION) =
      ID_YES then
    begin
      save_all;
    end
    else
      Abort;
  end;

  // save_krt_pr;

end;

procedure TForm_kart_pr.OD_c_states2BeforeDelete(DataSet: TDataSet);
begin
  // save_krt_pr;

end;

procedure TForm_kart_pr.OD_c_statesBeforeDelete(DataSet: TDataSet);
begin
  // save_krt_pr;

end;

procedure TForm_kart_pr.OD_c_statesBeforeInsert(DataSet: TDataSet);
begin
  if Form_kart.OD_kart_pr.State = dsInsert then
  begin
    if msg3('Сохранить карточку нового проживающего?', 'Подтверждение', MB_YESNO
      + MB_ICONQUESTION) =
      ID_YES then
    begin
      save_all;
    end
    else
      Abort;
  end;
  // save_krt_pr;

end;

{procedure TForm_kart_pr.DBLookupComboboxEh6EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  add_prop('Страна', DBLookupComboboxEh6);
end;

procedure TForm_kart_pr.add_prop(tp_: string; ds: TDBLookupComboboxEh);
begin
  //Выбор значения реквизита из списка/добавление нового
  Application.CreateForm(TForm_add_prop, Form_add_prop);
  Form_add_prop.seltp(tp_);
  Form_add_prop.ShowModal;
  if sel_id_ <> -1 then
  begin
    ds.ListSource.DataSet.Active := false;
    ds.ListSource.DataSet.Active := true;
    ds.KeyValue := sel_id_;
  end;
end;
}

procedure TForm_kart_pr.DBLookupComboboxEh18EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Область', DBLookupComboboxEh18);
end;

procedure TForm_kart_pr.DBLookupComboboxEh19EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Район', DBLookupComboboxEh19);
end;

procedure TForm_kart_pr.DBLookupComboboxEh7EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Национальность', DBLookupComboboxEh7);
end;

procedure TForm_kart_pr.DBLookupComboboxEh15EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Военнообязанность', DBLookupComboboxEh15);

end;

procedure TForm_kart_pr.DBLookupComboboxEh16EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Военкомат', DBLookupComboboxEh16);

end;

{procedure TForm_kart_pr.DBLookupComboboxEh4EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  add_prop('Гражданство', DBLookupComboboxEh4);
end;}

procedure TForm_kart_pr.DBLookupComboboxEh5EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Документ', DBLookupComboboxEh5);
end;

procedure TForm_kart_pr.DBLookupComboboxEh17EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('ОВД', DBLookupComboboxEh17);
end;

procedure TForm_kart_pr.DBLookupComboboxEh20EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Страна', DBLookupComboboxEh20);
end;

procedure TForm_kart_pr.DBLookupComboboxEh11EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Область', DBLookupComboboxEh11);
end;

procedure TForm_kart_pr.DBLookupComboboxEh12EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Район', DBLookupComboboxEh12);
end;

procedure TForm_kart_pr.DBLookupComboboxEh13EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
//  add_prop('Причина выписки', DBLookupComboboxEh13);

end;

procedure TForm_kart_pr.DBLookupComboboxEh13CloseUp(Sender: TObject;
  Accept: Boolean);
begin
  if OD_ub.FieldByName('cd').AsString = 'По факту смерти' then
    setFieldsDokDeath(True, False)
    else
    setFieldsDokDeath(False, False);
    
end;

procedure TForm_kart_pr.setFieldsDokDeath(isVisible, isCheckVisible: Boolean);
var
  fkUb: Integer;
begin
  if isCheckVisible = true then
  begin
    fkUb := Form_kart.OD_kart_pr.FieldByName('fk_ub').AsInteger;

    if Utils.getListIdByCd(Form_main.uList, fkUb) = 'По факту смерти' then
    begin
      Label45.Visible := True;
      Label46.Visible := True;
      cxDBTextEdit1.Visible := True;
      cxDBTextEdit2.Visible := True;
    end
    else
    begin
      Label45.Visible := False;
      Label46.Visible := False;
      cxDBTextEdit1.Visible := False;
      cxDBTextEdit2.Visible := False;
    end;

  end
  else if isVisible = true then
  begin
    Label45.Visible := True;
    Label46.Visible := True;
    cxDBTextEdit1.Visible := True;
    cxDBTextEdit2.Visible := True;
  end
  else if isVisible = false then
  begin
    Label45.Visible := False;
    Label46.Visible := False;
    cxDBTextEdit1.Visible := False;
    cxDBTextEdit2.Visible := False;
  end;
end;


end.

