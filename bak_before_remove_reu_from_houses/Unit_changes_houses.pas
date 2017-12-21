unit Unit_changes_houses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Oracle,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, DBGridEh, wwdblook,
  Mask, wwdbedit, Wwdbdlg, Utils, GridsEh, frxClass, frxDBSet, DBCtrlsEh,
  DBLookupEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, DBCtrls,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TForm_changes_houses = class(TForm)
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
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    chk5: TCheckBox;
    CheckBox2: TCheckBox;
    btn1: TButton;
    wwDBEdit2: TwwDBEdit;
    CheckBox3: TCheckBox;
    GroupBox2: TGroupBox;
    DBComboBoxEh2: TDBComboBoxEh;
    DBComboBoxEh1: TDBComboBoxEh;
    DBComboBoxEh3: TDBComboBoxEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBComboBoxEh4: TDBComboBoxEh;
    chk1: TCheckBox;
    cxLookupComboBox2: TcxLookupComboBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    cxLookupComboBox1: TcxLookupComboBox;
    chk4: TCheckBox;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    wdbnvgtr1: TwwDBNavigator;
    nbtn1: TwwNavButton;
    nbtn2: TwwNavButton;
    nbtn3: TwwNavButton;
    nbtn4: TwwNavButton;
    nbtn5: TwwNavButton;
    nbtn6: TwwNavButton;
    nbtn7: TwwNavButton;
    nbtnDBNavigator1Delete: TwwNavButton;
    nbtnDBNavigator1Edit: TwwNavButton;
    nbtnDBNavigator1Post: TwwNavButton;
    nbtn8: TwwNavButton;
    nbtn9: TwwNavButton;
    nbtn10: TwwNavButton;
    nbtn11: TwwNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure chk7Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure setAllowEdit;
    procedure state_arch2(mgold_: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_changes_houses: TForm_changes_houses;
  clr_: Integer;

implementation

uses DM_module1, Unit_status, Unit_sel_hs, Unit_list_kart, Unit_chargepay,
  Unit_Mainform, Unit_changes_lsk;

{$R *.dfm}


procedure TForm_changes_houses.setAllowEdit;
begin
  //разрешить ли редактирование
  if (Form_main.arch_mg_ = '') then
    begin
      Caption:='Перерасчеты';
      OD_c_change_docs.ReadOnly:=false;
    end
  else if Form_main.arch_mg_ <> '' then
    begin
      Caption:='Перерасчеты - Архив';
      OD_c_change_docs.ReadOnly:=true;
    end;
end;

procedure TForm_changes_houses.state_arch2(mgold_: String);
begin // смена состояний формы
with Form_changes_lsk do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
    change_alias(Form_changes_houses.OD_c_change_docs, 'scott.c_change_docs',
      '(select * from scott.a_change_docs where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
    change_alias(Form_changes_houses.OD_c_change_docs,
      '(select * from scott.a_change_docs where mg='''+mgold_+''')',
      'scott.c_change_docs');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
    change_alias(Form_changes_houses.OD_c_change_docs,
      '(select * from scott.a_change_docs where mg='''+mgold_+''')',
      '(select * from scott.a_change_docs where mg='''+Form_main.arch_mg_+''')'
      );
  end;

end;
end;

procedure TForm_changes_houses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_changes_houses.btn1Click(Sender: TObject);
var
  cnt_, tst_, is_sch_, usl_add_, doc_id_: Integer;
  l_chk2, l_chk3, l_chk4, l_psch: Integer;
begin
  if not (OD_list_choices_changes.State in [dsBrowse]) then
    OD_list_choices_changes.Post;

  if OD_list_choices_changes.RecordCount = 0 then
  begin
    msg2('Не введены изменения!','Внимание',
            MB_OK + MB_ICONSTOP+MB_APPLMODAL);
    Abort;
  end;


  if (cxLookupComboBox1.EditValue = '') {or (not cxLookupComboBox1.EditModified)} then
  begin
    msg2('Не указан период изменений!','Внимание',
            MB_OK + MB_ICONSTOP+MB_APPLMODAL);
    Abort;
  end;

  if (not chk5.Checked ) and (wwDBEdit1.Text='') and (wwDBEdit3.Text='') then
  begin
    Application.MessageBox('Не указаны лицевые счета!','Внимание',
            MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
    Abort;
  end;

   if CheckBox2.Checked then
     usl_add_ := 1
   else
     usl_add_ := 0;

   //По окончанию - начисление?
   if Chk2.Checked then
     l_chk2:=1
   else
     l_chk2:=0;

   //Добавить водоотведение?
   if Chk3.Checked then
     l_chk3:=1
   else
     l_chk3:=0;

   //Провести только по пустым квартирам?
   if Chk4.Checked then
     l_chk4:=1
   else
     l_chk4:=0;

   if DBComboBoxEh1.ItemIndex=0 then
     is_sch_ := 0
   else if DBComboBoxEh1.ItemIndex=1 then
     is_sch_ := 1
   else if DBComboBoxEh1.ItemIndex=2 then
     is_sch_ := 2;

   if DBComboBoxEh2.ItemIndex=0 then
     l_psch := 0
   else if DBComboBoxEh2.ItemIndex=1 then
     l_psch := 1
   else if DBComboBoxEh2.ItemIndex=2 then
     l_psch := 2;

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  //Тестируем
  try
  DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CHANGES.gen_changes_proc',
          [wwDBEdit3.Text, wwDBEdit1.Text,
           cxLookupComboBox1.EditValue,
           cxLookupComboBox2.EditValue,
           usl_add_, is_sch_, l_psch, 1,
           wwDBEdit2.Text, parInteger, parInteger,
           DBComboBoxEh3.ItemIndex,
           OD_status.FieldByName('id').AsInteger,
           l_chk2,
           l_chk3,
           l_chk4,
           DBComboBoxEh4.ItemIndex
           ]);
   except

   on E:EOracleError do
   begin
      msg2(E.Message,
       'Внимание!',MB_ICONSTOP+MB_OK);
      Form_status.Close;
      Exit;
   end;
  end;
  cnt_:=DataModule1.OraclePackage1.GetParameter(9);
  doc_id_:=DataModule1.OraclePackage1.GetParameter(10);
  if cnt_ = 2 then
  begin
    if msg3('Период не соответствует периоду действия данных Л/C., продолжить?','Внимание!',
     MB_ICONQUESTION+MB_YESNO) = ID_NO then
     begin
       Form_status.Close;
       exit;
     end;
  end;

  if cnt_ = 3 then
  begin
    msg2('Попытка выполнить перерасчет по услуге, которой нет в данном лицевом счете, за требуемый период,'+
            ' ОПРЕДЕЛИТЕ для неё организацию, в форме перерасчета','Внимание!', MB_ICONSTOP+MB_OK);
    Form_status.Close;
    exit;
  end;

  //Выполняем
  try
  DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CHANGES.gen_changes_proc',
          [wwDBEdit3.Text, wwDBEdit1.Text,
           cxLookupComboBox1.EditValue,
           cxLookupComboBox2.EditValue,
           usl_add_, is_sch_, l_psch, 0,
           wwDBEdit2.Text, parInteger, parInteger,
           DBComboBoxEh3.ItemIndex,
           OD_status.FieldByName('id').AsInteger,
           l_chk2,
           l_chk3,
           l_chk4,
           DBComboBoxEh4.ItemIndex]);
   except
   on E:EOracleError do
   begin
    if Pos('20001', E.Message) <> 0 then
      msg2('Вам запрещено выполнять изменения по Л/С: '+copy(E.Message,12,8),
       'Внимание!',MB_ICONSTOP+MB_OK)
    else
      msg2(E.Message,
       'Внимание!',MB_ICONSTOP+MB_OK);
      Form_status.Close;
      Exit;
   end;
  end;
  cnt_:=DataModule1.OraclePackage1.GetParameter(9);
  doc_id_:=DataModule1.OraclePackage1.GetParameter(10);
  Form_status.Close;
  msg2('Перерасчет выполнен по '+IntToStr(cnt_)+' Л/C.','Внимание!',
   MB_OK+MB_ICONINFORMATION);
   tst_:=DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.C_CHANGES.test_abs_or_proc',
          [parNone]);

  //чистим поля
  if tst_ = 0 then   //изменения по процентам
  begin
//    wwDBEdit1.Text:='';  Убрал - задолбало чиститься 16.10.2013
//    wwDBEdit3.Text:='';
  end
  else               //изменения в абс суммах
  begin
//    wwDBEdit1.Text:='';  Убрал - задолбало чиститься 16.10.2013
//    wwDBEdit3.Text:='';
    DataModule1.OraclePackage1.CallProcedure
           ('scott.C_CHANGES.clear_changes_proc', [parNone]);
  end;

  OD_report.Active:=false;
  OD_report.SetVariable('doc_id_', doc_id_);
  //Выводить детализированный отчет, если записей не много (< 20)
  if cnt_ > 20 then
    OD_report.SetVariable('var_', 0)
  else
    OD_report.SetVariable('var_', 1);
  OD_report.Active:=true;
  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
  OD_list_choices_changes.Refresh;
  OD_c_change_docs.Refresh;

  if FF('Form_chargepay', 0) = 1 then
     Form_chargepay.recalc;
end;

procedure TForm_changes_houses.btn2Click(Sender: TObject);
begin                    
  Close;
end;

procedure TForm_changes_houses.FormCreate(Sender: TObject);
begin
  DBComboBoxEh1.ItemIndex:=1;
  DBComboBoxEh2.ItemIndex:=0;
  DBComboBoxEh3.ItemIndex:=0;
  DBComboBoxEh4.ItemIndex:=0;
  DBLookupComboboxEh1.KeyValue:=0;

  SetAllowEdit;
  state_arch2('');

  OD_mg.Active:=True;
  OD_status.Active:=True;
  OD_usl.Active:=True;
  OD_c_change_docs.Active:=True;

  cxLookupComboBox1.EditValue:=OD_mg.FieldByName('period').AsString;
  //  wwDBLookupCombo2.LookUpValue:=OD_mg.FieldByName('period').AsString;

  if FF('Form_list_kart',0) = 1 then
  begin
    wwDBEdit1.Text:=Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    wwDBEdit3.Text:=Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
  end;
  DataModule1.OraclePackage1.CallProcedure
           ('scott.C_CHANGES.clear_changes_proc', [parNone]);
  OD_sprorg.Active:=False;
  OD_sprorg.SetVariable('var_',1);
  OD_sprorg.Active:=True;
  OD_sprorg2.Active:=False;
  OD_sprorg2.SetVariable('var_',1);
  OD_sprorg2.Active:=True;
  OD_list_choices_changes.Refresh;

  clr_ := 0;
end;

procedure TForm_changes_houses.chk5Click(Sender: TObject);
begin
 if chk5.Checked then
 begin
   wwDBEdit1.Enabled:=false;
   wwDBEdit3.Enabled:=false;
   wwDBEdit1.Text:='';
   wwDBEdit3.Text:='';

   if clr_=0 then
   begin
     Application.CreateForm(TForm_sel_hs, Form_sel_hs);
     Form_sel_hs.OD_list_choice.Active := false;
     Form_sel_hs.OD_list_choice.SetVariable('clr_',1);
     Form_sel_hs.OD_list_choice.Active := true;
//    clr_:=1;  -- нельзя ставить 1, так как после коммита по раз.изменениям, таблица очищается...
   end
   else
   begin
     Application.CreateForm(TForm_sel_hs, Form_sel_hs);
   end;
 end
 else
 begin
   wwDBEdit1.Enabled:=true;
   wwDBEdit3.Enabled:=true;
 end;
end;

procedure TForm_changes_houses.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_changes_houses.chk7Click(Sender: TObject);
begin
  if CheckBox3.checked = True then
  begin
    OD_sprorg.Active:=False;
    OD_sprorg.SetVariable('var_',0);
    OD_sprorg.Active:=True;
    OD_sprorg2.Active:=False;
    OD_sprorg2.SetVariable('var_',0);
    OD_sprorg2.Active:=True;
  end
  else
  begin
    OD_sprorg.Active:=False;
    OD_sprorg.SetVariable('var_',1);
    OD_sprorg.Active:=True;
    OD_sprorg2.Active:=False;
    OD_sprorg2.SetVariable('var_',1);
    OD_sprorg2.Active:=True;
  end;

end;

procedure TForm_changes_houses.chk1Click(Sender: TObject);
begin
//  wwDBLookupCombo2.Enabled:=chk1.Checked;
  cxLookupComboBox2.Enabled:=chk1.Checked;
  if chk1.Checked = False then
  begin
    cxLookupComboBox2.EditValue:='';
  end;
end;

end.
