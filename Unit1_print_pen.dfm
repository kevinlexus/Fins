object Form_print_pen: TForm_print_pen
  Left = 343
  Top = 648
  Width = 329
  Height = 219
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1055#1077#1085#1103' '#1087#1086' '#1046#1069#1054' '#1060'.8.1'
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
    Left = 1
    Top = 0
    Width = 320
    Height = 137
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1077#1090#1072
    TabOrder = 0
    object Label3: TLabel
      Left = 128
      Top = 56
      Width = 21
      Height = 13
      Caption = '       '
    end
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 87
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072' '#1057':'
    end
    object Label8: TLabel
      Left = 194
      Top = 24
      Width = 17
      Height = 13
      Caption = #1055#1086':'
    end
    object Label1: TLabel
      Left = 24
      Top = 112
      Width = 81
      Height = 13
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1090#1095#1077#1090#1072':'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 95
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource1
      TabOrder = 0
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 214
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource5
      TabOrder = 1
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 168
      Top = 51
      Width = 145
      Height = 21
      Enabled = False
      KeyField = 'KEY'
      ListField = 'REU'
      ListSource = DS_reu
      TabOrder = 2
    end
    object DBLookupComboBox8: TDBLookupComboBox
      Left = 8
      Top = 52
      Width = 113
      Height = 21
      KeyField = 'MENU_ID'
      ListField = 'NAME'
      ListSource = DS_perm_menu
      TabOrder = 3
      OnCloseUp = DBLookupComboBox8CloseUp
    end
    object CheckBox5: TCheckBox
      Left = 208
      Top = 80
      Width = 105
      Height = 17
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
      TabOrder = 4
      OnClick = CheckBox5Click
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 104
      Width = 200
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        #1055#1077#1085#1103', '#1087#1088#1080#1085#1103#1090#1072#1103' '#1079#1072' '#1046#1069#1054', '#1082#1088#1086#1084#1077' '#1089#1073#1086#1088#1086#1074' '#1101#1090#1086#1075#1086' '#1046#1069#1054
        #1055#1077#1085#1103', '#1087#1088#1080#1085#1103#1090#1072#1103' '#1046#1069#1054' '#1079#1072' '#1076#1088#1091#1075#1080#1093', '#1082#1088#1086#1084#1077' '#1089#1073#1086#1088#1086#1074' '#1079#1072' '#1101#1090#1086#1090' '#1046#1069#1054)
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 136
    Width = 321
    Height = 49
    TabOrder = 1
    object Button2: TButton
      Left = 238
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 149
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet2
    Left = 376
    Top = 32
  end
  object OracleDataSet2: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME1(substr(mg,5,2))||'#39' '#39'||substr(' +
        'mg,1,4)||'#39' '#1075'.'#39'  as mg1 from scott.v_period_reports t '
      'where t.id=10 and mg is not null'
      'order by mg desc'
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 440
  end
  object DataSource5: TDataSource
    DataSet = OracleDataSet3
    Left = 344
    Top = 32
  end
  object OracleDataSet3: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t '
      'where t.id=10 and mg is not null'
      'order by mg desc'
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 344
  end
  object DataSource2: TDataSource
    DataSet = OracleDataSet2
    Left = 408
    Top = 32
  end
  object DataSource6: TDataSource
    DataSet = OracleDataSet3
    Left = 440
    Top = 32
  end
  object OracleDataSet4: TOracleDataSet
    SQL.Strings = (
      'select cdat  as mg, cdat as mg1 from scott.v_period_reports t '
      'where t.id=10 and dat is not null'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 376
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select cdat as mg, cdat as mg1 from scott.v_period_reports t '
      'where t.id=10 and dat is not null'
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 408
  end
  object OD_reu_trest: TOracleDataSet
    SQL.Strings = (
      'select reu as key, reu from scott.s_reu_trest')
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000030000004B455901000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 408
    Top = 64
  end
  object OD_perm_menu: TOracleDataSet
    SQL.Strings = (
      'select  menu_id, name from scott.v_permissions_menu t')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D454E555F4944010000000000040000004E414D
      45010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 344
    Top = 64
  end
  object DS_perm_menu: TDataSource
    DataSet = OD_perm_menu
    Left = 376
    Top = 96
  end
  object OracleDataSet5: TOracleDataSet
    SQL.Strings = (
      'select reu as key, reu from scott.s_reu_trest')
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000030000004B455901000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 376
    Top = 64
  end
  object DS_reu: TDataSource
    DataSet = OD_reu_trest
    Left = 344
    Top = 96
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.generator.report_pen(:var_,'
      '                       :reu_,'
      '                       :trest_,'
      '                       :dat_,'
      '                       :dat1_,'
      '                       :mg_,'
      
        '                       :mg1_,                                   ' +
        ' '
      '                       :v_rep_refcursor);'
      'end;')
    Variables.Data = {
      0300000008000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000300000030320000000000050000003A4441545F
      0C0000000000000000000000060000003A444154315F0C000000000000000000
      0000040000003A4D475F05000000070000003230303530340000000000050000
      003A4D47315F05000000070000003230303530340000000000100000003A565F
      5245505F524546435552534F52740000000000000000000000050000003A5641
      525F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000070000004E414D455F54520100000000000500000053554D
      4D410100000000000800000046524F4D5F524555010000000000}
    Session = DataModule1.OracleSession1
    Left = 64
    Top = 40
  end
  object frxDBData: TfrxDBDataset
    UserName = 'frxDBData'
    CloseDataSource = False
    DataSet = OD_data
    Left = 96
    Top = 40
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 8
    Top = 40
  end
  object frxReport1: TfrxReport
    Version = '3.20'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    ReportOptions.CreateDate = 38398.582836226900000000
    ReportOptions.LastChange = 38909.535006863430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 128
    Top = 40
    Datasets = <
      item
        DataSet = frxDBData
        DataSetName = 'frxDBData'
      end
      item
        DataSet = frxDBData
        DataSetName = 'frxDBData'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 296.862308276425900000
      PaperSize = 9
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        Height = 170.000000000000000000
        Top = 17.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo1: TfrxDMPMemoView
          Top = 34.000000000000000000
          Width = 768.000000000000000000
          Height = 85.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            #1056#164#1056#1109#1057#1026#1056#1112#1056#176' 8.1'
            #1056#1119#1056#181#1056#1029#1057#1039' '#1056#1111#1056#1109' '#1056#8211#1056#173#1056#1115'/'#1056#160#1056#173#1056#1032' ([var_]) '
            #1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [mg1] '#1056#1111#1056#1109' [mg2]')
          ParentFont = False
        end
        object DMPMemo2: TfrxDMPMemoView
          Width = 432.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            
              #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105': [<Date>] [<Time>] '#1056#1038#1057#8218#1057#1026#1056#176#1056#1029#1056#1105#1057#8224#1056#176' [<Page' +
              '>]/[TotalPages#]')
          ParentFont = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 38.400000000000000000
          Top = 136.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            #1056#8211#1056#173#1056#1115)
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 230.400000000000000000
          Top = 136.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            #1056#160#1056#173#1056#1032)
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 336.000000000000000000
          Top = 136.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
        end
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 161.500000000000000000
          Width = 451.200000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.000000000000000000
        Top = 255.000000000000000000
        Width = 777.600000000000000000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
        object DMPMemo4: TfrxDMPMemoView
          Left = 220.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."FROM_REU"]')
        end
        object DMPMemo15: TfrxDMPMemoView
          Left = 326.400000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."SUMMA"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 17.000000000000000000
        Top = 221.000000000000000000
        Width = 777.600000000000000000
        Condition = 'frxDBDataset1."NAME_TR"'
        object DMPMemo3: TfrxDMPMemoView
          Left = 28.800000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."NAME_TR"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 51.000000000000000000
        Top = 289.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo9: TfrxDMPMemoView
          Left = 326.400000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 28.800000000000000000
          Top = 17.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#8211#1056#173#1056#1115':')
        end
        object DMPLine2: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 8.500000000000000000
          Width = 451.200000000000000000
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.000000000000000000
        Top = 374.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo11: TfrxDMPMemoView
          Left = 326.400000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
        end
        object DMPLine3: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 8.500000000000000000
          Width = 451.200000000000000000
        end
        object DMPMemo12: TfrxDMPMemoView
          Left = 28.800000000000000000
          Top = 17.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
        end
      end
    end
    object Page2: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 296.862308276425900000
      PaperSize = 9
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      FontStyle = []
      object GroupFooter2: TfrxGroupFooter
        Height = 17.000000000000000000
        Top = 136.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo13: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."NAME_TR"]')
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 307.200000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData2)]')
        end
      end
      object MasterData2: TfrxMasterData
        Top = 119.000000000000000000
        Width = 777.600000000000000000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
      end
      object PageHeader1: TfrxPageHeader
        Height = 51.000000000000000000
        Top = 17.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo16: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 432.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.UTF8 = (
            
              #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105': [<Date>] [<Time>] '#1056#1038#1057#8218#1057#1026#1056#176#1056#1029#1056#1105#1057#8224#1056#176' [<Page' +
              '>]/[TotalPages#]')
          ParentFont = False
        end
        object DMPMemo17: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 432.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1105' '#1056#1108' '#1057#8222#1056#1109#1057#1026#1056#1112#1056#181' 8.1')
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 34.000000000000000000
        Top = 187.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo18: TfrxDMPMemoView
          Left = 307.200000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
        end
        object DMPLine4: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 8.500000000000000000
          Width = 451.200000000000000000
        end
        object DMPMemo14: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 102.000000000000000000
        Visible = False
        Width = 777.600000000000000000
        Condition = 'frxDBDataset1."NAME_TR"'
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '3.20'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    ReportOptions.CreateDate = 38909.535424803240000000
    ReportOptions.LastChange = 38909.535424803240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 9
    Top = 80
    Datasets = <
      item
        DataSet = frxDBData
        DataSetName = 'frxDBData'
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
        Top = 377.953000000000000000
        Width = 718.009912533333500000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 316.000000000000000000
          Top = 0.102350000000001300
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxDBData."FROM_REU"]')
        end
        object Memo2: TfrxMemoView
          Left = 422.000000000000000000
          Top = 0.102350000000001300
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData
          DataSetName = 'frxDBData'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData."SUMMA"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 718.009912533333500000
        object Memo3: TfrxMemoView
          Left = 22.000000000000000000
          Top = 2.393629999999973000
          Width = 199.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#8211#1056#173#1056#1115':')
        end
        object Memo4: TfrxMemoView
          Left = 422.000000000000000000
          Top = 2.393629999999973000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">,MasterData1)]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 29.677180000000000000
        Top = 325.039580000000000000
        Width = 718.009912533333500000
        Condition = 'frxDBData."NAME_TR"'
        object Memo7: TfrxMemoView
          Left = 20.000000000000000000
          Top = 9.952690000000018000
          Width = 292.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxDBData."NAME_TR"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 506.457020000000000000
        Width = 718.009912533333500000
        object Memo5: TfrxMemoView
          Left = 23.000000000000000000
          Top = 1.243969999999990000
          Width = 199.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
        end
        object Memo6: TfrxMemoView
          Left = 423.000000000000000000
          Top = 1.243969999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">,MasterData1)]')
        end
        object Line2: TfrxLineView
          Left = 8.000000000000000000
          Top = 1.102039999999988000
          Width = 518.000000000000000000
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 243.677180000000000000
        Top = 18.897650000000000000
        Width = 718.009912533333500000
        object Memo8: TfrxMemoView
          Left = 10.000000000000000000
          Top = 5.102350000000001000
          Width = 695.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            
              #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105': [<Date>] [<Time>] '#1056#1038#1057#8218#1057#1026#1056#176#1056#1029#1056#1105#1057#8224#1056#176' [<Page' +
              '>]/[TotalPages#]')
        end
        object Memo9: TfrxMemoView
          Left = 10.000000000000000000
          Top = 38.102350000000000000
          Width = 396.488250000000000000
          Height = 91.897650000000000000
          Memo.UTF8 = (
            #1056#164#1056#1109#1057#1026#1056#1112#1056#176' 8.1'
            #1056#1119#1056#181#1056#1029#1057#1039' '#1056#1111#1056#1109' '#1056#8211#1056#173#1056#1115'/'#1056#160#1056#173#1056#1032' ([var_]) '
            #1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [mg1] '#1056#1111#1056#1109' [mg2]')
        end
        object Memo10: TfrxMemoView
          Left = 27.000000000000000000
          Top = 218.102350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#8211#1056#173#1056#1115)
        end
        object Memo11: TfrxMemoView
          Left = 319.000000000000000000
          Top = 215.102350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#160#1056#173#1056#1032)
        end
        object Memo12: TfrxMemoView
          Left = 424.000000000000000000
          Top = 215.102350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
        end
        object Line1: TfrxLineView
          Left = 10.000000000000000000
          Top = 238.102350000000000000
          Width = 515.000000000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        Top = 170.078850000000000000
        Width = 718.009912533333500000
        DataSet = frxDBData
        DataSetName = 'frxDBData'
        RowCount = 0
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 24.677180000000000000
        Top = 192.756030000000000000
        Width = 718.009912533333500000
        object Memo14: TfrxMemoView
          Left = 12.000000000000000000
          Top = 2.362089999999995000
          Width = 340.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxDBData."NAME_TR"]')
        end
        object Memo15: TfrxMemoView
          Left = 361.000000000000000000
          Top = 2.362089999999995000
          Width = 114.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">,MasterData2)]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 147.401670000000000000
        Width = 718.009912533333500000
        Condition = 'frxDBData."NAME_TR"'
      end
      object PageHeader1: TfrxPageHeader
        Height = 66.677180000000010000
        Top = 18.897650000000000000
        Width = 718.009912533333500000
        object Line3: TfrxLineView
          Left = 10.000000000000000000
          Top = 61.102350000000000000
          Width = 471.000000000000000000
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 11.000000000000000000
          Top = 0.102350000000001300
          Width = 451.488250000000000000
          Height = 54.897650000000000000
          Memo.UTF8 = (
            
              #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105': [<Date>] [<Time>] '#1056#1038#1057#8218#1057#1026#1056#176#1056#1029#1056#1105#1057#8224#1056#176' [<Page' +
              '>]/[TotalPages#]'
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1105' '#1056#1108' '#1057#8222#1056#1109#1057#1026#1056#1112#1056#181' 8.1')
        end
      end
      object ReportSummary2: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 718.009912533333500000
        object Memo16: TfrxMemoView
          Left = 12.000000000000000000
          Top = 2.212429999999983000
          Width = 194.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
        end
        object Memo17: TfrxMemoView
          Left = 363.000000000000000000
          Top = 3.212429999999983000
          Width = 114.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData."SUMMA">,MasterData1)]')
        end
        object Line4: TfrxLineView
          Left = 10.000000000000000000
          Top = 0.212429999999983500
          Width = 471.000000000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
