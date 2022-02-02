object Form_print_bank: TForm_print_bank
  Left = 476
  Top = 631
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1054#1087#1083#1072#1090#1072' '#1073#1072#1085#1082#1072
  ClientHeight = 155
  ClientWidth = 329
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 329
    Height = 105
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1077#1090#1072
    TabOrder = 0
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 87
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072' '#1057':'
    end
    object Label8: TLabel
      Left = 200
      Top = 24
      Width = 17
      Height = 13
      Caption = #1055#1086':'
    end
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 81
      Height = 13
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1090#1095#1077#1090#1072':'
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 96
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource1
      TabOrder = 0
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 224
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource5
      TabOrder = 1
    end
    object CheckBox6: TCheckBox
      Left = 216
      Top = 48
      Width = 105
      Height = 17
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1086#1087#1083#1072#1090#1072
      TabOrder = 2
      OnClick = CheckBox6Click
    end
    object ComboBox1: TComboBox
      Left = 96
      Top = 72
      Width = 225
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        #1054#1087#1083#1072#1090#1072' '#1073#1072#1085#1082#1072', '#1073#1077#1079' '#1076#1077#1090#1089#1082#1080#1093' '#1087#1083#1086#1097#1072#1076#1086#1082', '#1074#1082#1083#1102#1095#1072#1103' '#1087#1077#1085#1102
        #1054#1087#1083#1072#1090#1072' '#1073#1072#1085#1082#1072', '#1087#1086' '#1076#1085#1103#1084)
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 106
    Width = 329
    Height = 49
    TabOrder = 1
    object Button3: TButton
      Left = 165
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 246
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object OracleDataSet4: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t '
      'where t.id=4 and mg is not null'
      'order by mg desc')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 472
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME1(substr(mg,5,2))||'#39' '#39'||substr(' +
        'mg,1,4)||'#39' '#1075'.'#39'as mg1 from scott.v_period_reports t '
      'where t.id=4 and mg is not null'
      'order by mg desc'
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 440
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 408
  end
  object DataSource5: TDataSource
    DataSet = OracleDataSet4
    Left = 376
  end
  object OracleDataSet6: TOracleDataSet
    SQL.Strings = (
      'select cdat  as mg, cdat as mg1 from scott.v_period_reports t '
      'where t.id=4 and dat is not null'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 344
  end
  object OracleDataSet5: TOracleDataSet
    SQL.Strings = (
      'select cdat as mg, cdat as mg1 from scott.v_period_reports t '
      'where t.id=4 and dat is not null'
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 312
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' scott.generator.report_bank(:var_,:dat_, :dat1_,:mg_, :mg1_,'
      ' :rep_refcursor);'
      'end;')
    Variables.Data = {
      0300000006000000040000003A4D475F05000000000000000000000005000000
      3A4D47315F050000000000000000000000050000003A5641525F030000000400
      000001000000000000000E0000003A5245505F524546435552534F5274000000
      0000000000000000050000003A4441545F0C0000000700000078690401010101
      00000000060000003A444154315F0C0000000700000078690516010101000000
      00}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000500000053554D4D410100000000000500000050454E5941
      01000000000003000000444154010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 312
    Top = 40
  end
  object frxDBData: TfrxDBDataset
    UserName = 'frxDBData'
    CloseDataSource = False
    DataSet = OD_data
    Left = 344
    Top = 32
  end
  object efrxReport1: TfrxReport
    Version = '3.20'
    DotMatrixReport = True
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 38489.457479294000000000
    ReportOptions.LastChange = 38489.457479294000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 376
    Top = 32
    Datasets = <
      item
        DataSet = frxDBData
        DataSetName = 'frxDBData'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxDMPPage
      PaperWidth = 152.399901575063600000
      PaperHeight = 296.862308276425900000
      PaperSize = 256
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      FontStyle = []
      object MasterData1: TfrxMasterData
        Height = 17.000000000000000000
        Top = 153.000000000000000000
        Width = 556.800000000000000000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
        object DMPMemo2: TfrxDMPMemoView
          Left = 220.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData."SUMMA"]')
          ParentFont = False
        end
        object DMPMemo1: TfrxDMPMemoView
          Left = 19.200000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            '[frxDBData."NAME_TR"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 102.000000000000000000
        Top = 17.000000000000000000
        Width = 556.800000000000000000
        object DMPMemo3: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 556.799999999999900000
          Height = 51.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            
              #1056#1115#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1056#1113#1057#1107#1056#183#1056#177#1056#176#1057#1027#1057#1027#1057#1107#1056#1110#1056#1109#1056#187#1057#1034#1056#177#1056#176#1056#1029#1056#1108#1056#176', '#1056#1105#1057#1027#1056#1108#1056#187#1057#1035#1057#8225#1056#176#1057 +
              #1039' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#1107' '#1056#183#1056#176' '#1056#1169#1056#181#1057#8218#1057#1027#1056#1108#1056#1105#1056#181' '#1056#1111#1056#187#1056#1109#1057#8240#1056#176#1056#1169#1056#1108#1056#1105' '#1056#1111#1056#1109' '#1056#8211#1056#173#1056#1115' ' +
              #1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [mg_] '#1056#1111#1056#1109' [mg1_]  ')
          ParentFont = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 19.200000000000000000
          Top = 68.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            #1056#8211#1056#173#1056#1115)
          ParentFont = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 220.800000000000000000
          Top = 68.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
        end
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 93.500000000000000000
          Width = 364.800000000000000000
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 17.000000000000000000
        Top = 204.000000000000000000
        Width = 556.800000000000000000
        object DMPMemo4: TfrxDMPMemoView
          Left = 19.200000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 220.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxBold, fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object efrxReport2: TfrxReport
    Version = '3.20'
    DotMatrixReport = True
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 38489.457479294000000000
    ReportOptions.LastChange = 38489.457479294000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 408
    Top = 32
    Datasets = <
      item
        DataSet = frxDBData
        DataSetName = 'frxDBData'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxDMPPage
      PaperWidth = 152.399901575063600000
      PaperHeight = 296.862308276425900000
      PaperSize = 256
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      FontStyle = []
      object MasterData1: TfrxMasterData
        Height = 17.000000000000000000
        Top = 153.000000000000000000
        Width = 556.800000000000000000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
        object DMPMemo2: TfrxDMPMemoView
          Left = 201.600000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData."SUMMA"]')
          ParentFont = False
        end
        object DMPMemo1: TfrxDMPMemoView
          Left = 19.200000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            '[frxDBData."DAT"]')
          ParentFont = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 336.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData."PENYA"]')
          ParentFont = False
        end
        object DMPMemo11: TfrxDMPMemoView
          Left = 441.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBData."SUMMA">+<frxDBData."PENYA">]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 102.000000000000000000
        Top = 17.000000000000000000
        Width = 556.800000000000000000
        object DMPMemo3: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 556.799999999999900000
          Height = 51.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            
              #1056#1115#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1056#1113#1057#1107#1056#183#1056#177#1056#176#1057#1027#1057#1027#1057#1107#1056#1110#1056#1109#1056#187#1057#1034#1056#177#1056#176#1056#1029#1056#1108#1056#176', '#1056#1111#1056#1109' '#1056#1169#1056#1029#1057#1039#1056#1112', ' +
              #1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [mg_] '#1056#1111#1056#1109' [mg1_]  ')
          ParentFont = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 19.200000000000000000
          Top = 68.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 201.600000000000000000
          Top = 68.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#8249)
          ParentFont = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 336.000000000000000000
          Top = 68.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1111#1056#181#1056#1029#1056#1105)
          ParentFont = False
        end
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 93.500000000000000000
          Width = 537.600000000000000000
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo12: TfrxDMPMemoView
          Left = 441.600000000000000000
          Top = 68.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109)
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 17.000000000000000000
        Top = 204.000000000000000000
        Width = 556.800000000000000000
        object DMPMemo4: TfrxDMPMemoView
          Left = 19.200000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 201.600000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxBold, fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 336.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."PENYA">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Left = 441.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">+<frxDBData."PENYA">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 440
    Top = 32
  end
  object frxReport1: TfrxReport
    Version = '3.20'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 38610.621439490750000000
    ReportOptions.LastChange = 38610.624951250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 64
    Datasets = <
      item
        DataSet = frxDBData
        DataSetName = 'frxDBData'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 105.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 24.102350000000000000
          Width = 716.488250000000000000
          Height = 38.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1056#1113#1057#1107#1056#183#1056#177#1056#176#1057#1027#1057#1027#1057#1107#1056#1110#1056#1109#1056#187#1057#1034#1056#177#1056#176#1056#1029#1056#1108#1056#176', '#1056#1105#1057#1027#1056#1108#1056#187#1057#1035#1057#8225#1056#176#1057 +
              #1039' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#1107' '#1056#183#1056#176' '#1056#1169#1056#181#1057#8218#1057#1027#1056#1108#1056#1105#1056#181' '#1056#1111#1056#187#1056#1109#1057#8240#1056#176#1056#1169#1056#1108#1056#1105' '#1056#1111#1056#1109' '#1056#8211#1056#173#1056#1115' ' +
              #1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [mg_] '#1056#1111#1056#1109' [mg1_]  ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 177.000000000000000000
          Top = 81.102350000000000000
          Width = 205.488250000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8211#1056#173#1056#1115)
        end
        object Memo3: TfrxMemoView
          Left = 398.000000000000000000
          Top = 81.102350000000000000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
        end
        object Line1: TfrxLineView
          Left = 164.000000000000000000
          Top = 101.102350000000000000
          Width = 373.000000000000000000
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 2.000000000000000000
          Top = 1.102350000000001000
          Width = 172.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105': [<Date>][<Time>]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 178.000000000000000000
          Top = 3.803030000000007000
          Width = 205.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[frxDBData."NAME_TR"]')
        end
        object Memo5: TfrxMemoView
          Left = 399.000000000000000000
          Top = 2.803030000000007000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData."SUMMA"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 27.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 178.000000000000000000
          Top = 4.653369999999995000
          Width = 205.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 400.000000000000000000
          Top = 5.653369999999995000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 164.000000000000000000
          Top = 2.653369999999995000
          Width = 373.000000000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '3.20'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 38610.621439490800000000
    ReportOptions.LastChange = 38610.624951250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 64
    Datasets = <
      item
        DataSet = frxDBData
        DataSetName = 'frxDBData'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 114.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 28.102350000000000000
          Width = 716.488250000000000000
          Height = 38.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1056#1113#1057#1107#1056#183#1056#177#1056#176#1057#1027#1057#1027#1057#1107#1056#1110#1056#1109#1056#187#1057#1034#1056#177#1056#176#1056#1029#1056#1108#1056#176', '#1056#1111#1056#1109' '#1056#1169#1056#1029#1057#1039#1056#1112', ' +
              #1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [mg_] '#1056#1111#1056#1109' [mg1_]  ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 35.968460000000000000
          Top = 89.102350000000000000
          Width = 205.488250000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
        end
        object Memo3: TfrxMemoView
          Left = 257.968460000000000000
          Top = 89.102350000000000000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#8249)
        end
        object Line1: TfrxLineView
          Left = 31.968460000000000000
          Top = 110.102350000000000000
          Width = 617.606370000000000000
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 397.968460000000000000
          Top = 89.102350000000000000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1111#1056#181#1056#1029#1056#1105)
        end
        object Memo11: TfrxMemoView
          Left = 4.000000000000000000
          Top = 2.102350000000001000
          Width = 172.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105': [<Date>][<Time>]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 532.913730000000000000
          Top = 89.102350000000000000
          Width = 113.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109)
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 81.968459999999990000
          Width = 108.488250000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBData."DAT"]')
        end
        object Memo5: TfrxMemoView
          Left = 257.968460000000000000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData."SUMMA"]')
        end
        object Memo9: TfrxMemoView
          Left = 395.968460000000000000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData."PENYA"]')
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Width = 113.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBData."SUMMA">+<frxDBData."PENYA">]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 46.968460000000000000
          Top = 3.653369999999995000
          Width = 195.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 257.968460000000000000
          Top = 3.653369999999995000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 395.968460000000000000
          Top = 3.653369999999995000
          Width = 132.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."PENYA">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 33.968460000000000000
          Top = 0.653369999999995300
          Width = 613.826839999999900000
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 532.913730000000000000
          Top = 3.779530000000022000
          Width = 113.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">+<frxDBData."PENYA">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
