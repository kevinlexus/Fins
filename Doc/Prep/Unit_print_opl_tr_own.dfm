object Form_print_opl_tr_own: TForm_print_opl_tr_own
  Left = 198
  Top = 367
  Width = 555
  Height = 349
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 72
    Width = 233
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 248
    Top = 72
    Width = 297
    Height = 233
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 232
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_opl_tr_own(:psaldo_refcursor);'
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
      0300000005000000030000004E4D310100000000040000004E414D4501000000
      00070000004E414D455F545201000000000500000053554D4D41010000000005
      00000054524553540100000000}
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
  end
  object frxReport1: TfrxReport
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 38348.474291493090000000
    ReportOptions.LastChange = 38348.629820694400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Datasets = <
      item
        DataSet = frxDBData
        DataSetName = 'frxDBData'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBtr'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxDMPPage
      Orientation = poLandscape
      PaperWidth = 419.099729331424800000
      PaperHeight = 296.862308276425900000
      PaperSize = 8
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        Height = 85.000000000000000000
        Top = 17.000000000000000000
        Width = 1564.800000000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 17.000000000000000000
        Top = 170.000000000000000000
        Width = 1564.800000000000000000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
        object DMPMemo2: TfrxDMPMemoView
          Left = 115.200000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM1'
          DataSet = frxDBData
          DataSetName = 'frxDBData'
          Memo.Strings = (
            '[frxDBData."NM1"]')
        end
        object DMPMemo3: TfrxDMPMemoView
          Left = 316.800000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'SUMMA'
          DataSet = frxDBData
          DataSetName = 'frxDBData'
          Memo.Strings = (
            '[frxDBData."SUMMA"]')
        end
        object DMPMemo4: TfrxDMPMemoView
          Left = 499.200000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData
          DataSetName = 'frxDBData'
          Memo.Strings = (
            '[frxDBData."SUMMA"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 17.000000000000000000
        Top = 136.000000000000000000
        Width = 1564.800000000000000000
        Condition = 'frxDBData."NAME"'
        object DMPMemo1: TfrxDMPMemoView
          Left = 19.200000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NAME'
          DataSet = frxDBData
          DataSetName = 'frxDBData'
          Memo.Strings = (
            '[frxDBData."NAME"]')
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 480.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBtr'
          Memo.Strings = (
            '[frxDBtr."NAME_TR"]')
        end
      end
      object MasterData2: TfrxMasterData
        Height = 1088.000000000000000000
        Left = 470.400000000000000000
        Vertical = True
        Width = 134.000000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBtr'
        RowCount = 0
      end
    end
  end
  object OD_tr: TOracleDataSet
    SQL.Strings = (
      'select trest, name_tr from scott.s_trest'
      'where trest=:trest')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000001000000060000003A54524553540500000003000000313200000000
      00}
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
      0300000002000000070000004E414D455F545201000000000500000054524553
      540100000000}
    Cursor = crDefault
    Master = OD_data
    MasterFields = 'trest'
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
    Top = 32
  end
  object frxDBData: TfrxDBDataset
    UserName = 'frxDBData'
    DataSet = OD_data
    Left = 32
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBtr'
    DataSet = OD_tr
    Left = 32
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = OD_data
    Left = 104
  end
  object DataSource2: TDataSource
    DataSet = OD_tr
    Left = 104
    Top = 32
  end
end
