object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 1111
  Top = 203
  Height = 720
  Width = 683
  object OracleSession1: TOracleSession
    Cursor = crDefault
    DesignConnection = True
    LogonUsername = 'scott'
    LogonPassword = 'monemyro'
    LogonDatabase = 'XE'
    ThreadSafe = True
    RollbackOnDisconnect = True
    OptimizerGoal = ogChoose
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
    Active = True
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
    Active = True
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
      0400000033000000040000004E414D4501000000000003000000524555010000
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
      44525F43415348010000000000}
    Session = OracleSession1
    DesignActivation = True
    Active = True
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
      'Oracle.Direct=True')
    Options.KeepDesignConnected = False
    Username = 'scott'
    Server = '127.0.0.13'
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
end
