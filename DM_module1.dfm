object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 768
  Width = 722
  object OracleSession1: TOracleSession
    Cursor = crDefault
    DesignConnection = True
    LogonUsername = 'scott'
    LogonPassword = 'monemyro'
    LogonDatabase = 'ORCL'
    ThreadSafe = True
    Preferences.ConvertUTF = cuUTF8ToUTF16
    RollbackOnDisconnect = True
    MessageTable = 'scott.my_messages'
    StatementCacheSize = 40
    Connected = True
    Left = 32
    Top = 16
  end
  object OraclePackage1: TOraclePackage
    Session = OracleSession1
    Left = 32
    Top = 72
  end
  object OD_spul: TOracleDataSet
    SQL.Strings = (
      'select * from scott.spul s'
      'order by s.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000040000000400000049004400010000000000080000004E0041004D00
      450001000000000010000000430044005F004B004C0041004400520001000000
      00000E000000430044005F00550053005A004E00010000000000}
    QueryAllRecords = False
    Session = OracleSession1
    Left = 32
    Top = 152
  end
  object DS_spul: TDataSource
    DataSet = OD_spul
    Left = 88
    Top = 152
  end
  object OD_reu: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.reu||'#39'-'#39'||t.name as name'
      'from scott.t_org t, scott.t_org_tp tp'
      'where tp.id=t.fk_orgtp and t.reu is not null'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000060000005200
      45005500010000000000}
    Session = OracleSession1
    DesignActivation = True
    Left = 32
    Top = 200
  end
  object DS_reu: TDataSource
    DataSet = OD_reu
    Left = 88
    Top = 200
  end
  object OD_rkc: TOracleDataSet
    SQL.Strings = (
      'select t.* from scott.T_ORG t, scott.t_org_tp tp'
      'where t.fk_orgtp=tp.id'
      'and tp.cd='#39#1056#1050#1062#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000037000000080000004E0041004D004500010000000000060000005200
      4500550001000000000004000000490044000100000000000400000043004400
      0100000000001000000046004B005F004F005200470054005000010000000000
      060000004E005000500001000000000002000000560001000000000012000000
      50004100520045004E0054005F00490044000100000000000A00000054005200
      4500530054000100000000000600000055004300480001000000000006000000
      4100440052000100000000000600000049004E004E000100000000000E000000
      4D0041004E004100470045005200010000000000060000004200550048000100
      000000001A00000052004100530043004800450054005F005300430048004500
      54000100000000000E0000004B005F0053004300480045005400010000000000
      120000004B004F0044005F004F004B004F004E00480001000000000010000000
      4B004F0044005F004F00470052004E0001000000000006000000420049004B00
      0100000000000A000000500048004F004E004500010000000000060000004B00
      5000500001000000000008000000420041004E004B000100000000000C000000
      490044005F00450058005000010000000000120000004100440052005F005200
      45004300490050000100000000001C00000041005500540048004F0052004900
      5A00450044005F004400490052000100000000001C0000004100550054004800
      4F00520049005A00450044005F00420055004800010000000000180000004100
      5500540048005F004400490052005F0044004F00430001000000000018000000
      41005500540048005F004200550048005F0044004F0043000100000000000800
      00004F004B0050004F000100000000000C0000005600450052005F0043004400
      01000000000012000000460055004C004C005F004E0041004D00450001000000
      00000C000000500048004F004E00450032000100000000001400000050004100
      520045004E0054005F004900440032000100000000000E00000046004B005F00
      4F005200470032000100000000000E000000420041004E004B005F0043004400
      0100000000000E0000004100440052005F005700570057000100000000000A00
      000045004D00410049004C000100000000001200000048004500410044005F00
      4E0041004D0045000100000000001C0000005200410053004300480045005400
      5F005300430048004500540032000100000000001200000050004F0053005400
      5F0049004E00440058000100000000001600000052005F005300430048005F00
      410044004400490054000100000000001600000046004B005F00420049004C00
      4C005F005600410052000100000000000C00000041004F004700550049004400
      0100000000000A0000004F004B0054004D004F00010000000000100000004300
      4F00440045005F004400450042000100000000001200000044004F004C004700
      5F004E0041004D00450001000000000014000000420041004E004B005F004600
      4E0041004D004500010000000000060000004700520050000100000000001200
      000052005F005300430048005F00470049005300010000000000160000004400
      4900530054005F005000410059005F0054005000010000000000100000004100
      440052005F0043004100530048000100000000000C000000490053005F005200
      53004F000100000000001E000000490053005F00450058004300480041004E00
      470045005F00470049005300010000000000140000004F00520047005F005400
      50005F004700490053000100000000000E0000004700520050005F0044004500
      4200010000000000}
    Session = OracleSession1
    DesignActivation = True
    Left = 32
    Top = 248
  end
  object DS_rkc: TDataSource
    DataSet = OD_rkc
    Left = 80
    Top = 248
  end
  object FR_rkc: TfrxDBDataset
    UserName = 'frx_rkc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD=CD'
      'FK_ORGTP=FK_ORGTP'
      'NAME=NAME'
      'NPP=NPP'
      'V=V'
      'PARENT_ID=PARENT_ID'
      'REU=REU'
      'TREST=TREST'
      'UCH=UCH'
      'ADR=ADR'
      'INN=INN'
      'MANAGER=MANAGER'
      'BUH=BUH'
      'RASCHET_SCHET=RASCHET_SCHET'
      'K_SCHET=K_SCHET'
      'KOD_OKONH=KOD_OKONH'
      'KOD_OGRN=KOD_OGRN'
      'BIK=BIK'
      'PHONE=PHONE'
      'KPP=KPP'
      'BANK=BANK'
      'ID_EXP=ID_EXP'
      'ADR_RECIP=ADR_RECIP'
      'AUTHORIZED_DIR=AUTHORIZED_DIR'
      'AUTHORIZED_BUH=AUTHORIZED_BUH'
      'AUTH_DIR_DOC=AUTH_DIR_DOC'
      'AUTH_BUH_DOC=AUTH_BUH_DOC'
      'OKPO=OKPO'
      'VER_CD=VER_CD'
      'FULL_NAME=FULL_NAME'
      'PHONE2=PHONE2'
      'PARENT_ID2=PARENT_ID2'
      'FK_ORG2=FK_ORG2'
      'BANK_CD=BANK_CD'
      'ADR_WWW=ADR_WWW'
      'EMAIL=EMAIL'
      'HEAD_NAME=HEAD_NAME'
      'RASCHET_SCHET2=RASCHET_SCHET2'
      'POST_INDX=POST_INDX'
      'R_SCH_ADDIT=R_SCH_ADDIT'
      'FK_BILL_VAR=FK_BILL_VAR')
    DataSet = OD_rkc
    BCDToCurrency = False
    Left = 136
    Top = 151
  end
  object OD_mg1: TOracleDataSet
    SQL.Strings = (
      'select t.mg,  substr(t.mg,5,2)||'#39'.'#39'||substr(t.mg,1,4) as mg1'
      
        'from scott.v_period_reports t, scott.reports r where r.cd=:cd an' +
        'd t.mg is not null'
      'and t.id=r.id'
      'order by t.mg desc'
      '')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0043004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = OracleSession1
    Left = 32
    Top = 296
  end
  object OD_mg2: TOracleDataSet
    SQL.Strings = (
      'select t.mg,  substr(t.mg,5,2)||'#39'.'#39'||substr(t.mg,1,4) as mg1'
      
        'from scott.v_period_reports t, scott.reports r where r.cd=:cd an' +
        'd t.mg is not null'
      'and t.id=r.id'
      'order by t.mg desc'
      '')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0043004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = OracleSession1
    Left = 80
    Top = 296
  end
  object OD_dat1: TOracleDataSet
    SQL.Strings = (
      'select t.dat as mg, t.dat as mg1'
      
        'from scott.v_period_reports t, scott.reports r where r.cd=:cd an' +
        'd t.dat is not null'
      'and t.id=r.id'
      'order by t.dat desc')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0043004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = OracleSession1
    Left = 32
    Top = 344
  end
  object OD_dat2: TOracleDataSet
    SQL.Strings = (
      'select t.dat as mg, t.dat as mg1'
      
        'from scott.v_period_reports t, scott.reports r where r.cd=:cd an' +
        'd t.dat is not null'
      'and t.id=r.id'
      'order by t.dat desc')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0043004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = OracleSession1
    Left = 80
    Top = 344
  end
  object DS_period1: TDataSource
    DataSet = OD_mg1
    Left = 128
    Top = 296
  end
  object DS_period2: TDataSource
    DataSet = OD_mg2
    Left = 176
    Top = 296
  end
  object UniConnection1: TUniConnection
    ProviderName = 'Oracle'
    Database = 'ORCL'
    SpecificOptions.Strings = (
      'Oracle.Direct=True'
      'Oracle.Charset=CL8MSWIN1251')
    Options.KeepDesignConnected = False
    Username = 'scott'
    Connected = True
    ConnectDialog = UniConnectDialog1
    LoginPrompt = False
    Left = 160
    Top = 72
    EncryptedPassword = '92FF90FF91FF9AFF92FF86FF8DFF90FF'
  end
  object UniStoredProc1: TUniStoredProc
    Connection = UniConnection1
    Left = 112
    Top = 416
  end
  object OD_pasp: TOracleDataSet
    SQL.Strings = (
      
        'select t.* from scott.t_org t, scott.t_org_tp tp where t.fk_orgt' +
        'p=tp.id'
      'and tp.cd='#39#1055#1072#1089#1087#1086#1088#1090#1085#1099#1081' '#1089#1090#1086#1083#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000400000049004400010000000000080000004E0041004D00
      45000100000000000400000043004400010000000000060000004E0050005000
      0100000000001000000046004B005F004F005200470054005000010000000000
      0200000056000100000000001200000050004100520045004E0054005F004900
      4400010000000000060000005200450055000100000000000A00000054005200
      45005300540001000000000006000000550043004800010000000000}
    Session = OracleSession1
    Left = 32
    Top = 472
    object OD_paspID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_paspNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
  end
  object OD_distr: TOracleDataSet
    SQL.Strings = (
      
        'select t.* from scott.u_list t, scott.u_listtp tp where t.fk_lis' +
        'ttp=tp.id'
      'and tp.cd='#39#1056#1072#1081#1086#1085#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000060000000400000049004400010000000000080000004E0041004D00
      450001000000000004000000430044000100000000001200000046004B005F00
      4C0049005300540054005000010000000000040000004E004D00010000000000
      060000004E0050005000010000000000}
    Session = OracleSession1
    Left = 32
    Top = 520
    object OD_distrID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_distrCD: TStringField
      FieldName = 'CD'
      Size = 32
    end
    object OD_distrNAME: TStringField
      FieldName = 'NAME'
      Size = 96
    end
    object OD_distrNM: TStringField
      FieldName = 'NM'
      Size = 32
    end
    object OD_distrFK_LISTTP: TFloatField
      FieldName = 'FK_LISTTP'
    end
    object OD_distrNPP: TFloatField
      FieldName = 'NPP'
      Required = True
    end
  end
  object OD_kfg: TOracleDataSet
    SQL.Strings = (
      'select sk.id, sk.koeff from scott.spr_koeff sk'
      '                ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000000A0000004B004F004500
      46004600010000000000}
    Session = OracleSession1
    Left = 32
    Top = 568
    object OD_kfgID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_kfgKOEFF: TFloatField
      FieldName = 'KOEFF'
    end
  end
  object OD_sprorg: TOracleDataSet
    SQL.Strings = (
      
        'select t.id as kod, t.id||'#39'  '#39'||t.name as name, tp.name as tp_or' +
        'g '
      'from scott.t_org t, scott.t_org_tp tp'
      'where tp.id=t.fk_orgtp'
      'order by t.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000060000004B004F004400010000000000080000004E004100
      4D0045000100000000000C000000540050005F004F0052004700010000000000}
    QueryAllRecords = False
    Session = OracleSession1
    Left = 32
    Top = 616
  end
  object OD_status: TOracleDataSet
    SQL.Strings = (
      'select * from scott.status s')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    Session = OracleSession1
    Left = 32
    Top = 656
  end
  object OD_spul2: TOracleDataSet
    SQL.Strings = (
      'select * from scott.spul s'
      'order by s.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000050000000400000049004400010000000000080000004E0041004D00
      450001000000000010000000430044005F004B004C0041004400520001000000
      00000E000000430044005F00550053005A004E000100000000001A0000004600
      4B005F0053004500540054004C0045004D0045004E005400010000000000}
    QueryAllRecords = False
    Session = OracleSession1
    Left = 80
    Top = 472
  end
  object OD_s_reu_trest: TOracleDataSet
    SQL.Strings = (
      'select s.reu, s.reu||'#39' '#39'||s.name_reu as name_reu, s.name_tr'
      ' from scott.s_reu_trest s')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000060000005200450055000100000000000E0000004E004100
      4D0045005F0054005200010000000000100000004E0041004D0045005F005200
      45005500010000000000}
    Session = OracleSession1
    Left = 80
    Top = 520
    object OD_s_reu_trestREU: TStringField
      DisplayWidth = 3
      FieldName = 'REU'
      Required = True
      Size = 3
    end
    object OD_s_reu_trestNAME_TR: TStringField
      FieldName = 'NAME_TR'
      Size = 35
    end
    object OD_s_reu_trestNAME_REU: TStringField
      FieldName = 'NAME_REU'
      Size = 35
    end
  end
  object OD_close_reason: TOracleDataSet
    SQL.Strings = (
      'select * from SCOTT.V_CLOSE_REASON t'
      'order by t.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    Session = OracleSession1
    Left = 80
    Top = 568
  end
  object OD_psch: TOracleDataSet
    SQL.Strings = (
      'select t.* from ('
      'select 0 as id, '#39#1054#1090#1082#1088#1099#1090#39'  as name, 1 as tp from dual'
      'union all'
      'select 1 as id, '#39#1054#1090#1082#1088#1099#1090#39'  as name, 0 as tp from dual'
      'union all'
      'select 2 as id, '#39#1054#1090#1082#1088#1099#1090#39' as name, 0 as tp from dual'
      'union all'
      'select 3 as id, '#39#1054#1090#1082#1088#1099#1090#39'  as name, 0 as tp from dual'
      'union all'
      'select 8 as id, '#39#1055#1088#1086#1096#1083'.'#39'  as name, 1 as tp from dual'
      'union all'
      'select 9 as id, '#39#1047#1072#1082#1088#1099#1090#39'  as name, 1 as tp from dual'
      ') t'
      'order by t.id'
      ''
      '/*'
      'select t.* from ('
      'select 0 as id, '#39#1053#1086#1088#1084#1072#1090#1080#1074#39'  as name, 0 as tp from dual'
      'union all'
      'select 1 as id, '#39#1057#1095'. '#1061'.'#1042'. '#1080' '#1043'.'#1042'.'#39'  as name, 0 as tp from dual'
      'union all'
      'select 2 as id, '#39#1057#1095'. '#1061'.'#1042'.'#39'  as name, 0 as tp from dual'
      'union all'
      'select 3 as id, '#39#1057#1095'. '#1043'.'#1042'.'#39'  as name, 0 as tp from dual'
      'union all'
      'select 8 as id, '#39#1055#1088#1086#1096#1083'.'#39'  as name, 0 as tp from dual'
      'union all'
      'select 9 as id, '#39#1047#1072#1082#1088#1099#1090#39'  as name, 0 as tp from dual'
      'union all'
      'select 0 as id, '#39#1054#1090#1082#1088#1099#1090#39'  as name, 1 as tp from dual'
      'union all'
      'select 8 as id, '#39#1055#1088#1086#1096#1083'.'#39'  as name, 1 as tp from dual'
      'union all'
      'select 9 as id, '#39#1047#1072#1082#1088#1099#1090#39'  as name, 1 as tp from dual'
      ') t, scott.params p, scott.spr_params s '
      'where (p.org_var=1 and t.id in (0,9) --'#1076#1083#1103' '#1101'+'
      'or p.org_var=0)'
      'and s.cd='#39'VER_METER1'#39' '
      'and (s.parn1=0 and t.tp=0 or s.parn1 <> 0 and t.tp=1)'
      '*/')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000030000000400000049004400010000000000080000004E0041004D00
      45000100000000000400000054005000010000000000}
    Session = OracleSession1
    Left = 80
    Top = 616
    object OD_pschID: TFloatField
      FieldName = 'ID'
    end
    object OD_pschNAME: TStringField
      FieldName = 'NAME'
      Size = 6
    end
    object OD_pschTP: TFloatField
      FieldName = 'TP'
    end
  end
  object OD_psch2: TOracleDataSet
    SQL.Strings = (
      'select * from ('
      'select 0 as id, '#39#1053#1086#1088#1084#1072#1090#1080#1074#39'  as name, 0 as tp from dual'
      'union all'
      'select 1 as id, '#39#1057#1095'. '#1061'.'#1042'. '#1080' '#1043'.'#1042'.'#39'  as name, 0 as tp from dual'
      'union all'
      'select 2 as id, '#39#1057#1095'. '#1061'.'#1042'.'#39'  as name, 0 as tp from dual'
      'union all'
      'select 3 as id, '#39#1057#1095'. '#1043'.'#1042'.'#39'  as name, 0 as tp from dual'
      'union all'
      'select 8 as id, '#39#1055#1088#1086#1096#1083'.'#39'  as name, 0 as tp from dual'
      'union all'
      'select 9 as id, '#39#1047#1072#1082#1088#1099#1090#39'  as name, 0 as tp from dual'
      ') t, scott.params p'
      'where (p.org_var=1 and t.id in (0,9) --'#1076#1083#1103' '#1101'+'
      'or p.org_var=0)')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000340000000400000049004400010000000000080000004E0041004D00
      450001000000000004000000540050000100000000000A000000500041005200
      41004D000100000000000E0000004D0045005300530041004700450001000000
      0000060000005600450052000100000000000C00000050004500520049004F00
      4400010000000000180000004100470045004E0054005F005500500054004900
      4D004500010000000000120000004D004500530053005F00480049004E005400
      0100000000001200000050004500520049004F0044005F0050004C0001000000
      00000E00000053005500420053005F004F004200010000000000080000004900
      44005F0031000100000000001A00000050004500520049004F0044005F004400
      4500420049005400530001000000000010000000440054005F004F0054004F00
      5000310001000000000010000000440054005F004F0054004F00500032000100
      000000000800000050004100520054000100000000000E00000043004E005400
      5F005300430048000100000000000E0000004B0041004E005F00530043004800
      0100000000000C000000530056005F0053004F00430001000000000016000000
      530054004100540045005F0042004100530045005F000100000000000E000000
      4B0041004E005F005600410052000100000000000E0000004F00520047005F00
      5600410052000100000000000C000000530050004C0041005300480001000000
      000016000000470045004E005F004500580050005F004C005300540001000000
      0000100000004B0041004E005F00560041005200320001000000000010000000
      4B004100520054005F0045004400310001000000000012000000410055005400
      4F005F005300490047004E0001000000000016000000460049004E0044005F00
      53005400520045004500540001000000000016000000500045004E0059004100
      5F004D004F004E00540048000100000000000E00000043004F00520052005F00
      4C0047000100000000001A000000520045004300480041005200470045005F00
      420049004C004C0001000000000018000000530048004F0057005F0045005800
      50005F0050004100590001000000000016000000440049005300540052004900
      42005F0050004100590001000000000010000000420049004C004C005F005000
      45004E000100000000001600000050004500520049004F0044005F0042004100
      43004B000100000000001A00000050004500520049004F0044005F0046004F00
      520057005200440001000000000012000000500045004E00590041005F005600
      4100520001000000000018000000490053005F00460055004C004C004D004F00
      4E00540048000100000000001000000057004100490054005F00560045005200
      01000000000016000000490053005F004400450054005F004300480052004700
      01000000000008000000490044005F0032000100000000000400000043004400
      0100000000000C0000005000410052005600430031000100000000000A000000
      5000410052004E0031000100000000000C0000004E0041004D0045005F003100
      0100000000000800000043004400540050000100000000001400000046004B00
      5F0050004100520043004400540050000100000000000C000000500041005200
      4400540031000100000000001200000050004100520045004E0054005F004900
      440001000000000010000000530051004C005F00540045005800540001000000
      0000060000004E0050005000010000000000080000004D0045004D004F000100
      00000000}
    Session = OracleSession1
    Left = 80
    Top = 664
    object StringField1: TStringField
      DisplayWidth = 15
      FieldName = 'NAME'
      Size = 15
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Visible = False
    end
  end
  object OD_doc: TOracleDataSet
    SQL.Strings = (
      
        'select t.* from scott.u_list t, scott.u_listtp tp where t.fk_lis' +
        'ttp=tp.id'
      'and tp.cd='#39#1044#1086#1082#1091#1084#1077#1085#1090#39
      'order by t.npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000060000000400000049004400010000000000080000004E0041004D00
      450001000000000004000000430044000100000000001200000046004B005F00
      4C0049005300540054005000010000000000040000004E004D00010000000000
      060000004E0050005000010000000000}
    Session = OracleSession1
    DesignActivation = True
    Left = 128
    Top = 472
    object OD_docID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_docCD: TStringField
      FieldName = 'CD'
      Size = 32
    end
    object OD_docNAME: TStringField
      FieldName = 'NAME'
      Size = 96
    end
    object OD_docNM: TStringField
      FieldName = 'NM'
      Size = 32
    end
    object OD_docFK_LISTTP: TFloatField
      FieldName = 'FK_LISTTP'
    end
    object OD_docNPP: TFloatField
      FieldName = 'NPP'
      Required = True
    end
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select t.usl, t.usl||'#39'-'#39'||nm as nm'
      'from scott.usl t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000006000000550053004C00010000000000040000004E004D00
      010000000000}
    QueryAllRecords = False
    Session = OracleSession1
    Left = 128
    Top = 520
    object OD_uslUSL: TStringField
      FieldName = 'USL'
      Required = True
      Size = 3
    end
    object OD_uslNM: TStringField
      FieldName = 'NM'
      Size = 22
    end
  end
  object OD_sch_el: TOracleDataSet
    SQL.Strings = (
      'select 0 as id, '#39#1053#1086#1088#1084#1072#1090#1080#1074#39'  as name from dual'
      'union all'
      'select 1 as id, '#39#1057#1095#1077#1090#1095#1080#1082#39'  as name from dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    Session = OracleSession1
    Left = 128
    Top = 568
    object FloatField2: TFloatField
      FieldName = 'ID'
    end
    object StringField2: TStringField
      FieldName = 'NAME'
      Size = 15
    end
  end
  object OD_list_choice: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.list_choice_hs(:clr_, :psaldo_refcursor);'
      'end;')
    ReadBuffer = 5000
    Optimize = False
    Variables.Data = {
      0400000002000000220000003A005000530041004C0044004F005F0052004500
      460043005500520053004F0052007400000000000000000000000A0000003A00
      43004C0052005F00030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000006000000040000004E00440001000000000006000000530045004C00
      010000000000080000004E0041004D0045000100000000000600000041004400
      52000100000000000C0000004B0055004C005F00490044000100000000000A00
      00004E0044005F0049004400010000000000}
    LockingMode = lmNone
    UpdatingTable = 'scott.list_choices_hs'
    CommitOnPost = False
    Session = OracleSession1
    DesignActivation = True
    Left = 128
    Top = 616
  end
  object UniTablePriveleges: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select upper(t.table_name) as priv_name from sys.dba_tab_privs t' +
        ' where t.grantee=:user_name'
      '    union all'
      
        '    select upper(t.table_name) as priv_name from sys.table_privi' +
        'leges t'
      '     where exists'
      '     (select granted_role from dba_role_privs d'
      '       where d.GRANTED_ROLE=t.GRANTEE'
      '       start with grantee = :user_name'
      '       connect by prior granted_role = grantee'
      '     )')
    FetchRows = 1000
    Left = 200
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'user_name'
        ParamType = ptInput
        Value = nil
      end>
  end
  object OD_u_list: TOracleDataSet
    SQL.Strings = (
      'select * from scott.u_list s')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000400000049004400010000000000080000004E0041004D00
      45000100000000000400000043004400010000000000040000004E004D000100
      000000001200000046004B005F004C0049005300540054005000010000000000
      060000004E00500050000100000000000C000000560041004C005F0054005000
      0100000000000E00000046004B005F0055004E00490054000100000000000E00
      0000530051004C0054004500580054000100000000001A00000046004B005F00
      4500580053005F0055005F004C00490053005400010000000000}
    Session = OracleSession1
    Left = 128
    Top = 664
  end
  object OracleLogon1: TOracleLogon
    Session = OracleSession1
    Retries = 10
    Options = [ldAuto, ldDatabase, ldLogonHistory]
    HistoryRegSection = 'DIRECT'
    HistoryWithPassword = True
    Caption = #1042#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1091
    Left = 96
    Top = 16
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
    PortLabel = #1055#1086#1088#1090
    ProviderLabel = #1055#1088#1086#1074#1072#1081#1076#1077#1088
    Retries = 10
    SavePassword = True
    Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077
    UsernameLabel = #1048#1084#1103
    PasswordLabel = #1055#1072#1088#1086#1083#1100
    ServerLabel = #1057#1077#1088#1074#1077#1088
    ConnectButton = #1057#1086#1077#1076#1080#1085#1080#1090#1100
    CancelButton = #1054#1090#1084#1077#1085#1072
    LabelSet = lsRussian
    Left = 160
    Top = 16
  end
  object Uni_user: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select t.id as fk_user from scott.t_user t where t.cd=user')
    FetchRows = 1000
    Left = 200
    Top = 464
  end
  object Uni_user_permissions: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select s.fk_reu'
      '  from scott.c_users_perm s'
      '  join scott.u_list t'
      '    on t.cd = '#39#1076#1086#1089#1090#1091#1087' '#1082' '#1086#1090#1095#1105#1090#1072#1084#39
      ' where s.user_id = :user_id'
      '   and s.fk_perm_tp = t.id'
      'order by s.fk_reu')
    FetchRows = 1000
    Left = 248
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = nil
      end>
  end
end
