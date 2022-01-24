object Form_print_strah: TForm_print_strah
  Left = 369
  Top = 517
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1054#1087#1083#1072#1090#1072' '#1087#1086' '#1089#1090#1088#1072#1093#1086#1074#1099#1084' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1084
  ClientHeight = 113
  ClientWidth = 274
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 274
    Height = 57
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
      Left = 48
      Top = 24
      Width = 77
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072':'
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 137
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource1
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 64
    Width = 273
    Height = 49
    TabOrder = 1
    object Button1: TButton
      Left = 102
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 182
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select * from scott.v_strah t'
      ' where mg = :mg1')
    Optimize = False
    Variables.Data = {
      0300000001000000040000003A4D473105000000070000003230303430380000
      000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000003000000524555010000000000080000004E414D455F5354
      52010000000000020000004D470100000000000500000053554D4D4101000000
      0000060000004441545F4D47010000000000}
    Session = DataModule1.OracleSession1
  end
  object OracleDataSet2: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39'as mg1 from scott.v_period_reports t '
      'where t.id=5 and mg is not null'
      'order by mg desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet2
    Left = 32
    Top = 64
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38252.565467453700000000
    ReportOptions.LastChange = 38252.670249143500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 71
    Top = 48
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'REU'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."REU"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 238.110390000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'SUMMA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."SUMMA"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."NAME_STR"'
        KeepTogether = True
        StartNewPage = True
        object Memo3: TfrxMemoView
          Left = 41.574830000000000000
          Top = 15.118120000000010000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1119#1056#1109#1057#1027#1057#8218#1057#1107#1056#1111#1056#187#1056#181#1056#1029#1056#1105#1057#1039' '#1057#1027#1057#8218#1057#1026#1056#176#1057#8230#1056#1109#1056#1030#1057#8249#1057#8230' '#1056#1030#1056#183#1056#1029#1056#1109#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' [f' +
              'rxDBDataset1."NAME_STR"] '#1056#183#1056#176' [frxDBDataset1."DAT_MG"] '#1056#1112#1056#181#1057#1027#1057#1039#1057 +
              #8224)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 162.519790000000000000
          Top = 49.133890000000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#160#1056#173#1056#1032)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 238.110390000000000000
          Top = 49.133890000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176', '#1057#1026#1057#1107#1056#177'.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 71.811070000000000000
          Width = 699.212598430000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 7.559060000000000000
          Top = 41.574829999999990000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 7.559060000000000000
          Top = 7.559060000000017000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 139.842610000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.779529999999965000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 102.047310000000000000
          Top = 11.338590000000010000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1056#1111#1056#1109#1056#187#1057#1107#1057#8225#1056#181#1056#1029#1056#1109':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 234.330860000000000000
          Top = 11.338590000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 41.574830000000020000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1030#1056#1109#1056#183#1056#1029#1056#176#1056#1110#1057#1026#1056#176#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1056#181' 15% '#1056#1030' '#1057#1026#1056#176#1056#183#1056#1112#1056#181#1057#1026#1056#181':')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 234.330860000000000000
          Top = 41.574830000000020000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[<SUM(<frxDBDataset1."SUMMA">,MasterData1)>*0.15]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1056#181#1057#1026#1056#181#1057#8225#1056#1105#1057#1027#1056#187#1056#181#1056#1029#1056#1109' '#1057#1027#1057#8218#1057#1026#1056#176#1057#8230#1056#1109#1056#1030#1056#1109#1056#8470' '#1056#1108#1056#1109#1056#1112#1056#1111#1056#176#1056#1029#1056#1105#1056#1105':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 234.330860000000000000
          Top = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[<SUM(<frxDBDataset1."SUMMA">,MasterData1)>-'
            '<SUM(<frxDBDataset1."SUMMA">,MasterData1)>*0.15]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109#1056#187#1057#1107#1057#8225#1056#181#1056#1029#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 230.551330000000000000
          Top = 7.559059999999988000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 7.559060000000000000
          Top = 3.779530000000022000
          Width = 699.212598425197100000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 2.709030000000000000
          Top = 1.000000000000000000
          Width = 171.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105':[<Date>][<Time>]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 548.031849999999900000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Left = 4.252320000000000000
          Top = 2.220159999999964000
          Width = 170.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026#1056#176#1056#1029#1056#1105#1057#8224#1056#176' [Page] '#1056#1105#1056#183' [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = OracleDataSet1
    BCDToCurrency = False
    Left = 72
    Top = 16
  end
end
