unit Unit_chargepay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DB, OracleData, StdCtrls, Utils, ComCtrls,
  ExtCtrls, frxClass, frxDBSet, 
  cxControls,

  
  cxGridDBTableView,
  cxGridLevel, cxClasses, cxGrid, Menus, 
  cxMaskEdit, 
  cxDBLookupComboBox, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxContainer, cxTextEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, Grids, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, dxSkinsCore, dxSkinsDefaultPainters,
  dxDateRanges;

type
  TForm_chargepay = class(TForm)
    OD_chargepay: TOracleDataSet;
    DS_chargepay: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    OD_chargepay2: TOracleDataSet;
    DS_chargepay2: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    frxDBDataset1: TfrxDBDataset;
    OD_chargepay3: TOracleDataSet;
    DS_chargepay3: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    OD_chargepay4: TOracleDataSet;
    DS_chargepay4: TDataSource;
    CheckBox1: TCheckBox;
    OD_chargepay5: TOracleDataSet;
    DS_chargepay5: TDataSource;
    frxDBDataset5: TfrxDBDataset;
    TabSheet5: TTabSheet;
    OD_chargepay6: TOracleDataSet;
    DS_chargepay6: TDataSource;
    frxDBDataset6: TfrxDBDataset;
    CheckBox2: TCheckBox;
    frxrprt_e: TfrxReport;
    OD_chargepay7: TOracleDataSet;
    frxDBDataset7: TfrxDBDataset;
    DS_chargepay7: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CHARGE: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_IN: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_CURR: TcxGridDBColumn;
    cxGrid1DBTableView1ITOG: TcxGridDBColumn;
    cxGrid1DBTableView1MG: TcxGridDBColumn;
    cxGrid1DBTableView1DAYS: TcxGridDBColumn;
    cxGrid1DBTableView1DOLG_PEN: TcxGridDBColumn;
    cxGrid1DBTableView1SAL: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_PAY: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_CURR_DAYS: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_CORR: TcxGridDBColumn;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    OD_mg: TOracleDataSet;
    cxLookupComboBox1: TcxLookupComboBox;
    DS_mg1: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    N3: TMenuItem;
    frxReport1: TfrxReport;
    Button2: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1TP_NAME: TcxGridDBColumn;
    cxGridDBTableView1NKVIT: TcxGridDBColumn;
    cxGridDBTableView1DTEK: TcxGridDBColumn;
    cxGridDBTableView1MG1: TcxGridDBColumn;
    cxGridDBTableView1OPER_NAME: TcxGridDBColumn;
    cxGridDBTableView1SUMMA: TcxGridDBColumn;
    cxGridDBTableView1PN: TcxGridDBColumn;
    cxGridDBTableView1MG3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure state_arch2(mgold_: string);
    procedure recalc;
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure calcFooter;
    procedure calcFooter5;
    procedure closeDts;
    procedure CheckBox2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxLookupComboBox2PropertiesCloseUp(Sender: TObject);
    procedure refreshGrids;
    procedure N3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_chargepay: TForm_chargepay;

implementation

uses DM_module1, Unit_list_kart, Unit_Mainform, u_frmTwoLsk;

{$R *.dfm}

procedure TForm_chargepay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_chargepay.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_chargepay.state_arch2(mgold_: string);
begin // смена состояний формы
  with Form_chargepay do
  begin
    if (Form_main.arch_mg_ <> '') and (mgold_ = '') then
    begin // из текущего в архив
      Form_chargepay.Caption := 'Движение по Л/C - Архив';
      change_alias(OD_chargepay,
        'select mg, sum(summa) as summa from scott.c_chargepay2 where (select period from scott.params) between mgFrom and mgTo',
        'select mg, sum(summa) as summa from scott.c_chargepay2 where (''' +
        Form_main.arch_mg_ + ''')  between mgFrom and mgTo', false
        );
      change_alias(OD_chargepay, 'scott.c_penya',
        '(select * from scott.a_penya where mg=''' + Form_main.arch_mg_ + ''')',
        false);
      change_alias(OD_chargepay, 'scott.c_pen_cur',
        '(select * from scott.a_pen_cur where mg=''' + Form_main.arch_mg_ +
        ''')', false);
      change_alias(OD_chargepay, 'scott.c_pen_corr',
        '(select * from scott.a_pen_corr where mg=''' + Form_main.arch_mg_ +
        ''')', false);
      change_alias(OD_chargepay, 'scott.c_kwtp_mg',
        '(select * from scott.a_kwtp_mg where mg=''' + Form_main.arch_mg_ +
        ''')', false);
      change_alias(OD_chargepay,
        '(select scott.utils.add_months_pr(m.period,-1) from scott.v_params m)',
        '(select scott.utils.add_months_pr(''' + Form_main.arch_mg_ +
        ''',-1) from scott.v_params m)', true);

    end
    else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
    begin // из архива в текущее
      Form_chargepay.Caption := 'Движение по Л/C';
      change_alias(OD_chargepay,
        'select mg, sum(summa) as summa from scott.c_chargepay2 where (''' + mgold_
        + ''')  between mgFrom and mgTo',
        'select mg, sum(summa) as summa from scott.c_chargepay2 where (select period from scott.params) between mgFrom and mgTo', false
        );
      change_alias(OD_chargepay,
        '(select * from scott.a_penya where mg=''' + mgold_ + ''')',
        'scott.c_penya', false);
      change_alias(OD_chargepay,
        '(select * from scott.a_pen_cur where mg=''' + mgold_ + ''')',
        'scott.c_pen_cur', false);
      change_alias(OD_chargepay,
        '(select * from scott.a_pen_corr where mg=''' + mgold_ + ''')',
        'scott.c_pen_corr', false);
      change_alias(OD_chargepay,
        '(select * from scott.a_kwtp_mg where mg=''' + mgold_ + ''')',
        'scott.c_kwtp_mg', false);
      change_alias(OD_chargepay, '(select scott.utils.add_months_pr(''' + mgold_
        + ''',-1) from scott.v_params m)',
        '(select scott.utils.add_months_pr(m.period,-1) from scott.v_params m)',
        true);
    end
    else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
    begin // из архива в архив
      Form_chargepay.Caption := 'Движение по Л/C - Архив';
      change_alias(OD_chargepay,
        'select mg, sum(summa) as summa from scott.c_chargepay2 where (''' + mgold_
        + ''')  between mgFrom and mgTo',
        'select mg, sum(summa) as summa from scott.c_chargepay2 where (''' +
        Form_main.arch_mg_ + ''')  between mgFrom and mgTo', false
        );
      change_alias(OD_chargepay,
        '(select * from scott.a_penya where mg=''' + mgold_ + ''')',
        '(select * from scott.a_penya where mg=''' + Form_main.arch_mg_ + ''')',
        false
        );
      change_alias(OD_chargepay,
        '(select * from scott.a_pen_cur where mg=''' + mgold_ + ''')',
        '(select * from scott.a_pen_cur where mg=''' + Form_main.arch_mg_ +
        ''')', false
        );
      change_alias(OD_chargepay,
        '(select * from scott.a_pen_corr where mg=''' + mgold_ + ''')',
        '(select * from scott.a_pen_corr where mg=''' + Form_main.arch_mg_ +
        ''')', false
        );
      change_alias(OD_chargepay,
        '(select * from scott.a_kwtp_mg where mg=''' + mgold_ + ''')',
        '(select * from scott.a_kwtp_mg where mg=''' + Form_main.arch_mg_ +
        ''')', false
        );
      change_alias(OD_chargepay, '(select scott.utils.add_months_pr(''' + mgold_
        + ''',-1) from scott.v_params m)',
        '(select scott.utils.add_months_pr(''' + Form_main.arch_mg_ +
        ''',-1) from scott.v_params m)', true);
    end;
  end;
end;

procedure TForm_chargepay.closeDts;
begin
  //Закрыть датасеты, чтобы не тормозили
  OD_chargepay.Active := false;
  OD_chargepay2.Active := false;
  OD_chargepay3.Active := false;
  OD_chargepay4.Active := false;
  OD_chargepay5.Active := false;
  OD_chargepay6.Active := false;
end;

procedure TForm_chargepay.recalc;
var
  sum_chrg_: Double;
  sum_chng_: Double;
  sum_pay_: Double;
  l_dummy: Double;
begin
  if getDoublePar(Form_main.paramList, 'JAVA_DEB_PEN') = 1 then
  begin
    // новый расчет задолженности и пени в Java
      l_dummy :=
        DataModule1.OraclePackage1.CallFloatFunction('SCOTT.P_JAVA.GEN',
        [1, null, null, null,
        Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger,
          null, Form_Main.cur_dt, 0, Form_main.javaServer]);
  end
  else
  begin
    // старый вызов, PL/SQL
    // расчет задолженности
    DataModule1.OraclePackage1.CallProcedure
      ('scott.C_CPENYA.gen_charge_pay',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 1]);

    DataModule1.OraclePackage1.CallProcedure
      ('scott.C_CPENYA.gen_penya',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 0, 1]);
  end;

  CloseDts;
  OD_chargepay.Active := true;
  OD_chargepay.Last;

  if PageControl1.ActivePageIndex = 1 then
  begin
    Panel1.Visible := true;
    Update;
    DataModule1.OraclePackage1.CallProcedure
      ('scott.GEN.prepare_arch_lsk',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 0]);
    OD_chargepay2.Active := false;
    OD_chargepay2.Active := true;
    OD_chargepay4.Active := false;
    OD_chargepay4.Active := true;
    OD_chargepay2.Last;
    calcFooter;
    Panel1.Visible := false;

  end
  else if PageControl1.ActivePageIndex = 2 then
  begin
    Panel1.Visible := true;
    Update;
    OD_chargepay3.Active := false;
    OD_chargepay3.Active := true;

    OD_chargepay3.First;
    while not OD_chargepay3.Eof do
    begin
      sum_chrg_ := sum_chrg_ + OD_chargepay3.FieldByName('sum_chrg').AsFloat;
      sum_chng_ := sum_chng_ + OD_chargepay3.FieldByName('sum_chng').AsFloat;
      sum_pay_ := sum_pay_ + OD_chargepay3.FieldByName('sum_pay').AsFloat;
      OD_chargepay3.Next;
    end;
    OD_chargepay3.Last;

    Panel1.Visible := false;
  end
  else if PageControl1.ActivePageIndex = 3 then
  begin
    Panel1.Visible := true;
    Update;
    DataModule1.OraclePackage1.CallProcedure
      ('scott.GEN.prepare_arch_lsk',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 0]);
    OD_chargepay5.Active := false;
    OD_chargepay5.Active := true;
    calcFooter5;
    Panel1.Visible := false;
  end
  else if PageControl1.ActivePageIndex = 4 then
  begin
    Panel1.Visible := true;
    Update;
    DataModule1.OraclePackage1.CallProcedure
      ('scott.GEN.prepare_arch_lsk',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString, 0]);
    OD_chargepay6.Active := false;
    OD_chargepay6.Active := true;
    Panel1.Visible := false;
  end;
end;

procedure TForm_chargepay.FormCreate(Sender: TObject);
begin
  // включить выбор периодов
  OD_mg.Active := true;
  OD_mg.Last;
  cxLookupComboBox1.EditValue := OD_mg.FieldByName('MG').AsString;
  OD_mg.First;
  cxLookupComboBox2.EditValue := OD_mg.FieldByName('MG').AsString;
  refreshGrids;

  PageControl1.ActivePageIndex := 0;

  if DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.Utils.get_int_param', ['DET_CHARGEPAY1']) = 1 then
  begin
    //параметр показать Детализацию для Э+
//    TabSheet4.TabVisible := True;
  end
  else
  begin
    //параметр скрыть Детализацию для Э+
//    TabSheet4.TabVisible := False;
  end;


  if DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.Utils.get_int_param', ['DET_CHARGEPAY4']) = 1 then
  begin
    //Показать детализацию построчную (не по колонкам)
    TabSheet5.TabVisible := True;
  end
  else
  begin
    //Скрыть детализацию построчную (не по колонкам)
    TabSheet5.TabVisible := False;
  end;

  state_arch2('');
  recalc;
end;

procedure TForm_chargepay.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    CheckBox1.Visible := False;
  end
  else if PageControl1.ActivePageIndex = 1 then
  begin
    CheckBox1.Visible := True;
  end
  else if PageControl1.ActivePageIndex = 2 then
  begin
    CheckBox1.Visible := False;
  end
  else if PageControl1.ActivePageIndex = 3 then
  begin
    CheckBox1.Visible := True;
  end
  else if PageControl1.ActivePageIndex = 4 then
  begin
    CheckBox1.Visible := True;
  end;
  recalc;
end;

procedure TForm_chargepay.Button1Click(Sender: TObject);
begin

  //Запрещаем перерисовку
  OD_chargepay.DisableControls;
  OD_chargepay2.DisableControls;
  OD_chargepay3.DisableControls;
  OD_chargepay4.DisableControls;
  OD_chargepay5.DisableControls;
  OD_chargepay6.DisableControls;

  if PageControl1.ActivePageIndex = 0 then
  begin
    frxReport1.LoadFromFile(Form_main.exepath_ + 'det1.fr3', True);
    frxReport1.Variables['lsk_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('lsk').AsString + '''';
    frxReport1.Variables['adr_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('adr').AsString + '''';

    frxReport1.Variables['mg1'] := '''' + cxLookupComboBox1.EditText + '''';
    frxReport1.Variables['mg2'] := '''' + cxLookupComboBox2.EditText + '''';

    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;

  end
  else if PageControl1.ActivePageIndex = 1 then
  begin
    frxReport1.LoadFromFile(Form_main.exepath_ + 'det3.fr3', True);
    CheckBox1.Visible := True;
    if CheckBox1.Checked = True then
      frxReport1.Script.Variables['det_'] := 1
    else
      frxReport1.Script.Variables['det_'] := 0;

    frxReport1.Variables['lsk_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('lsk').AsString + '''';
    frxReport1.Variables['adr_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('adr').AsString + '''';
    frxReport1.Variables['mg1'] := '''' + cxLookupComboBox1.EditText + '''';
    frxReport1.Variables['mg2'] := '''' + cxLookupComboBox2.EditText + '''';

    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;
  end
  else if PageControl1.ActivePageIndex = 2 then
  begin
    frxReport1.LoadFromFile(Form_main.exepath_ + 'det2.fr3', True);
    CheckBox1.Visible := False;
    frxReport1.Variables['lsk_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('lsk').AsString + '''';
    frxReport1.Variables['adr_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('adr').AsString + '''';

    frxReport1.Variables['mg1'] := '''' + cxLookupComboBox1.EditText + '''';
    frxReport1.Variables['mg2'] := '''' + cxLookupComboBox2.EditText + '''';

    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;
  end
  else if PageControl1.ActivePageIndex = 3 then
  begin
    frxReport1.LoadFromFile(Form_main.exepath_ + 'det5.fr3', True);
    CheckBox1.Visible := False;
    frxReport1.Variables['lsk_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('lsk').AsString + '''';

    frxReport1.Variables['adr_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('adr').AsString + '''';

    frxReport1.Variables['mg1'] := '''' + cxLookupComboBox1.EditText + '''';
    frxReport1.Variables['mg2'] := '''' + cxLookupComboBox2.EditText + '''';

    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;
  end
  else if PageControl1.ActivePageIndex = 4 then
  begin
    frxReport1.LoadFromFile(Form_main.exepath_ + 'det6.fr3', True);
    CheckBox1.Visible := False;
    frxReport1.Variables['lsk_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('lsk').AsString + '''';

    frxReport1.Variables['adr_'] :=
      '''' + Form_list_kart.OD_list_kart.FieldByName('adr').AsString + '''';

    frxReport1.Variables['mg1'] := '''' + cxLookupComboBox1.EditText + '''';
    frxReport1.Variables['mg2'] := '''' + cxLookupComboBox2.EditText + '''';

    frxReport1.PrepareReport(true);
    frxReport1.ShowPreparedReport;
  end;

  Form_chargepay.Caption := 'Движение по лицевому счету, отчет:' +
    frxReport1.FileName;
  //Разрешаем перерисовку
  OD_chargepay.EnableControls;
  OD_chargepay2.EnableControls;
  OD_chargepay3.EnableControls;
  OD_chargepay4.EnableControls;
  OD_chargepay5.EnableControls;
  OD_chargepay6.EnableControls;
end;

procedure TForm_chargepay.calcFooter;
var
  charges_, changes_, payment_: Double;
begin
  charges_ := 0;
  changes_ := 0;
  payment_ := 0;

  OD_chargepay2.First;
  while not OD_chargepay2.Eof do
  begin
    charges_ := charges_ + OD_chargepay2.FieldByName('chrg').AsFloat;
    changes_ := changes_ + OD_chargepay2.FieldByName('chng').AsFloat;
    payment_ := payment_ + OD_chargepay2.FieldByName('pay').AsFloat;
    OD_chargepay2.Next;
  end;
end;

procedure TForm_chargepay.calcFooter5;
var
  charges_, changes_, payment_: Double;
begin
  charges_ := 0;
  changes_ := 0;
  payment_ := 0;

  OD_chargepay5.First;
  while not OD_chargepay5.Eof do
  begin
    charges_ := charges_ + OD_chargepay5.FieldByName('chrg').AsFloat;
    changes_ := changes_ + OD_chargepay5.FieldByName('chng').AsFloat;
    payment_ := payment_ + OD_chargepay5.FieldByName('pay').AsFloat;
    OD_chargepay5.Next;
  end;
end;

procedure TForm_chargepay.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.checked then
    Form_chargepay.FormStyle := fsStayOnTop
  else
    Form_chargepay.FormStyle := fsMDIChild;
end;

procedure TForm_chargepay.N1Click(Sender: TObject);
begin
  //убрать входящее сальдо по пене
  if DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.C_CPENYA.corr_sal_pen',
    [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString,
    OD_chargepay.FieldByName('mg2').AsString]) <> 0 then
  begin
    DataModule1.OracleSession1.Rollback;
    msg2('Входящего сальдо по пене нет, либо уже удалено!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
  end
  else
    DataModule1.OracleSession1.Commit;
  //  recalc;
end;

procedure TForm_chargepay.N2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmTwoLsk, frmTwoLsk);
  if frmTwoLsk.ShowModal = mrOk then
  begin
    //убрать входящее сальдо по пене
    if DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.C_CPENYA.corr_sal_pen2',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString,
      frmTwoLsk.cxTextEdit2.text]) <> 0 then
    begin
      DataModule1.OracleSession1.Rollback;
      msg2('Сальдо не перенесено!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
      DataModule1.OracleSession1.Commit;

    recalc;
  end;

end;

// Обновить гриды

procedure TForm_chargepay.refreshGrids;
begin

  OD_chargepay.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay2.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay2.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay3.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay3.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay4.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay4.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay5.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay5.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay6.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay6.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));
  OD_chargepay7.SetVariable('MG1', VarToStr(cxLookupComboBox1.EditValue));
  OD_chargepay7.SetVariable('MG2', VarToStr(cxLookupComboBox2.EditValue));

  if PageControl1.ActivePageIndex = 0 then
  begin
    OD_chargepay.Active := false;
    OD_chargepay.Active := true;
  end
  else if PageControl1.ActivePageIndex = 1 then
  begin
    OD_chargepay2.Active := false;
    OD_chargepay2.Active := true;
  end
  else if PageControl1.ActivePageIndex = 2 then
  begin
    OD_chargepay3.Active := false;
    OD_chargepay3.Active := true;
  end
  else if PageControl1.ActivePageIndex = 3 then
  begin
    OD_chargepay5.Active := false;
    OD_chargepay5.Active := true;
  end
  else if PageControl1.ActivePageIndex = 4 then
  begin
    OD_chargepay6.Active := false;
    OD_chargepay6.Active := true;
  end;

end;

procedure TForm_chargepay.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  refreshGrids;
end;

procedure TForm_chargepay.cxLookupComboBox2PropertiesCloseUp(
  Sender: TObject);
begin
  refreshGrids;
end;

procedure TForm_chargepay.N3Click(Sender: TObject);
begin
  //убрать входящее сальдо по пене
  if DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.C_CPENYA.corr_all_sal_pen',
    [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]) <> 0 then
  begin
    DataModule1.OracleSession1.Rollback;
    msg2('Входящего сальдо по пене нет, либо уже удалено!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
  end
  else
    DataModule1.OracleSession1.Commit;
  recalc;

end;

procedure TForm_chargepay.Button2Click(Sender: TObject);
begin
  Close;
end;

end.

