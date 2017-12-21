unit Unit_month_payments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Grids, Wwdbigrd, Wwdbgrid, wwfltdlg,
  StdCtrls, Wwintl, Utils, OracleNavigator, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, wwcheckbox, Buttons, Menus, Oracle, Unit_ecr,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridCardView, cxGridDBCardView;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure state_arch2(mgold_: String);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure OD_c_kwtpAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure OD_c_kwtpAfterRefresh(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    sql_, sql2_: String;
  public
    procedure recalc;
  end;

var
  Form_month_payments: TForm_month_payments;

implementation

uses Unit_Mainform, Unit_plat_doc, DM_module1, Unit_edit_pay_usl_org;

{$R *.dfm}

procedure TForm_month_payments.state_arch2(mgold_: String);
begin // смена состояний формы
with Form_month_payments do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
    Form_month_payments.Caption:='Текущая оплата - Архив';
    change_alias(OD_c_kwtp,'scott.c_kwtp',
      '(select * from scott.a_kwtp where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_c_kwtp_mg,'scott.c_kwtp_mg',
      '(select * from scott.a_kwtp_mg where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_c_kwtp_chk,'scott.c_kwtp',
      '(select * from scott.a_kwtp where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_c_kwtp_mg_chk,'scott.c_kwtp_mg',
      '(select * from scott.a_kwtp_mg where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
    Form_month_payments.Caption:='Текущая оплата';
    change_alias(OD_c_kwtp,
      '(select * from scott.a_kwtp where mg='''+mgold_+''')',
      'scott.c_kwtp');
    change_alias(OD_c_kwtp_mg,
      '(select * from scott.a_kwtp_mg where mg='''+mgold_+''')',
      'scott.c_kwtp_mg');
    change_alias(OD_c_kwtp_chk,
      '(select * from scott.a_kwtp where mg='''+mgold_+''')',
      'scott.c_kwtp');
    change_alias(OD_c_kwtp_mg_chk,
      '(select * from scott.a_kwtp_mg where mg='''+mgold_+''')',
      'scott.c_kwtp_mg');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
    Form_month_payments.Caption:='Текущая оплата - Архив';
    change_alias(OD_c_kwtp,
      '(select * from scott.a_kwtp where mg='''+mgold_+''')',
      '(select * from scott.a_kwtp where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_c_kwtp_mg,
      '(select * from scott.a_kwtp_mg where mg='''+mgold_+''')',
      '(select * from scott.a_kwtp_mg where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_c_kwtp_chk,
      '(select * from scott.a_kwtp where mg='''+mgold_+''')',
      '(select * from scott.a_kwtp where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_c_kwtp_mg_chk,
      '(select * from scott.a_kwtp_mg where mg='''+mgold_+''')',
      '(select * from scott.a_kwtp_mg where mg='''+Form_main.arch_mg_+''')');
  end;
end;
end;

procedure TForm_month_payments.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_month_payments.FormCreate(Sender: TObject);
begin
  OD_c_kwtp.Active:=true;
  OD_c_kwtp_mg.Active:=true;
  OD_c_kwtp_chk.Active:=false;
  OD_c_kwtp_mg_chk.Active:=false;
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
    Key:= '.';

end;

procedure TForm_month_payments.Button1Click(Sender: TObject);
begin
  OD_c_kwtp_chk.Active:=true;
  OD_c_kwtp_mg_chk.Active:=true;
  if FF('Form_plat_doc',1) = 0 then
      Application.CreateForm(TForm_plat_doc, Form_plat_doc);
  with Form_plat_doc do
  begin
  frxDBDataset1.DataSource:=
    DS_c_kwtp_chk;
  frxDBDataset2.DataSource:=
    DS_c_kwtp_mg_chk;

{  if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['PAY_DOC']) = 1 then
  begin}
  //если используется собственный файл платежной квитанции - использовать его
    //ТСЖ
    frxReport1.Preview:=frxPreview1;
    frxReport1.LoadFromFile(Form_main.exepath_+'\paydoc.fr3', True);
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
  OD_c_kwtp_chk.Active:=false;
  OD_c_kwtp_mg_chk.Active:=false;
end;

procedure TForm_month_payments.OD_c_kwtpAfterScroll(DataSet: TDataSet);
begin
  if OD_c_kwtp.FieldByName('iscorrect').AsInteger = 3 then
    Button1.Enabled:=true
   else
    Button1.Enabled:=false;
    
  //разрешение на удаление записей оплаты
  if (Form_main.arch_mg_ <> '') then
  begin
    //запретить-архив
    N1.Enabled:=False;
    N2.Enabled:=False;
    //разрешить удаление Админу (по архиву для обратного платежа)
    try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drx5_админ_доступ_к_базе', [parNone]);
    //Обратный платёж разрешить только админу
    N2.Enabled:=True;
    except

    end;

  end
  else if (Form_main.arch_mg_ = '') and (Form_Main.nkom_ = OD_c_kwtp.FieldByName('nkom').AsString) then
  begin
    //разрешить - так как тот же комп, чьим и введена оплата или админ
    N1.Enabled:=True;
    //разрешить удаление Админу
    try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drx5_админ_доступ_к_базе', [parNone]);
    N1.Enabled:=True;
    //корректировать распределение оплаты разрешить только админу
    N2.Enabled:=True;
    //Обратный платёж разрешить только админу
    N2.Enabled:=True;
    except

    end;
  end
  else
  begin
    //прочим-запретить
    N1.Enabled:=False;
    N3.Enabled:=False;
    //разрешить удаление Админу
    try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drx5_админ_доступ_к_базе', [parNone]);
    N1.Enabled:=True;
    N3.Enabled:=False;
    except

    end;
  end;


end;

procedure TForm_month_payments.CheckBox1Click(Sender: TObject);
begin
  Button4.Visible:=True;
  if CheckBox1.Checked = True then
  begin
    Update;
    OD_c_kwtp.Active:=False;
    sql_:=OD_c_kwtp.SQL.Text;

  //без добавочного select * from (
  //QBE не правильно генерит SQL - запрос
  //Пошел на хитрость - сделал алиас для подзапроса, такой как и хочет QBE (t)
  //Иначе - никак
    OD_c_kwtp.SQL.Text:=
    'select * from (select t.lsk, t.summa, t.penya, nvl(t.oper,''Состав'') as oper, dopl, '+
    't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.id, t.iscorrect, c.name as comp_name, t.oper||''-''||p.naim as oper_name, '+
    't.num_doc, t.dat_doc '+
    'from scott.c_kwtp t, scott.kart k, scott.t_org c, scott.c_comps m, scott.oper p '+
    'where k.lsk=t.lsk and t.oper=p.oper(+) '+
    'and  ((:var =0) or (:var =1 and  k.c_lsk_id=:c_lsk_id)) and t.nkom=m.nkom and m.fk_org=c.id '+
    'union all '+
    'select t.lsk, t.summa, t.penya, nvl(t.oper,''Состав'') as oper, dopl, '+
    't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.id, t.iscorrect, c.name as comp_name, t.oper||''-''||p.naim as oper_name, '+
    't.num_doc, t.dat_doc '+
    'from scott.a_kwtp t, scott.kart k, scott.t_org c, scott.c_comps m, scott.oper p, scott.params a '+
    'where k.lsk=t.lsk and t.oper=p.oper(+) and a.period <>t.mg '+
    'and  ((:var =0) or (:var =1 and  k.c_lsk_id=:c_lsk_id)) and t.nkom=m.nkom and m.fk_org=c.id) t '+
    'order by ts';
    OD_c_kwtp.Active:=True;

    OD_c_kwtp_mg.Active:=False;
    sql2_:=OD_c_kwtp_mg.SQL.Text;
    OD_c_kwtp_mg.SQL.Text:=
    'select * from (select t.lsk, t.summa, t.penya, t.oper, t.dopl, '+
    't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.oper||''-''||p.naim as oper_name '+
    'from scott.c_kwtp_mg t, scott.oper p '+
    'where c_kwtp_id=:c_kwtp_id and t.oper=p.oper '+
    'union all '+
    'select t.lsk, t.summa, t.penya, t.oper, t.dopl, '+
    't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.oper||''-''||p.naim as oper_name '+
    'from scott.a_kwtp_mg t, scott.oper p, scott.params a '+
    'where c_kwtp_id=:c_kwtp_id and t.oper=p.oper and a.period <>t.mg) t '+
    'order by dopl ';
    OD_c_kwtp_mg.Active:=True;
  end
  else
  begin
    OD_c_kwtp.Active:=False;
    OD_c_kwtp.SQL.Text:=sql_;
    OD_c_kwtp.Active:=True;

    OD_c_kwtp_mg.Active:=False;
    OD_c_kwtp_mg.SQL.Text:=sql2_;
    OD_c_kwtp_mg.Active:=True;
  end;
  Button4.Visible:=False;
end;

procedure TForm_month_payments.N1Click(Sender: TObject);
var
bm: TBookmark;
begin
if msg3('Удалить оплату с суммой '+OD_c_kwtp.FieldByName('summa').AsString+
   'руб., Л/С '+OD_c_kwtp.FieldByName('lsk').AsString+' (действие будет сохранено в журнале событий)',
   'Внимание!',
   MB_YESNO+MB_ICONQUESTION) = IDYES then
   begin
   DataModule1.OraclePackage1.CallProcedure
       ('scott.C_GET_PAY.remove_pay',
         [OD_c_kwtp.FieldByName('id').AsInteger]);
   if Form_Main.have_cash=1 then
   begin
   //С кассовым аппаратом
     if open_ecr <> 0 then
      begin
        DataModule1.OraclePackage1.Session.Rollback;
        Exit;
      end
      //Входим в режим регистрации
      else
      begin
        try
          //Аннулируем каждый платёж
          print_string_ecr('Лицевой счет №'+OD_c_kwtp.FieldByName('lsk').AsString, 1, 0);
          print_string_ecr('Наим-е операции   Период    Оплата(руб.)', 1, 0);
          OD_c_kwtp_mg.First;
          while not OD_c_kwtp_mg.Eof do
          begin
                annul_ecr(OD_c_kwtp_mg.FieldByName('oper_name').AsString+calc_pads(OD_c_kwtp_mg.FieldByName('oper_name').AsString)+
                        OD_c_kwtp_mg.FieldByName('dopl').AsString,
                        OD_c_kwtp_mg.FieldByName('summ_itg').AsFloat, 1);
              OD_c_kwtp_mg.Next;
          end;
          if close_reg_ecr <> 0 then
          begin
            DataModule1.OraclePackage1.Session.Rollback;
            Exit;
          end;
          DataModule1.OraclePackage1.Session.Commit;
        except
          on E: EOracleError do
          begin
            DataModule1.OraclePackage1.Session.Rollback;
            msg2(E.Message, 'Внимание!', MB_OK+MB_ICONERROR);
          end;
        end;

      end;
   end
   else
   //Без кассового аппарата
   begin
     DataModule1.OraclePackage1.Session.Commit;
     OD_c_kwtp.Prior;
//     bm:=OD_c_kwtp.GetBookmark;
     OD_c_kwtp.Active:=False;
     OD_c_kwtp.Active:=true;
{     try
      OD_c_kwtp.GotoBookmark(bm);
     except
     end;}

     msg2('Строка оплаты удалена!',
        'Внимание!',
     MB_OK+MB_ICONINFORMATION)
   end;
   end;
end;

procedure TForm_month_payments.OD_c_kwtpAfterRefresh(DataSet: TDataSet);
begin
  recalc;
end;

procedure TForm_month_payments.recalc;
var
  bm:TBookmark;
  summa_ : Double;
begin
// убрать это!
//пересчитать итоги
{  summa_:=0;
  bm:=OD_c_kwtp.GetBookmark;
  OD_c_kwtp.First;
  while not OD_c_kwtp.Eof do
  begin
    summa_:=summa_+OD_c_kwtp.FieldByName('summa').AsFloat;
    OD_c_kwtp.Next;
  end;
    OD_c_kwtp.Next;
  OD_c_kwtp.GotoBookmark(bm);
 }
end;

procedure TForm_month_payments.N2Click(Sender: TObject);
begin
  if FF('Form_edit_pay_usl_org', 1) = 0 then
    Application.CreateForm(TForm_edit_pay_usl_org,
      Form_edit_pay_usl_org);
    Form_edit_pay_usl_org.ShowModal;  
end;

procedure TForm_month_payments.N3Click(Sender: TObject);
var
  bm:TBookmark;
  l_var: Integer;
begin
if msg3('Выполнить обратный платёж оплаты с суммой '+OD_c_kwtp.FieldByName('summa').AsString+
   'руб., Л/С '+OD_c_kwtp.FieldByName('lsk').AsString,
   'Внимание!',
   MB_YESNO+MB_ICONQUESTION) = IDYES then
begin
   l_var:=DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.C_GET_PAY.reverse_pay',
         [OD_c_kwtp.FieldByName('id').AsInteger]);
   if l_var = 0 then
   begin
     OD_c_kwtp.Prior;
     bm:=OD_c_kwtp.GetBookmark;
     OD_c_kwtp.Active:=False;
     OD_c_kwtp.Active:=true;
     try
      OD_c_kwtp.GotoBookmark(bm);
     except
     end;
     msg2('Оплата проведена с обратным знаком в текущем дне и с текущим № компьютера!',
        'Внимание!',
        MB_OK+MB_ICONINFORMATION)
   end
   else
   begin
     msg2('Оплата НЕ проведена, возможно по платежу отсутствуют записи в архиве, код ошибки: '+InttoStr(l_var),
        'Внимание!',
         MB_OK+MB_ICONSTOP)
   end;

end;

end;

end.
