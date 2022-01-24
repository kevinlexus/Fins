object Form_test: TForm_test
  Left = 374
  Top = 149
  Width = 433
  Height = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 425
    Height = 225
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 96
    Top = 240
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  generator.report_proc_org(:psaldo_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000001000000110000003A5053414C444F5F524546435552534F52740000
      000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000004000000030000004F524701000000000C00000053554D2843484152
      4745532901000000000C00000053554D285041594D454E542901000000000400
      000050524F430100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = True
    object OD_dataSUMCHARGES: TFloatField
      FieldName = 'SUM(CHARGES)'
    end
    object OD_dataSUMPAYMENT: TFloatField
      FieldName = 'SUM(PAYMENT)'
    end
    object OD_dataPROC: TFloatField
      FieldName = 'PROC'
    end
    object OD_dataORG: TFloatField
      FieldName = 'ORG'
    end
  end
  object frxReport1: TfrxReport
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    ReportOptions.CreateDate = 38323.569929444400000000
    ReportOptions.LastChange = 38323.602968923600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxNNN'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxNNN'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 90.666666670000000000
          Top = 1.102350000000001000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.Strings = (
            '[frxNNN."ORG"]')
        end
      end
      object Memo2: TfrxMemoView
        Left = 196.000000000000000000
        Top = 18.666666670000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Memo.Strings = (
          'gfgfgfgfgfgfgfgf')
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxNNN'
    DataSet = OD_data
    Top = 32
  end
  object frxChartObject1: TfrxChartObject
    Left = 64
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select t.rowid, t.*  from test t')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000002000000050000005445535431010000000005000000544553543201
      00000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = False
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 32
    Top = 64
  end
end
