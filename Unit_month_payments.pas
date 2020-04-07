unit Unit_month_payments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, wwfltdlg,
  StdCtrls, Wwintl, Utils, OracleNavigator, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, wwcheckbox, Buttons, Menus, Oracle, Unit_ecr,
  cxControls,

  cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridCardView,

  cxGridCustomLayoutView, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData;

type
  TForm_month_payments = class(TForm)
    GroupBox2: TGroupBox;
    Button2: TButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    OracleNavigator1: TOracleNavigator;
    DS_c_kwtp_mg: TDataSource;
    OD_c_kwtp_mg: TOracleDataSet;
    OD_c_kwtp_mgLSK: TStringField;
    OD_c_kwtp_mgSUMMA: TFloatField;
    OD_c_kwtp_mgPENYA: TFloatField;
    OD_c_kwtp_mgDOPL: TStringField;
    OD_c_kwtp_mgNINK: TFloatField;
    OD_c_kwtp_mgDTEK: TDateTimeField;
    OD_c_kwtp_mgNKVIT: TFloatField;
    OD_c_kwtp_mgNKOM: TStringField;
    DS_c_kwtp: TDataSource;
    OD_c_kwtp: TOracleDataSet;
    wwExpandButton1: TwwExpandButton;
    OD_c_kwtpLSK: TStringField;
    OD_c_kwtpSUMMA: TFloatField;
    OD_c_kwtpPENYA: TFloatField;
    OD_c_kwtpOPER: TStringField;
    OD_c_kwtpDOPL: TStringField;
    OD_c_kwtpNINK: TFloatField;
    OD_c_kwtpNKOM: TStringField;
    OD_c_kwtpDTEK: TDateTimeField;
    OD_c_kwtpNKVIT: TFloatField;
    OD_c_kwtpDAT_INK: TDateTimeField;
    OD_c_kwtpTS: TDateTimeField;
    OD_c_kwtpID: TFloatField;
    OD_c_kwtpISCORRECT: TFloatField;
    OD_c_kwtpCOMP_NAME: TStringField;
    OD_c_kwtp_chk: TOracleDataSet;
    StringField1: TStringField;
    OD_c_kwtpFIO: TStringField;
    OD_c_kwtpADR: TStringField;
    OD_c_kwtpSUMSTR: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    OD_c_kwtpFIO_KASS: TStringField;
    FloatField2: TFloatField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    FloatField3: TFloatField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    OD_c_kwtpNAME_ORG: TStringField;
    OD_c_kwtpADR_ORG: TStringField;
    OD_c_kwtpINN: TStringField;
    OD_c_kwtpOKPO: TStringField;
    OD_c_kwtpKPP: TStringField;
    DS_c_kwtp_chk: TDataSource;
    OD_c_kwtp_mg_chk: TOracleDataSet;
    StringField4: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField8: TFloatField;
    DateTimeField4: TDateTimeField;
    FloatField9: TFloatField;
    StringField7: TStringField;
    OD_c_kwtp_mgNAIM: TStringField;
    OD_c_kwtp_mgCNT_SCH0: TStringField;
    OD_c_kwtp_mgCNT_SCH: TStringField;
    DS_c_kwtp_mg_chk: TDataSource;
    Button1: TButton;
    OD_c_kwtpOPER_NAME: TStringField;
    OD_c_kwtp_mgOPER_NAME: TStringField;
    OD_c_kwtpNUM_DOC: TStringField;
    OD_c_kwtpDAT_DOC: TDateTimeField;
    CheckBox1: TCheckBox;
    Button4: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    OD_c_kwtp_chkPHW: TFloatField;
    OD_c_kwtp_chkPGW: TFloatField;
    OD_c_kwtp_chkPEL: TFloatField;
    OD_c_kwtp_mgID: TFloatField;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    OD_c_kwtp_mgOPER: TStringField;
    OD_c_kwtp_mgDAT_INK: TDateTimeField;
    N3: TMenuItem;
    OD_c_kwtp_mgSUMM_ITG: TFloatField;
    cxGrid1: TcxGrid;
    OD_c_kwtp_mgC_KWTP_ID: TFloatField;
    cxGrid1CardView1: TcxGridCardView;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1OPER: TcxGridDBColumn;
    cxGrid1DBTableView1DOPL: TcxGridDBColumn;
    cxGrid1DBTableView1NINK: TcxGridDBColumn;
    cxGrid1DBTableView1NKOM: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1DTEK: TcxGridDBColumn;
    cxGrid1DBTableView1NKVIT: TcxGridDBColumn;
    cxGrid1DBTableView1DAT_INK: TcxGridDBColumn;
    cxGrid1DBTableView1TS: TcxGridDBColumn;
    cxGrid1DBTableView1ISCORRECT: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView2PENYA: TcxGridDBColumn;
    cxGrid1DBTableView2DOPL: TcxGridDBColumn;
    cxGrid1DBTableView2SUMM_ITG: TcxGridDBColumn;
    cxGrid1DBTableView2OPER: TcxGridDBColumn;
    OD_c_kwtpSUMM_ITG: TFloatField;
    cxGrid1DBTableView1SUMM_ITG: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    OD_paycheck: TOracleDataSet;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    N5: TMenuItem;
    OD_c_kwtpCASH_NUM: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure state_arch2(mgold_: string);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure OD_c_kwtpAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure OD_c_kwtpAfterRefresh(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    sql_, sql2_: string;
  public
    procedure show_all(ASet: Boolean);
    procedure recalc;
  end;

var
  Form_month_payments: TForm_month_payments;

implementation

uses Unit_Mainform, Unit_plat_doc, DM_module1, Unit_edit_pay_usl_org,
  u_frmDistPayLog;

{$R *.dfm}

procedure TForm_month_payments.state_arch2(mgold_: string);
begin // смена состояний формы
  with Form_month_payments do
  begin
    if (Form_main.arch_mg_ <> '') and (mgold_ = '') then
    begin // из текущего в архив
      Form_month_payments.Caption := 'Текущая оплата - Архив';
      change_alias(OD_c_kwtp_mg, 'scott.c_kwtp_mg',
        '(select * from scott.a_kwtp_mg where mg=''' + Form_main.arch_mg_ +
        ''')');
      change_alias(OD_c_kwtp_chk, 'scott.c_kwtp',
        '(select * from scott.a_kwtp where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_c_kwtp_mg_chk, 'scott.c_kwtp_mg',
        '(select * from scott.a_kwtp_mg where mg=''' + Form_main.arch_mg_ +
        ''')');
      change_alias(OD_c_kwtp, 'scott.c_kwtp_mg',
        '(select * from scott.a_kwtp_mg where mg=''' + Form_main.arch_mg_ +
        ''')');
      change_alias(OD_c_kwtp, 'scott.c_kwtp',
        '(select * from scott.a_kwtp where mg=''' + Form_main.arch_mg_ + ''')');
    end
    else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
    begin // из архива в текущее
      Form_month_payments.Caption := 'Текущая оплата';
      change_alias(OD_c_kwtp_mg,
        '(select * from scott.a_kwtp_mg where mg=''' + mgold_ + ''')',
        'scott.c_kwtp_mg');
      change_alias(OD_c_kwtp_chk,
        '(select * from scott.a_kwtp where mg=''' + mgold_ + ''')',
        'scott.c_kwtp');
      change_alias(OD_c_kwtp_mg_chk,
        '(select * from scott.a_kwtp_mg where mg=''' + mgold_ + ''')',
        'scott.c_kwtp_mg');
      change_alias(OD_c_kwtp,
        '(select * from scott.a_kwtp_mg where mg=''' + mgold_ + ''')',
        'scott.c_kwtp_mg');
      change_alias(OD_c_kwtp,
        '(select * from scott.a_kwtp where mg=''' + mgold_ + ''')',
        'scott.c_kwtp');
    end
    else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
    begin // из архива в архив
      Form_month_payments.Caption := 'Текущая оплата - Архив';
      change_alias(OD_c_kwtp_mg,
        '(select * from scott.a_kwtp_mg where mg=''' + mgold_ + ''')',
        '(select * from scott.a_kwtp_mg where mg=''' + Form_main.arch_mg_ +
        ''')');
      change_alias(OD_c_kwtp_chk,
        '(select * from scott.a_kwtp where mg=''' + mgold_ + ''')',
        '(select * from scott.a_kwtp where mg=''' + Form_main.arch_mg_ + ''')');
      change_alias(OD_c_kwtp_mg_chk,
        '(select * from scott.a_kwtp_mg where mg=''' + mgold_ + ''')',
        '(select * from scott.a_kwtp_mg where mg=''' + Form_main.arch_mg_ +
        ''')');
      change_alias(OD_c_kwtp,
        '(select * from scott.a_kwtp_mg where mg=''' + mgold_ + ''')',
        '(select * from scott.a_kwtp_mg where mg=''' + Form_main.arch_mg_ +
        ''')');
      change_alias(OD_c_kwtp,
        '(select * from scott.a_kwtp where mg=''' + mgold_ + ''')',
        '(select * from scott.a_kwtp where mg=''' + Form_main.arch_mg_ + ''')');
    end;
  end;
end;

procedure TForm_month_payments.FormClose(Sender: TObject; var Action:
  TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_month_payments.FormCreate(Sender: TObject);
begin
  OD_c_kwtp.Active := true;
  OD_c_kwtp_mg.Active := true;
  OD_c_kwtp_chk.Active := false;
  OD_c_kwtp_mg_chk.Active := false;
  sql_ := OD_c_kwtp.SQL.Text;
  sql2_ := OD_c_kwtp_mg.SQL.Text;
  state_arch2('');

end;

procedure TForm_month_payments.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_month_payments.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key := '.';

end;

procedure TForm_month_payments.Button1Click(Sender: TObject);
begin
  OD_c_kwtp_chk.Active := true;
  OD_c_kwtp_mg_chk.Active := true;
  if FF('Form_plat_doc', 1) = 0 then
    Application.CreateForm(TForm_plat_doc, Form_plat_doc);
  with Form_plat_doc do
  begin
    frxDBDataset1.DataSource :=
      DS_c_kwtp_chk;
    frxDBDataset2.DataSource :=
      DS_c_kwtp_mg_chk;

    {  if DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.Utils.get_int_param', ['PAY_DOC']) = 1 then
      begin}
      //если используется собственный файл платежной квитанции - использовать его
        //ТСЖ
    frxReport1.Preview := frxPreview1;
    frxReport1.LoadFromFile(Form_main.exepath_ + '\paydoc.fr3', True);
    frxReport1.PrepareReport(true);
    frxPreview1.Show;
    {  end
      else if Form_main.org_var_ = 0 then
      begin
        //ТСЖ
        frxReport1.Preview:=frxPreview1;
        frxReport1.PrepareReport(true);
        frxPreview1.Show;
      end
      else
      begin
        //Энерг +
        frxReport2.Preview:=frxPreview1;
        frxReport2.PrepareReport(true);
        frxPreview1.Show;
      end;}
    ShowModal;
  end;
  OD_c_kwtp_chk.Active := false;
  OD_c_kwtp_mg_chk.Active := false;
end;

procedure TForm_month_payments.OD_c_kwtpAfterScroll(DataSet: TDataSet);
begin
  if OD_c_kwtp.FieldByName('iscorrect').AsInteger = 3 then
    Button1.Enabled := true
  else
    Button1.Enabled := false;

  //разрешение на удаление записей оплаты
  if (Form_main.arch_mg_ <> '') then
  begin
    //запретить-архив
    N1.Enabled := False;
    N2.Enabled := False;
    if Form_Main.g_admin = 1 then
      //Обратный платёж разрешить только админу
      N2.Enabled := True;

  end
  else if (Form_main.arch_mg_ = '') and ((Form_Main.nkom_ =
    OD_c_kwtp.FieldByName('nkom').AsString)
    or (Form_Main.g_admin = 1)) then
  begin
    //разрешить - так как тот же комп, чьим и введена оплата или админ
    N1.Enabled := True;
    //разрешить удаление Админу
    if Form_Main.g_admin = 1 then
    begin
      //корректировать распределение оплаты разрешить только админу
      N2.Enabled := True;
      //Обратный платёж разрешить только админу
      N2.Enabled := True;
    end;
  end
  else
  begin
    //прочим-запретить
    N1.Enabled := False;
    N3.Enabled := False;
    //разрешить удаление Админу
    if Form_Main.g_admin = 1 then
    begin
      N1.Enabled := True;
      N3.Enabled := False;
    end;
  end;

end;

procedure TForm_month_payments.show_all(ASet: Boolean);
begin
  //Отобразить или нет все записи всех периодов
  Button4.Visible := True;
  if ASet = True then
  begin
    if OD_c_kwtp.GetVariable('var') = 1 then
    begin
      OD_c_kwtp.Active := False;
      sql_ := OD_c_kwtp.SQL.Text;

      OD_c_kwtp.SQL.Text :=
        'select t.id, t.lsk, t.summa, t.penya, nvl(t.summa,0)+nvl(t.penya,0) as summ_itg, nvl(t.oper,''Состав'') as oper, dopl, ' +
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.id, t.iscorrect, c.name as comp_name, t.oper||''-''||p.naim as oper_name, ' +
        't.num_doc, t.dat_doc ' +
        'from scott.kart k join scott.c_kwtp t on k.lsk=t.lsk ' +
        '                  left join scott.c_comps m on t.nkom=m.nkom ' +
        '                  left join scott.t_org c on m.fk_org=c.id ' +
        '                  left join scott.oper p on t.oper=p.oper ' +
        'where   ' +
        '((:var =0) or (:var =1 and  k.k_lsk_id=:k_lsk_id)) ' +
        'union all ' +
        'select t.id, t.lsk, t.summa, t.penya, nvl(t.summa,0)+nvl(t.penya,0) as summ_itg, nvl(t.oper,''Состав'') as oper, dopl, ' +
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.id, t.iscorrect, c.name as comp_name, t.oper||''-''||p.naim as oper_name, ' +
        't.num_doc, t.dat_doc ' +
        'from scott.kart k join scott.a_kwtp t on k.lsk=t.lsk ' +
        '                    left join scott.c_comps m on t.nkom=m.nkom ' +
        '                    left join scott.t_org c on m.fk_org=c.id ' +
        '                    left join scott.oper p on t.oper=p.oper ' +
        '                    join scott.params a on a.period <> t.mg ' +
        'where ((:var =0) or (:var =1 and k.k_lsk_id=:k_lsk_id)) ' +
        'order by ts';
      OD_c_kwtp.Active := True;

      OD_c_kwtp_mg.Active := False;
      sql2_ := OD_c_kwtp_mg.SQL.Text;
      OD_c_kwtp_mg.SQL.Text :=
        'select t.id, t.lsk, t.summa, t.penya, nvl(t.summa,0)+nvl(t.penya,0) as summ_itg, t.oper, t.dopl, ' +
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.oper||''-''||p.naim as oper_name, t.c_kwtp_id ' +
        'from scott.kart k join scott.c_kwtp_mg t on k.lsk=t.lsk ' +
        '                  left join scott.oper p on t.oper=p.oper ' +
        'where ((:var =0) or (:var =1 and  k.k_lsk_id=:k_lsk_id)) ' +
        'union all ' +
        'select t.id, t.lsk, t.summa, t.penya, nvl(t.summa,0)+nvl(t.penya,0) as summ_itg, t.oper, t.dopl, ' +
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.oper||''-''||p.naim as oper_name, t.c_kwtp_id ' +
        'from scott.kart k join scott.a_kwtp_mg t on k.lsk=t.lsk ' +
        '                       left join scott.oper p on t.oper=p.oper ' +
        '                       join scott.params a on a.period <> t.mg ' +
        'where ((:var =0) or (:var =1 and  k.k_lsk_id=:k_lsk_id)) ' +
        'order by c_kwtp_id, dopl ';
      OD_c_kwtp_mg.Active := True;
    end
    else
    begin
      CheckBox1.Checked := false;
      msg2('Просмотр полного архива возможен только при выборе 1 лицевого счета!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end;
  end
  else
  begin
    OD_c_kwtp.Active := False;
    OD_c_kwtp.SQL.Text := sql_;
    OD_c_kwtp.Active := True;

    OD_c_kwtp_mg.Active := False;
    OD_c_kwtp_mg.SQL.Text := sql2_;
    OD_c_kwtp_mg.Active := True;
  end;
  Button4.Visible := False;

end;

procedure TForm_month_payments.CheckBox1Click(Sender: TObject);
begin
  //Отобразить или нет все записи всех периодов
  show_all(CheckBox1.Checked);
end;

procedure TForm_month_payments.N1Click(Sender: TObject);
var
  bm: TBookmark;
  l_flag: Integer;
  ECR: OleVariant;
begin
  l_flag := 1;
  if msg3('Удалить оплату с суммой ' + OD_c_kwtp.FieldByName('summ_itg').AsString
    +
    ' руб., Л/С ' + OD_c_kwtp.FieldByName('lsk').AsString +
    ' (действие будет сохранено в журнале событий)',
    'Внимание!',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    OD_paycheck.Active := true;
    if (Form_Main.have_cash = 1) or (Form_Main.have_cash = 2) then
    begin
      if Form_Main.cash_test = 0 then
      begin
        // c кассовым аппаратом и не в режиме тестирования
        if OD_c_kwtp.FieldByName('cash_num').AsInteger = 1 then
          ECR := Form_main.selECR
        else
          ECR := Form_main.selECR2;

        if open_port_ecr(ECR) <> 0 then
        begin
          msg2('Порт ККМ не открыт!', 'Внимание!', MB_OK + MB_ICONERROR);
          Exit;
        end
          //Входим в режим регистрации
        else
        begin
          if msg3('Произвести возврат платежа в фискальном регистраторе?',
            'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
          begin
            try
              //Возвращаем каждый платёж
              print_string_ecr('Лицевой счет №' +
                OD_c_kwtp.FieldByName('lsk').AsString, 1, 0, ECR);
              print_string_ecr('Наим-е операции   Период    Оплата(руб.)', 1, 0,
                ECR);

              //Специальный датасет, для возврата продажи (содержит тело текущего платежа)
              with OD_paycheck do
              begin
                First;
                while not Eof do
                begin
                  unreg_ecr(FieldByName('oper_name').AsString +
                    calc_pads(FieldByName('oper_name').AsString) +
                    FieldByName('dopl').AsString,
                    FieldByName('summ_itg').AsFloat, 1,
                    FieldByName('dep').AsInteger, ECR
                    );
                  Next;
                end;
                if close_reg_ecr(ECR) <> 0 then
                begin
                  l_flag := 1;
                end;
                Active := false;
              end;

            except
              // Эксепшн в фискальном регистраторе
              on E: Exception do
              begin
                l_flag := 1;
                ShowMessage('Exception class name = ' + E.ClassName + '' +
                  'Ошибка: ' + E.Message);
                ShowMessage('Возврат не будет учтён!');
              end;
            end;

          end
          else
          begin
            l_flag := 0;
          end;

        end;
      end
      else
      begin
        // режим тестирования
        l_flag := 0;
      end;

    end
    else
    begin
      l_flag := 0;
    end;

    if l_flag = 1 then
    begin
      // не успешно
      //DataModule1.OraclePackage1.Session.Rollback;
      Exit;
    end
    else if l_flag = 0 then
    begin
      // успешно
      DataModule1.OraclePackage1.CallProcedure
        ('scott.C_GET_PAY.remove_pay',
        [OD_c_kwtp.FieldByName('id').AsInteger]);
      DataModule1.OraclePackage1.Session.Commit;
      OD_c_kwtp.Prior;
      OD_c_kwtp.Active := False;
      OD_c_kwtp.Active := true;
      OD_paycheck.Active := false;
      DataModule1.OraclePackage1.Session.Commit;
      //msg2('Платеж успешно удалён!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
    end;

  end;
end;

procedure TForm_month_payments.OD_c_kwtpAfterRefresh(DataSet: TDataSet);
begin
  recalc;
end;

procedure TForm_month_payments.recalc;
var
  bm: TBookmark;
  summa_: Double;
begin
end;

procedure TForm_month_payments.N2Click(Sender: TObject);
begin
  if FF('Form_edit_pay_usl_org', 1) = 0 then
    Application.CreateForm(TForm_edit_pay_usl_org,
      Form_edit_pay_usl_org);
  Form_edit_pay_usl_org.Show;
end;

procedure TForm_month_payments.N3Click(Sender: TObject);
var
  bm: TBookmark;
  l_flag, l_var: Integer;
  ECR: OleVariant;
begin
  if msg3('Выполнить обратный платёж оплаты с суммой ' +
    OD_c_kwtp.FieldByName('summ_itg').AsString +
    ' руб., Л/С ' + OD_c_kwtp.FieldByName('lsk').AsString +
    ' (действие будет сохранено в журнале событий)',
    'Внимание!',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    OD_paycheck.Active := true;
    l_flag := 0;
    if (Form_Main.have_cash = 1) and (Form_Main.have_cash = 2) then
    begin
      if Form_Main.cash_test = 0 then
      begin
        // c кассовым аппаратом и не в режиме тестирования
        l_flag := 1;
        if OD_c_kwtp.FieldByName('cash_num').AsInteger = 1 then
          ECR := Form_main.selECR
        else
          ECR := Form_main.selECR2;
        if open_port_ecr(ECR) <> 0 then
        begin
          Exit;
        end
          //Входим в режим регистрации
        else
        begin
          if msg3('Произвести возврат платежа в фискальном регистраторе?',
            'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
          begin
            try
              //Возвращаем каждый платёж
              print_string_ecr('Лицевой счет №' +
                OD_c_kwtp.FieldByName('lsk').AsString, 1, 0, ECR);
              print_string_ecr('Наим-е операции   Период    Оплата(руб.)', 1, 0,
                ECR);

              //Специальный датасет, для возврата продажи (содержит тело текущего платежа)
              with OD_paycheck do
              begin
                First;
                while not Eof do
                begin
                  unreg_ecr(FieldByName('oper_name').AsString +
                    calc_pads(FieldByName('oper_name').AsString) +
                    FieldByName('dopl').AsString,
                    FieldByName('summ_itg').AsFloat, 1,
                    FieldByName('dep').AsInteger, ECR
                    );
                  Next;
                end;
                if close_reg_ecr(ECR) <> 0 then
                begin
                  l_flag := 1;
                end;
                Active := false;
              end;

            except
              // Эксепшн в фискальном регистраторе
              on E: Exception do
              begin
                l_flag := 1;
                ShowMessage('Exception class name = ' + E.ClassName + '' +
                  'Ошибка: ' + E.Message);
                ShowMessage('Возврат не будет учтён!');
              end;
            end;

          end;
        end;
      end
      else
      begin
        // режим тестирования
        l_flag := 0;
      end;
    end;

    if l_flag = 1 then
    begin
      // не успешно
      //DataModule1.OraclePackage1.Session.Rollback;
      Exit;
    end
    else if l_flag = 0 then
    begin
      // успешно
      l_var := DataModule1.OraclePackage1.CallIntegerFunction
        ('scott.C_GET_PAY.reverse_pay',
        [OD_c_kwtp.FieldByName('id').AsInteger]);
      if l_var <> 0 then
      begin
        DataModule1.OraclePackage1.Session.Rollback;
        msg2('Обратный платеж не выполнен! Код ошибки='+IntToStr(l_var),
          'Внимание!',
          MB_OK + MB_ICONERROR);
      end    
      else
      begin
        OD_c_kwtp.Prior;
        OD_c_kwtp.Active := False;
        OD_c_kwtp.Active := true;
        OD_paycheck.Active := false;
        DataModule1.OraclePackage1.Session.Commit;
        msg2('Обратный платеж выполнен в текущем дне и с текущим № компьютера!',
          'Внимание!',
          MB_OK + MB_ICONINFORMATION);
      end;
    end;
  end;

end;

procedure TForm_month_payments.N5Click(Sender: TObject);
begin
  if FF('frmDistPayLog', 1) = 0 then
    Application.CreateForm(TfrmDistPayLog,
      frmDistPayLog);
  frmDistPayLog.Show;
end;

end.

