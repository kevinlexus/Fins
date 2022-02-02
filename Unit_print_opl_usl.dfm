object Form_opl_usl: TForm_opl_usl
  Left = 394
  Top = 661
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1054#1087#1083#1072#1090#1072' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1091#1089#1083#1091#1075#1077
  ClientHeight = 193
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 329
    Height = 81
    Caption = #1054#1090#1095#1077#1090
    TabOrder = 0
    object Label6: TLabel
      Left = 128
      Top = 56
      Width = 15
      Height = 13
      Caption = '     '
    end
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 87
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072' '#1057':'
    end
    object Label8: TLabel
      Left = 201
      Top = 24
      Width = 17
      Height = 13
      Caption = #1055#1086':'
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 52
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      OnCloseUp = ComboBox1CloseUp
      Items.Strings = (
        #1052#1055' '#1059#1045#1047#1046#1050#1059
        #1046#1069#1054
        #1056#1069#1059)
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 97
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource1
      TabOrder = 0
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 220
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource5
      TabOrder = 1
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 176
      Top = 51
      Width = 145
      Height = 21
      Enabled = False
      KeyField = 'KOD'
      ListField = 'NAME'
      ListSource = DS_reu_trest
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 88
    Width = 329
    Height = 49
    Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1095#1077#1090#1072
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 39
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1072':'
    end
    object CheckBox5: TCheckBox
      Left = 216
      Top = 24
      Width = 105
      Height = 17
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1086#1087#1083#1072#1090#1072
      TabOrder = 1
      OnClick = CheckBox5Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 49
      Top = 20
      Width = 160
      Height = 21
      DropDownRows = 15
      KeyField = 'USL'
      ListField = 'NM1'
      ListSource = DS_uslm
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 144
    Width = 329
    Height = 49
    TabOrder = 2
    object Button5: TButton
      Left = 246
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button4: TButton
      Left = 166
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object DS_reu_trest: TDataSource
    DataSet = OD_reu_trest
    Left = 32
    Top = 32
  end
  object OD_reu_trest: TOracleDataSet
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000003000000030000005245550100000000000500000054524553540100
      00000000070000004E414D455F5452010000000000}
    Session = DataModule1.OracleSession1
    Top = 32
  end
  object OD_uslm: TOracleDataSet
    SQL.Strings = (
      
        'select distinct u.uslm as usl, m.nm1 from scott.usl u, scott.usl' +
        'm m, scott.xxito10 x'
      'where u.usl=x.usl and x.summa<>0 and m.uslm=u.uslm'
      'order by nm1')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000030000004E4D310100000000000300000055534C01000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Top = 64
  end
  object DS_uslm: TDataSource
    DataSet = OD_uslm
    Left = 32
    Top = 64
  end
  object OD_data: TOracleDataSet
    Optimize = False
    Session = DataModule1.OracleSession1
    Top = 96
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 32
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet3
    Left = 64
  end
  object OracleDataSet2: TOracleDataSet
    SQL.Strings = (
      
        'select mg,scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(mg' +
        ',1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t '
      'where t.id=2 and mg is not null'
      'order by mg desc'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 32
  end
  object OracleDataSet3: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t '
      'where t.id=2 and mg is not null'
      'order by mg desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
  end
  object DataSource5: TDataSource
    DataSet = OracleDataSet2
    Left = 88
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select cdat as mg, cdat as mg1 from scott.v_period_reports t '
      'where t.id=2 and dat is not null'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 120
  end
  object OracleDataSet4: TOracleDataSet
    SQL.Strings = (
      'select cdat as mg, cdat as mg1 from scott.v_period_reports t '
      'where t.id=2 and dat is not null'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 152
  end
  object frxReport1: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38547.384473680560000000
    ReportOptions.LastChange = 38547.384473680560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 32
    Top = 160
    Datasets = <
      item
        DataSet = frxDBData_opl_usl
        DataSetName = 'frxDBData_opl_usl'
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
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 107.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 68.000000000000000000
          Top = 35.102350000000000000
          Width = 553.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1056#1111#1056#1109' '#1057#1107#1057#1027#1056#187#1057#1107#1056#1110#1056#181': [nm1], '#1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [mg1' +
              '] '#1056#1111#1056#1109' [mg2]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 509.000000000000000000
          Top = 1.102350000000001000
          Width = 204.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105': [Date] [Time]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 23.677180000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = frxDBData_opl_usl
        DataSetName = 'frxDBData_opl_usl'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 455.000000000000000000
          Top = 1.566789999999997000
          Width = 103.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8 = (
            #1056#160#1056#173#1056#1032': [frxDBData_opl_usl."FORREU"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 565.000000000000000000
          Top = 1.566789999999997000
          Width = 138.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_opl_usl."SUMMA"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.480210000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBData_opl_usl."name_tr"'
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 0.582560000000000900
          Width = 344.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8 = (
            '[frxDBData_opl_usl."NAME_TR"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 1.212429999999984000
          Width = 700.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 565.000000000000000000
          Top = 2.212429999999983000
          Width = 139.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData_opl_usl."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 456.000000000000000000
          Top = 2.212429999999983000
          Width = 102.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#8211#1056#173#1056#1115':')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 565.000000000000000000
          Top = 2.062770000000000000
          Width = 139.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData_opl_usl."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 456.000000000000000000
          Top = 2.062770000000000000
          Width = 102.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 7.000000000000000000
          Top = 1.062770000000000000
          Width = 698.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBData_opl_usl: TfrxDBDataset
    UserName = 'frxDBData_opl_usl'
    CloseDataSource = False
    DataSet = OD_data
    BCDToCurrency = False
    Left = 64
    Top = 160
  end
end
