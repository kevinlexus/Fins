object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 1578
  Top = 147
  Height = 768
  Width = 722
  object OracleSession1: TOracleSession
    Cursor = crDefault
    DesignConnection = True
    LogonUsername = 'scott'
    LogonPassword = 'monemyro'
    LogonDatabase = 'XE'
    ThreadSafe = True
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
      0400000004000000020000004944010000000000040000004E414D4501000000
      00000800000043445F4B4C4144520100000000000700000043445F55535A4E01
      0000000000}
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
      0400000002000000040000004E414D4501000000000003000000524555010000
      000000}
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
      0400000037000000040000004E414D4501000000000003000000524555010000
      0000000200000049440100000000000200000043440100000000000800000046
      4B5F4F52475450010000000000030000004E5050010000000000010000005601
      000000000009000000504152454E545F49440100000000000500000054524553
      5401000000000003000000554348010000000000030000004144520100000000
      0003000000494E4E010000000000070000004D414E4147455201000000000003
      0000004255480100000000000D000000524153434845545F5343484554010000
      000000070000004B5F5343484554010000000000090000004B4F445F4F4B4F4E
      48010000000000080000004B4F445F4F47524E0100000000000300000042494B
      0100000000000500000050484F4E45010000000000030000004B505001000000
      00000400000042414E4B0100000000000600000049445F455850010000000000
      090000004144525F52454349500100000000000E000000415554484F52495A45
      445F4449520100000000000E000000415554484F52495A45445F425548010000
      0000000C000000415554485F4449525F444F430100000000000C000000415554
      485F4255485F444F43010000000000040000004F4B504F010000000000060000
      005645525F43440100000000000900000046554C4C5F4E414D45010000000000
      0600000050484F4E45320100000000000A000000504152454E545F4944320100
      0000000007000000464B5F4F5247320100000000000700000042414E4B5F4344
      010000000000070000004144525F57575701000000000005000000454D41494C
      01000000000009000000484541445F4E414D450100000000000E000000524153
      434845545F53434845543201000000000009000000504F53545F494E44580100
      000000000B000000525F5343485F41444449540100000000000B000000464B5F
      42494C4C5F56415201000000000006000000414F475549440100000000000500
      00004F4B544D4F01000000000008000000434F44455F44454201000000000009
      000000444F4C475F4E414D450100000000000A00000042414E4B5F464E414D45
      0100000000000300000047525001000000000009000000525F5343485F474953
      0100000000000B000000444953545F5041595F54500100000000000800000041
      44525F434153480100000000000600000049535F52534F0100000000000F0000
      0049535F45584348414E47455F4749530100000000000A0000004F52475F5450
      5F474953010000000000070000004752505F444542010000000000}
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
    Variables.Data = {0300000001000000030000003A4344050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
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
    Variables.Data = {0300000001000000030000003A4344050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
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
    Variables.Data = {0300000001000000030000003A4344050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
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
    Variables.Data = {0300000001000000030000003A4344050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
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
    SpecificOptions.Strings = (
      'Oracle.Direct=True'
      'Oracle.Charset=CL8MSWIN1251')
    Options.KeepDesignConnected = False
    Username = 'scott'
    Server = '127.0.0.1'
    Connected = True
    Left = 32
    Top = 416
    EncryptedPassword = '92FF90FF91FF9AFF92FF86FF8DFF90FF'
  end
  object UniStoredProc1: TUniStoredProc
    Connection = UniConnection1
    Constraints = <>
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
      040000000A000000020000004944010000000000040000004E414D4501000000
      0000020000004344010000000000030000004E50500100000000000800000046
      4B5F4F5247545001000000000001000000560100000000000900000050415245
      4E545F4944010000000000030000005245550100000000000500000054524553
      5401000000000003000000554348010000000000}
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
      0400000006000000020000004944010000000000040000004E414D4501000000
      000002000000434401000000000009000000464B5F4C49535454500100000000
      00020000004E4D010000000000030000004E5050010000000000}
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
      0400000002000000020000004944010000000000050000004B4F454646010000
      000000}
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
      0400000003000000030000004B4F44010000000000040000004E414D45010000
      0000000600000054505F4F5247010000000000}
    QueryAllRecords = False
    Session = OracleSession1
    Active = True
    Left = 32
    Top = 616
  end
  object OD_status: TOracleDataSet
    SQL.Strings = (
      'select * from scott.status s')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
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
      0400000005000000020000004944010000000000040000004E414D4501000000
      00000800000043445F4B4C4144520100000000000700000043445F55535A4E01
      00000000000D000000464B5F534554544C454D454E54010000000000}
    QueryAllRecords = False
    Session = OracleSession1
    Active = True
    Left = 80
    Top = 472
  end
  object OD_s_reu_trest: TOracleDataSet
    SQL.Strings = (
      'select s.reu, s.reu||'#39' '#39'||s.name_reu as name_reu, s.name_tr'
      ' from scott.s_reu_trest s')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000003000000524555010000000000070000004E414D455F5452
      010000000000080000004E414D455F524555010000000000}
    Master = Form_list_kart.OD_list_kart
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
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
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
      0400000003000000020000004944010000000000040000004E414D4501000000
      0000020000005450010000000000}
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
      0400000034000000020000004944010000000000040000004E414D4501000000
      000002000000545001000000000005000000504152414D010000000000070000
      004D455353414745010000000000030000005645520100000000000600000050
      4552494F440100000000000C0000004147454E545F555054494D450100000000
      00090000004D4553535F48494E5401000000000009000000504552494F445F50
      4C01000000000007000000535542535F4F420100000000000400000049445F31
      0100000000000D000000504552494F445F444542495453010000000000080000
      0044545F4F544F50310100000000000800000044545F4F544F50320100000000
      00040000005041525401000000000007000000434E545F534348010000000000
      070000004B414E5F5343480100000000000600000053565F534F430100000000
      000B00000053544154455F424153455F010000000000070000004B414E5F5641
      52010000000000070000004F52475F5641520100000000000600000053504C41
      53480100000000000B00000047454E5F4558505F4C5354010000000000080000
      004B414E5F56415232010000000000080000004B4152545F4544310100000000
      00090000004155544F5F5349474E0100000000000B00000046494E445F535452
      4545540100000000000B00000050454E59415F4D4F4E54480100000000000700
      0000434F52525F4C470100000000000D00000052454348415247455F42494C4C
      0100000000000C00000053484F575F4558505F5041590100000000000B000000
      444953545249425F5041590100000000000800000042494C4C5F50454E010000
      0000000B000000504552494F445F4241434B0100000000000D00000050455249
      4F445F464F525752440100000000000900000050454E59415F56415201000000
      00000C00000049535F46554C4C4D4F4E54480100000000000800000057414954
      5F5645520100000000000B00000049535F4445545F4348524701000000000004
      00000049445F3201000000000002000000434401000000000006000000504152
      564331010000000000050000005041524E31010000000000060000004E414D45
      5F3101000000000004000000434454500100000000000A000000464B5F504152
      4344545001000000000006000000504152445431010000000000090000005041
      52454E545F49440100000000000800000053514C5F5445585401000000000003
      0000004E5050010000000000040000004D454D4F010000000000}
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
      0400000006000000020000004944010000000000040000004E414D4501000000
      000002000000434401000000000009000000464B5F4C49535454500100000000
      00020000004E4D010000000000030000004E5050010000000000}
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
      04000000020000000300000055534C010000000000020000004E4D0100000000
      00}
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
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
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
      0300000002000000110000003A5053414C444F5F524546435552534F52740000
      000000000000000000050000003A434C525F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000004000000020000004E440100000000000300000053454C0100000000
      00040000004E414D4501000000000003000000414452010000000000}
    LockingMode = lmNone
    UpdatingTable = 'scott.list_choices_hs'
    CommitOnPost = False
    Session = OracleSession1
    DesignActivation = True
    Active = True
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
    Constraints = <>
    Left = 200
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'user_name'
        ParamType = ptInput
      end>
  end
  object OD_u_list: TOracleDataSet
    SQL.Strings = (
      'select * from scott.u_list s')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000A000000020000004944010000000000040000004E414D4501000000
      0000020000004344010000000000020000004E4D01000000000009000000464B
      5F4C4953545450010000000000030000004E5050010000000000060000005641
      4C5F545001000000000007000000464B5F554E49540100000000000700000053
      514C544558540100000000000D000000464B5F4558535F555F4C495354010000
      000000}
    Session = OracleSession1
    Left = 128
    Top = 664
  end
end
