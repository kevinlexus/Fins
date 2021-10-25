unit Unit_changes_houses2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Oracle,
  wwSpeedButton, wwDBNavigator, ExtCtrls, DBGridEh, wwdblook,
  Mask, wwdbedit, Wwdbdlg, Utils, frxClass, frxDBSet, DBCtrlsEh,
  DBLookupEh, cxControls,

  cxDBLookupComboBox,

  DBCtrls,

  cxPC,
  cxGridLevel,
  cxClasses,
  cxGridDBTableView, cxGrid, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, wwclearpanel,
  GridsEh, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TForm_changes_houses2 = class(TForm)
    OD_list_choices_changes: TOracleDataSet;
    DS_list_choices_changes: TDataSource;
    OD_sprorg: TOracleDataSet;
    DS_sprorg: TDataSource;
    OD_usl: TOracleDataSet;
    DS_usl: TDataSource;
    OD_list_choices_changesusl_name: TStringField;
    OD_list_choices_changesUSL_ID: TStringField;
    OD_list_choices_changesORG1_ID: TFloatField;
    OD_list_choices_changesorg_name1: TStringField;
    OD_sprorg2: TOracleDataSet;
    DS_sprorg2: TDataSource;
    OD_list_choices_changesorg_name2: TStringField;
    OD_list_choices_changesORG2_ID: TFloatField;
    OD_list_choices_changesPROC1: TFloatField;
    OD_list_choices_changesPROC2: TFloatField;
    OD_list_choices_changesABS_SET: TFloatField;
    OD_mg1: TOracleDataSet;
    DS_mg1: TDataSource;
    OD_list_choices_changesTYPE_NAME: TStringField;
    OD_list_choices_changesCNT_DAYS: TFloatField;
    OD_list_choices_changesCNT_DAYS2: TFloatField;
    OD_report: TOracleDataSet;
    DS_report: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    OD_status: TOracleDataSet;
    DS_status: TDataSource;
    cxpgcntrl1: TcxPageControl;
    cxTabSheet: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    OD_c_change_docs: TOracleDataSet;
    DS_c_change_docs: TDataSource;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1MGCHANGE: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1DTEK: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1TS: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1TEXT: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1CD_TP: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1MG2: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1USER_NAME: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1ID: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    btn1: TButton;
    wwDBEdit2: TwwDBEdit;
    GroupBox2: TGroupBox;
    DBComboBoxEh2: TDBComboBoxEh;
    DBComboBoxEh1: TDBComboBoxEh;
    DBComboBoxEh3: TDBComboBoxEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBComboBoxEh4: TDBComboBoxEh;
    Panel1: TPanel;
    Memo1: TMemo;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1USL_ID: TcxGridDBColumn;
    cxGrid1DBTableView1usl_name: TcxGridDBColumn;
    cxGrid1DBTableView1ORG1_ID: TcxGridDBColumn;
    cxGrid1DBTableView1org_name1: TcxGridDBColumn;
    cxGrid1DBTableView1PROC1: TcxGridDBColumn;
    cxGrid1DBTableView1ORG2_ID: TcxGridDBColumn;
    cxGrid1DBTableView1org_name2: TcxGridDBColumn;
    cxGrid1DBTableView1PROC2: TcxGridDBColumn;
    cxGrid1DBTableView1ABS_SET: TcxGridDBColumn;
    cxGrid1DBTableView1TYPE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1CNT_DAYS: TcxGridDBColumn;
    cxGrid1DBTableView1CNT_DAYS2: TcxGridDBColumn;
    GroupBox3: TGroupBox;
    chkIsPremise: TCheckBox;
    chkIsLsk: TCheckBox;
    chkIsObjects: TCheckBox;
    GroupBox4: TGroupBox;
    CheckBox1: TCheckBox;
    chk3: TCheckBox;
    CheckBox2: TCheckBox;
    chk2: TCheckBox;
    chk6: TCheckBox;
    chk4: TCheckBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    cbbMgFrom: TcxLookupComboBox;
    Label2: TLabel;
    cbbMgTo: TcxLookupComboBox;
    chk1: TCheckBox;
    cbbMgGen: TcxLookupComboBox;
    DS_mg2: TDataSource;
    OD_mg2: TOracleDataSet;
    cxtxtPremise: TcxTextEdit;
    cxtxtLsk: TcxTextEdit;
    chkIsAll: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkIsObjectsClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure chk7Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure setAllowEdit;
    procedure state_arch2(mgold_: string);
    procedure chkIsLskClick(Sender: TObject);
    procedure chkIsPremiseClick(Sender: TObject);
    procedure setObjectChecked(tp: integer);
    procedure chkIsAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_changes_houses2: TForm_changes_houses2;
  clr_: Integer;
  selectedObjectsJson: string;

implementation

uses DM_module1, Unit_status, Unit_sel_hs, Unit_list_kart, Unit_chargepay,
  Unit_Mainform, Unit_changes_lsk, u_frmSelObjects;

{$R *.dfm}

procedure TForm_changes_houses2.setAllowEdit;
begin
  //разрешить ли редактирование
  if (Form_main.arch_mg_ = '') then
  begin
    Caption := 'Перерасчеты';
    OD_c_change_docs.ReadOnly := false;
  end
  else if Form_main.arch_mg_ <> '' then
  begin
    Caption := 'Перерасчеты - Архив';
    OD_c_change_docs.ReadOnly := true;
  end;
end;

procedure TForm_changes_houses2.state_arch2(mgold_: string);
begin // смена состояний формы
  with Form_changes_lsk do
  begin
    if (Form_main.arch_mg_ <> '') and (mgold_ = '') then
    begin // из текущего в архив
      change_alias(Form_changes_houses2.OD_c_change_docs, 'scott.c_change_docs',
        '(select * from scott.a_change_docs where mg=''' + Form_main.arch_mg_ +
        ''')');
    end
    else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
    begin // из архива в текущее
      change_alias(Form_changes_houses2.OD_c_change_docs,
        '(select * from scott.a_change_docs where mg=''' + mgold_ + ''')',
        'scott.c_change_docs');
    end
    else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
    begin // из архива в архив
      change_alias(Form_changes_houses2.OD_c_change_docs,
        '(select * from scott.a_change_docs where mg=''' + mgold_ + ''')',
        '(select * from scott.a_change_docs where mg=''' + Form_main.arch_mg_ +
        ''')'
        );
    end;

  end;
end;

procedure TForm_changes_houses2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_changes_houses2.btn1Click(Sender: TObject);
var
  cnt_, tst_, is_sch_, usl_add_, doc_id_: Integer;
  l_chk2, l_chk3, l_chk4, l_chk6, l_psch: Integer;
  l_res, paramChangesUsl, selObjTp: string;
  isFirstLine: Boolean;
begin
  if not (OD_list_choices_changes.State in [dsBrowse]) then
    OD_list_choices_changes.Post;

  if OD_list_choices_changes.RecordCount = 0 then
  begin
    msg2('Не введены изменения!', 'Внимание',
      MB_OK + MB_ICONSTOP + MB_APPLMODAL);
    Abort;
  end;

  if (cbbMgFrom.EditValue = '') and (cbbMgTo.EditValue = '') then
  begin
    msg2('Не указан период изменений!', 'Внимание',
      MB_OK + MB_ICONSTOP + MB_APPLMODAL);
    Abort;
  end;

  if (chkIsLsk.Checked) and (cxtxtLsk.Text = '') then
  begin
    Application.MessageBox('Не указан лицевой счет!', 'Внимание',
      MB_OK + MB_ICONEXCLAMATION + MB_APPLMODAL);
    Abort;
  end;

  if CheckBox2.Checked then
    usl_add_ := 1
  else
    usl_add_ := 0;

  //По окончанию - начисление?
  if Chk2.Checked then
    l_chk2 := 1
  else
    l_chk2 := 0;

  //Добавить водоотведение?
  if Chk3.Checked then
    l_chk3 := 1
  else
    l_chk3 := 0;

  //Провести только по пустым квартирам?
  if Chk4.Checked then
    l_chk4 := 1
  else
    l_chk4 := 0;

  // Провести как корректировку сальдо?
  if Chk6.Checked then
    l_chk6 := 1
  else
    l_chk6 := 0;

  if DBComboBoxEh1.ItemIndex = 0 then
    is_sch_ := 0
  else if DBComboBoxEh1.ItemIndex = 1 then
    is_sch_ := 1
  else if DBComboBoxEh1.ItemIndex = 2 then
    is_sch_ := 2;

  if DBComboBoxEh2.ItemIndex = 0 then
    l_psch := 0
  else if DBComboBoxEh2.ItemIndex = 1 then
    l_psch := 1
  else if DBComboBoxEh2.ItemIndex = 2 then
    l_psch := 2;

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  // ****************** JSON объект
  paramChangesUsl := '{"lsk": "' + cxtxtLsk.Text + '",';
  paramChangesUsl := paramChangesUsl +
    '"periodFrom": "' + cbbMgFrom.EditValue + '",' +
    '"periodTo": "' + cbbMgTo.EditValue + '",';
  if chkIsObjects.Checked = True then
  begin
    paramChangesUsl := paramChangesUsl + selectedObjectsJson + ',';
  end;

  selObjTp := '';
  if chkIsPremise.Checked then
    selObjTp := '0'
  else if chkIsLsk.Checked then
    selObjTp := '1'
  else if chkIsObjects.Checked then
    selObjTp := '2'
  else
  begin
    Application.MessageBox('Необходимо выбрать объекты для перерасчета!', 'Внимание!', MB_OK +
      MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;
  paramChangesUsl :=paramChangesUsl+ '"selObjTp": "' + selObjTp + '",';

  isFirstLine := True;
  paramChangesUsl := paramChangesUsl + '"isAddUslSvSocn": "true",';
  paramChangesUsl := paramChangesUsl + '"isAddUslKan": "true",';
  paramChangesUsl := paramChangesUsl + '"processMeter": "1",';
  paramChangesUsl := paramChangesUsl + '"processAccount": "0",';
  paramChangesUsl := paramChangesUsl + '"processStatus": "2",';
  paramChangesUsl := paramChangesUsl + '"processLskTp": "2",';
  paramChangesUsl := paramChangesUsl + '"processTp": "1",';
  paramChangesUsl := paramChangesUsl + '"isProcessEmpty": "false",';
  paramChangesUsl := paramChangesUsl +
    '"comment": "коммент",';
  paramChangesUsl := paramChangesUsl + '"changeUslList": [';
  OD_list_choices_changes.First;
  isFirstLine := True;
  while not OD_list_choices_changes.Eof do
  begin
    if (OD_list_choices_changes.FieldByName('PROC1').AsInteger <> 0) or
      (OD_list_choices_changes.FieldByName('PROC2').AsInteger <> 0) or
      (OD_list_choices_changes.FieldByName('ABS_SET').AsInteger <> 0) or
      (OD_list_choices_changes.FieldByName('CNT_DAYS').AsInteger <> 0) or
      (OD_list_choices_changes.FieldByName('CNT_DAYS2').AsInteger <> 0) then
    begin
      if isFirstLine then
      begin
        isFirstLine := False;
      end
      else
        paramChangesUsl := paramChangesUsl + ',';
      paramChangesUsl := paramChangesUsl + '{';
      paramChangesUsl := paramChangesUsl +
        '"uslId":"' + OD_list_choices_changes.FieldByName('USL_ID').AsString +
        '"';
      paramChangesUsl := paramChangesUsl +
        ',"org1Id":"' + OD_list_choices_changes.FieldByName('ORG1_ID').AsString
        +
        '"';
      paramChangesUsl := paramChangesUsl +
        ',"proc1":"' + OD_list_choices_changes.FieldByName('PROC1').AsString +
        '"';
      paramChangesUsl := paramChangesUsl +
        ',"org2Id":"' + OD_list_choices_changes.FieldByName('ORG2_ID').AsString
        +
        '"';
      paramChangesUsl := paramChangesUsl +
        ',"proc2":"' + OD_list_choices_changes.FieldByName('PROC2').AsString +
        '"';
      paramChangesUsl := paramChangesUsl +
        ',"absSet":"' + OD_list_choices_changes.FieldByName('ABS_SET').AsString
        +
        '"';
      paramChangesUsl := paramChangesUsl +
        ',"cntDays":"' +
        OD_list_choices_changes.FieldByName('CNT_DAYS').AsString +
        '"';
      paramChangesUsl := paramChangesUsl +
        ',"cntDays2":"' +
        OD_list_choices_changes.FieldByName('CNT_DAYS2').AsString +
        '"';
      paramChangesUsl := paramChangesUsl + '}';
    end;
    OD_list_choices_changes.Next;
  end;
  paramChangesUsl := paramChangesUsl + ']';

  paramChangesUsl := paramChangesUsl + '}';
  Memo1.Text := paramChangesUsl;
  l_res :=
    DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
    ['genChanges', null, null, 'POST', Form_main.javaServer, paramChangesUsl]);

  //sendGetRequest(Memo1.Text);

  //    ShowMessage(PChar(paramChangesUsl));
      // ****************** Перерасчет на Java

    //чистим поля
  if tst_ = 0 then //изменения по процентам
  begin
    //    wwDBEdit1.Text:='';  Убрал - задолбало чиститься 16.10.2013
    //    wwDBEdit3.Text:='';
  end
  else //изменения в абс суммах
  begin
    //    wwDBEdit1.Text:='';  Убрал - задолбало чиститься 16.10.2013
    //    wwDBEdit3.Text:='';
    DataModule1.OraclePackage1.CallProcedure
      ('scott.C_CHANGES.clear_changes_proc', [parNone]);
  end;

  OD_report.Active := false;
  OD_report.SetVariable('doc_id_', doc_id_);
  //Выводить детализированный отчет, если записей не много (< 20)
  if cnt_ > 20 then
    OD_report.SetVariable('var_', 0)
  else
    OD_report.SetVariable('var_', 1);
  OD_report.Active := true;
  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
  OD_list_choices_changes.Refresh;
  OD_c_change_docs.Refresh;

  if FF('Form_chargepay', 0) = 1 then
    Form_chargepay.recalc;
end;

procedure TForm_changes_houses2.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_changes_houses2.FormCreate(Sender: TObject);
begin
  DBComboBoxEh1.ItemIndex := 1;
  DBComboBoxEh2.ItemIndex := 0;
  DBComboBoxEh3.ItemIndex := 0;
  DBComboBoxEh4.ItemIndex := 0;
  DBLookupComboboxEh1.KeyValue := 0;

  SetAllowEdit;
  state_arch2('');

  OD_mg1.Active := True;
  OD_mg2.Active := True;
  OD_status.Active := True;
  OD_usl.Active := True;
  OD_c_change_docs.Active := True;

  cbbMgFrom.EditValue := OD_mg1.FieldByName('MG').AsString;
  cbbMgTo.EditValue := OD_mg2.FieldByName('MG').AsString;

  if FF('Form_list_kart', 0) = 1 then
  begin
    cxtxtLsk.Text := Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
  end;
  DataModule1.OraclePackage1.CallProcedure
    ('scott.C_CHANGES.clear_changes_proc', [parNone]);
  OD_sprorg.Active := False;
  OD_sprorg.SetVariable('var_', 1);
  OD_sprorg.Active := True;
  OD_sprorg2.Active := False;
  OD_sprorg2.SetVariable('var_', 1);
  OD_sprorg2.Active := True;
  OD_list_choices_changes.Refresh;

  clr_ := 0;
end;

procedure TForm_changes_houses2.chkIsObjectsClick(Sender: TObject);
var
  modalForm: TfrmSelObjects;
begin
  setObjectChecked(2);
  if chkIsObjects.Checked then
  begin
    cxtxtLsk.Text := '';
    modalForm := TfrmSelObjects.Create(nil);
    selectedObjectsJson := '';
    if modalForm.ShowModal = mrOk then
      selectedObjectsJson := modalForm.ReturnValue;
  end;
end;

procedure TForm_changes_houses2.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_changes_houses2.chk7Click(Sender: TObject);
begin
  if CheckBox2.checked = True then
  begin
    OD_sprorg.Active := False;
    OD_sprorg.SetVariable('var_', 0);
    OD_sprorg.Active := True;
    OD_sprorg2.Active := False;
    OD_sprorg2.SetVariable('var_', 0);
    OD_sprorg2.Active := True;
  end
  else
  begin
    OD_sprorg.Active := False;
    OD_sprorg.SetVariable('var_', 1);
    OD_sprorg.Active := True;
    OD_sprorg2.Active := False;
    OD_sprorg2.SetVariable('var_', 1);
    OD_sprorg2.Active := True;
  end;

end;

procedure TForm_changes_houses2.chk1Click(Sender: TObject);
begin
  cbbMgGen.Enabled := chk1.Checked;
  if chk1.Checked = False then
  begin
    cbbMgGen.EditValue := '';
  end;
end;

procedure TForm_changes_houses2.chkIsLskClick(Sender: TObject);
begin
  setObjectChecked(1);
end;

// переключить выбранный для перерасчета объект

procedure TForm_changes_houses2.setObjectChecked(tp: Integer);
begin
  if tp = 0 then
  begin
    chkIsLsk.Checked := False;
    chkIsObjects.Checked := False;
  end
  else if tp = 1 then
  begin
    chkIsObjects.Checked := False;
    chkIsPremise.Checked := False;
  end
  else if tp = 2 then
  begin
    chkIsPremise.Checked := False;
    chkIsLsk.Checked := False;
  end
  else if tp = 3 then
  begin
    chkIsPremise.Checked := False;
    chkIsLsk.Checked := False;
    chkIsObjects.Checked := False;
  end

end;

procedure TForm_changes_houses2.chkIsPremiseClick(Sender: TObject);
begin
  setObjectChecked(0);
end;

procedure TForm_changes_houses2.chkIsAllClick(Sender: TObject);
begin
  setObjectChecked(3);

end;

end.

