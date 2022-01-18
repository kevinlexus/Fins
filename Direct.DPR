program Direct;

{$R 'finres.res' 'finres.rc'}
uses
  Controls,
  OracleMonitor,
  OracleUniProvider,
  Forms,
  Windows,
  Unit_Mainform in 'Unit_Mainform.pas' {Form_Main},
  Unit_start in 'Unit_start.pas' {Form_start},
  Test1 in 'Test1.pas',
  IniFiles,
  SysUtils,
  Oracle,
  CoolTrayIcon,
  Dialogs,
  Unit_about in 'Unit_about.pas' {Form_about},
  DM_module1 in 'DM_module1.pas' {DataModule1: TDataModule},
  Unit_status_gen in 'Unit_status_gen.pas' {Form_status_gen},
  Unit_form_alert_exit in 'Unit_form_alert_exit.pas' {Form_alert_exit},
  Unit_print_saldo_houses in 'Unit_print_saldo_houses.pas' {Form_print_saldo_houses},
  Unit_print_saldo_org_usl in 'Unit_print_saldo_org_usl.pas' {Form_print_saldo_org_usl},
  Unit_sel_reu in 'Unit_sel_reu.pas' {Form_sel_reu},
  Unit_generate in 'Unit_generate.pas' {Form_generate},
  Unit_print_opl_usl in 'Unit_print_opl_usl.pas' {Form_opl_usl},
  Unit_form_plan in 'Unit_form_plan.pas' {Form_plan},
  Unit_print_plan in 'Unit_print_plan.pas' {Form_print_plan},
  Unit_print_saldo_usl in 'Unit_print_saldo_usl.pas' {Form_print_saldo_usl},
  Unit_print_pred_debit in 'Unit_print_pred_debit.pas' {Form_print_pred_debit},
  Unit_print_strah in 'Unit_print_strah.pas' {Form_print_strah},
  Unit1_print_pen in 'Unit1_print_pen.pas' {Form_print_pen},
  Unit_print_bank in 'Unit_print_bank.pas' {Form_print_bank},
  Unit_form_print_stat1 in 'Unit_form_print_stat1.pas' {Form_print_stat},
  Unit_print_status in 'Unit_print_status.pas' {Form_print_status},
  Unit_form_bills in 'Unit_form_bills.pas' {Form_print_bills},
  Unit_sel_usl in 'Unit_sel_usl.pas' {Form_sel_usl},
  Unit_form_olap in 'Unit_form_olap.pas' {Form_olap},
  Unit_corr_payments in 'Unit_corr_payments.pas' {Form_corr_payments},
  Unit_print_xito13 in 'Unit_print_xito13.pas' {Form_print_xito13},
  Unit_form_version in 'Unit_form_version.pas' {Form_version},
  Unit_print_debits_adm in 'Unit_print_debits_adm.pas' {Form_print_debits_adm},
  Unit_form_admin in 'Unit_form_admin.pas' {Form_admin},
  Unit_form_kart in 'Unit_form_kart.pas' {Form_kart},
  Unit_form_kart_pr in 'Unit_form_kart_pr.pas' {Form_kart_pr},
  Unit_form_subsidii in 'Unit_form_subsidii.pas' {Form_subsidii},
  Unit_sel_comps in 'Unit_sel_comps.pas' {Form_sel_comps},
  Unit_get_pay in 'Unit_get_pay.pas' {Form_get_pay},
  Unit_inkass in 'Unit_inkass.pas' {Form_inkass},
  Unit_inkass_print in 'Unit_inkass_print.pas' {Form_inkass_print},
  Unit_find_fio in 'Unit_find_fio.pas' {Form_find_fio},
  Unit_list_kart in 'Unit_list_kart.pas' {Form_list_kart},
  Unit_changes_lsk in 'Unit_changes_lsk.pas' {Form_changes_lsk},
  Unit_changes_houses in 'Unit_changes_houses.pas' {Form_changes_houses},
  Unit_changes_houses2 in 'Unit_changes_houses2.pas' {Form_changes_houses2},
  Unit_new_lsk in 'Unit_new_lsk.pas' {Form_new_lsk},
  Unit_house_vvod in 'Unit_house_vvod.pas' {Form_house_vvod},
  Unit_chargepay in 'Unit_chargepay.pas' {Form_chargepay},
  Unit_month_payments in 'Unit_month_payments.pas' {Form_month_payments},
  Utils in 'Utils.pas',
  Unit_sel_arch_period in 'Unit_sel_arch_period.pas' {Form_sel_arch_period},
  Unit_changes_list in 'Unit_changes_list.pas' {Form_changes_list},
  Unit_houses_nabor in 'Unit_houses_nabor.pas' {Form_houses_nabor},
  Unit_change_house_nabor2 in 'Unit_change_house_nabor2.pas' {Form_change_house_nabor},
  Unit_spr_spk in 'Unit_spr_spk.pas' {Form_spr_spk},
  Unit_gen_current in 'Unit_gen_current.pas' {Form_gen_current},
  Unit_print_lists in 'Unit_print_lists.pas' {Form_print_lists},
  Unit_spr_sprorg in 'Unit_spr_sprorg.pas' {Form_spr_sprorg},
  Unit_spr_prices in 'Unit_spr_prices.pas' {Form_spr_prices},
  Unit_spr_oper in 'Unit_spr_oper.pas' {Form_spr_oper},
  Unit_add_lsk in 'Unit_add_lsk.pas' {Form_add_lsk},
  Unit_spr_users in 'Unit_spr_users.pas' {Form_spr_users},
  Unit_sel_hs in 'Unit_sel_hs.pas' {Form_sel_hs},
  GRTreeView in 'GRTreeView.pas',
  Unit_form_edit_price in 'Unit_form_edit_price.pas' {Form_edit_price},
  Unit_status in 'Unit_status.pas' {Form_status},
  Unit_edit_work in 'Unit_edit_work.pas' {Form_edit_work},
  Unit_form_saldo in 'Unit_form_saldo.pas' {Form_saldo},
  Unit_load_file in 'Unit_load_file.pas',
  Unit_tree_objects in 'Unit_tree_objects.pas' {Form_tree_objects},
  Unit_house_new_vvod in 'Unit_house_new_vvod.pas' {Form_house_new_vvod},
  Unit_get_pay_nal in 'Unit_get_pay_nal.pas' {Form_get_pay_nal},
  Unit_form_pay_dolg in 'Unit_form_pay_dolg.pas' {Form_get_pay_dolg},
  Unit_plat_doc in 'Unit_plat_doc.pas' {Form_plat_doc},
  Unit_get_cnt_sch in 'Unit_get_cnt_sch.pas' {Form_get_cnt_sch},
  Unit_find_adr in 'Unit_find_adr.pas' {Form_find_adr},
  Unit_find_contr in 'Unit_find_contr.pas' {Form_find_contr},
  Unit_form_pass in 'Unit_form_pass.pas' {Form_pass},
  Unit_recv_pay_bank in 'Unit_recv_pay_bank.pas' {Form_recv_pay_bank},
  Unit_load_files in 'Unit_load_files.pas' {Form_load_files},
  Unit_spr_deb_org in 'Unit_spr_deb_org.pas' {Form_spr_deb_org},
  Unit_det_chrg in 'Unit_det_chrg.pas' {Form_det_chrg},
  UnGridToClb in 'UnGridToClb.pas',
  Unit_log_actions in 'Unit_log_actions.pas' {Form_log_actions},
  Unit_sel_lsk_contr in 'Unit_sel_lsk_contr.pas' {Form_sel_lsk_contr},
  Unit_spr_penya in 'Unit_spr_penya.pas' {Form_spr_penya},
  Unit_edit_reports in 'Unit_edit_reports.pas' {Form_edit_reports},
  Unit_oracle_load in 'Unit_oracle_load.pas' {Form_oracle_load},
  DVButils in 'DVButils.pas',
  Unit_spr_params in 'Unit_spr_params.pas' {Form_spr_params},
  Unit_spr_street in 'Unit_spr_street.pas' {Form_spr_street},
  Unit_change_house_status in 'Unit_change_house_status.pas' {Form_change_house_status},
  Unit_change_house_vvod in 'Unit_change_house_vvod.pas' {Form_change_house_vvod},
  Unit_spr_usl in 'Unit_spr_usl.pas' {Form_spr_usl},
  Unit_add_usl in 'Unit_add_usl.pas' {Form_add_usl},
  Unit_price_copy in 'Unit_price_copy.pas' {Form_price_copy},
  Unit_tree_par_edit in 'Unit_tree_par_edit.pas' {Form_tree_par_edit},
  Unit_spr_rep in 'Unit_spr_rep.pas' {Form_spr_rep},
  Unit_list_set in 'Unit_list_set.pas' {Form_list_set},
  DBConsts in 'DBConsts.pas',
  Unit_prep_doc in 'Unit_prep_doc.pas' {Form_prep_doc},
  Unit_set_krt_psch in 'Unit_set_krt_psch.pas' {Form_set_krt_psch},
  Unit_corr_sal in 'Unit_corr_sal.pas' {Form_corr_sal},
  Unit_spr_comps in 'Unit_spr_comps.pas' {Form_spr_comps},
  Unit_spr_props in 'Unit_spr_props.pas' {Form_spr_props},
  Unit_tarif_usl in 'Unit_tarif_usl.pas' {Form_tarif_usl},
  Unit_lk_acc in 'Unit_lk_acc.pas' {Form_lk_acc},
  Unit_Gthread in 'Unit_Gthread.pas',
  Unit_sch_history in 'Unit_sch_history.pas' {Form_sch_history},
  Unit_auto_chrg in 'Unit_auto_chrg.pas' {Form_auto_chrg},
  Unit_lk_par in 'Unit_lk_par.pas' {Form_lk_par},
  Unit_reg_sch in 'Unit_reg_sch.pas' {Form_reg_sch},
  Unit_gen_err_lst in 'Unit_gen_err_lst.pas' {Form_gen_err_lst},
  Unit_ECR in 'Unit_ECR.pas',
  Unit_service_cash in 'Unit_service_cash.pas' {Form_service_cash},
  Unit_money_cash in 'Unit_money_cash.pas' {Form_money_cash},
  Unit_spr_redirect in 'Unit_spr_redirect.pas' {Form_spr_redirect},
  u_frmLoadFias in 'u_frmLoadFias.pas' {frmLoadFias},
  Unit_smpl_chk in 'Unit_smpl_chk.pas' {Form_smpl_chk},
  u_frmPenCorr in 'u_frmPenCorr.pas' {frmPenCorr},
  u_frmTwoLsk in 'u_frmTwoLsk.pas' {frmTwoLsk},
  u_frmTwoDates in 'u_frmTwoDates.pas' {frmTwoDates},
  u_frmTwoPeriods in 'u_frmTwoPeriods.pas' {frmTwoPeriods},
  u_frmLoadPrivs in 'u_frmLoadPrivs.pas' {frmLoadPrivs},
  ObjPar in 'ObjPar.pas',
  u_frmProject in 'u_frmProject.pas' {frmProject},
  Unit_spr_proc_pay in 'Unit_spr_proc_pay.pas' {Form_spr_proc_pay},
  u_frmAccFlow in 'u_frmAccFlow.pas' {frmAccFlow},
  u_frmDistPayLog in 'u_frmDistPayLog.pas' {frmDistPayLog},
  Unit_edit_pay_usl_org in 'Unit_edit_pay_usl_org.pas' {Form_edit_pay_usl_org},
  Unit_find_adr2 in 'Unit_find_adr2.pas' {Form_find_adr2},
  ufDataModuleOlap in 'ufDataModuleOlap.pas' {DM_Olap: TDataModule},
  ufDataModuleBill in 'ufDataModuleBill.pas' {DM_Bill: TDataModule},
  ufDataModuleBill2 in 'ufDataModuleBill2.pas' {DM_Bill2: TDataModule},
  u_frmReplaceKlsk in 'u_frmReplaceKlsk.pas' {frmReplaceKlsk},
  u_frmMeteGisConnect in 'u_frmMeteGisConnect.pas' {frmMeteGisConnect},
  u_frmLoadKartExt in 'u_frmLoadKartExt.pas' {frmLoadKartExt},
  u_frmKartExt in 'u_frmKartExt.pas' {frmKartExt},
  u_frmLog in 'u_frmLog.pas' {frmLog},
  u_frmKlskPar in 'u_frmKlskPar.pas' {frmKlskPar},
  u_frmSelObjects in 'u_frmSelObjects.pas' {frmSelObjects},
  Unit_par_edit in 'Unit_par_edit.pas' {Form_par_edit};

{$R *.RES}
var
  Ini: TIniFile;
  Pass, SID, s, User, serverIp, serverPort, serverSID: string;
  I, I1: Integer;
type
  TOracleErrorEvent = procedure(Error: EOracleError);
var
  OnOracleError: TOracleErrorEvent = nil;
  res: TModalResult;

procedure EOracleErr(Error: EOracleError);
begin
  //Проверяем ошибку возможно вызванную потерей связи
  {DataModule1.OraclePackage1.Session.Connected := true;
  DataModule1.OraclePackage1.CallProcedure('scott.logger.log_', [parDate, 'User:'
    + Form_main.User + ' ' + Error.Message]);
  DataModule1.OraclePackage1.Session.Connected := false;}
end;

// загрузить Ini параметры

procedure loadIniPar;
begin

  if ParamStr(1) <> '' then
  begin
    // первый параметр приложения - путь к файлу лицензии, включая его имя
    // например c:\fins\bak\licenses2.ini
    s := ParamStr(1);
    if not FileExists(s) then
    begin
      Application.MessageBox('Указан неверный путь или имя файла лицензии',
        'Внимание!', MB_OK
        + MB_ICONSTOP + MB_TOPMOST);
      Application.Terminate;
      Exit;
    end;
    Ini := TIniFile.Create(s);
  end
  else
  begin
    s := ParamStr(0);
    GetDir(0, s);
    Ini := TIniFile.Create(s + '\licenses.ini');
  end;

  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm_Main, Form_Main);
  s := Ini.ReadString('Application', 'User', '');
  Pass := '';
  I := 1;
  I1 := Length(s);
  while I < I1 do
  begin
    User := User + CHR(StrToInt('$' + copy(s, I, 3)));
    I := I + 3;
  end;

  s := Ini.ReadString('Application', 'Pass', '');
  Pass := '';
  I := 1;
  I1 := Length(s);
  if Length(s) > 0 then
  begin
    while I < I1 do
    begin
      Pass := Pass + CHR(StrToInt('$' + copy(s, I, 3)));
      I := I + 3;
    end;
  end
  else
  begin
    Form_main.User := User;
    Application.CreateForm(TForm_pass, Form_pass);
    res := Form_pass.ShowModal;
    if res <> 2 then
    begin
      Application.Terminate;
      Exit;
    end;
    User := Form_main.User;
    Pass := Form_main.Pass;
  end;

  s := Ini.ReadString('Application', 'SID', '');
  SID := '';
  I := 1;
  I1 := Length(s);

  while I < I1 do
  begin
    SID := SID + CHR(StrToInt('$' + copy(s, I, 3)));
    I := I + 3;
  end;

  //  javaServer := Ini.ReadString('Application', 'javaServer', '');

end;

// загрузить параметры ККМ

procedure loadKKMPar;
begin
  // режим тестирования ККМ
  {s := Ini.ReadString('Application', 'cash_test', '');
  if s = '1' then
    Form_Main.cash_test := 1
  else
    Form_Main.cash_test := 0;}

  // проверить наличие ККМ
  s := Ini.ReadString('Application', 'have_cash', '');
  if s <> '' then
  begin
    // наличие ККМ
    Form_Main.have_cash := StrToInt(s);

    // создать 1 ККМ
    Form_Main.create_OLE_KKM(1);

    s := Ini.ReadString('Application', 'cash2_Ip', '');
    if s <> '' then
    begin
      // создать 2 ККМ, если указан его IP
      Form_Main.create_OLE_KKM(2);
    end;

    // проверить наличие Эквайринга
    s := Ini.ReadString('Application', 'have_eq', '');
    if s <> '' then
    begin
      Form_Main.have_eq := StrToInt(s);
      // создать OLE Эквайринга, нужны sbrf.dll, gate.dll
      Form_Main.create_OLE_Eq;
    end
    else
      // нет Эквайринга
      Form_Main.have_eq := 0;

  end;
end;

begin
  Application.Initialize;
  DecimalSeparator := '.';
  // загрузить Ini параметры
  //ShowMessage('0');
  loadIniPar;

  //ShowMessage('1');
  Form_Main.ProgressBar1.Position := 1;
  Form_Main.Update;
  try
    DataModule1.OracleSession1.Connected := false;
    DataModule1.OracleSession1.LogonUsername := User;
    DataModule1.OracleSession1.LogonPassword := Pass;
    DataModule1.OracleSession1.LogonDatabase := SID;
    DataModule1.OracleSession1.Connected := true;
    if DataModule1.OracleSession1.StatementCache = True then
    begin
      Application.MessageBox('Недопустимо использование StatementCache ' +
        'в OracleSession, приводит к ошибке ORA-01410: Invalid Rowid!',
        'Внимание!', 16)
    end;

  except
    on E: EOracleError do
    begin
      Ini.Free;
      if pos('01017', E.Message) > 1 then
        Application.MessageBox('Не корректны логин или пароль пользователя!',
          'Внимание!', 16)
      else if pos('28000', E.Message) > 1 then
        Application.MessageBox(Pchar('Учетная запись пользователя "' + User +
          '" заблокирована!'), 'Внимание!', 16)
      else if pos('12543', E.Message) > 1 then
        Application.MessageBox(Pchar('Сервер "' + SID +
          '", указанный в tnsnames.ora не доступен!'), 'Внимание!', 16)
      else
        Application.MessageBox(PCHar(E.Message), 'Внимание!', 16);
      Application.Terminate;
      Exit;
    end;
  end;

  //ShowMessage('2');
  Application.CreateForm(TDM_Olap, DM_Olap);
  Application.CreateForm(TDM_Bill, DM_Bill);
  Application.CreateForm(TDM_Bill2, DM_Bill2);

  //ShowMessage('3');
  loadKKMPar;
  //ShowMessage('4');

  Form_Main.OracleEvent1.Start;
  Form_Main.User := User;
  //ShowMessage('5');

    // UNIDAC сессия
  DataModule1.UniConnection1.Disconnect;
  serverIp := Ini.ReadString('Application', 'ServerIp', '');
  if serverIp = '' then
  begin
    Application.MessageBox('В licenses.ini не указан Ip адрес сервера ServerIp',
      'Внимание!', 16);
    Application.Terminate;
  end;

  serverPort := Ini.ReadString('Application', 'ServerPort', '');

  DataModule1.UniConnection1.Username :=
    DataModule1.OracleSession1.LogonUsername;
  DataModule1.UniConnection1.Password :=
    DataModule1.OracleSession1.LogonPassword;
  if serverPort = '' then
  begin
    // порт по умолчанию
    serverPort := '1521';
  end;

  serverSID := Ini.ReadString('Application', 'ServerSID', '');
  if serverSID = '' then
  begin
    // SID по умолчанию
    serverSID := 'ORCL';
  end;
  DataModule1.UniConnection1.Server :=
    serverIp + ':' + serverPort + ':' + serverSID;
  DataModule1.UniConnection1.Connect;

  //ShowMessage('6');
    // права пользователей
  DataModule1.UniTablePriveleges.ParamByName('user_name').AsString :=
    UpperCase(User);
  DataModule1.UniTablePriveleges.Active := True;
  Ini.Free;
  SetMenu(0);
  with Form_Main do
  begin
    Form_Main.OD_params.Active := false;
    Form_Main.OD_params.Active := true;
    //Вариант работы приложения
    Form_main.org_var_ :=
      DataModule1.OraclePackage1.CallIntegerFunction('scott.INIT.get_org_var',
      [parNone]);

    //нельзя использовать versia в params - используется updater-ом
//    Form_Main.CoolTrayIcon1.ShowTaskbarIcon;
  end;

  //ShowMessage('7');
  Form_main.OD_params.Active := true;

  Form_main.currentPeriod := Form_main.OD_params.FieldByName('period').AsString;
  Oracle.OnOracleError := EOracleErr;

  Form_Main.ProgressBar1.Position := 2;
  Form_Main.Update;

  //справочник расценок по работам еще не загружен
  Form_main.isloadedspr_ := 0;

  //  if DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc',
  //    ['drx5_админ_доступ_к_базе']) = 1 then
  if CheckAccess('drx5_админ_доступ_к_базе') then
    Form_Main.g_admin := 1
  else
    Form_Main.g_admin := 0;

  //  if (DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc',
//    ['drx5_админ_доступ_к_базе']) = 1) then
  if CheckAccess('drx5_админ_доступ_к_базе') then
    Form_main.isAdmin := true
  else
    Form_main.isAdmin := false;

  //  if (DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc',
  //    ['drx_редактирование_klsk']) = 1) then
  if CheckAccess('drx_редактирование_klsk') then
    Form_main.isEditKlsk := true
  else
    Form_main.isEditKlsk := false;

  //  if (DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc',
  //    ['drx3_Правка_кода_РЭУ']) = 1) then
  if CheckAccess('drx3_Правка_кода_РЭУ') then
    Form_main.isEditReu := true
  else
    Form_main.isEditReu := false;

  //  if (DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc',
  //    ['drx4_Правка_кода_Пасп_стола']) = 1) then
  if CheckAccess('drx4_Правка_кода_Пасп_стола') then
    Form_main.isEditPasp := true
  else
    Form_main.isEditPasp := false;

  if DataModule1.OraclePackage1.CallIntegerFunction('scott.INIT.get_kart_ed1',
    [parNone]) = 1 then
    Form_Main.isKartEd1 := True
  else
    Form_Main.isKartEd1 := False;

  // Отображать ли меню по выполнению плана
  Form_Main.N25.Enabled := false;

  //ShowMessage('8');
    //загружаем параметры для сессии
  DataModule1.UniStoredProc1.StoredProcName := 'scott.utils.prep_users_par';
  DataModule1.UniStoredProc1.Params.Clear;
  DataModule1.UniStoredProc1.ExecProc;

  //ShowMessage('9');
  Form_Main.ProgressBar1.Position := 3;
  Form_Main.Update;

  //включить таблицы параметров
  //параметры текущего РКЦ
  DataModule1.OD_rkc.Active := true;
  DataModule1.OD_pasp.Active := true;
  DataModule1.OD_distr.Active := true;
  DataModule1.OD_kfg.Active := true;
  DataModule1.OD_sprorg.Active := true;
  DataModule1.OD_status.Active := true;
  DataModule1.OD_spul2.Active := true;
  DataModule1.OD_s_reu_trest.Active := true;
  DataModule1.OD_close_reason.Active := true;
  DataModule1.OD_psch.Active := true;
  DataModule1.OD_psch2.Active := true;
  DataModule1.OD_usl.Active := true;
  DataModule1.OD_sch_el.Active := true;

  //ShowMessage('10');
    // загрузить U_LIST в память
  Utils.loadListIdCd(Form_main.uList);

  Form_Main.ProgressBar1.Position := 4;
  Form_Main.Update;

  // загрузить дома, для формы выбора дома
  DataModule1.OD_list_choice.SetVariable('clr_', 1);
  DataModule1.OD_list_choice.Active := true;

  if (User <> 'scott') and (User <> 'lev') and
    (Form_Main.OD_params.FieldByName('param').AsInteger = 1) then
  begin
    Application.CreateForm(TForm_alert_exit, Form_alert_exit);
    Form_alert_exit.Memo1.Text :=
      Form_Main.OD_params.FieldByName('message').AsString;
    Form_alert_exit.Timer1.Enabled := true;
    Form_alert_exit.ShowModal;
  end;

  //ShowMessage('11');
  if
    ((DataModule1.OraclePackage1.CallIntegerFunction('scott.INIT.get_have_splash',
    [parNone]) = 1) or
    (Length(DataModule1.OraclePackage1.CallStringFunction('scott.INIT.get_errors',
    [parNone])) > 0)) then
  begin
    Application.Title := 'Директ';
    Application.CreateForm(TForm_start, Form_start);
    Form_start.ShowModal;
    Form_start.Update;
  end
  else
  begin
    Application.Title := 'Приложение';
    Application.Icon := nil;
    Form_Main.Visible := true;
  end;

  Form_Main.ProgressBar1.Position := 5;
  Form_Main.Update;
  Form_Main.ProgressBar1.Hide;

  Form_main.WindowState := wsMaximized;
  Application.CreateForm(TForm_sel_comps, Form_sel_comps);
  Form_sel_comps.ShowModal;

  Form_main.exepath_ := ExtractFilePath(Application.ExeName);

  Application.Run;
end.

