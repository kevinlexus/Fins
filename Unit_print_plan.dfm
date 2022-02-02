object Form_print_plan: TForm_print_plan
  Left = 380
  Top = 545
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1087#1083#1072#1085#1072' '#1087#1086' '#1046#1069#1054
  ClientHeight = 132
  ClientWidth = 297
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
    Width = 297
    Height = 81
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1077#1090#1072
    TabOrder = 0
    object Label6: TLabel
      Left = 136
      Top = 56
      Width = 21
      Height = 13
      Caption = '       '
    end
    object Label7: TLabel
      Left = 16
      Top = 24
      Width = 87
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072' '#1057':'
    end
    object Label8: TLabel
      Left = 192
      Top = 24
      Width = 17
      Height = 13
      Caption = #1055#1086':'
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 109
      Top = 16
      Width = 80
      Height = 21
      KeyField = 'DAT'
      ListField = 'DAT'
      ListSource = DataSource1
      TabOrder = 0
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 213
      Top = 16
      Width = 80
      Height = 21
      KeyField = 'DAT'
      ListField = 'DAT'
      ListSource = DataSource2
      TabOrder = 1
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 184
      Top = 51
      Width = 97
      Height = 21
      Enabled = False
      KeyField = 'KEY'
      ListField = 'REU'
      ListSource = DS_reu
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 16
      Top = 52
      Width = 113
      Height = 21
      KeyField = 'MENU_ID'
      ListField = 'NAME'
      ListSource = DS_perm_menu
      TabOrder = 3
      OnCloseUp = DBLookupComboBox3CloseUp
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 83
    Width = 297
    Height = 49
    TabOrder = 1
    object Button4: TButton
      Left = 129
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 214
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = OD_data
    BCDToCurrency = False
    Left = 32
  end
  object frxReport1: TfrxReport
    Version = '4.7.71'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38258.415936226900000000
    ReportOptions.LastChange = 38258.447346562500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 64
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
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'REU'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."REU"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SUMMA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."SUMMA"]')
        end
        object Memo5: TfrxMemoView
          Left = 207.874150000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PENYA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PENYA"]')
        end
        object Memo6: TfrxMemoView
          Left = 306.141930000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SUMBN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."SUMBN"]')
        end
        object Memo7: TfrxMemoView
          Left = 389.291590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SUMALL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."SUMALL"]')
        end
        object Memo8: TfrxMemoView
          Left = 480.000310000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SUMPLAN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."SUMPLAN"]')
        end
        object Memo9: TfrxMemoView
          Left = 657.638220000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PROCPLAN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PROCPLAN"]')
        end
        object Memo33: TfrxMemoView
          Left = 555.590910000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PLAN_NO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PLAN_NO"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."NAME_TR"'
        object Memo1: TfrxMemoView
          Left = 56.692950000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."NAME_TR"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8211#1056#173#1056#1115':')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 98.267780000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 7.559060000000000000
          Top = 49.133889999999990000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Memo.UTF8 = (
            #1056#160#1056#173#1056#1032' / '#1056#8211#1056#173#1056#1115)
        end
        object Memo12: TfrxMemoView
          Left = 188.976500000000000000
          Top = 37.795300000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#8249' ('#1056#1030' '#1057#1026#1057#1107#1056#177#1056#187#1057#1039#1057#8230')')
        end
        object Memo13: TfrxMemoView
          Left = 90.708720000000000000
          Top = 68.031539999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '"'#1057#8225#1056#1105#1057#1027#1057#8218#1056#176#1057#1039'"')
        end
        object Memo14: TfrxMemoView
          Left = 222.992270000000000000
          Top = 68.031539999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#181#1056#1029#1057#1039)
        end
        object Memo15: TfrxMemoView
          Left = 317.480520000000000000
          Top = 60.472480000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1030' '#1057#8218'.'#1057#8225'. '#1056#177#1056#181#1056#183#1056#1029#1056#176#1056#187'.')
        end
        object Memo16: TfrxMemoView
          Left = 400.630180000000000000
          Top = 68.031539999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            'c '#1056#1111#1056#181#1056#1029#1056#181#1056#8470)
        end
        object Memo17: TfrxMemoView
          Left = 491.338900000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#187#1056#176#1056#1029','
            #1057#8218#1057#8249#1057#1027'.'#1057#1026#1057#1107#1056#177)
        end
        object Memo18: TfrxMemoView
          Left = 638.740570000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            '% '#1056#1030#1057#8249#1056#1111#1056#1109#1056#187#1056#1029#1056#181#1056#1029#1056#1105#1057#1039)
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 90.708720000000010000
          Width = 702.992580000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 706.772110000000000000
          Top = 34.015770000000010000
          Height = 56.692950000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 702.992580000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Height = 56.692950000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 49.133890000000000000
          Top = 34.015770000000010000
          Height = 56.692950000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 49.133890000000000000
          Top = 60.472480000000000000
          Width = 419.527830000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          Left = 468.661720000000000000
          Top = 34.015770000000010000
          Height = 56.692950000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo10: TfrxMemoView
          Left = 75.590600000000000000
          Top = 7.559060000000003000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1038#1056#1111#1057#1026#1056#176#1056#1030#1056#1108#1056#176' '#1056#1109' '#1057#1027#1056#1109#1056#177#1057#1026#1056#176#1056#1029#1056#1029#1057#8249#1057#8230' '#1056#1111#1056#187#1056#176#1057#8218#1056#181#1056#182#1056#176#1057#8230' '#1056#1030' '#1056#160#1056#173#1056#1032' ' +
              #1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [dat1_] '#1056#1111#1056#1109' [dat2_]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 181.417440000000000000
          Top = 60.472480000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 302.362400000000000000
          Top = 60.472480000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 389.291590000000000000
          Top = 60.472480000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo32: TfrxMemoView
          Left = 570.709030000000000000
          Top = 45.354360000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109' '#1056#1111#1056#187#1056#176#1056#1029#1056#176)
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 56.692950000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Line8: TfrxLineView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 702.992580000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 75.590600000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 207.874150000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."PENYA">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMBN">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 389.291590000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMALL">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 480.000310000000000000
          Top = 18.897650000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMPLAN">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 657.638220000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<SUM(<frxDBDataset1."SUMMA">,MasterData1)>/10/ IIF(<SUM(<frxDBD' +
              'ataset1."SUMPLAN">,MasterData1)>=0,10000000,<SUM(<frxDBDataset1.' +
              '"SUMPLAN">,MasterData1)>)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 555.590910000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."PLAN_NO">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 64.252010000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 75.590600000000000000
          Top = 15.118119999999980000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 207.874150000000000000
          Top = 15.118119999999980000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."PENYA">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 306.141930000000000000
          Top = 15.118119999999980000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMBN">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 389.291590000000000000
          Top = 15.118119999999980000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMALL">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 555.590910000000000000
          Top = 15.118119999999980000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."PLAN_NO">,MasterData1)]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 702.992580000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 480.000310000000000000
          Top = 15.118119999999980000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMPLAN">,MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 657.638220000000000000
          Top = 15.118119999999980000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<SUM(<frxDBDataset1."SUMMA">,MasterData1)>/10/ IIF(<SUM(<frxDBD' +
              'ataset1."SUMPLAN">,MasterData1)>=0,10000000,<SUM(<frxDBDataset1.' +
              '"SUMPLAN">,MasterData1)>)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo37: TfrxMemoView
          Left = 453.543600000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = Form_print_bills.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8221#1056#176#1056#1029#1056#1029#1057#8249#1056#181' '#1056#183#1056#176#1056#1110#1057#1026#1057#1107#1056#182#1056#181#1056#1029#1057#8249': [dat3_]')
          ParentFont = False
        end
      end
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_proc_plan(:reu_, :trest_, :dat1_,'
      '                             :dat2_, :psaldo_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000005000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000060000003A444154315F0C00
      00000000000000000000060000003A444154325F0C0000000000000000000000
      110000003A5053414C444F5F524546435552534F527400000000000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      0400000009000000030000005245550100000000000500000053554D4D410100
      000000000500000050454E59410100000000000500000053554D424E01000000
      00000600000053554D414C4C0100000000000700000053554D504C414E010000
      0000000800000050524F43504C414E010000000000070000004E414D455F5452
      01000000000007000000504C414E5F4E4F010000000000}
    Session = DataModule1.OracleSession1
  end
  object OD_perm_menu: TOracleDataSet
    SQL.Strings = (
      'select  menu_id, name from scott.v_permissions_menu t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D454E555F4944010000000000040000004E414D
      45010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Top = 24
  end
  object DS_perm_menu: TDataSource
    DataSet = OD_perm_menu
    Top = 56
  end
  object OD_reu_trest: TOracleDataSet
    SQL.Strings = (
      'select reu as key, reu from scott.s_reu_trest')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000030000004B455901000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 96
  end
  object DS_reu: TDataSource
    DataSet = OD_reu_trest
    Left = 128
  end
  object DataSource2: TDataSource
    DataSet = OracleDataSet2
    Left = 152
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 120
    Top = 40
  end
  object OracleDataSet2: TOracleDataSet
    SQL.Strings = (
      
        'select distinct dat from scott.proc_plan_loaded k, scott.params ' +
        'p'
      'where dat is not null and to_char(dat, '#39'yyyymm'#39') = p.period_pl'
      'order by dat desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {040000000100000003000000444154010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 88
    Top = 40
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      
        'select distinct dat from scott.proc_plan_loaded k, scott.params ' +
        'p'
      'where dat is not null and to_char(dat, '#39'yyyymm'#39') = p.period_pl'
      'order by dat desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {040000000100000003000000444154010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 64
    Top = 40
  end
end
