program Direct;

{$R 'finres.res' 'finres.rc'}
uses
  Controls,
  OracleMonitor,
  Forms,
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
  Unit_form_saldo_check in 'Unit_form_saldo_check.pas' {Form_saldo_check},
  Unit_generate in 'Unit_generate.pas' {Form_generate},
  Unit_print_opl_usl in 'Unit_print_opl_usl.pas' {Form_opl_usl},
  Unit_print_opl_xito3 in 'Unit_print_opl_xito3.pas' {Form_print_opl_xito3},
  Unit_form_plan in 'Unit_form_plan.pas' {Form_plan},
  Unit_print_plan in 'Unit_print_plan.pas' {Form_print_plan},
  Unit_print_xito5 in 'Unit_print_xito5.pas' {Form_print_xito5},
  Unit_print_opl_xito10_3 in 'Unit_print_opl_xito10_3.pas' {Form_print_opl_xito10_3},
  Unit_print_saldo_usl in 'Unit_print_saldo_usl.pas' {Form_print_saldo_usl},
  Unit_print_lg_usl in 'Unit_print_lg_usl.pas' {Form_print_lg_usl},
  Unit_sel_uch in 'Unit_sel_uch.pas' {Form_sel_uch},
  Unit_print_pred_debit in 'Unit_print_pred_debit.pas' {Form_print_pred_debit},
  Unit_corrects in 'Unit_corrects.pas' {Form_corrects},
  Unit_print_strah in 'Unit_print_strah.pas' {Form_print_strah},
  Unit_form_messages in 'Unit_form_messages.pas' {Form_messages},
  Unit1_print_pen in 'Unit1_print_pen.pas' {Form_print_pen},
  Unit_check_reports in 'Unit_check_reports.pas' {Form_check_reports},
  Unit_print_bank in 'Unit_print_bank.pas' {Form_print_bank},
  Unit_form_sign_rep in 'Unit_form_sign_rep.pas' {Form_sign_rep},
  Unit_form_print_stat1 in 'Unit_form_print_stat1.pas' {Form_print_stat},
  Unit_print_status in 'Unit_print_status.pas' {Form_print_status},
  Unit_form_params in 'Unit_form_params.pas' {Form_params},
  Unit_form_bills in 'Unit_form_bills.pas' {Form_print_bills},
  Unit_print_stat_usl in 'Unit_print_stat_usl.pas' {Form_print_stat_usl},
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
  Unit_requests in 'Unit_requests.pas' {Form_requests},
  Unit_edit_request in 'Unit_edit_request.pas' {Form_edit_request},
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
  Unit_spr_tarif in 'Unit_spr_tarif.pas' {Form_spr_tarif},
  Unit_form_pass in 'Unit_form_pass.pas' {Form_pass},
  Unit_recv_pay_bank in 'Unit_recv_pay_bank.pas' {Form_recv_pay_bank},
  Unit_spr_tarif_chng in 'Unit_spr_tarif_chng.pas' {Form_spr_tarif_chng},
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
  Unit_dvb_connect in 'Unit_dvb_connect.pas' {Form_dvb_connect},
  Unit_spr_params in 'Unit_spr_params.pas' {Form_spr_params},
  Unit_edit_bitmask in 'Unit_edit_bitmask.pas' {Form_edit_bitmask},
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
  Unit_add_prop in 'Unit_add_prop.pas' {Form_add_prop},
  Unit_tarif_usl in 'Unit_tarif_usl.pas' {Form_tarif_usl},
  Unit_lk_acc in 'Unit_lk_acc.pas' {Form_lk_acc},
  Unit_Gthread in 'Unit_Gthread.pas',
  Unit_sch_history in 'Unit_sch_history.pas' {Form_sch_history},
  Unit_auto_chrg in 'Unit_auto_chrg.pas' {Form_auto_chrg},
  Unit_lk_par in 'Unit_lk_par.pas' {Form_lk_par},
  Unit_reg_sch in 'Unit_reg_sch.pas' {Form_reg_sch},
  Unit_par_edit in 'Unit_par_edit.pas' {Form_par_edit},
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
  Unit_edit_pay_usl_org in 'Unit_edit_pay_usl_org.pas' {Form_edit_pay_usl_org};

//,
  //CnDebug;

{  Unit_edit_pay_usl_org in '..\Program Files86\Borland\Delphi7\Components\FR412\LibD7\Unit_edit_pay_usl_org.pas'}

{$R *.RES}
var
  Ini: TIniFile;
  Pass: string;
  SID: string;
  s, User: string;
  I, I1: Integer;
type
  TOracleErrorEvent = procedure(Error: EOracleError);
var
  OnOracleError: TOracleErrorEvent = nil;

procedure EOracleErr(Error: EOracleError);
begin
  //��������� ������ �������� ��������� ������� �����
  DataModule1.OraclePackage2.Session.Connected := true;
  DataModule1.OraclePackage2.CallProcedure('scott.logger.log_', [parDate, 'User:' + Form_main.User + ' ' + Error.Message]);
  DataModule1.OraclePackage2.Session.Connected := false;
end;

begin
//   StartTimeMark(1);
//   OutputDebugString('bbbb');
  ////Application.MessageBox('1', 'Check', 16);
  s := ParamStr(1);
  GetDir(0, s);
  Ini := TIniFile.Create(s + '\licenses.ini');

  Application.Initialize;
  DecimalSeparator := '.';

  Application.CreateForm(TDataModule1, DataModule1);
  //Application.MessageBox('2', 'Check', 16);
  Application.CreateForm(TForm_Main, Form_Main);
  //Application.MessageBox('3', 'Check', 16);
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
    Form_pass.ShowModal;
    User := Form_main.User;
    Pass := Form_main.Pass;
  end;

  s := Ini.ReadString('Application', 'SID', '');
  SID := '';
  I := 1;
  I1 := Length(s);
  //Application.MessageBox('4', 'Check', 16);

  while I < I1 do
  begin
    SID := SID + CHR(StrToInt('$' + copy(s, I, 3)));
    I := I + 3;
  end;
  try                           
  //Application.MessageBox('4.1', 'Check', 16);
    DataModule1.OracleSession1.Connected := false;
  //Application.MessageBox('4.2', 'Check', 16);
    DataModule1.OracleSession1.LogonUsername := User;
  //Application.MessageBox('4.3', 'Check', 16);
    DataModule1.OracleSession1.LogonPassword := Pass;
  //Application.MessageBox('4.4', 'Check', 16);
    DataModule1.OracleSession1.LogonDatabase := SID;
  //Application.MessageBox('4.5', 'Check', 16);
    DataModule1.OracleSession1.Connected := true;
  //Application.MessageBox('4.6', 'Check', 16);
    if DataModule1.OracleSession1.StatementCache = True then
    begin
      Application.MessageBox('����������� ������������� StatementCache � OracleSession, �������� � ������ ORA-01410: Invalid Rowid!', '��������!', 16)
    end;
  //Application.MessageBox('5', 'Check', 16);
    DataModule1.OracleSession1.Connected := false;
  //Application.MessageBox('5.1', 'Check', 16);
    DataModule1.OracleSession1.Connected := true;
  //Application.MessageBox('5.2', 'Check', 16);
    DataModule1.OracleSession1.Connected := false;
  //Application.MessageBox('5.3', 'Check', 16);
    DataModule1.OracleSession1.Connected := true;
  //Application.MessageBox('5.4', 'Check', 16);

    DataModule1.OracleSession2.LogonUsername := User;
    DataModule1.OracleSession2.LogonPassword := Pass;
    DataModule1.OracleSession2.LogonDatabase := SID;


    if DataModule1.OraclePackage1.CallIntegerFunction('scott.init.is_allow_acc', ['drx5_�����_������_�_����']) = 1 then
      Form_Main.g_admin := 1
    else
      Form_Main.g_admin := 0;

  //��������� ������� ���
    s := Ini.ReadString('Application', 'have_cash', '');
    if s <> '' then
    begin
      Form_Main.have_cash := StrToInt(s);
      Form_Main.create_OLE_KKM;
    end
    else
      Form_Main.have_cash := 0;
  //Application.MessageBox('6', 'Check', 16);

    Form_Main.OracleEvent1.Start;
  //Application.MessageBox('7', 'Check', 16);
    Form_Main.User := User;
    Ini.Free;
  except
    on E: EOracleError do
    begin
      Ini.Free;
      if pos('01017', E.Message) > 1 then
        Application.MessageBox('�� ��������� ����� ��� ������ ������������!', '��������!', 16)
      else if pos('28000', E.Message) > 1 then
        Application.MessageBox(Pchar('������� ������ ������������ "' + User + '" �������������!'), '��������!', 16)
      else if pos('12543', E.Message) > 1 then
        Application.MessageBox(Pchar('������ "' + SID + '", ��������� � tnsnames.ora �� ��������!'), '��������!', 16)
      else
        Application.MessageBox(PCHar(E.Message), '��������!', 16);
      Application.Terminate;
      Exit;
    end;
  end;

  //Application.MessageBox('8', 'Check', 16);
  SetMenu(0);
  //Application.MessageBox('9', 'Check', 16);
  with Form_Main do
  begin
    Form_Main.OD_params.Active := false;
    Form_Main.OD_params.Active := true;
  //������� ������ ����������
  ////Application.MessageBox('10', 'Check', 16);
    Form_main.org_var_ := DataModule1.OraclePackage1.CallIntegerFunction('scott.INIT.get_org_var', [parNone]);

//������ ������������ versia � params - ������������ updater-��
    Form_Main.CoolTrayIcon1.ShowTaskbarIcon;
  ////Application.MessageBox('11', 'Check', 16);
  end;

  Form_main.OD_params.Active := true;
  ////Application.MessageBox('12', 'Check', 16);
  Oracle.OnOracleError := EOracleErr;

  //���������� �������� �� ������� ��� �� ��������
  Form_main.isloadedspr_ := 0;

  // ���������� �� ���� �� ���������� �����
  if (Form_Main.OD_params.FieldByName('agent_uptime').AsInteger = 1) then
  begin
    Form_Main.N25.Enabled := false;
  end;

  if (User <> 'scott') and (User <> 'lev') and (Form_Main.OD_params.FieldByName('param').AsInteger = 1) then
  begin
    Application.CreateForm(TForm_alert_exit, Form_alert_exit);
    Form_alert_exit.Memo1.Text := Form_Main.OD_params.FieldByName('message').AsString;
    Form_alert_exit.Timer1.Enabled := true;
    Form_alert_exit.ShowModal;
  end;
  ////Application.MessageBox('13', 'Check', 16);

  if ((DataModule1.OraclePackage1.CallIntegerFunction('scott.INIT.get_have_splash', [parNone]) = 1) or (Length(DataModule1.OraclePackage1.CallStringFunction('scott.INIT.get_errors', [parNone])) > 0)) then
  begin
    Application.Title := '������';
    Form_Main.CoolTrayIcon1.Hint := '������';
    Application.CreateForm(TForm_start, Form_start);
    Form_start.ShowModal;
    Form_start.Update;
  end
  else
  begin
    Application.Title := '����������';
    Form_Main.CoolTrayIcon1.Hint := '����������';
    Application.Icon := nil;
    Form_Main.Visible := true;
  end;
  ////Application.MessageBox('14', 'Check', 16);
  Form_Main.CoolTrayIcon1.IconVisible := true;
  Form_main.WindowState := wsMaximized;
  Application.CreateForm(TForm_sel_comps, Form_sel_comps);
  ////Application.MessageBox('15', 'Check', 16);
  Form_sel_comps.ShowModal;
  ////Application.MessageBox('16', 'Check', 16);

  Form_main.exepath_ := ExtractFilePath(Application.ExeName);

  //��������� ��������� ��� ������
  DataModule1.OraclePackage1.CallProcedure('scott.utils.prep_users_par', [parNone]);
  //�������� ������� ����������
  //��������� �������� ���
  DataModule1.OD_rkc.Active:=true;
  ////Application.MessageBox('17', 'Check', 16);
  Application.Run;

  // Stop the time counter.
//  StopTimeMark(1);

end.

