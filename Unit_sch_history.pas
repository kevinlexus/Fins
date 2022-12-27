unit Unit_sch_history;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, ExtCtrls, StdCtrls, ComCtrls, cxControls, cxGridLevel,
  cxClasses, cxGridCustomTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxDBLookupComboBox, cxNavigator, cxSplitter, cxPC, cxLabel, Mask, Math,
  cxCalendar, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCheckBox,
  cxImageComboBox, dxBarBuiltInMenu, cxContainer, dxCore, cxDateUtils,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxGridTableView,
  cxGridCustomView, cxDBEdit, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_sch_history = class(TForm)
    OD_data: TOracleDataSet;
    pgc1: TPageControl;
    ts1: TTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NAME_TP: TcxGridDBColumn;
    cxGridDBTableView1NAME_ACT: TcxGridDBColumn;
    cxGridDBTableView1TS: TcxGridDBColumn;
    cxGridDBTableView1NAME_USER: TcxGridDBColumn;
    cxGridDBTableView1VOL: TcxGridDBColumn;
    cxGridDBTableView1NAME_USL: TcxGridDBColumn;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1NM: TcxGridDBColumn;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1NAME: TcxGridDBColumn;
    cxGrid2DBTableView1DT1: TcxGridDBColumn;
    cxGrid2DBTableView1DT2: TcxGridDBColumn;
    cxGrid2DBTableView1KLSK: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    OD_t_objxpar: TOracleDataSet;
    DS_t_objxpar: TDataSource;
    cxGrid2DBTableView1N1: TcxGridDBColumn;
    cxTextEdit1: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    Button2: TButton;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    OD_usl: TOracleDataSet;
    DS_usl: TDataSource;
    cxLabel8: TcxLabel;
    cxGrid2DBTableView1ACT: TcxGridDBColumn;
    DS_data: TDataSource;
    Panel4: TPanel;
    Button1: TButton;
    Button3: TButton;
    Panel5: TPanel;
    cxLabel1: TcxLabel;
    CheckBox1: TCheckBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Label1: TLabel;
    cxGrid2DBTableView1GIS_CONN_TP: TcxGridDBColumn;
    DataSource1: TDataSource;
    cxGrid2DBTableView1GIS_CONN: TcxGridDBColumn;
    OD_eolink_meter: TOracleDataSet;
    DS_eolink_meter: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2OPER_NAME: TcxGridDBColumn;
    cxGridDBTableView2N1: TcxGridDBColumn;
    cxGridDBTableView2TS: TcxGridDBColumn;
    cxGridDBTableView2USER_NAME: TcxGridDBColumn;
    cxGridDBTableView2STATUS_GIS: TcxGridDBColumn;
    cxGridDBTableView2COMM: TcxGridDBColumn;
    cxGridDBTableView2PERIOD: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLastVal: TcxDBMaskEdit;
    cxStartVal: TcxMaskEdit;
    cxNewVal: TcxMaskEdit;
    cxVal: TcxMaskEdit;
    OD_meter: TOracleDataSet;
    OD_meterNM: TStringField;
    OD_meterID: TFloatField;
    OD_meterNPP: TFloatField;
    OD_meterFK_USL: TStringField;
    OD_meterK_LSK_ID: TFloatField;
    OD_meterDT1: TDateTimeField;
    OD_meterDT2: TDateTimeField;
    OD_meterFK_KLSK_OBJ: TFloatField;
    OD_meterN1: TFloatField;
    OD_meterGIS_CONN_TP: TFloatField;
    OD_meterACT: TFloatField;
    OD_meterSTATE: TStringField;
    OD_meterSTATE_CD: TStringField;
    OD_meterCOUNTER: TStringField;
    DS_meter: TDataSource;
    OD_meterGIS_CONN_TP_1: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure refrN1;
    procedure Button2Click(Sender: TObject);
    procedure OD_t_objxparAfterRefresh(DataSet: TDataSet);
    procedure cxGrid2DBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure setFlt(flt, val: Integer);
    procedure OD_meterAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure setKlsk(klsk: Integer; lsk: string; meterId: Integer);
    procedure setTp(tp: Integer);
    procedure Button3Click(Sender: TObject);
    procedure cxGrid2DBTableView1GIS_CONNPropertiesPopup(Sender: TObject);
    procedure cxLastValKeyPress(Sender: TObject; var Key: Char);
    procedure cxNewValPropertiesChange(Sender: TObject);
    procedure cxNewValKeyPress(Sender: TObject; var Key: Char);
    procedure cxValKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView2DataControllerSummaryFooterSummaryItemsSummary(ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments; var OutArguments: TcxSummaryEventOutArguments);
  private    // фильтр счетчиков
    flt1: Integer;
    // фильтр показаний
    flt2: Integer;
    // Текущий лс klsk
    curKlsk: Integer;
    curLsk: string;
    // Тип доступа к форме 0 - из карточек, 1- из оплаты
    accTp: Integer;
  public
  end;

var
  Form_sch_history: TForm_sch_history;


implementation

uses
  DM_module1, Utils, Unit_form_kart, Unit_get_pay_nal, u_frmMeteGisConnect,
  Unit_Mainform, cxGridDBDataDefinitions;

{$R *.dfm}

procedure TForm_sch_history.FormCreate(Sender: TObject);
begin
  // фильтры включены
  flt1 := 1;
  flt2 := 1;

  OD_usl.Active := True;
  OD_data.Active := True;
  setFlt(1, 1);
  setFlt(2, 1);
  OD_t_objxpar.Active := True;
  cxDateEdit1.Date := Date();
  pgc1.ActivePageIndex := 0;
  cxPageControl1.ActivePage := cxTabSheet1;
  OD_eolink_meter.Active := True;

  // задать минимальный размер
  if Width < 927 then
    Width := 927;

end;

// установить klsk

procedure TForm_sch_history.setKlsk(klsk: Integer; lsk: string; meterId: Integer);
begin
  OD_meter.Active := false;
  OD_meter.SetVariable('k_lsk_id', klsk);
  OD_meter.Active := true;
  if meterId <> 0 then
    OD_meter.SearchRecord('id', meterId, [srFromBeginning]);
  curKlsk := klsk;
  curLsk := lsk;
  if (Self.Visible) and (cxPageControl1.ActivePageIndex = 0) then
  begin
    Windows.SetFocus(cxNewVal.Handle);
    cxNewVal.SelectAll;
  end;
end;

// установить тип доступа

procedure TForm_sch_history.setTp(tp: Integer);
begin
  accTp := tp;
  //  if accTp = 1 then
end;

// установить фильтры

procedure TForm_sch_history.setFlt(flt, val: Integer);
begin
  if flt = 1 then
  begin
    if val = 0 then
    begin
      cxGrid2DBTableView1.NavigatorButtons.CustomButtons[0].ImageIndex := 0;
      cxGrid2DBTableView1.NavigatorButtons.CustomButtons[0].Hint := 'Скрыть недействующие';
    end
    else
    begin
      cxGrid2DBTableView1.NavigatorButtons.CustomButtons[0].ImageIndex := 1;
      cxGrid2DBTableView1.NavigatorButtons.CustomButtons[0].Hint := 'Показать все';
    end;

    flt1 := val;
    OD_meter.Active := false;
    OD_meter.SetVariable('flt1', flt1);
    OD_meter.Active := True;
  end
  else if flt = 2 then
  begin
    flt2 := val;
    //OD_meter.Active:=false;
    //OD_meter.SetVariable('flt1', flt1);
    //OD_meter.Active:=True;
  end;
end;

procedure TForm_sch_history.refrN1;
var
  d, n1: Double;
begin
  if cxLastVal.Text <> '' then
    d := StrToFloat(cxLastVal.Text)
  else
    d := 0;

  if cxNewVal.Text <> '' then
    n1 := StrToFloat(cxNewVal.Text)
  else
    n1 := 0;
  cxVal.Text := FloatToStr(RoundTo(n1 - d, -5));
end;

procedure TForm_sch_history.Button1Click(Sender: TObject);
var
  metKlsk, ret: Integer;
  d, vol, n1: Double;
  isEof: Boolean;
begin
  if not (OD_meter.State in [dsBrowse]) then
    OD_meter.Post;
  isEof := OD_meter.Eof;
  // ввод последнего показания
  if CheckBox1.Checked then
  begin
    CheckBox1.Checked := false;
    cxLastVal.Properties.ReadOnly := True;
    msg2('Последнее показание отредактировано!', 'Внимание!', MB_OK);
    Exit;
  end;

  // запретить ввод по неактивному счетчику
  if OD_meter.FieldByName('act').AsInteger <> 1 then
  begin
    msg2('Попытка передать объем по неактивному счетчику!', 'Внимание!', MB_OK + MB_ICONERROR);
    Exit;
  end;

  vol := StrToFloat(cxVal.Text);
  // запретить ввод 0 расхода
  if vol = 0 then
  begin
    msg2('Попытка передать нулевой расход!', 'Внимание!', MB_OK + MB_ICONERROR);
    Exit;
  end;

  if cxLastVal.Text <> '' then
    d := StrToFloat(cxLastVal.Text)
  else
    d := 0;

  if cxNewVal.Text <> '' then
    n1 := StrToFloat(cxNewVal.Text)
  else
    n1 := 0;

  metKlsk := OD_meter.FieldByName('K_LSK_ID').AsInteger;
  ret := DataModule1.OraclePackage1.CallIntegerFunction('scott.p_meter.ins_vol_meter', [metKlsk, null, null, vol, n1, 0]);
  if ret = 0 then
  begin
    DataModule1.OraclePackage1.Session.Commit;

    cxVal.Text := '0';
    OD_meter.Active := false;
    OD_meter.Active := true;

    OD_meter.Locate('K_LSK_ID', metKlsk, []);

    OD_t_objxpar.Active := false;
    OD_t_objxpar.Active := true;
    OD_t_objxpar.Last;

  end
  else if ret = 3 then
  begin
    DataModule1.OraclePackage1.Session.Rollback;
    msg2('Попытка передать пустые показания!', 'Внимание!', MB_OK + MB_ICONERROR);
    exit;
  end
  else
  begin
    DataModule1.OraclePackage1.Session.Rollback;
    msg2('Попытка передать объем по закрытому счетчику!', 'Внимание!', MB_OK + MB_ICONERROR);
    exit;
  end;

  if OD_meter.RecNo = OD_meter.RecordCount then
  begin
    Windows.SetFocus(Button3.Handle);
  end
  else
  begin
    OD_meter.Next;
    Windows.SetFocus(cxNewVal.Handle);
    cxNewVal.SelectAll;
  end;
end;

procedure TForm_sch_history.FormClose(Sender: TObject; var Action: TCloseAction);
var
  cnt_: Integer;
begin
  if not (OD_meter.State in [dsBrowse]) then
    OD_meter.Post;
  if accTp = 1 then
  begin
    // если было вызвано из формы ввода налички
    // подготовить ввод платежей
    Form_get_pay_nal.clearPay;
  end;

  // сохранить/обновить форму карточки, чтобы обновить поле расхода по счетчику
  if FF('Form_kart', 0) = 1 then
  begin
    Form_kart.saveOrRollbackKart(0, True);
    Form_kart.recalc_kart;
  end;

  Action := caFree
end;

procedure TForm_sch_history.Button2Click(Sender: TObject);
var
  klsk: Integer;
  d: Double;
begin
  if cxStartVal.Text <> '' then
    d := StrToFloat(cxStartVal.Text)
  else
    d := 0;

  if (VarToStr(cxLookupComboBox1.EditValue) = '') then
  begin
    msg2('Не заполнена услуга!', 'Внимание!', MB_OK + MB_ICONERROR);
    Exit;
  end;

  if (cxDateEdit1.EditValue = null) then
  begin
    msg2('Не заполнена дата начала работы!', 'Внимание!', MB_OK + MB_ICONERROR);
    Exit;
  end;

  if (cxDateEdit2.EditValue = null) then
  begin
    msg2('Не заполнена дата окончания работы!', 'Внимание!', MB_OK + MB_ICONERROR);
    Exit;
  end;

  klsk := DataModule1.OraclePackage1.CallIntegerFunction('scott.p_meter.ins_meter', [cxTextEdit1.Text, VarToStr(cxLookupComboBox1.EditValue), cxDateEdit1.Date, cxDateEdit2.Date, d, curKlsk, 'ИПУ']);
  DataModule1.OraclePackage1.Session.Commit;
  OD_meter.Active := false;
  OD_meter.Active := true;
  OD_meter.Locate('K_LSK_ID', klsk, []);
  cxPageControl1.ActivePageIndex := 0;

  // сохранить/обновить форму карточки, чтобы обновить поле расхода по счетчику
  if FF('Form_kart', 0) = 1 then
    Form_kart.saveOrRollbackKart(0, True);
  //Form_kart.save_changes(0);

end;

procedure TForm_sch_history.OD_t_objxparAfterRefresh(DataSet: TDataSet);
begin
  OD_t_objxpar.Last;
end;

procedure TForm_sch_history.cxGrid2DBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 16) then
  begin
    // нажата кнопка снять/поставить фильтр
    if flt1 = 1 then
    begin
      setFlt(1, 0);
    end
    else
    begin
      setFlt(1, 1);
    end;

  end;
end;

procedure TForm_sch_history.cxGridDBTableView2DataControllerSummaryFooterSummaryItemsSummary(ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments; var OutArguments: TcxSummaryEventOutArguments);
var
  AValue, ACurrValue: Variant;
  I: Integer;
  AView: TcxGridDBTableView;
  AColumn, AColumnOper, AColumnPeriod: TcxGridDBColumn;
  periodFormatted: string;
begin
  // найти только расход, за текущий период и суммировать его
  ShowMessage('CHECK!');
  AValue := 0;
  AView := TcxGridDBDataController(ASender.DataController).GridView as TcxGridDBTableView;
  AColumn := TcxGridDBColumn(AView.FindItemByName('cxGridDBTableView2N1'));

  if TcxGridDBTableSummaryItem(Arguments.SummaryItem).Column = AColumn then
  begin
    AColumnOper := TcxGridDBColumn(AView.FindItemByName('cxGridDBTableView2OPER_NAME'));
    AColumnPeriod := TcxGridDBColumn(AView.FindItemByName('cxGridDBTableView2PERIOD'));
    periodFormatted := FormatDateTime('mm.yyyy', Form_main.cur_dt);
    for I := 0 to AView.ViewData.RecordCount - 1 do
    begin
      try
        if (AView.ViewData.Records[I].Values[AColumnOper.Index] = 'Расход прибора учета') and (AView.ViewData.Records[I].Values[AColumnPeriod.Index] = periodFormatted) then
          AValue := AValue + AView.ViewData.Records[I].Values[AColumn.Index];
      except
        // происходит ошибка List index out of bound, не смог отловить
        //ShowMessage('повалилось на '+IntToStr(I));
      end;
    end;
    OutArguments.SummaryValue := AValue;
    //OutArguments.SummaryValue := '11';
    //OutArguments.Value := AValue;
    OutArguments.Done := true;
  end;
end;

{function TForm_sch_history.exit_ok: Integer;
begin
  Result:=1;
  if not (OD_meter.State in [dsBrowse]) then
   OD_meter.Post;
  if not (OD_t_objxpar.State in [dsBrowse]) then
   OD_t_objxpar.Post;

  try
   DataModule1.OraclePackage1.CallProcedure
       ('scott.UTILS.upd_krt_sch_state',
       [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]);
  except
   Exit;
  end;

  OD_meter.Session.Commit;
  upd_:=0;
  Result:=0;
end;

function TForm_sch_history.exit_cancel: Integer;
begin
  Result:=1;
  if (upd_=1) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      Result:=exit_ok;
      if Result=1 then begin
        OD_meter.Session.Rollback;
      end;
      upd_:=0;
    end
    else
    begin
      if not (OD_meter.State in [dsBrowse]) then
        OD_meter.Cancel;

      if not (OD_t_objxpar.State in [dsBrowse]) then
        OD_t_objxpar.Cancel;

      OD_meter.Session.Rollback;
      upd_:=0;
      Result:=0;
    end;
 end;
end; }

procedure TForm_sch_history.OD_meterAfterScroll(DataSet: TDataSet);
begin
  if OD_meter.FieldByName('STATE_CD').AsString = 'Неисправен ПУ' then
  begin
    Label1.Visible := True;
    cxNewVal.Properties.ReadOnly := True;
    cxVal.Properties.ReadOnly := True;
  end
  else
  begin
    Label1.Visible := False;
    cxNewVal.Properties.ReadOnly := False;
    cxVal.Properties.ReadOnly := False;
  end;

  // установить точность поля ввода
  if OD_meter.FieldByName('COUNTER').AsString = 'pot' then
  begin
    cxLastVal.Properties.EditMask := '\-?\d{1,8}\.?\d{0,5}';
    cxNewVal.Properties.EditMask := '\-?\d{1,8}\.?\d{0,5}';
    cxVal.Properties.EditMask := '\-?\d{1,8}\.?\d{0,5}';
    cxStartVal.Properties.EditMask := '\-?\d{1,8}\.?\d{0,5}';
  end
  else
  begin
    cxLastVal.Properties.EditMask := '\-?\d{1,8}\.?\d{0,3}';
    cxNewVal.Properties.EditMask := '\-?\d{1,8}\.?\d{0,3}';
    cxVal.Properties.EditMask := '\-?\d{1,8}\.?\d{0,3}';
    cxStartVal.Properties.EditMask := '\-?\d{1,8}\.?\d{0,3}';
  end;

  cxNewVal.Text := OD_meter.FieldByName('N1').AsString;

end;

procedure TForm_sch_history.CheckBox1Click(Sender: TObject);
begin
  // возможность правки последнего показания
  if CheckBox1.Checked then
  begin
    cxLastVal.Properties.ReadOnly := false;
    cxNewVal.Properties.ReadOnly := true;
    cxVal.Properties.ReadOnly := true;
  end
  else
  begin
    cxLastVal.Properties.ReadOnly := true;
    cxNewVal.Properties.ReadOnly := false;
    cxVal.Properties.ReadOnly := false;
  end;
end;

procedure TForm_sch_history.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_sch_history.cxGrid2DBTableView1GIS_CONNPropertiesPopup(Sender: TObject);
begin
  if not (OD_meter.State in [dsBrowse]) then
    OD_meter.Post;
  Application.CreateForm(TfrmMeteGisConnect, frmMeteGisConnect);
  if frmMeteGisConnect.ShowModal = mrOk then

end;

procedure TForm_sch_history.cxLastValKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    //      cxNewVal.SetFocus;
    Windows.SetFocus(cxNewVal.Handle);
    cxNewVal.SelectAll;
  end;

end;

procedure TForm_sch_history.cxNewValPropertiesChange(Sender: TObject);
begin
  refrN1;
end;

procedure TForm_sch_history.cxNewValKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
  if Key = #13 then
    Windows.SetFocus(cxVal.Handle);

end;

procedure TForm_sch_history.cxValKeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';
  if Key = #13 then
    Windows.SetFocus(Button1.Handle);

end;

end.

