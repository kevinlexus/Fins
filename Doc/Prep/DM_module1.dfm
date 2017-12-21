object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 1038
  Top = 174
  Height = 228
  Width = 230
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
  object OracleSession2: TOracleSession
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
    Left = 120
    Top = 16
  end
  object OraclePackage2: TOraclePackage
    Session = OracleSession2
    Left = 120
    Top = 72
  end
end
