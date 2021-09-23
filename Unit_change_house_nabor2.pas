unit Unit_change_house_nabor2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, DB, OracleData, wwdbedit,
  cxControls, 

                                  
  cxMaskEdit, 
  cxDBLookupComboBox, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, ComCtrls, dxCore, cxDateUtils, cxCalendar,
  cxDBEdit;

type
  TForm_change_house_nabor2 = class(TForm)
    DS_usl: TDataSource;
    OD_usl: TOracleDataSet;
    DS_sprorg: TDataSource;
    OD_sprorg: TOracleDataSet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    OD_lsk_tp: TOracleDataSet;
    DS_lsk_tp: TDataSource;
    pnl1: TPanel;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label3: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label5: TLabel;
    Label1: TLabel;
    cbb2: TcxLookupComboBox;
    lbl1: TLabel;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit1: TcxMaskEdit;
    Label4: TLabel;
    Label6: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure setState(p_lvl: Integer; p_lsk: string; st_: Integer; sptarn_:
      Integer);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure set_sptarn(st_: Integer);
    procedure CheckBox1Click(Sender: TObject);
  private
    l_lvl, old_org_, state_: Integer;
    old_koeff_, old_norm_: Double;
    l_lsk: string;
  public
    var_: Integer;
  end;

var
  Form_change_house_nabor2: TForm_change_house_nabor2;

implementation

uses DM_module1, Unit_Mainform, Unit_status, Utils,
  Unit_list_kart, Unit_tarif_usl, ufDataModuleOlap;

{$R *.dfm}

procedure TForm_change_house_nabor2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_change_house_nabor2.setState(p_lvl: Integer; p_lsk: string; st_:
  Integer; sptarn_: Integer);
begin
  state_ := st_;
  l_lvl := p_lvl;
  l_lsk := p_lsk;
  set_sptarn(sptarn_);

  if p_lvl = 0 then
  begin
    //Уровень-Город
    if (state_ = 1) then
      Caption := 'Добавление услуги по городу'
    else if (state_ = 2) then
      Caption := 'Изменение услуги в городе';
  end
  else if p_lvl = 1 then
  begin
    //Уровень-Фонд
    if (state_ = 1) then
      Caption := 'Добавление услуги по фонду'
    else if (state_ = 2) then
      Caption := 'Изменение услуги в фонде';
  end
  else if p_lvl = 2 then
  begin
    //Уровень-УК
    if (state_ = 1) then
      Caption := 'Добавление услуги по УК'
    else if (state_ = 2) then
      Caption := 'Изменение услуги в УК';

  end
  else if p_lvl = 3 then
  begin
    //Уровень-Дом
    if (state_ = 1) then
      Caption := 'Добавление услуги по дому'
    else if (state_ = 2) then
      Caption := 'Изменение услуги в доме';
  end
  else if p_lvl = 4 then
  begin
    cbb2.Enabled := False;
    //Уровень-Л/C
    if (state_ = 1) then
      Caption := 'Добавление услуги по лиц.счету:' +
        Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
  end;

  if (state_ = 1) then
  begin
    wwDBLookupCombo1.Enabled := True;
    wwDBLookupCombo2.Enabled := True;
  end
  else if (state_ = 2) then
  begin
    old_org_ := DM_Olap.Uni_data.FieldByName('org').AsInteger;
    old_koeff_ := DM_Olap.Uni_data.FieldByName('koeff').AsFloat;
    old_norm_ := DM_Olap.Uni_data.FieldByName('norm').AsFloat;
    wwDBLookupCombo1.Enabled := False;
    wwDBLookupCombo1.Value :=
      DM_Olap.Uni_data.FieldByName('usl').AsString;
    wwDBLookupCombo2.Value :=
      DM_Olap.Uni_data.FieldByName('org').AsString;
    cxMaskEdit3.Text := DM_Olap.Uni_data.FieldByName('koeff').AsString;
    cxMaskEdit1.Text := DM_Olap.Uni_data.FieldByName('norm').AsString;
    cxDateEdit1.Date := DM_Olap.Uni_data.FieldByName('dt1').AsDateTime;
    cxDateEdit2.Date := DM_Olap.Uni_data.FieldByName('dt2').AsDateTime;
  end;

end;

procedure TForm_change_house_nabor2.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TForm_change_house_nabor2.Button1Click(Sender: TObject);
var
  l_chrg: Integer;
begin
  if FF('Form_tarif_usl', 0) = 1 then
  begin
    if Form_tarif_usl.checkbox1.checked = true then
      l_chrg := 1
    else
      l_chrg := 0;
  end;

  if (wwDBLookupCombo1.LookupValue = '') then
  begin
    msg2('Не выбрана услуга', 'Внимание!', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if (wwDBLookupCombo2.LookupValue = '') then
  begin
    msg2('Не выбрана организация', 'Внимание!', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;

  if state_ = 1 then
  begin
    //добавление новой услуги
    if (((l_lvl = 0) or (l_lvl = 1)) and
      (msg3('Услуга будет добавлена по большому кол-ву л/c, продолжить?',
      'Внимание!', MB_YESNO + MB_ICONQUESTION) = ID_YES))
      or ((l_lvl <> 0) and (l_lvl <> 1)) then
    begin
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      if l_lvl = 4 then
      begin
        //по л.с.
        DataModule1.UniStoredProc1.StoredProcName :=
          'scott.p_houses.house_add_usl';
        with DataModule1.UniStoredProc1.Params do
        begin
          Clear;
          CreateParam(ftInteger, 'p_lvl', ptInput).AsInteger := l_lvl;
          CreateParam(ftString, 'lsk_', ptInput).AsString :=
            Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
          CreateParam(ftInteger, 'house_id_', ptInput).AsInteger;
          CreateParam(ftString, 'p_reu', ptInput).AsString;
          CreateParam(ftString, 'p_trest', ptInput).AsString;
          CreateParam(ftString, 'usl_', ptInput).AsString :=
            OD_usl.FieldByName('usl').AsString;
          CreateParam(ftInteger, 'org_', ptInput).AsInteger :=
            OD_sprorg.FieldByName('kod').AsInteger;
          CreateParam(ftFloat, 'koeff_', ptInput).AsFloat :=
            StrToFloat(NvlStr(cxMaskEdit3.Text, '0'));
          CreateParam(ftFloat, 'norm_', ptInput).AsFloat :=
            StrToFloat(NvlStr(cxMaskEdit1.Text, '0'));
          CreateParam(ftInteger, 'p_chrg', ptInput).AsFloat :=
            l_chrg;
          CreateParam(ftDate, 'p_dt1', ptInput).AsDate :=
            cxDateEdit1.Date;
          CreateParam(ftDate, 'p_dt2', ptInput).AsDate :=
            cxDateEdit2.Date;
        end;
        DataModule1.UniStoredProc1.ExecProc;

      end
      else
      begin
        //по прочим объектам
        DataModule1.UniStoredProc1.StoredProcName :=
          'scott.p_houses.house_add_usl';
        with DataModule1.UniStoredProc1.Params do
        begin
          Clear;
          CreateParam(ftInteger, 'p_lvl', ptInput).AsInteger := l_lvl;
          CreateParam(ftString, 'lsk_', ptInput).AsString;
          CreateParam(ftInteger, 'house_id_', ptInput).AsInteger :=
            DM_Olap.Uni_tree_objects.FieldByName('fk_house').AsInteger;
          CreateParam(ftString, 'p_reu', ptInput).AsString :=
            DM_Olap.Uni_tree_objects.FieldByName('reu').AsString;
          CreateParam(ftString, 'p_trest', ptInput).AsString :=
            DM_Olap.Uni_tree_objects.FieldByName('trest').AsString;
          CreateParam(ftString, 'usl_', ptInput).AsString :=
            OD_usl.FieldByName('usl').AsString;
          CreateParam(ftInteger, 'org_', ptInput).AsInteger :=
            OD_sprorg.FieldByName('kod').AsInteger;
          CreateParam(ftFloat, 'koeff_', ptInput).AsFloat :=
            StrToFloat(NvlStr(cxMaskEdit3.Text, '0'));
          CreateParam(ftFloat, 'norm_', ptInput).AsFloat :=
            StrToFloat(NvlStr(cxMaskEdit1.Text, '0'));
          CreateParam(ftInteger, 'p_chrg', ptInput).AsFloat :=
            l_chrg;
          CreateParam(ftDate, 'p_dt1', ptInput).AsDate :=
            cxDateEdit1.Date;
          CreateParam(ftDate, 'p_dt2', ptInput).AsDate :=
            cxDateEdit2.Date;
        end;
        DataModule1.UniStoredProc1.ExecProc;

      end;
      Form_status.Close;

    end;
  end
  else if state_ = 2 then
  begin
    if (((l_lvl = 0) or (l_lvl = 1)) and
      (msg3('Услуга будет изменена по большому кол-ву л/c, продолжить?',
      'Внимание!', MB_YESNO + MB_ICONQUESTION) = ID_YES))
      or ((l_lvl <> 0) and (l_lvl <> 1)) then
    begin
      //изменение существующей услуги
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      DataModule1.UniStoredProc1.StoredProcName :=
        'scott.p_houses.house_chng_usl';
      with DataModule1.UniStoredProc1.Params do
      begin
        Clear;
        CreateParam(ftInteger, 'p_lvl', ptInput).AsInteger :=
          l_lvl;
        CreateParam(ftInteger, 'p_house_id', ptInput).AsInteger :=
          DM_Olap.Uni_tree_objects.FieldByName('fk_house').AsInteger;
        CreateParam(ftString, 'p_reu', ptInput).AsString :=
          DM_Olap.Uni_tree_objects.FieldByName('reu').AsString;
        CreateParam(ftString, 'p_trest', ptInput).AsString :=
          DM_Olap.Uni_tree_objects.FieldByName('trest').AsString;
        CreateParam(ftString, 'usl_', ptInput).AsString :=
          OD_usl.FieldByName('usl').AsString;
        CreateParam(ftInteger, 'old_org_', ptInput).AsInteger :=
          old_org_;
        CreateParam(ftInteger, 'new_org_', ptInput).AsInteger :=
          OD_sprorg.FieldByName('kod').AsInteger;
        CreateParam(ftFloat, 'old_koeff_', ptInput).AsFloat :=
          old_koeff_;
        CreateParam(ftFloat, 'old_norm_', ptInput).AsFloat :=
          old_norm_;
        CreateParam(ftFloat, 'new_koeff_', ptInput).AsFloat :=
          StrToFloat(NvlStr(cxMaskEdit3.Text, '0'));
        CreateParam(ftFloat, 'new_norm_', ptInput).AsFloat :=
          StrToFloat(NvlStr(cxMaskEdit1.Text, '0'));
        CreateParam(ftInteger, 'p_chrg', ptInput).AsFloat :=
          l_chrg;
          CreateParam(ftDate, 'p_dt1', ptInput).AsDate :=
            cxDateEdit1.Date;
          CreateParam(ftDate, 'p_dt2', ptInput).AsDate :=
            cxDateEdit2.Date;
      end;
      DataModule1.UniStoredProc1.ExecProc;
      Form_status.Close;
    end;
  end;
  ModalResult := mrOk;
end;

procedure TForm_change_house_nabor2.wwDBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

  if Key = #13 then
    //    Button1.SetFocus;
    Windows.SetFocus(Button1.Handle);
end;

procedure TForm_change_house_nabor2.wwDBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_change_house_nabor2.FormCreate(Sender: TObject);
begin
  OD_lsk_tp.Active := true;
  cbb2.EditValue := 'LSK_TP_MAIN';

  OD_sprorg.Active := false;
  OD_sprorg.SetVariable('var_', 1);
  OD_sprorg.Active := true;
  OD_usl.Active := true;

  if Form_main.org_var_ = 0 then
  begin
    //ЖКХ
    Label5.Caption := 'Коэфф';
    Label1.Caption := 'Норм.';
  end
  else
  begin
    Label5.Caption := 'Расц.';
    Label1.Caption := 'Объём';
    //Прочие организации
  end;
end;

procedure TForm_change_house_nabor2.set_sptarn(st_: Integer);
begin
  if st_ = 0 then
  begin
    //коэфф
    cxMaskEdit1.Visible := false;
    Label1.Visible := false;

    cxMaskEdit3.Visible := true;
    Label5.Visible := true;
  end
  else if st_ = 1 then
  begin
    //норматив
    cxMaskEdit3.Visible := false;
    Label5.Visible := false;

    cxMaskEdit1.Visible := true;
    Label1.Visible := true;
  end
  else if (st_ = 2) or (st_ = 3) or (st_ = 4) then
  begin
    //норматив и коэфф
    cxMaskEdit3.Visible := true;
    Label5.Visible := true;

    cxMaskEdit1.Visible := true;
    Label1.Visible := true;
  end;
end;

procedure TForm_change_house_nabor2.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  set_sptarn(OD_usl.FieldByName('sptarn').AsInteger);
end;

procedure TForm_change_house_nabor2.CheckBox1Click(Sender: TObject);
begin
  with OD_sprorg do
  begin
    Active := False;
    if CheckBox1.Checked = True then
      SetVariable('var_', 0)
    else
      SetVariable('var_', 1);
    Active := True;
  end;
end;

end.

