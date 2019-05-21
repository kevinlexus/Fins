unit Unit_Mainform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ImgList, DM_module1, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdFTP, ExtCtrls, StdCtrls, DBCtrls,
  DB, OracleData,
//  ActnMan, ActnMenus, XPStyleActnCtrls, ActnList,
  CustomizeDlg, CoolTrayIcon, Oracle, DBCtrlsEh, OleCtl, Utils, StrUtils,
  MemTableDataEh, DataDriverEh, MemTableEh, wwdbedit, Wwintl, DVButils, ShellAPI,
  IdAntiFreezeBase, IdAntiFreeze, frxClass, frxDBSet, frxExportCSV, frxExportPDF,
  frxExportBIFF, frxExportText, frxExportRTF, ComObj, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Unit_spr_redirect, u_frmTwoPeriods;
type
  TShowForm = function(App, Scr, Sess_: integer): integer; stdcall;
  TForm_Main = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    OD_params: TOracleDataSet;
    IdFTP1s: TIdFTP;
    DS_param_exit: TDataSource;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N210: TMenuItem;
    N211: TMenuItem;
    CoolTrayIcon1: TCoolTrayIcon;
    N30: TMenuItem;
    N31: TMenuItem;
    N212: TMenuItem;
    N9: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    Timer_messages: TTimer;
    N27: TMenuItem;
    N35: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N89: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    ToolButton15: TToolButton;
    N51: TMenuItem;
    ToolButton17: TToolButton;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton25: TToolButton;
    ToolButton4: TToolButton;
    ToolButton18: TToolButton;
    ToolButton26: TToolButton;
    ToolButton5: TToolButton;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    OracleEvent1: TOracleEvent;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    OLAP1: TMenuItem;
    N71: TMenuItem;
    ToolButton10: TToolButton;
    N72: TMenuItem;
    ToolButton11: TToolButton;
    N76: TMenuItem;
    Panel2: TPanel;
    N78: TMenuItem;
    ToolButton1: TToolButton;
    N79: TMenuItem;
    N80: TMenuItem;
    wwIntl1: TwwIntl;
    Panel1: TPanel;
    Label1: TLabel;
    N77: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    ToolButton2: TToolButton;
    N85: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N90: TMenuItem;
    Oracle1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N36: TMenuItem;
    DVB1: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N91: TMenuItem;
    ImageList2: TImageList;
    Splitter1: TSplitter;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N96: TMenuItem;
    IdAntiFreeze1: TIdAntiFreeze;
    N97: TMenuItem;
    OD_spr: TOracleDataSet;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N111: TMenuItem;
    N112: TMenuItem;
    N113: TMenuItem;
    N114: TMenuItem;
    N115: TMenuItem;
    N116: TMenuItem;
    N117: TMenuItem;
    N118: TMenuItem;
    N119: TMenuItem;
    N120: TMenuItem;
    N121: TMenuItem;
    N122: TMenuItem;
    N123: TMenuItem;
    N124: TMenuItem;
    N86: TMenuItem;
    N871: TMenuItem;
    frxDBv_params: TfrxDBDataset;
    N125: TMenuItem;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxBIFFExport1: TfrxBIFFExport;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    N126: TMenuItem;
    N127: TMenuItem;
    N213: TMenuItem;
    N128: TMenuItem;
    N510: TMenuItem;
    N511: TMenuItem;
    N129: TMenuItem;
    N130: TMenuItem;
    N521: TMenuItem;
    N512: TMenuItem;
    N131: TMenuItem;
    N132: TMenuItem;
    N133: TMenuItem;
    N134: TMenuItem;
    N135: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    N138: TMenuItem;
    N139: TMenuItem;
    ImageListTiny: TImageList;
    N140: TMenuItem;
    ToolButton3: TToolButton;
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N212Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure text1Click(Sender: TObject);
    procedure Timer_messagesTimer(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure CoolTrayIcon1DblClick(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N46Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure OracleEvent1Event(Sender: TOracleEvent; const ObjectName: string; const Info: Variant);
    procedure N67Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure OLAP1Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N77Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure N78Click(Sender: TObject);
    procedure N79Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N83Click(Sender: TObject);
    procedure N84Click(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N87Click(Sender: TObject);
    procedure N88Click(Sender: TObject);
    procedure N90Click(Sender: TObject);
    procedure Oracle1Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure DVB1Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N92Click(Sender: TObject);
    procedure N93Click(Sender: TObject);
    procedure N94Click(Sender: TObject);
    procedure N95Click(Sender: TObject);
    procedure N96Click(Sender: TObject);
    procedure N97Click(Sender: TObject);
    procedure N99Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N105Click(Sender: TObject);
    procedure cl_flt;
    procedure N107Click(Sender: TObject);
    procedure N106Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N108Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N113Click(Sender: TObject);
    procedure N109Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure N116Click(Sender: TObject);
    procedure N117Click(Sender: TObject);
    procedure N118Click(Sender: TObject);
    procedure N119Click(Sender: TObject);
    procedure N120Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N123Click(Sender: TObject);
    procedure N124Click(Sender: TObject);
    procedure N86Click(Sender: TObject);
    procedure N125Click(Sender: TObject);
    procedure N871Click(Sender: TObject);
    procedure N126Click(Sender: TObject);
    procedure N127Click(Sender: TObject);
    procedure N213Click(Sender: TObject);
    procedure N128Click(Sender: TObject);
    procedure N510Click(Sender: TObject);
    procedure N511Click(Sender: TObject);
    procedure N129Click(Sender: TObject);
    procedure create_OLE_KKM;
    procedure N130Click(Sender: TObject);
    procedure N521Click(Sender: TObject);
    procedure N512Click(Sender: TObject);
    procedure N131Click(Sender: TObject);
    procedure StartTreeObj;
    procedure N132Click(Sender: TObject);
    procedure N133Click(Sender: TObject);
    procedure N134Click(Sender: TObject);
    procedure N135Click(Sender: TObject);
    procedure N136Click(Sender: TObject);
    procedure N137Click(Sender: TObject);
    procedure N138Click(Sender: TObject);
    procedure N139Click(Sender: TObject);
    procedure N140Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
  public
    // выбранный период при переключении в архив
    sel_period: string;
    // выбранный период архива
    arch_mg_: string;
    // текущий период
    cur_mg_: string;

    // текущая дата, выбранная при входе в приложение
    cur_dt: TDateTime;
    exepath_: string;
    default_reu_: string;
    strSearch_: string;


    User: string;
    Pass: string;
    isloadedspr_: Integer;
    flag3_: Integer;
    search_type_: Integer;
    cnt_: Integer;
    Lsk_: string;
    k_lsk_id_: Integer;
    c_lsk_id_: Integer;
    g_admin, org_var_: Integer;
    nkom_: string;

    //Переменные для фильтра
    reu_: string;
    kul_: string;
    nd_: string;
    kw_: string;
    house_id_: Integer;
    flt_reu_: string;
    flt_kul_: string;
    flt_house_: Integer;
    flt_nd_: string;
    flt_kw_: string;
    flt_k_lsk_id_: Integer;
    //
    default_lsk: string;
    fio_: string;
    str_adr_: string;
    last_name_: string;
    fk_par_: Integer;
    Versia: Integer; //Версия продукта
    ECR: OleVariant;
    //наличие ККМ
    have_cash: Integer;
    // массив записей о правах пользователя
    accessList:TAccessRecArray;
  end;

var
  Form_Main: TForm_Main;

implementation

uses
  Unit_print_opl_xito3, Unit_check_days, Unit_check_inkas, Unit_form_admin,
  Unit_print_opl_usl, Unit_print_strah, Unit_generate, Unit_print_saldo_houses,
  Unit_print_saldo_org_usl, Unit_form_alert_exit, Unit_about,
  Unit_print_saldo_usl, Unit_print_plan, Unit_form_plan, Unit_print_pred_debit,
  Unit_print_xito5, Unit_print_opl_xito10_3, Unit_form_saldo_check,
  Unit_print_lg_usl, Unit_corrects, Unit_form_messages, Unit1_print_pen,
  Unit_check_reports, Unit_print_bank, Unit_form_sign_rep, Unit_form_print_stat1,
  Unit_print_status, Unit_form_params, Unit_form_bills, Unit_print_stat_usl,
  Unit_corr_payments, Unit_print_xito13, Unit_form_version,
  Unit_print_debits_adm, Unit_form_kart, Unit_sel_comps, Unit_get_pay,
  Unit_inkass, Unit_list_kart, Unit_changes_houses, Unit_house_vvod,
  Unit_changes_lsk, Unit_form_subsidii, Unit_new_lsk, Unit_month_payments,
  Unit_chargepay, Unit_sel_arch_period, Unit_find_adr, Unit_changes_list,
  Unit_houses_nabor, Unit_spr_spk, Unit_gen_current, Unit_print_lists,
  Unit_spr_sprorg, Unit_spr_prices, Unit_spr_oper, Unit_status, Unit_status_gen,
  Unit_spr_users, Unit_requests, Unit_form_saldo, Unit_form_olap,
  Unit_tree_objects, Unit_get_pay_nal, Unit_spr_tarif, Unit_recv_pay_bank,
  Unit_load_files, Unit_spr_deb_org, Unit_spr_penya, Unit_edit_reports,
  Unit_oracle_load, Unit_form_kart_pr, Unit_dvb_connect, Unit_spr_params,
  Unit_spr_street, Unit_spr_usl, Unit_spr_rep, Unit_list_set, Unit_prep_doc,
  Unit_corr_sal, Unit_spr_comps, Unit_spr_props, Unit_lk_acc, Unit_auto_chrg,
  Unit_service_cash, u_frmLoadPrivs, u_frmPenCorr, u_frmLoadFias,
  ObjPar, u_frmProject, Unit_spr_proc_pay, u_frmAccFlow;

{$R *.dfm}

procedure TForm_Main.cl_flt;
begin
//Очистка фильтра
  flt_reu_ := '';
  flt_kul_ := '';
  flt_house_ := -1;
  flt_nd_ := '';
  flt_kw_ := '';
  flt_k_lsk_id_ := -1;
end;

procedure TForm_Main.N5Click(Sender: TObject);
begin
  Application.CreateForm(TForm_generate, Form_generate);
end;

procedure TForm_Main.N2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_Main.N7Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_opl_xito3, Form_print_opl_xito3);
end;

procedure TForm_Main.N11Click(Sender: TObject);
begin
  Application.CreateForm(TForm_check_days, Form_check_days);
end;

procedure TForm_Main.N12Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      with Form_list_kart do
      begin
        OD_rep1.Active := false;
        OD_rep2.Active := false;
        OD_rep1.Active := true;
        OD_rep2.Active := true;
        frxReport_base.LoadFromFile(Form_main.exepath_ + '\справка_пасп2.fr3', True);
        frxReport_base.PrepareReport(true);
        frxReport_base.ShowPreparedReport;
        OD_rep1.Active := false;
        OD_rep2.Active := false;
      end
    end
  end
  else
  begin
    msg2('Необходимо выбрать квартиру в списке лицевых счетов!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;

end;

procedure TForm_Main.N13Click(Sender: TObject);
begin
  Application.CreateForm(TForm_admin, Form_admin);
end;

procedure TForm_Main.N14Click(Sender: TObject);
begin
  Application.CreateForm(TForm_opl_usl, Form_opl_usl);
end;

procedure TForm_Main.N15Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_strah, Form_print_strah);
end;

procedure TForm_Main.N17Click(Sender: TObject);
begin
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('14', 0, 1);
end;

procedure TForm_Main.N19Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_saldo_houses, Form_print_saldo_houses);
end;

procedure TForm_Main.N20Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_saldo_org_usl, Form_print_saldo_org_usl);
end;

procedure TForm_Main.N22Click(Sender: TObject);
begin
  Application.CreateForm(TForm_about, Form_about);
end;

procedure TForm_Main.N23Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_saldo_usl, Form_print_saldo_usl);
end;

procedure TForm_Main.ToolButton2Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_lists, Form_print_lists);
end;

procedure TForm_Main.N25Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_plan, Form_print_plan);
end;

procedure TForm_Main.N26Click(Sender: TObject);
begin
  Application.CreateForm(TForm_plan, Form_plan);
end;

procedure TForm_Main.N27Click(Sender: TObject);
begin
  Form_Main.CoolTrayIcon1.ShowBalloonHint('Совет дня:', Form_Main.OD_params.FieldByName('mess_hint').AsString, bitWarning, 30);
end;

procedure TForm_Main.N28Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_pred_debit, Form_print_pred_debit);
end;

procedure TForm_Main.N210Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_xito5, Form_print_xito5);
end;

procedure TForm_Main.N30Click(Sender: TObject);
begin
  Application.CreateForm(TForm_saldo_check, Form_saldo_check);
end;

procedure TForm_Main.create_OLE_KKM;
begin
//создать объект OLE KKM
  if have_cash = 1 then
  begin
    // создаем объект общего драйвера ККМ
    // если объект создать не удается генерируется исключение, по которому завершается работа приложения
    try
      ECR := CreateOleObject('AddIn.FprnM45');
      ECR.ApplicationHandle := Application.Handle; // необходимо для корректного отображения окон драйвера в контексте приложения
    except
      Application.MessageBox('Не удалось создать объект общего драйвера ККМ!', PChar(Application.Title), MB_ICONERROR + MB_OK);
      Application.MessageBox('Устройство ККМ не будет задействовано!', PChar(Application.Title), MB_ICONERROR + MB_OK);
    end;
  end
  else if have_cash = 2 then
  begin
    // создаем объект общего драйвера ККМ
    // если объект создать не удается генерируется исключение, по которому завершается работа приложения
    try
      ECR := CreateOleObject('AddIn.DrvFR');
    except
      Application.MessageBox('Не удалось создать объект общего драйвера ККМ!', PChar(Application.Title), MB_ICONERROR + MB_OK);
      Application.MessageBox('Устройство ККМ-Штрих не будет задействовано!', PChar(Application.Title), MB_ICONERROR + MB_OK);
    end;
  end;
end;

procedure TForm_Main.FormCreate(Sender: TObject);
begin
  Versia := 187;
//нельзя использовать versia в params - используется updater-ом
  CoolTrayIcon1.IconIndex := 22;
  DisableGhosting;
end;

procedure TForm_Main.N31Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('61', 1, 1);

//  Application.CreateForm(TForm_print_opl_xito11, Form_print_opl_xito11);
end;

procedure TForm_Main.N212Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_opl_xito10_3, Form_print_opl_xito10_3);
end;

procedure TForm_Main.N32Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_lg_usl, Form_print_lg_usl);
end;

procedure TForm_Main.N34Click(Sender: TObject);
begin
  Application.CreateForm(TForm_corrects, Form_corrects);
end;

procedure TForm_Main.text1Click(Sender: TObject);
begin
  Application.CreateForm(TForm_messages, Form_messages);
end;

procedure TForm_Main.Timer_messagesTimer(Sender: TObject);
begin
  if cnt_ = 1 then
  begin
    cnt_ := 0;
    Exit;
  end
  else
    cnt_ := 1;
  Exit;
end;

procedure TForm_Main.N35Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_pen, Form_print_pen);
end;

procedure TForm_Main.N36Click(Sender: TObject);
begin
  if FF('Form_kart_pr', 0) = 1 then
  begin
    if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      Form_list_kart.OD_rep1.Active := false;
      Form_kart_pr.OD_rep2.Active := false;
      Form_list_kart.OD_rep1.Active := true;
      Form_list_kart.OD_rep2.Active := true;
      Form_kart_pr.frxReport1.PrepareReport(true);
      Form_kart_pr.frxReport1.ShowPreparedReport;
      Form_list_kart.OD_rep1.Active := false;
      Form_kart_pr.OD_rep2.Active := false;
    end;
  end
  else
  begin
    msg2('Необходимо войти в карточку проживающего!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;
end;

procedure TForm_Main.N37Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_bank, Form_print_bank);
end;

procedure TForm_Main.N38Click(Sender: TObject);
begin
  Application.CreateForm(TForm_sign_rep, Form_sign_rep);
end;

procedure TForm_Main.N40Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_stat, Form_print_stat);
end;

procedure TForm_Main.N41Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_status, Form_print_status);
end;

procedure TForm_Main.CoolTrayIcon1DblClick(Sender: TObject);
begin
  Form_main.CoolTrayIcon1.ShowMainForm;
  Form_main.CoolTrayIcon1.CycleIcons := False;
  Form_main.CoolTrayIcon1.IconIndex := 5;

end;

procedure TForm_Main.N42Click(Sender: TObject);
begin
  Application.CreateForm(TForm_params, Form_params);
end;

procedure TForm_Main.N44Click(Sender: TObject);
begin
  if FF('Form_print_bills', 1) = 0 then
    Application.CreateForm(TForm_print_bills, Form_print_bills);

end;

procedure TForm_Main.N45Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('13', 1, 1);
end;

procedure TForm_Main.FormShow(Sender: TObject);
var
  LibName: string;
  HLib: THandle;
  RServ: TDLLRegisterServer;
begin
  LibName := 'zcubed.dll';
  HLib := LoadLibrary(pchar(LibName));
  if HLib > HINSTANCE_ERROR then
  begin
    RServ := GetProcAddress(HLib, 'DllRegisterServer');
    if Assigned(RServ) then
    begin
      if not RServ = S_OK then
        ShowMessage(Format('Can not register server %s', [LibName]));
    end
    else
      ShowMessage('Method DllRegisterServer does not supported in the selected library');
    FreeLibrary(HLib);
  end
  else
    ShowMessage(Format('Library %s was not found', [LibName]));
end;

procedure TForm_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form_Main.CoolTrayIcon1.IconVisible := false;
  if FF('Form_olap', 0) = 1 then
    Form_olap.Close;
  if FF('Form_tree_objects', 0) = 1 then
    Form_tree_objects.Close;

  DataModule1.OracleSession1.Commit;
end;

procedure TForm_Main.N46Click(Sender: TObject);
begin
  Application.CreateForm(TForm_corr_payments, Form_corr_payments);
end;

procedure TForm_Main.N49Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_stat_usl, Form_print_stat_usl);
  Form_print_stat_usl.Select_form(18, 1, 0);
  Form_print_stat_usl.Caption := TMenuItem(Sender).Caption;
end;

procedure TForm_Main.N50Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_xito13, Form_print_xito13);
end;

procedure TForm_Main.N16Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'http://direct.ucoz.ae/forum/3', nil, nil, SW_SHOW);
end;

procedure TForm_Main.N89Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_stat_usl, Form_print_stat_usl);
  Form_print_stat_usl.Select_form(22, 1, 1);
  Form_print_stat_usl.Caption := TMenuItem(Sender).Caption;
end;

procedure TForm_Main.N48Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_debits_adm, Form_print_debits_adm);
end;

procedure TForm_Main.N51Click(Sender: TObject);
begin
  if FF('Form_list_kart', 1) = 0 then
    Application.CreateForm(TForm_list_kart, Form_list_kart);
end;

procedure TForm_Main.N53Click(Sender: TObject);
begin
  Application.CreateForm(TForm_sel_comps, Form_sel_comps);
  Form_sel_comps.ShowModal;
end;

procedure TForm_Main.N54Click(Sender: TObject);
begin
  Application.CreateForm(TForm_get_pay, Form_get_pay);
  Form_get_pay.setEnterType(0);
end;

procedure TForm_Main.N55Click(Sender: TObject);
begin
  Application.CreateForm(TForm_inkass, Form_inkass);
end;

procedure TForm_Main.N56Click(Sender: TObject);
begin
  Application.CreateForm(TForm_changes_houses, Form_changes_houses);
end;

procedure TForm_Main.N57Click(Sender: TObject);
begin
  Application.CreateForm(TForm_house_vvod, Form_house_vvod);
end;

procedure TForm_Main.ToolButton21Click(Sender: TObject);
begin
  if FF('Form_changes_lsk', 1) = 0 then
    Application.CreateForm(TForm_changes_lsk, Form_changes_lsk);

  with Form_changes_lsk do
  begin
    if FF('Form_changes_lsk', 0) = 1 then
    begin
      OD_changes.Master := Form_list_kart.OD_list_kart;
      OD_changes.MasterFields := 'k_lsk_id';
      OD_changes.DetailFields := 'k_lsk_id';
      OD_changes.SetVariable('var', 1);
      OD_changes.Active := false;
      OD_changes.Active := true;
    end
    else
    begin
      OD_changes.Master := nil;
      OD_changes.MasterFields := '';
      OD_changes.DetailFields := '';
      OD_changes.SetVariable('var', 0);
      OD_changes.Active := false;
      OD_changes.Active := true;
    end;
  end;

end;

procedure TForm_Main.ToolButton23Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    with Form_list_kart do
    begin
      with OD_list_kart do
      begin
        Active := false;
      //удаляем последнюю строчку
        SQL.Delete(SQL.Count - 1);
      //устанавливаем порядок
        SQL.Add('order by k.lsk');
        Active := true;
      end;
    end;
  end;
end;

procedure TForm_Main.ToolButton24Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    with Form_list_kart do
    begin
      with OD_list_kart do
      begin
        Active := false;
      //удаляем последнюю строчку
        SQL.Delete(SQL.Count - 1);
      //устанавливаем порядок
        SQL.Add('order by s.name, scott.utils.f_order(k.nd,6), scott.utils.f_order(k.kw,7), decode(k.psch,8,1,9,1,0)');
        Active := true;
      end;
    end;
  end;

end;

procedure TForm_Main.ToolButton20Click(Sender: TObject);
begin
  Form_kart.save_changes(1);
  Form_kart.recalc_kart;
  if FF('Form_subsidii', 1) = 0 then
    Application.CreateForm(TForm_subsidii, Form_subsidii);

end;

procedure TForm_Main.ToolButton25Click(Sender: TObject);
begin
  if FF('Form_new_lsk', 1) = 0 then
  begin
    Application.CreateForm(TForm_new_lsk, Form_new_lsk);
    Form_new_lsk.ShowModal;
  end;

end;

procedure TForm_Main.ToolButton18Click(Sender: TObject);
begin
  if FF('Form_month_payments', 1) = 0 then
    Application.CreateForm(TForm_month_payments, Form_month_payments);

  if FF('Form_list_kart', 0) = 1 then
  begin
    Form_month_payments.Caption := 'Поступления за месяц по адресу';
    with Form_month_payments.OD_c_kwtp do
    begin
      Master := Form_list_kart.OD_list_kart;
      MasterFields := 'k_lsk_id';
      DetailFields := 'k_lsk_id';
      SetVariable('var', 1);
      Active := false;
      Active := true;
      with Form_month_payments.OD_c_kwtp_mg do
      begin
        Master := Form_list_kart.OD_list_kart;
        MasterFields := 'k_lsk_id';
        DetailFields := 'k_lsk_id';
        SetVariable('var', 1);
        Active := false;
        Active := true;
      end;
    end;
  end
  else
  begin
    Form_month_payments.Caption := 'Поступления за месяц';
    with Form_month_payments.OD_c_kwtp do
    begin
      Master := nil;
      MasterFields := '';
      DetailFields := '';
      SetVariable('var', 0);
      Active := false;
      Active := true;
    end;
    with Form_month_payments.OD_c_kwtp_mg do
    begin
      Master := nil;
      MasterFields := '';
      DetailFields := '';
      SetVariable('var', 0);
      Active := false;
      Active := true;
    end;
  end;
end;

procedure TForm_Main.ToolButton26Click(Sender: TObject);
begin
  if FF('Form_chargepay', 1) = 0 then
    Application.CreateForm(TForm_chargepay, Form_chargepay);

end;

procedure TForm_Main.ToolButton5Click(Sender: TObject);
begin
  if FF('Form_sel_arch_period', 1) = 0 then
  begin
    Application.CreateForm(TForm_sel_arch_period, Form_sel_arch_period);
    Form_sel_arch_period.ShowModal;
  end;
end;

procedure TForm_Main.ToolButton7Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    with Form_list_kart do
    begin
      Application.CreateForm(TForm_find_adr, Form_find_adr);
      if Form_find_adr.ShowModal = mrOk then
      begin
        OD_list_kart.Active := false;
      //удаляем последнюю строчку
        OD_list_kart.SQL.Delete(OD_list_kart.SQL.Count - 1);
      //устанавливаем порядок
        OD_list_kart.SQL.Add('order by s.name, k.nd, k.kw');
        OD_list_kart.Active := true;
        OD_list_kart.SearchRecord('lsk', Form_Main.Lsk_, [srFromBeginning]);
      end;
    end;
  end;
end;

procedure TForm_Main.N59Click(Sender: TObject);
begin
  if FF('Form_changes_list', 0) = 0 then
    Application.CreateForm(TForm_changes_list, Form_changes_list);
end;

procedure TForm_Main.N60Click(Sender: TObject);
begin
{  if FF('Form_month_payments', 1) = 0 then
    Application.CreateForm(TForm_month_payments, Form_month_payments);

  if FF('Form_list_kart', 0) = 1 then
  begin
    Form_month_payments.Caption:='Поступления за месяц по текущему лицевому';
    with Form_month_payments.OD_c_kwtp do
    begin
      Master:=Form_list_kart.OD_list_kart;
      MasterFields:='lsk';
      DetailFields:='lsk';
      SetVariable('var', 1);
      Active:=false;
      Active:=true;
    end;
  end
  else
  begin
    with Form_month_payments.OD_c_kwtp do
    begin
    Caption:='Поступления за месяц';
    OD_c_kwtp.Master:=nil;
    with Form_month_payments.OD_c_kwtp do
    begin
    OD_c_kwtp.MasterFields:='';
    OD_c_kwtp.DetailFields:='';
    OD_c_kwtp.SetVariable('var', 0);
    OD_c_kwtp.Active:=false;
    OD_c_kwtp.Active:=true;
    end;
  end;         }
end;

procedure TForm_Main.N62Click(Sender: TObject);
begin
  Application.CreateForm(TForm_houses_nabor, Form_houses_nabor);
end;

procedure TForm_Main.N63Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_spk, Form_spr_spk);
end;

procedure TForm_Main.N58Click(Sender: TObject);
begin
  Application.CreateForm(TForm_gen_current, Form_gen_current);
end;

procedure TForm_Main.N66Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_lists, Form_print_lists);
end;

procedure TForm_Main.OracleEvent1Event(Sender: TOracleEvent; const ObjectName: string; const Info: Variant);
var
  ii: Integer;
  IList: TStringList;
begin
  if (not VarIsArray(Info)) then
    exit;

  IList := TStringList.Create;

  for ii := 0 to VarArrayHighBound(Info, 1) do
    IList.Add(Info[ii]);
  if LeftStr(IList.Text, 4) = 'stop' then
  begin
    Application.CreateForm(TForm_alert_exit, Form_alert_exit);
    Form_alert_exit.Memo1.Text := OD_params.FieldByName('message').AsString;
    Form_alert_exit.ShowModal;
  end
  else if LeftStr(IList.Text, 4) = 'info' then
  begin
    Form_main.CoolTrayIcon1.ShowBalloonHint('Внимание!', copy(IList.Text, 6, length(IList.Text)), bitInfo, 60);
  end
  else if LeftStr(IList.Text, pos('-', IList.Text) - 1) + '-lsk' = LowerCase(user) + '-lsk' then
    //формирование начисления
  begin
    if ff('Form_status_gen', 1) = 1 then
      Form_status_gen.Memo1.Lines.Text := 'Начисление-' + RightStr(IList.Text, 10);
  end;
end;

procedure TForm_Main.N67Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_sprorg, Form_spr_sprorg);
end;

procedure TForm_Main.N69Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_oper, Form_spr_oper);
end;

procedure TForm_Main.N70Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_users, Form_spr_users);
end;

procedure TForm_Main.OLAP1Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('35', 1, 1);
end;

procedure TForm_Main.N71Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('36', 0, 1);

{  Application.CreateForm(TForm_print_stat_usl, Form_print_stat_usl);
  Form_print_stat_usl.Select_form(36, 2, 1);
  Form_print_stat_usl.Caption:=TMenuItem(Sender).Caption;}
end;

procedure TForm_Main.N68Click(Sender: TObject);
begin
  if FF('Form_spr_prices', 1) = 0 then
    Application.CreateForm(TForm_spr_prices, Form_spr_prices);
end;

procedure TForm_Main.N74Click(Sender: TObject);
begin
  if FF('Form_dvb_connect', 1) = 0 then
    Application.CreateForm(TForm_dvb_connect, Form_dvb_connect);
end;

procedure TForm_Main.N75Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('60', 1, 1);
end;

procedure TForm_Main.ToolButton10Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    if FF('Form_saldo', 1) = 0 then
    begin
      Application.CreateForm(TForm_saldo, Form_saldo);
    end
  end;
end;

procedure TForm_Main.N72Click(Sender: TObject);
begin
  if FF('Form_requests', 1) = 0 then
  begin
    Application.CreateForm(TForm_requests, Form_requests);
    Form_requests.setTypeAcess(1);
  end;
end;

procedure TForm_Main.N76Click(Sender: TObject);
begin

  if msg3('Вывести всех пользователей из программы?', 'Подтверждение', MB_YESNO + MB_ICONQUESTION) = ID_YES then
  begin
    DataModule1.OraclePackage1.CallProcedure('scott.ADMIN.send_message', ['stop']);
  end;
end;

procedure TForm_Main.N77Click(Sender: TObject);
begin
  if FF('Form_recv_pay_bank', 1) = 0 then
  begin
    Application.CreateForm(TForm_recv_pay_bank, Form_recv_pay_bank);
  end;
end;

procedure TForm_Main.FormPaint(Sender: TObject);
type
  TRGB = record
    b, g, r: byte;
  end;

  ARGB = array[0..1] of TRGB;

  PARGB = ^ARGB;
var
  b: TBitMap;
  p: PARGB;
  x, y: integer;
begin
  b := TBitMap.Create;
  b.pixelformat := pf24bit;
  b.width := Clientwidth;
  b.height := Clientheight;
  for y := 0 to b.height - 1 do
  begin
    p := b.scanline[y];
    for x := 0 to b.width - 1 do
    begin
      p[x].r := 225;
      p[x].g := 251;
      p[x].b := 219;
    end;
  end;
  canvas.draw(0, 0, b);
  b.free;

  Panel1.Left := Round(Form_Main.width) - Round(Panel1.width) - 5;
  Panel1.Top := 45;
end;

procedure TForm_Main.N78Click(Sender: TObject);
begin
  if FF('Form_get_pay_nal', 1) = 0 then
  begin
    Application.CreateForm(TForm_get_pay_nal, Form_get_pay_nal);
    //Form_get_pay_nal.ShowModal;
    Form_get_pay_nal.Show;
  end;
end;

procedure TForm_Main.N79Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_stat_usl, Form_print_stat_usl);
  Form_print_stat_usl.Select_form(37, 2, 1);
  Form_print_stat_usl.Caption := TMenuItem(Sender).Caption;
end;

procedure TForm_Main.N80Click(Sender: TObject);
begin
  if FF('Form_spr_tarif', 1) = 0 then
  begin
    Application.CreateForm(TForm_spr_tarif, Form_spr_tarif);
    Form_spr_tarif.ShowModal;
  end;
end;

procedure TForm_Main.N81Click(Sender: TObject);
begin
  if FF('Form_load_files', 1) = 0 then
  begin
    Application.CreateForm(TForm_load_files, Form_load_files);
  end;
end;

procedure TForm_Main.N82Click(Sender: TObject);
begin
  Application.CreateForm(TForm_get_pay, Form_get_pay);
  Form_get_pay.setEnterType(1);
end;

procedure TForm_Main.N83Click(Sender: TObject);
begin
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('54', 1, 1);
end;

procedure TForm_Main.N84Click(Sender: TObject);
begin
  if FF('Form_spr_deb_org', 1) = 0 then
    Application.CreateForm(TForm_spr_deb_org, Form_spr_deb_org);
end;

procedure TForm_Main.N85Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('56', 0, 1);
end;

procedure TForm_Main.N87Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('58', 1, 1);

{  Panel2.Width:=235;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('57', 1, 1);}
end;

procedure TForm_Main.N88Click(Sender: TObject);
begin
  if FF('Form_spr_penya', 1) = 0 then
    Application.CreateForm(TForm_spr_penya, Form_spr_penya);

end;

procedure TForm_Main.N90Click(Sender: TObject);
begin
  Application.CreateForm(TForm_edit_reports, Form_edit_reports);
end;

procedure TForm_Main.Oracle1Click(Sender: TObject);
begin
  Application.CreateForm(TForm_oracle_load, Form_oracle_load);
  Form_oracle_load.ShowModal;
end;

procedure TForm_Main.N10Click(Sender: TObject);
begin
  Application.CreateForm(TForm_print_stat_usl, Form_print_stat_usl);
  Form_print_stat_usl.Select_form(59, 0, 1);
  Form_print_stat_usl.Caption := TMenuItem(Sender).Caption;

{  Panel2.Width:=235;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess(59, 0, 1);}
end;

procedure TForm_Main.DVB1Click(Sender: TObject);
var
  dvb: DVButils.dvbBase;
begin
  dvb := dvb.create;
end;

procedure TForm_Main.N91Click(Sender: TObject);
begin
  if FF('Form_spr_params', 1) = 0 then
    Application.CreateForm(TForm_spr_params, Form_spr_params);

end;

procedure TForm_Main.N92Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_street, Form_spr_street);
end;

procedure TForm_Main.N93Click(Sender: TObject);
var
  bm: TBookmark;
begin
  if FF('Form_kart_pr', 0) = 1 then
  begin
    if Form_kart.OD_kart_pr.FieldByName('status').AsInteger = 4 then
    begin
      msg2('Получение справки по выписанному гражданину не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      bm := Form_kart.OD_kart_pr.GetBookmark;
      with Form_kart_pr do
      begin
//    OD_rep3.Active:=false;
        OD_rep5.Active := false;
//    OD_rep3.Active:=True;
        OD_rep5.SetVariable('var_', 2);
        OD_rep5.Active := True;
        frxReport_base.LoadFromFile(Form_main.exepath_ + '\справка_пасп1.fr3', True);
        frxReport_base.Variables['fio_'] := '''' + Form_kart.OD_kart_pr.FieldByName('K_FAM').AsString + ' ' + Form_kart.OD_kart_pr.FieldByName('K_IM').AsString + ' ' + Form_kart.OD_kart_pr.FieldByName('K_OT').AsString + '''';
        frxReport_base.Variables['dat_rog_'] := '''' + Form_kart.OD_kart_pr.FieldByName('DAT_ROG').AsString + '''';
        if Form_kart.OD_kart_pr.FieldByName('POL').AsInteger = 1 then
        begin
    //Мужчина
          frxReport_base.Variables['pol1_'] := '''' + 'он' + '''';
          frxReport_base.Variables['pol2_'] := '''' + 'н' + '''';
        end
        else
        begin
          frxReport_base.Variables['pol1_'] := '''' + 'она' + '''';
          frxReport_base.Variables['pol2_'] := '''' + 'на' + '''';
    //Женщина
        end;

        frxReport_base.PrepareReport(true);
        frxReport_base.ShowPreparedReport;
//    OD_rep3.Active:=false;
        OD_rep5.Active := false;
      end;
      Form_kart.OD_kart_pr.GotoBookmark(bm);
    end;
  end
  else
  begin
    msg2('Необходимо войти в карточку проживающего!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;

end;

procedure TForm_Main.N94Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('62', 0, 1);

end;

procedure TForm_Main.N95Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('63', 0, 1);
end;

procedure TForm_Main.N96Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('64', 0, 0);
end;

procedure TForm_Main.N97Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('65', 1, 1);

end;

procedure TForm_Main.N99Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('66', 0, 0);
end;

procedure TForm_Main.N100Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('67', 0, 0);
end;

procedure TForm_Main.N101Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('68', 0, 0);
end;

procedure TForm_Main.N102Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('69', 1, 1);
end;

procedure TForm_Main.N103Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_usl, Form_spr_usl);
end;

procedure TForm_Main.N104Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_rep, Form_spr_rep);

end;

procedure TForm_Main.N105Click(Sender: TObject);
begin
  Application.CreateForm(TForm_list_set, Form_list_set);
end;

procedure TForm_Main.N107Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      with Form_list_kart do
      begin
        OD_rep1.Active := false;
        OD_rep2.Active := false;
        OD_rep1.Active := true;
        OD_rep2.Active := true;
        frxReport_base.LoadFromFile(Form_main.exepath_ + '\спр_пасп_регистр.fr3', True);
        frxReport_base.PrepareReport(true);
        frxReport_base.ShowPreparedReport;
        OD_rep1.Active := false;
        OD_rep2.Active := false;
      end
    end
  end
  else
  begin
    msg2('Необходимо выбрать квартиру в списке лицевых счетов!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;

end;

procedure TForm_Main.N106Click(Sender: TObject);
var
  a: Integer;
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
    //запрашиваем ф.и.о. регистрируемых
      Application.CreateForm(TForm_prep_doc, Form_prep_doc);
      Form_prep_doc.SetAccess('70');
      if Form_prep_doc.ShowModal = mrOk then
      begin
        with Form_list_kart do
        begin
          OD_rep1.Active := false;
          OD_rep2.Active := false;
          OD_rep3.Active := false;
          OD_rep1.Active := true;
          OD_rep2.Active := true;
          OD_rep3.Active := true;
          frxReport_base.LoadFromFile(Form_main.exepath_ + '\заявление_на_вселение.fr3', True);
          frxReport_base.Variables['dt1_'] := DataModule1.OraclePackage1.CallDateFunction('scott.UTILS.getS_date_param', ['REP_PREP_DT1']);

          frxReport_base.PrepareReport(true);
          frxReport_base.ShowPreparedReport;
          OD_rep1.Active := false;
          OD_rep2.Active := false;
          OD_rep3.Active := false;
        end
      end;
    end
  end
  else
  begin
    msg2('Необходимо выбрать квартиру в списке лицевых счетов!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;

end;

procedure TForm_Main.N114Click(Sender: TObject);
var
  bm: TBookmark;
begin
  if FF('Form_kart_pr', 0) = 1 then
  begin
    if Form_kart.OD_kart_pr.FieldByName('status').AsInteger = 4 then
    begin
      msg2('Получение справки по выписанному гражданину не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      bm := Form_kart.OD_kart_pr.GetBookmark;
      with Form_kart_pr do
      begin
        Form_list_kart.OD_rep1.Active := false;
        OD_rep2.Active := false;
        OD_rep5.Active := false;
        Form_list_kart.OD_rep1.Active := True;
        OD_rep2.Active := True;
        OD_rep5.SetVariable('var_', 0);
        OD_rep5.Active := True;
        frxReport_base.LoadFromFile(Form_main.exepath_ + '\спр_пасп_рег.fr3', True);
        frxReport_base.PrepareReport(true);
        frxReport_base.ShowPreparedReport;
        OD_rep2.Active := false;
        OD_rep5.Active := false;
        Form_list_kart.OD_rep1.Active := False;
      end;
      Form_kart.OD_kart_pr.GotoBookmark(bm);
    end;
  end
  else
  begin
    msg2('Необходимо войти в карточку проживающего!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;

end;

procedure TForm_Main.N110Click(Sender: TObject);
var
  bm: TBookmark;
begin
  if FF('Form_kart_pr', 0) = 1 then
  begin
    if Form_kart.OD_kart_pr.FieldByName('status').AsInteger = 4 then
    begin
      msg2('Получение справки по выписанному гражданину не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      bm := Form_kart.OD_kart_pr.GetBookmark;
      with Form_kart_pr do
      begin
        Form_list_kart.OD_rep1.Active := false;
        OD_rep2.Active := false;
        OD_rep5.Active := false;
        Form_list_kart.OD_rep1.Active := True;
        OD_rep2.Active := True;
        OD_rep5.SetVariable('var_', 1);
        OD_rep5.Active := True;
        frxReport_base.LoadFromFile(Form_main.exepath_ + '\спр_пасп_рег.fr3', True);
        frxReport_base.PrepareReport(true);
        frxReport_base.ShowPreparedReport;
        OD_rep2.Active := false;
        OD_rep5.Active := false;
        Form_list_kart.OD_rep1.Active := False;
      end;
      Form_kart.OD_kart_pr.GotoBookmark(bm);
    end;
  end
  else
  begin
    msg2('Необходимо войти в карточку проживающего!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;
end;

procedure TForm_Main.N108Click(Sender: TObject);
var
  bm: TBookmark;
begin
  if FF('Form_kart_pr', 0) = 1 then
  begin
    if Form_kart.OD_kart_pr.FieldByName('status').AsInteger = 4 then
    begin
      msg2('Получение справки по выписанному гражданину не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      Application.CreateForm(TForm_prep_doc, Form_prep_doc);
      Form_prep_doc.SetAccess('72');
      Form_prep_doc.ShowModal;
      bm := Form_kart.OD_kart_pr.GetBookmark;
      with Form_kart_pr do
      begin
        Form_list_kart.OD_rep1.Active := false;
        OD_rep2.Active := false;
        OD_rep5.Active := false;
        Form_list_kart.OD_rep1.Active := True;
        OD_rep2.Active := True;
        OD_rep5.SetVariable('var_', 0);
        OD_rep5.Active := True;
        frxReport_base.LoadFromFile(Form_main.exepath_ + '\спр_пасп_уголь.fr3', True);
        frxReport_base.Variables['vc1_'] :=
          DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.getS_str_param', ['REP_PREP_VC']);
        frxReport_base.PrepareReport(true);
        frxReport_base.ShowPreparedReport;
        OD_rep2.Active := false;
        OD_rep5.Active := false;
        Form_list_kart.OD_rep1.Active := False;
      end;
      Form_kart.OD_kart_pr.GotoBookmark(bm);
    end;
  end
  else
  begin
    msg2('Необходимо войти в карточку проживающего!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;

end;

procedure TForm_Main.N111Click(Sender: TObject);
var
  bm: TBookmark;
begin
  if FF('Form_kart_pr', 0) = 1 then
  begin
    if Form_kart.OD_kart_pr.FieldByName('status').AsInteger = 4 then
    begin
      msg2('Получение справки по выписанному гражданину не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      bm := Form_kart.OD_kart_pr.GetBookmark;
      with Form_kart_pr do
      begin
        Form_list_kart.OD_rep1.Active := false;
        OD_rep2.Active := false;
        OD_rep5.Active := false;
        Form_list_kart.OD_rep1.Active := True;
        OD_rep2.Active := True;
        OD_rep5.SetVariable('var_', 0);
        OD_rep5.Active := True;
        frxReport_base.LoadFromFile(Form_main.exepath_ + '\спр_пасп_нотариус.fr3', True);
        frxReport_base.PrepareReport(true);
        frxReport_base.ShowPreparedReport;
        OD_rep2.Active := false;
        OD_rep5.Active := false;
        Form_list_kart.OD_rep1.Active := False;
      end;
      Form_kart.OD_kart_pr.GotoBookmark(bm);
    end;
  end
  else
  begin
    msg2('Необходимо войти в карточку проживающего!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;

end;

procedure TForm_Main.N113Click(Sender: TObject);
var
  a: Integer;
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    if FF('Form_kart_pr', 0) = 1 then
    begin
      if Form_main.arch_mg_ <> '' then
      begin
        msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
      end
      else
      begin
    //запрашиваем ф.и.о. на кого справка, дату
        Application.CreateForm(TForm_prep_doc, Form_prep_doc);
        Form_prep_doc.SetAccess('71');
        if Form_prep_doc.ShowModal = mrOk then
        begin
          with Form_kart_pr do
          begin
            OD_rep5.Active := false;
            OD_rep5.SetVariable('var_', 0);
            OD_rep5.Active := true;
            OD_rep2.Active := false;
            OD_rep2.Active := true;

            Form_list_kart.OD_rep3.Active := false;
            Form_list_kart.OD_rep3.Active := true;

            frxReport_base.LoadFromFile(Form_main.exepath_ + '\спр_пасп_наслед.fr3', True);
            frxReport_base.Variables['fio_'] := QuotedStr(DataModule1.OraclePackage1.CallStringFunction('scott.UTILS.getS_str_param', ['REP_PREP_VC2']));
            frxReport_base.Variables['dt1_'] := DataModule1.OraclePackage1.CallDateFunction('scott.UTILS.getS_date_param', ['REP_PREP_DT1']);

            frxReport_base.PrepareReport(true);
            frxReport_base.ShowPreparedReport;
            OD_rep2.Active := false;
            OD_rep5.Active := false;
            Form_list_kart.OD_rep3.Active := false;
          end;
        end;
      end
    end
    else
    begin
      msg2('Необходимо войти в карточку проживающего!', 'Внимание', MB_OK + MB_ICONQUESTION);
    end;
  end
  else
  begin
    msg2('Необходимо выбрать квартиру в списке лицевых счетов!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;
end;

procedure TForm_Main.N109Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      with Form_kart_pr do
      begin
        Form_list_kart.OD_rep1.Active := false;
        Form_list_kart.OD_rep1.Active := true;
        OD_rep2.Active := false;
        OD_rep2.Active := true;
        frxReport1.LoadFromFile(Form_main.exepath_ + '\выписка_из_карточки.fr3', True);
        frxReport1.PrepareReport(true);
        frxReport1.ShowPreparedReport;
        Form_list_kart.OD_rep1.Active := false;
        OD_rep2.Active := false;
      end;
    end
  end
  else
  begin
    msg2('Необходимо выбрать квартиру в списке лицевых счетов!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;
end;

procedure TForm_Main.N115Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('73', 0, 0);

end;

procedure TForm_Main.N116Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('75', 0, 0);
end;

procedure TForm_Main.N117Click(Sender: TObject);
begin
  if FF('Form_corr_sal', 1) = 0 then
    Application.CreateForm(TForm_corr_sal, Form_corr_sal);

end;

procedure TForm_Main.N118Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_comps, Form_spr_comps);

end;

procedure TForm_Main.N119Click(Sender: TObject);
var
  bm: TBookmark;
begin
  if FF('Form_kart_pr', 0) = 1 then
  begin
    if Form_kart.OD_kart_pr.FieldByName('status').AsInteger = 4 then
    begin
      msg2('Получение справки по выписанному гражданину не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      Application.CreateForm(TForm_prep_doc, Form_prep_doc);
      Form_prep_doc.SetAccess('76');
      if Form_prep_doc.ShowModal = mrOk then
      begin
        bm := Form_kart.OD_kart_pr.GetBookmark;
        with Form_kart_pr do
        begin
          Form_list_kart.OD_rep1.Active := false;
          OD_rep2.Active := false;
          OD_rep5.Active := false;
          Form_list_kart.OD_rep1.Active := True;
          OD_rep2.Active := True;
          OD_rep5.SetVariable('var_', 1);
          OD_rep5.Active := True;
          frxReport_base.LoadFromFile(Form_main.exepath_ + '\спр_пасп_усл.fr3', True);
          frxReport_base.PrepareReport(true);
          frxReport_base.ShowPreparedReport;
          OD_rep2.Active := false;
          OD_rep5.Active := false;
          Form_list_kart.OD_rep1.Active := False;
        end;
        Form_kart.OD_kart_pr.GotoBookmark(bm);
      end;
    end;
  end
  else
  begin
    msg2('Необходимо войти в карточку проживающего!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;
end;

procedure TForm_Main.N120Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('77', 0, 0);

end;

procedure TForm_Main.N121Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_props, Form_spr_props);
end;

procedure TForm_Main.N122Click(Sender: TObject);
begin
  
  StartTreeObj;
//  if FF('Form_olap', 0) = 0 then
//    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('78', 0, 2);

end;

procedure TForm_Main.N123Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    if FF('Form_lk_acc', 0) = 0 then
      Application.CreateForm(TForm_lk_acc, Form_lk_acc);
  end
  else
  begin
    msg2('Необходимо выбрать квартиру в списке лицевых счетов!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;

end;

procedure TForm_Main.N124Click(Sender: TObject);
begin
  
  StartTreeObj;
//  if FF('Form_olap', 0) = 0 then
//    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('79', 0, 0);
end;

procedure TForm_Main.N86Click(Sender: TObject);
begin
  if FF('Form_auto_chrg', 1) = 0 then
    Application.CreateForm(TForm_auto_chrg, Form_auto_chrg);
end;

procedure TForm_Main.N125Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('81', 0, 0);
end;

procedure TForm_Main.N871Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('80', 1, 1);
end;

procedure TForm_Main.N126Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('82', 1, 1);
end;

procedure TForm_Main.N127Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('83', 0, 0);
end;

procedure TForm_Main.N213Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('84', 0, 1);
end;

procedure TForm_Main.N128Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('85', 0, 0);
end;

procedure TForm_Main.N510Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('86', 0, 0);

end;

procedure TForm_Main.N511Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('87', 0, 0);
end;

procedure TForm_Main.N129Click(Sender: TObject);
begin
  Application.CreateForm(TForm_service_cash, Form_service_cash);
  Form_service_cash.Show;
end;

procedure TForm_Main.N130Click(Sender: TObject);
begin
  
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('88', 0, 0);
end;

procedure TForm_Main.N521Click(Sender: TObject);
begin

  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('89', 0, 1);
end;

procedure TForm_Main.N512Click(Sender: TObject);
begin
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('90', 0, 1);
end;

procedure TForm_Main.N131Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_redirect, Form_spr_redirect);
end;


//запустить форму дерева объектов
procedure TForm_Main.StartTreeObj;
begin
  Panel2.Width:=235;
  if FF('Form_tree_objects', 0) = 0 then
  begin
    Application.CreateForm(TForm_tree_objects, Form_tree_objects);
    Form_tree_objects.ManualDock(Form_main.Panel2, nil, alNone);
    Form_tree_objects.Visible := true;
  end;
end;


procedure TForm_Main.N132Click(Sender: TObject);
begin
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('91', 0, 0);
end;

procedure TForm_Main.N133Click(Sender: TObject);
begin
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('92', 0, 0);
end;

procedure TForm_Main.N134Click(Sender: TObject);
begin
  if FF('frmLoadPrivs', 1) = 0 then
  begin
    Application.CreateForm(TfrmLoadPrivs, frmLoadPrivs);
  end;

end;

procedure TForm_Main.N135Click(Sender: TObject);
begin
  if FF('frmPenCorr', 1) = 0 then
  begin
    Application.CreateForm(TfrmPenCorr, frmPenCorr);
  end;
end;

procedure TForm_Main.N136Click(Sender: TObject);
begin
  if FF('Form_list_kart', 0) = 1 then
  begin
    if Form_main.arch_mg_ <> '' then
    begin
      msg2('Получение справки из архива не возможно!', 'Внимание!', MB_OK + MB_ICONSTOP);
    end
    else
    begin
    //Образец вызова модальной формы с передачей параметров!
    Application.CreateForm(TfrmTwoPeriods, frmTwoPeriods);
    frmTwoPeriods.set_rep('93');
    //DataModule1.DS_period1.DataSet:=DataModule1.DS_period1
    frmTwoPeriods.chk1.Enabled:=False; //отключить возможность выбора текущ. периода
    if (frmTwoPeriods.ShowModal = mrOk) then
    begin
      if (frmTwoPeriods.cbb1.Text = '')
        or (frmTwoPeriods.cbb2.Text = '') then
        msg2('Необходимо выбрать диапазон дат!', 'Внимание', MB_OK + MB_ICONERROR)
      else
      begin
        Form_list_kart.OD_rep_lsk.Active := False;
        Form_list_kart.OD_rep_lsk.SetVariable('p_rep_cd', '93');
        Form_list_kart.OD_rep_lsk.SetVariable('p_lsk',
          Form_list_kart.OD_list_kart.FieldByName('lsk').AsString);
        Form_list_kart.OD_rep_lsk.SetVariable('p_mg1', frmTwoPeriods.cbb1.EditValue);
        Form_list_kart.OD_rep_lsk.SetVariable('p_mg2', frmTwoPeriods.cbb2.EditValue);
        Form_list_kart.OD_rep_lsk.Active := True;

        Form_list_kart.frxReport_base.Script.Variables['mg1']:=frmTwoPeriods.cbb1.Text;
        Form_list_kart.frxReport_base.Script.Variables['mg2']:=frmTwoPeriods.cbb2.Text;

//        Form_list_kart.frxReport_base.Script.Variables['mg1']:=#39+frmTwoPeriods.cbb1.Text+#39;
//        Form_list_kart.frxReport_base.Script.Variables['mg2']:=#39+frmTwoPeriods.cbb2.Text+#39;
        
        Form_list_kart.frxReport_base.LoadFromFile(Form_main.exepath_ + '\справка_пеня1.fr3', True);
        Form_list_kart.frxReport_base.PrepareReport(true);
        Form_list_kart.frxReport_base.ShowPreparedReport;
        Form_list_kart.OD_rep_lsk.Active := False;
      end;


    end;
    //удаляем форму из памяти
    frmTwoPeriods.Free;
    end;

  end
  else
  begin
    msg2('Необходимо выбрать квартиру в списке лицевых счетов!', 'Внимание', MB_OK + MB_ICONQUESTION);
  end;


end;

procedure TForm_Main.N137Click(Sender: TObject);
begin
  if FF('frmLoadFias', 1) = 0 then
  begin
    Application.CreateForm(TfrmLoadFias, frmLoadFias);
  end;

end;

procedure TForm_Main.N138Click(Sender: TObject);
begin
  StartTreeObj;
  if FF('Form_olap', 0) = 0 then
    Application.CreateForm(TForm_olap, Form_olap);
  Form_tree_objects.setAccess('94', 0, 0);

end;


procedure TForm_Main.N139Click(Sender: TObject);
begin
  Application.CreateForm(TfrmProject, frmProject);
end;

procedure TForm_Main.N140Click(Sender: TObject);
begin
  Application.CreateForm(TForm_spr_proc_pay, Form_spr_proc_pay);

end;

procedure TForm_Main.ToolButton3Click(Sender: TObject);
begin
 Application.CreateForm(TfrmAccFlow, frmAccFlow);
end;

end.

