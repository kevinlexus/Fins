object Form_print_lists: TForm_print_lists
  Left = 1857
  Top = 244
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1083#1091#1078#1077#1073#1085#1099#1077' '#1086#1090#1095#1077#1090#1099' ('#1089#1087#1080#1089#1082#1080')'
  ClientHeight = 562
  ClientWidth = 416
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 409
    Height = 209
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1077#1090#1072
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 74
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072
    end
    object Label4: TLabel
      Left = 4
      Top = 24
      Width = 78
      Height = 13
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1090#1095#1077#1090#1072
    end
    object Label1: TLabel
      Left = 32
      Top = 120
      Width = 43
      Height = 13
      Caption = #1058#1072#1073#1083#1080#1094#1072
      Visible = False
    end
    object Label2: TLabel
      Left = 8
      Top = 144
      Width = 67
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Visible = False
    end
    object Label5: TLabel
      Left = 8
      Top = 88
      Width = 75
      Height = 13
      Caption = #1055#1091#1090#1100' '#1074#1099#1075#1088#1091#1079#1082#1080
    end
    object Edit1: TEdit
      Left = 88
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 1
      Visible = False
    end
    object Edit2: TEdit
      Left = 88
      Top = 80
      Width = 185
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'c:\temp\'
    end
    object cbbVar: TcxLookupComboBox
      Left = 88
      Top = 20
      Properties.GridMode = True
      Properties.KeyFieldNames = 'CD'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_typeslist
      Properties.OnCloseUp = cbbUkPropertiesCloseUp
      TabOrder = 2
      Width = 313
    end
    object cbbMg: TcxLookupComboBox
      Left = 88
      Top = 52
      Properties.GridMode = True
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'MG1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_mg
      TabOrder = 3
      Width = 129
    end
    object cbbOrg: TcxLookupComboBox
      Left = 88
      Top = 140
      Properties.GridMode = True
      Properties.KeyFieldNames = 'KOD'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_sprorg
      TabOrder = 4
      Width = 313
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 264
    Width = 409
    Height = 49
    TabOrder = 3
    object Button1: TButton
      Left = 160
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 328
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 80
      Top = 16
      Width = 75
      Height = 25
      Caption = #1046#1069#1054
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 0
      Top = 16
      Width = 75
      Height = 25
      Caption = #1059#1089#1083#1091#1075#1072
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 216
    Width = 153
    Height = 57
    Caption = #1042#1072#1088#1080#1072#1085#1090' '#1074#1099#1074#1086#1076#1072
    ItemIndex = 0
    Items.Strings = (
      #1054#1090#1095#1077#1090
      #1060#1072#1081#1083)
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object GroupBox3: TGroupBox
    Left = 160
    Top = 216
    Width = 249
    Height = 57
    Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100
    Enabled = False
    TabOrder = 2
    object Label6: TLabel
      Left = 76
      Top = 24
      Width = 35
      Height = 13
      Caption = #1057#1074#1099#1096#1077
    end
    object cxImageSel: TcxImageComboBox
      Left = 168
      Top = 20
      Properties.Items = <
        item
          Description = #1052#1077#1089#1103#1094#1077#1074
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #1056#1091#1073#1083#1077#1081
          Value = 1
        end>
      TabOrder = 0
      Width = 73
    end
    object cxtxtVal: TcxTextEdit
      Left = 114
      Top = 19
      TabOrder = 1
      OnKeyPress = cxtxtValKeyPress
      Width = 48
    end
  end
  object OD_mg: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t '
      'where t.id=:id'
      'and t.mg is not null'
      'order by mg desc'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000060000003A00490044000300000004000000340000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 32
    Top = 304
  end
  object DS_mg: TDataSource
    DataSet = OD_mg
    Top = 304
  end
  object frxDBData1: TfrxDBDataset
    UserName = 'frxDBData1'
    CloseDataSource = False
    DataSet = OD_data
    BCDToCurrency = False
    Left = 64
    Top = 336
  end
  object frxReport1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39440.450885231490000000
    ReportOptions.LastChange = 39440.450885231490000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 336
    Datasets = <
      item
        DataSet = frxDBData1
        DataSetName = 'frxDBData1'
      end
      item
        DataSet = frxDBDatamg
        DataSetName = 'frxDBDatamg'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 420.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 8
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.177180000000000000
        Top = 207.874150000000000000
        Width = 1511.812000000000000000
        DataSet = frxDBData1
        DataSetName = 'frxDBData1'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 70.000000000000000000
          Top = 0.102350000000001300
          Width = 216.988250000000000000
          Height = 12.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData1."FIO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 289.000000000000000000
          Top = 0.102350000000001300
          Width = 117.315090000000000000
          Height = 12.897650000000000000
          DataField = 'NAME'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData1."NAME"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 407.500000000000000000
          Top = 0.102350000000001300
          Width = 51.133890000000000000
          Height = 12.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData1."ND"]-[frxDBData1."KW"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 460.000000000000000000
          Top = 0.102350000000001300
          Width = 49.370130000000000000
          Height = 12.897650000000000000
          DataField = 'KPR'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData1."KPR"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 512.500000000000000000
          Top = 0.102350000000001300
          Width = 42.370130000000000000
          Height = 12.897650000000000000
          DataField = 'KI'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData1."KI"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 558.500000000000000000
          Top = 0.102350000000001300
          Width = 34.260360000000000000
          Height = 12.897650000000000000
          DataField = 'LG_IDS'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData1."LG_IDS"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 599.500000000000000000
          Top = 0.102350000000001300
          Width = 43.870130000000000000
          Height = 12.897650000000000000
          DataField = 'OPL'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."OPL"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 648.000000000000000000
          Top = 0.102350000000001300
          Width = 62.870130000000000000
          Height = 12.897650000000000000
          DataField = 'SGKU'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."SGKU"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 715.500000000000000000
          Top = 0.102350000000001300
          Width = 49.370130000000000000
          Height = 12.897650000000000000
          DataField = 'PLDOP'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."PLDOP"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 768.000000000000000000
          Top = 0.102350000000001300
          Width = 43.870130000000000000
          Height = 12.897650000000000000
          DataField = 'DOPPL'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."DOPPL"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 818.000000000000000000
          Top = 0.102350000000001300
          Width = 48.870130000000000000
          Height = 12.897650000000000000
          DataField = 'EKSUB1'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."EKSUB1"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 870.500000000000000000
          Top = 0.102350000000001300
          Width = 51.370130000000000000
          Height = 12.897650000000000000
          DataField = 'EKSUB2'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."EKSUB2"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 926.500000000000000000
          Top = 0.102350000000001300
          Width = 48.370130000000000000
          Height = 12.897650000000000000
          DataField = 'SUBS_COR'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."SUBS_COR"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 978.500000000000000000
          Top = 0.102350000000001300
          Width = 80.622140000000000000
          Height = 12.897650000000000000
          DataField = 'SUB_DATA'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData1."SUB_DATA"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 1066.000000000000000000
          Top = 0.102350000000001300
          Width = 58.370130000000000000
          Height = 12.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."DOLG"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 1128.000000000000000000
          Top = 0.102350000000001300
          Width = 51.870130000000000000
          Height = 12.897650000000000000
          DataField = 'NACH'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."NACH"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 1182.500000000000000000
          Top = 0.102350000000001300
          Width = 47.870130000000000000
          Height = 12.897650000000000000
          DataField = 'SUBS'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."SUBS"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 1236.500000000000000000
          Top = 0.102350000000001300
          Width = 48.370130000000000000
          Height = 12.897650000000000000
          DataField = 'SUBS_EL'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."SUBS_EL"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 1291.500000000000000000
          Top = 0.102350000000001300
          Width = 40.370130000000000000
          Height = 12.897650000000000000
          DataField = 'EL'
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData1."EL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 2.500000000000000000
          Top = 0.102350000000001300
          Width = 66.488250000000000000
          Height = 12.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData1."LSK"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 46.677180000000000000
        Top = 64.252010000000000000
        Width = 1511.812000000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 70.500000000000000000
          Top = 16.747990000000020000
          Width = 216.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 288.000000000000000000
          Top = 16.747990000000020000
          Width = 169.815090000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 460.500000000000000000
          Top = 16.747990000000020000
          Width = 46.370130000000000000
          Height = 27.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1078#1080'-'
            #1074#1072#1102#1097#1080#1093)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 559.000000000000000000
          Top = 16.747990000000020000
          Width = 38.760360000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1051#1100#1075#1086#1090#1099)
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 600.000000000000000000
          Top = 16.747990000000020000
          Width = 43.870130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1073#1097'.'#1087#1083'.')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 648.500000000000000000
          Top = 16.747990000000020000
          Width = 62.870130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1046#1050#1059)
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 716.500000000000000000
          Top = 16.747990000000020000
          Width = 49.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1086#1087'.'#1087#1083'.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 768.500000000000000000
          Top = 16.747990000000020000
          Width = 43.870130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1059#1074#1077#1083'.'#1087#1083'.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 818.500000000000000000
          Top = 16.747990000000020000
          Width = 48.870130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1086#1074'.'#1076#1086#1093'.')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 871.000000000000000000
          Top = 16.747990000000020000
          Width = 51.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1044#1091#1096'.'#1076#1086#1093'.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 927.000000000000000000
          Top = 16.747990000000020000
          Width = 48.370130000000000000
          Height = 26.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1088#1088'.'
            #1089#1091#1073#1089#1080#1076'.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 979.000000000000000000
          Top = 16.747990000000020000
          Width = 80.622140000000000000
          Height = 26.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '
            #1086#1082#1086#1085#1095#1072#1085#1080#1103)
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 1066.500000000000000000
          Top = 16.747990000000020000
          Width = 54.870130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1086#1083#1075)
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 1122.500000000000000000
          Top = 16.747990000000020000
          Width = 57.870130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1053#1072#1095#1080#1089#1083#1077#1085#1086)
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 1183.000000000000000000
          Top = 16.747990000000020000
          Width = 53.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1091#1073#1089#1080#1076#1080#1103)
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 1237.000000000000000000
          Top = 16.747990000000020000
          Width = 48.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1073#1089'.'#1101#1083'.')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1292.000000000000000000
          Top = 16.747990000000020000
          Width = 54.870130000000000000
          Height = 26.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1069#1083'.'#1101#1085'.'#1076#1083#1103' '#1089#1091#1073#1089'.')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 16.747990000000020000
          Width = 66.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1051'/'#1057)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 509.500000000000000000
          Top = 16.747990000000020000
          Width = 45.870130000000000000
          Height = 27.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1051#1100#1075#1086#1090#1085#1080'-'
            #1082#1086#1074)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 1.704700000000003000
          Width = 234.988250000000000000
          Height = 12.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1056#1069#1059':[frxDBData1."REU"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 45.747990000000020000
          Width = 1348.500000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1511.812000000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 289.661875000000000000
          Top = 1.889765000000001000
          Width = 806.488250000000000000
          Height = 14.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1100#1079#1091#1102#1097#1080#1093#1089#1103' '#1089#1091#1073#1089#1080#1076#1080#1077#1081' '#1087#1086' '#1051'/'#1057' '#1079#1072' [frxDBDatamg."MG1"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 1266.000000000000000000
          Top = 1.602350000000001000
          Width = 242.988250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1053#1072#1087#1077#1095#1072#1090#1072#1085#1086': [<Date>]  [<Time>]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.775510000000000000
        Top = 170.078850000000000000
        Width = 1511.812000000000000000
        Condition = 'frxDBData1."REU"'
        StartNewPage = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.066790000000000000
        Top = 245.669450000000000000
        Width = 1511.812000000000000000
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 2.169139999999999000
          Width = 230.988250000000000000
          Height = 11.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' '#1056#1069#1059' [frxDBData1."REU"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 1241.000000000000000000
          Top = 2.669139999999999000
          Width = 47.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."SUBS">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 1293.500000000000000000
          Top = 2.669139999999999000
          Width = 48.370130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."SUBS_EL">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.500000000000000000
          Top = 0.169139999999998700
          Width = 1348.500000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 1182.000000000000000000
          Top = 2.448669999999993000
          Width = 53.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."SUBS">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 1126.000000000000000000
          Top = 2.448669999999993000
          Width = 53.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."NACH">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 1066.500000000000000000
          Top = 2.448669999999993000
          Width = 53.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."DOLG">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.255720000000000000
        Top = 321.260050000000000000
        Width = 1511.812000000000000000
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 2.358069999999998000
          Width = 230.988250000000000000
          Height = 11.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' '#1086#1090#1095#1105#1090#1091)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 1241.000000000000000000
          Top = 2.858069999999998000
          Width = 47.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."SUBS">,MasterData1)]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 1293.500000000000000000
          Top = 2.858069999999998000
          Width = 48.370130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."SUBS_EL">,MasterData1)]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 1182.000000000000000000
          Top = 2.637600000000020000
          Width = 53.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."SUBS">,MasterData1)]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 1126.000000000000000000
          Top = 2.637600000000020000
          Width = 53.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."NACH">,MasterData1)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 1066.500000000000000000
          Top = 2.637600000000020000
          Width = 53.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBData1."DOLG">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 1511.812000000000000000
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 1441.000000000000000000
          Top = 1.062770000000000000
          Width = 68.988250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#] '#1080#1079' [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBData2: TfrxDBDataset
    UserName = 'frxDBData2'
    CloseDataSource = False
    DataSet = OD_data
    BCDToCurrency = False
    Left = 64
    Top = 368
  end
  object frxReport2: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39440.450885231490000000
    ReportOptions.LastChange = 39440.450885231490000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 368
    Datasets = <
      item
        DataSet = frxDBData2
        DataSetName = 'frxDBData2'
      end
      item
        DataSet = frxDBDatamg
        DataSetName = 'frxDBDatamg'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.177180000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBData2
        DataSetName = 'frxDBData2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 71.000000000000000000
          Top = 1.102350000000001000
          Width = 117.315090000000000000
          Height = 12.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData2."NAME"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 190.500000000000000000
          Top = 1.102350000000001000
          Width = 51.133890000000000000
          Height = 12.897650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData2."ND"]-[frxDBData2."KW"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 242.000000000000000000
          Top = 1.102350000000001000
          Width = 56.870130000000000000
          Height = 12.897650000000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData2."SUBS"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.102350000000001000
          Width = 66.488250000000000000
          Height = 12.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData2."LSK"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 304.000000000000000000
          Top = 1.243969999999990000
          Width = 56.870130000000000000
          Height = 12.897650000000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData2."SUBS_EL"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 47.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 71.000000000000000000
          Top = 15.247990000000000000
          Width = 169.315090000000000000
          Height = 18.897650000000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 246.500000000000000000
          Top = 15.247990000000000000
          Width = 55.370130000000000000
          Height = 27.397650000000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1073#1089#1080#1076#1080#1103)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.500000000000000000
          Top = 15.247990000000000000
          Width = 66.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1051'/'#1057)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 304.500000000000000000
          Top = 15.247990000000000000
          Width = 55.370130000000000000
          Height = 27.397650000000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1073#1089#1080#1076#1080#1103
            #1089#1074#1077#1090)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.500000000000000000
          Top = 0.425169999999994300
          Width = 234.988250000000000000
          Height = 12.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1056#1069#1059':[frxDBData2."REU"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 45.247990000000000000
          Width = 365.500000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 2.661875000000000000
          Top = 0.889765000000000600
          Width = 508.988250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1100#1079#1091#1102#1097#1080#1093#1089#1103' '#1089#1091#1073#1089#1080#1076#1080#1077#1081' '#1087#1086' '#1051'/'#1057' '#1074' '#1086#1073#1097#1077#1078#1080#1090#1080#1103#1093' '#1087#1086' '#1069#1083'.'#1069#1085'. '#1079#1072' [' +
              'frxDBDatamg."MG1"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 513.000000000000000000
          Top = 1.102350000000001000
          Width = 200.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1053#1072#1087#1077#1095#1072#1090#1072#1085#1086': [<Date>]  [<Time>]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.775510000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBData2."REU"'
        StartNewPage = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.066790000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 2.169139999999999000
          Width = 230.988250000000000000
          Height = 11.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' '#1056#1069#1059' [frxDBData2."REU"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.500000000000000000
          Top = 0.169139999999998700
          Width = 365.500000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 242.000000000000000000
          Top = 0.948669999999992800
          Width = 57.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData2."SUBS">,MasterData1)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 304.000000000000000000
          Top = 0.948669999999992800
          Width = 57.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData2."SUBS_EL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.255720000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.358069999999998000
          Width = 230.988250000000000000
          Height = 11.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' '#1086#1090#1095#1105#1090#1091)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 242.000000000000000000
          Top = 0.858069999999998000
          Width = 57.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData2."SUBS">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 304.000000000000000000
          Top = 0.858069999999998000
          Width = 57.870130000000000000
          Height = 13.397650000000000000
          DataSet = frxDBData1
          DataSetName = 'frxDBData1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData2."SUBS_EL">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 646.000000000000000000
          Top = 1.062770000000000000
          Width = 68.988250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#] '#1080#1079' [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 128
    Top = 336
  end
  object frxDBData3: TfrxDBDataset
    UserName = 'frxDBData3'
    CloseDataSource = False
    DataSet = OD_data
    BCDToCurrency = False
    Left = 64
    Top = 400
  end
  object frxReport3: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39442.657051678200000000
    ReportOptions.LastChange = 39444.430189884290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 400
    Datasets = <
      item
        DataSet = frxDBData3
        DataSetName = 'frxDBData3'
      end
      item
        DataSet = frxDBDatamg
        DataSetName = 'frxDBDatamg'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 420.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 8
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.177180000000000000
        Top = 192.756030000000000000
        Width = 1511.812000000000000000
        DataSet = frxDBData3
        DataSetName = 'frxDBData3'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.287677330000008000
          Width = 23.089359450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBData3."KUL"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 25.429421970000000000
          Top = 1.287677330000008000
          Width = 127.957360640000000000
          Height = 12.951076030000000000
          DataField = 'NAME'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData3."NAME"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 194.583571850000000000
          Top = 1.287677330000008000
          Width = 52.969836030000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."OPL"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 249.773767961966000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'ITR'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."ITR"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 297.461070350356000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'ITRI'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."ITRI"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 345.148372738746000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IDER'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IDER"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 392.835675127135000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IDERI'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IDERI"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 440.522977515525000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IOT'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IOT"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 488.210279903915000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IOTIP'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IOTIP"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 535.897582292304000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IWOD'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IWOD"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 583.584884680694000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IWODIZ'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IWODIZ"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 631.272187069083000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IKAN'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IKAN"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 678.959489457473000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IKANIZ'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IKANIZ"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 726.646791845863000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IGW'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IGW"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 774.334094234252000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IGWIZ'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IGWIZ"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 822.021396622642000000
          Top = 1.287677331929046000
          Width = 46.200121451850900000
          Height = 12.951076025192700000
          DataField = 'IO'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 869.396001400000000000
          Top = 1.287677330000008000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataField = 'ICS'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."ICS"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 917.083303790000000000
          Top = 1.287677330000008000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataField = 'IMUSOR'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IMUSOR"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 964.770606180000000000
          Top = 1.287677330000008000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataField = 'IG'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IG"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 1012.457908560000000000
          Top = 1.287677330000008000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataField = 'IDZA'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IDZA"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 1060.145210950000000000
          Top = 1.287677330000008000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataField = 'IDZAI'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."IDZAI"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 1109.207118120000000000
          Top = 1.287677330000008000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataField = 'ITOG'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData3."ITOG"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 154.399163185187000000
          Top = 1.287677331929046000
          Width = 37.520209112173300000
          Height = 12.951076025192700000
          DataField = 'ND'
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData3."ND"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 29.177180000000000000
        Top = 64.252010000000000000
        Width = 1511.812000000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 1.429421970000000000
          Top = 0.399429749999995900
          Width = 190.957360640000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 194.083571850000000000
          Top = 0.795181370000008800
          Width = 52.969836030000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1097'.'#1087#1083'.')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 249.273767960000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1090'/'#1089#1086#1076)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 296.961070350000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1090'/'#1089#1086#1076' '#1089#1074'.'#1085)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 344.648372740000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1083#1080#1092#1090)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 392.335675130000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1083#1080#1092#1090' '#1089#1074'.'#1085)
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 440.022977520000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090#1086#1087'.')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 487.710279900000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090#1086#1087'. '#1089#1074'.'#1085)
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 535.397582290000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1093'.'#1074#1086#1076#1072)
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 583.084884680000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1093'.'#1074#1086#1076#1072' '#1089#1074'.'#1085)
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 630.772187070000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1072#1085#1072#1083#1080#1079'.')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 678.459489460000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1072#1085#1072#1083#1080#1079'.'#1089#1074'.'#1085)
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 726.146791850000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1075'.'#1074#1086#1076#1072)
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 773.834094230000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1075'.'#1074#1086#1076#1072' '#1089#1074'.'#1085)
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 821.521396620000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1072#1089#1089#1077#1085#1080#1079'.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 868.896001400000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1085#1072#1081#1084)
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 916.583303790000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1074#1099#1074'.'#1084#1091#1089'.')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 964.270606180000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1101#1083'.'#1101#1085#1077#1088#1075'.')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1011.957908560000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1076#1077#1088#1072#1090'.')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 1059.645210950000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #1076#1077#1088#1072#1090'. '#1089#1074'.'#1085)
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 1108.707118120000000000
          Top = 0.795181370000008800
          Width = 46.200121450000000000
          Height = 25.258244660000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 27.602350000000000000
          Width = 1161.500000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.677180000000000000
        Top = 313.700990000000000000
        Width = 1511.812000000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 2.803029999999978000
          Width = 190.589359450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 194.583571850000000000
          Top = 2.803029999999978000
          Width = 52.969836030000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."OPL">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 249.773767960000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."ITR">,MasterData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 297.461070350000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."ITRI">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 345.148372740000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IDER">,MasterData1)]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 392.835675130000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IDERI">,MasterData1)]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 440.522977520000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IOT">,MasterData1)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 488.210279900000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IOTIP">,MasterData1)]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 535.897582290000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IWOD">,MasterData1)]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 583.584884680000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IWODIZ">,MasterData1)]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 631.272187070000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IKAN">,MasterData1)]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 678.959489460000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IKANIZ">,MasterData1)]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 726.646791850000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IGW">,MasterData1)]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 774.334094230000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IGWIZ">,MasterData1)]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 822.021396620000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IO">,MasterData1)]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 869.396001400000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."ICS">,MasterData1)]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 917.083303790000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IMUSOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 964.770606180000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IG">,MasterData1)]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 1012.457908560000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IDZA">,MasterData1)]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 1060.145210950000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IDZAI">,MasterData1)]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 1109.207118120000000000
          Top = 2.803029999999978000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."ITOG">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 0.500000000000000000
          Top = 0.803029999999978400
          Width = 1161.500000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1511.812000000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 9.000000000000000000
          Top = 1.102350000000001000
          Width = 1144.988250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1085#1072#1095#1080#1089#1083#1077#1085#1085#1086#1081' '#1089#1082#1080#1076#1082#1080' '#1087#1086' '#1074#1080#1076#1072#1084' '#1091#1089#1083#1091#1075' '#1079#1072' [frxDBDatamg."MG1' +
              '"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 1308.000000000000000000
          Top = 1.102350000000001000
          Width = 200.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1053#1072#1087#1077#1095#1072#1090#1072#1085#1086': [<Date>]  [<Time>]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.677180000000000000
        Top = 355.275820000000000000
        Width = 1511.812000000000000000
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 1439.000000000000000000
          Top = 0.373839999999972900
          Width = 68.988250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#] '#1080#1079' [TotalPages#]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.677180000000000000
        Top = 154.960730000000000000
        Width = 1511.812000000000000000
        Condition = 'frxDBData3."REU"'
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 2.500000000000000000
          Top = 1.539269999999988000
          Width = 127.957360640000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1056#1069#1059':[frxDBData3."REU"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 1511.812000000000000000
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 3.500000000000000000
          Top = 2.448669999999993000
          Width = 187.457360640000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' '#1056#1069#1059':[frxDBData3."REU"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 194.500000000000000000
          Top = 2.448669999999993000
          Width = 52.969836030000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."OPL">,MasterData1)]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 249.690196110000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."ITR">,MasterData1)]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 297.377498500000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."ITRI">,MasterData1)]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 345.064800890000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IDER">,MasterData1)]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 392.752103280000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IDERI">,MasterData1)]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 440.439405670000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IOT">,MasterData1)]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 488.126708050000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IOTIP">,MasterData1)]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 535.814010440000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IWOD">,MasterData1)]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 583.501312830000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IWODIZ">,MasterData1)]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 631.188615220000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IKAN">,MasterData1)]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 678.875917610000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IKANIZ">,MasterData1)]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 726.563220000000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IGW">,MasterData1)]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 774.250522380000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IGWIZ">,MasterData1)]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 821.937824770000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IO">,MasterData1)]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 869.312429550000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."ICS">,MasterData1)]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 916.999731940000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IMUSOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 964.687034330000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IG">,MasterData1)]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 1012.374336710000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IDZA">,MasterData1)]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 1060.061639100000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."IDZAI">,MasterData1)]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 1109.123546270000000000
          Top = 2.448669999999993000
          Width = 46.200121450000000000
          Height = 12.951076030000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData3."ITOG">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 0.500000000000000000
          Top = 1.448669999999993000
          Width = 1161.500000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDatamg: TfrxDBDataset
    UserName = 'frxDBDatamg'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MG=MG'
      'MG1=MG1')
    DataSet = OD_mg
    BCDToCurrency = False
    Left = 64
    Top = 304
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBData7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NM='#1059#1089#1083#1091#1075#1072
      'ORG_NAME='#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      'SUMMA=_'
      'ADR='#1040#1076#1088#1077#1089
      'LG_NAME='#1051#1100#1075#1086#1090#1072
      'FIO='#1051#1100#1075#1086#1090#1085#1080#1082)
    DataSet = OD_data
    BCDToCurrency = False
    Left = 64
    Top = 432
  end
  object frxReport7: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39442.657051678200000000
    ReportOptions.LastChange = 39493.409684236100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 432
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBData7'
      end
      item
        DataSet = frxDBDatamg
        DataSetName = 'frxDBDatamg'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DBCross1: TfrxDBCrossView
        AllowVectorExport = True
        Left = 2.881880000000000000
        Top = 89.031540000000000000
        Width = 240.000000000000000000
        Height = 130.000000000000000000
        DownThenAcross = False
        MaxWidth = 500
        RowLevels = 3
        CellFields.Strings = (
          '_')
        ColumnFields.Strings = (
          #1059#1089#1083#1091#1075#1072)
        DataSet = frxDBDataset1
        DataSetName = 'frxDBData7'
        RowFields.Strings = (
          #1051#1100#1075#1086#1090#1072
          #1040#1076#1088#1077#1089
          #1051#1100#1075#1086#1090#1085#1080#1082)
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
          6C6C6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F
          724578706F72743D225472756522204C6566743D223135302C38383138382220
          546F703D223134352C3033313534222057696474683D22343022204865696768
          743D22313822205265737472696374696F6E733D2232342220416C6C6F774578
          7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
          446563696D616C536570617261746F723D222C2220446973706C6179466F726D
          61742E466F726D61745374723D2225322E32662220446973706C6179466F726D
          61742E4B696E643D22666B4E756D657269632220466F6E742E43686172736574
          3D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
          222D392220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C
          653D223022204672616D652E5479703D223135222046696C6C2E4261636B436F
          6C6F723D2231363737373231352220476170583D22332220476170593D223322
          2048416C69676E3D22686152696768742220506172656E74466F6E743D224661
          6C7365222056416C69676E3D22766143656E7465722220546578743D22302C30
          30222F3E3C546672784D656D6F5669657720416C6C6F77566563746F72457870
          6F72743D225472756522204C6566743D223136302220546F703D223538222057
          696474683D22343022204865696768743D22323222205265737472696374696F
          6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
          20446973706C6179466F726D61742E446563696D616C536570617261746F723D
          222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E
          32662220446973706C6179466F726D61742E4B696E643D22666B4E756D657269
          632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
          302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
          7269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22
          3135222046696C6C2E4261636B436F6C6F723D22313637373732313522204761
          70583D22332220476170593D2233222048416C69676E3D226861526967687422
          20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
          6E7465722220546578743D22302C3030222F3E3C546672784D656D6F56696577
          20416C6C6F77566563746F724578706F72743D225472756522204C6566743D22
          3135302C38383138382220546F703D223136332C303331353422205769647468
          3D22343022204865696768743D22313822205265737472696374696F6E733D22
          32342220416C6C6F7745787072657373696F6E733D2246616C73652220446973
          706C6179466F726D61742E446563696D616C536570617261746F723D222C2220
          446973706C6179466F726D61742E466F726D61745374723D2225322E32662220
          446973706C6179466F726D61742E4B696E643D22666B4E756D65726963222046
          6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
          6F6E742E4865696768743D222D392220466F6E742E4E616D653D22417269616C
          2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
          46696C6C2E4261636B436F6C6F723D2231363737373231352220476170583D22
          332220476170593D2233222048416C69676E3D22686152696768742220506172
          656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
          2220546578743D22302C3030222F3E3C546672784D656D6F5669657720416C6C
          6F77566563746F724578706F72743D225472756522204C6566743D223135302C
          38383138382220546F703D223138312C3033313534222057696474683D223430
          22204865696768743D22313822205265737472696374696F6E733D2232342220
          416C6C6F7745787072657373696F6E733D2246616C73652220446973706C6179
          466F726D61742E446563696D616C536570617261746F723D222C222044697370
          6C6179466F726D61742E466F726D61745374723D2225322E3266222044697370
          6C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E
          436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
          4865696768743D222D392220466F6E742E4E616D653D22417269616C2220466F
          6E742E5374796C653D223022204672616D652E5479703D223135222046696C6C
          2E4261636B436F6C6F723D2231363737373231352220476170583D2233222047
          6170593D2233222048416C69676E3D22686152696768742220506172656E7446
          6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
          78743D22302C3030222F3E3C546672784D656D6F5669657720416C6C6F775665
          63746F724578706F72743D225472756522204C6566743D223139302C38383138
          382220546F703D223134352C3033313534222057696474683D22333222204865
          696768743D22313822205265737472696374696F6E733D2232342220416C6C6F
          7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
          743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
          3D222D392220466F6E742E4E616D653D22417269616C2220466F6E742E537479
          6C653D223022204672616D652E5479703D2231352220476170583D2233222047
          6170593D2233222048416C69676E3D22686152696768742220506172656E7446
          6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
          78743D22302C3030222F3E3C546672784D656D6F5669657720416C6C6F775665
          63746F724578706F72743D225472756522204C6566743D223230302220546F70
          3D223538222057696474683D22333222204865696768743D2232322220526573
          7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
          2246616C736522204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D2268615269676874222056416C69676E
          3D22766143656E7465722220546578743D22302C3030222F3E3C546672784D65
          6D6F5669657720416C6C6F77566563746F724578706F72743D22547275652220
          4C6566743D223139302C38383138382220546F703D223136332C303331353422
          2057696474683D22333222204865696768743D22313822205265737472696374
          696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
          652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
          302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
          7269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22
          31352220476170583D22332220476170593D2233222048416C69676E3D226861
          52696768742220506172656E74466F6E743D2246616C7365222056416C69676E
          3D22766143656E7465722220546578743D22302C3030222F3E3C546672784D65
          6D6F5669657720416C6C6F77566563746F724578706F72743D22547275652220
          4C6566743D223139302C38383138382220546F703D223138312C303331353422
          2057696474683D22333222204865696768743D22313822205265737472696374
          696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
          652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
          302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
          7269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22
          31352220476170583D22332220476170593D2233222048416C69676E3D226861
          52696768742220506172656E74466F6E743D2246616C7365222056416C69676E
          3D22766143656E7465722220546578743D22302C3030222F3E3C2F63656C6C6D
          656D6F733E3C63656C6C6865616465726D656D6F733E3C546672784D656D6F56
          69657720416C6C6F77566563746F724578706F72743D225472756522204C6566
          743D223332352220546F703D223434222057696474683D223438222048656967
          68743D22323222205265737472696374696F6E733D22382220416C6C6F774578
          7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
          312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
          31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
          3D223022204672616D652E5479703D223135222046696C6C2E4261636B436F6C
          6F723D2231363737373231352220476170583D22332220476170593D22332220
          506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
          7465722220546578743D225F222F3E3C546672784D656D6F5669657720416C6C
          6F77566563746F724578706F72743D225472756522204C6566743D2233323522
          20546F703D223636222057696474683D22343822204865696768743D22323222
          205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
          6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
          2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
          742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
          616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D22313637
          37373231352220476170583D22332220476170593D22332220506172656E7446
          6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
          78743D225F222F3E3C546672784D656D6F5669657720416C6C6F77566563746F
          724578706F72743D225472756522204C6566743D22302220546F703D22302220
          57696474683D223022204865696768743D223022205265737472696374696F6E
          733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
          72616D652E5479703D2231352220476170583D22332220476170593D22332220
          56416C69676E3D22766143656E7465722220546578743D225F222F3E3C546672
          784D656D6F5669657720416C6C6F77566563746F724578706F72743D22547275
          6522204C6566743D22302220546F703D2230222057696474683D223022204865
          696768743D223022205265737472696374696F6E733D22382220416C6C6F7745
          787072657373696F6E733D2246616C736522204672616D652E5479703D223135
          2220476170583D22332220476170593D2233222056416C69676E3D2276614365
          6E7465722220546578743D225F222F3E3C2F63656C6C6865616465726D656D6F
          733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F5669657720546167
          3D223130302220416C6C6F77566563746F724578706F72743D22547275652220
          4C6566743D223135302C38383138382220546F703D223132372C303331353422
          2057696474683D22343022204865696768743D22313822205265737472696374
          696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
          652220446973706C6179466F726D61742E446563696D616C536570617261746F
          723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225
          322E32662220446973706C6179466F726D61742E4B696E643D22666B4E756D65
          7269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F72
          3D22302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D
          22417269616C2220466F6E742E5374796C653D223022204672616D652E547970
          3D223135222046696C6C2E4261636B436F6C6F723D2231363737373231352220
          476170583D22332220476170593D2233222048416C69676E3D22686143656E74
          65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
          6143656E7465722220546578743D22D0B0D0B0D0B2D0BFD0B2D0BFD0B0222F3E
          3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E
          3C546672784D656D6F56696577205461673D223330302220416C6C6F77566563
          746F724578706F72743D225472756522204C6566743D223139302C3838313838
          2220546F703D223132372C3033313534222057696474683D2233322220486569
          6768743D22313822205265737472696374696F6E733D22382220416C6C6F7745
          787072657373696F6E733D2246616C73652220446973706C6179466F726D6174
          2E446563696D616C536570617261746F723D222C2220446973706C6179466F72
          6D61742E466F726D61745374723D2225322E32662220446973706C6179466F72
          6D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365
          743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
          3D222D392220466F6E742E4E616D653D22417269616C2220466F6E742E537479
          6C653D223122204672616D652E5479703D223135222046696C6C2E4261636B43
          6F6C6F723D2231363737373231352220476170583D22332220476170593D2233
          222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
          46616C7365222056416C69676E3D22766143656E7465722220546578743D22D0
          98D182D0BED0B3D0BE222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C
          636F726E65726D656D6F733E3C546672784D656D6F5669657720416C6C6F7756
          6563746F724578706F72743D225472756522204C6566743D2232322C38383138
          382220546F703D223130392C3033313534222057696474683D22313238222048
          65696768743D22313822205265737472696374696F6E733D22382220416C6C6F
          7745787072657373696F6E733D2246616C73652220446973706C6179466F726D
          61742E446563696D616C536570617261746F723D222C2220446973706C617946
          6F726D61742E466F726D61745374723D2225322E32662220446973706C617946
          6F726D61742E4B696E643D22666B4E756D657269632220466F6E742E43686172
          7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
          68743D222D392220466F6E742E4E616D653D22417269616C2220466F6E742E53
          74796C653D223022204672616D652E5479703D223135222046696C6C2E426163
          6B436F6C6F723D2231363737373231352220476170583D22332220476170593D
          2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
          3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
          225F222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578
          706F72743D225472756522204C6566743D223135302C38383138382220546F70
          3D223130392C3033313534222057696474683D22373222204865696768743D22
          313822205265737472696374696F6E733D22382220416C6C6F77457870726573
          73696F6E733D2246616C73652220446973706C6179466F726D61742E44656369
          6D616C536570617261746F723D222C2220446973706C6179466F726D61742E46
          6F726D61745374723D2225322E32662220446973706C6179466F726D61742E4B
          696E643D22666B4E756D657269632220466F6E742E436861727365743D223122
          20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3922
          20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230
          22204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D
          2231363737373231352220476170583D22332220476170593D2233222048416C
          69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
          222056416C69676E3D22766143656E7465722220546578743D22D0A3D181D0BB
          D183D0B3D0B0222F3E3C546672784D656D6F5669657720416C6C6F7756656374
          6F724578706F72743D225472756522204C6566743D223332352220546F703D22
          3232222057696474683D22343822204865696768743D22323222205265737472
          696374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F
          7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
          743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
          3D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374
          796C653D223022204672616D652E5479703D223135222046696C6C2E4261636B
          436F6C6F723D2231363737373231352220476170583D22332220476170593D22
          33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
          2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
          222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F
          72743D225472756522204C6566743D2232322C38383138382220546F703D2231
          32372C3033313534222057696474683D22343022204865696768743D22313822
          205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
          6E733D2246616C73652220446973706C6179466F726D61742E446563696D616C
          536570617261746F723D222C2220446973706C6179466F726D61742E466F726D
          61745374723D2225322E32662220466F6E742E436861727365743D2231222046
          6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D39222046
          6F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22302220
          4672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D2231
          363737373231352220476170583D22332220476170593D2233222048416C6967
          6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
          56416C69676E3D22766143656E7465722220546578743D22D09BD18CD0B3D0BE
          D182D0B0222F3E3C546672784D656D6F5669657720416C6C6F77566563746F72
          4578706F72743D225472756522204C6566743D2236322C38383138382220546F
          703D223132372C3033313534222057696474683D22333822204865696768743D
          22313822205265737472696374696F6E733D22382220416C6C6F774578707265
          7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
          466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D392220
          466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022
          204672616D652E5479703D2231352220476170583D22332220476170593D2233
          2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
          656E7465722220546578743D22D090D0B4D180D0B5D181222F3E3C546672784D
          656D6F5669657720416C6C6F77566563746F724578706F72743D225472756522
          204C6566743D223130302C38383138382220546F703D223132372C3033313534
          222057696474683D22353022204865696768743D223138222052657374726963
          74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
          652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
          302220466F6E742E4865696768743D222D392220466F6E742E4E616D653D2241
          7269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22
          31352220476170583D22332220476170593D22332220506172656E74466F6E74
          3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
          22D09BD18CD0B3D0BED182D0BDD0B8D0BA222F3E3C2F636F726E65726D656D6F
          733E3C726F776D656D6F733E3C546672784D656D6F56696577205461673D2232
          30302220416C6C6F77566563746F724578706F72743D225472756522204C6566
          743D2232322C38383138382220546F703D223134352C30333135342220576964
          74683D22343022204865696768743D22333622205265737472696374696F6E73
          3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222044
          6973706C6179466F726D61742E446563696D616C536570617261746F723D222C
          2220446973706C6179466F726D61742E466F726D61745374723D2225322E3266
          2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
          2220466F6E742E4865696768743D222D392220466F6E742E4E616D653D224172
          69616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231
          35222046696C6C2E4261636B436F6C6F723D2231363737373231352220476170
          583D22332220476170593D22332220506172656E74466F6E743D2246616C7365
          2220576F7264577261703D2246616C7365222056416C69676E3D22766143656E
          7465722220546578743D22222F3E3C546672784D656D6F5669657720416C6C6F
          77566563746F724578706F72743D225472756522204C6566743D2236322C3838
          3138382220546F703D223134352C3033313534222057696474683D2233382220
          4865696768743D22313822205265737472696374696F6E733D2232342220416C
          6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
          7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
          68743D222D392220466F6E742E4E616D653D22417269616C2220466F6E742E53
          74796C653D223022204672616D652E5479703D2231352220476170583D223322
          20476170593D22332220506172656E74466F6E743D2246616C7365222056416C
          69676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D
          6F5669657720416C6C6F77566563746F724578706F72743D225472756522204C
          6566743D223130302C38383138382220546F703D223134352C30333135342220
          57696474683D22353022204865696768743D2231382220526573747269637469
          6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
          2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
          2220466F6E742E4865696768743D222D392220466F6E742E4E616D653D224172
          69616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231
          352220476170583D22332220476170593D22332220506172656E74466F6E743D
          2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
          222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C5466
          72784D656D6F56696577205461673D223430302220416C6C6F77566563746F72
          4578706F72743D225472756522204C6566743D2232322C38383138382220546F
          703D223138312C3033313534222057696474683D223132382220486569676874
          3D22313822205265737472696374696F6E733D22382220416C6C6F7745787072
          657373696F6E733D2246616C73652220446973706C6179466F726D61742E4465
          63696D616C536570617261746F723D222C2220446973706C6179466F726D6174
          2E466F726D61745374723D2225322E32662220466F6E742E436861727365743D
          22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D22
          2D392220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
          3D223122204672616D652E5479703D223135222046696C6C2E4261636B436F6C
          6F723D2231363737373231352220476170583D22332220476170593D22332220
          48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
          6C7365222056416C69676E3D22766143656E7465722220546578743D22D098D1
          82D0BED0B3D0BE222F3E3C546672784D656D6F5669657720416C6C6F77566563
          746F724578706F72743D225472756522204C6566743D2236322C383831383822
          20546F703D223136332C3033313534222057696474683D223838222048656967
          68743D22313822205265737472696374696F6E733D22382220416C6C6F774578
          7072657373696F6E733D2246616C73652220446973706C6179466F726D61742E
          446563696D616C536570617261746F723D222C2220466F6E742E436861727365
          743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
          3D222D392220466F6E742E4E616D653D22417269616C2220466F6E742E537479
          6C653D223122204672616D652E5479703D2231352220476170583D2233222047
          6170593D2233222048416C69676E3D22686143656E7465722220506172656E74
          466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
          6578743D22D098D182D0BED0B3D0BE222F3E3C546672784D656D6F5669657720
          416C6C6F77566563746F724578706F72743D225472756522204C6566743D2239
          322220546F703D223538222057696474683D22363822204865696768743D2232
          3222205265737472696374696F6E733D2238222056697369626C653D2246616C
          73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
          742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
          742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C22
          20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
          6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
          722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
          43656E7465722220546578743D22546F74616C222F3E3C2F726F77746F74616C
          6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F
          63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20
          302F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D2030
          2F3E3C6974656D20302F3E3C6974656D20322F3E3C2F726F77736F72743E3C2F
          63726F73733E}
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000001000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103': [frxDBData7."'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"]')
          ParentFont = False
        end
      end
    end
  end
  object OD_sprorg: TOracleDataSet
    SQL.Strings = (
      
        'select t.kod, to_char(t.kod)||'#39' '#39'||t.name as name from scott.spr' +
        'org t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000060000004B004F004400010000000000080000004E004100
      4D004500010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 128
    Top = 304
  end
  object DS_sprorg: TDataSource
    DataSet = OD_sprorg
    Left = 96
    Top = 304
  end
  object frxReport10: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39440.450885231490000000
    ReportOptions.LastChange = 39440.450885231490000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 464
    Datasets = <
      item
        DataSet = frxDBDataset10
        DataSetName = 'frxDBData10'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.177180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset10
        DataSetName = 'frxDBData10'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 316.333333330000000000
          Top = 1.102350000000001000
          Width = 117.315090000000000000
          Height = 12.897650000000000000
          DataField = 'FIO'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBData10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData10."FIO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 437.333333330000000000
          Top = 1.102350000000001000
          Width = 38.203463330000000000
          Height = 12.897650000000000000
          DataField = 'CNT_MONTH'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBData10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData10."CNT_MONTH"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 158.000000000000000000
          Top = 1.102350000000001000
          Width = 88.902906669999990000
          Height = 12.897650000000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBData10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData10."STREET_NAME"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 499.333333330000000000
          Top = 1.243969999999990000
          Width = 52.870130000000000000
          Height = 12.897650000000000000
          DataField = 'DOLG'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBData10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBData10."DOLG"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 83.333333330000000000
          Top = 1.012986670000004000
          Width = 70.488250000000000000
          Height = 12.897650000000000000
          DataField = 'LSK'
          DataSet = frxDBDataset10
          DataSetName = 'frxDBData10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData10."LSK"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 1.000000000000000000
          Width = 32.209956670000000000
          Height = 12.897650000000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBData10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData10."ND"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 282.464750000000000000
          Top = 1.000000000000000000
          Width = 32.209956670000000000
          Height = 12.897650000000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBData10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBData10."KW"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.343846660000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 155.000000010000000000
          Top = 1.247990000000001000
          Width = 157.315090000000000000
          Height = 12.230983330000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 84.833333340000000000
          Top = 1.247990000000001000
          Width = 66.488250000000000000
          Height = 12.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1051'/'#1057)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 313.333333330000000000
          Top = 1.081323330000004000
          Width = 119.981756670000000000
          Height = 12.230983330000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 435.333333330000000000
          Top = 1.081323330000004000
          Width = 57.981756670000000000
          Height = 26.897650000000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1103#1094#1077#1074)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 495.333333330000000000
          Top = 1.081323330000004000
          Width = 69.315090000000000000
          Height = 26.897650000000000000
          DataSet = frxDBData2
          DataSetName = 'frxDBData2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1079#1072#1076#1086#1083#1078#1085#1086#1089#1090#1080)
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 2.661875000000000000
          Top = 0.889765000000000600
          Width = 508.988250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1057#1087#1080#1089#1086#1082' '#1079#1072#1076#1086#1083#1078#1085#1080#1082#1086#1074' '#1085#1072'  [frxDBData10."DAT"], '#1089' '#1079#1072#1076#1086#1083#1078#1085#1086#1089#1090#1100#1102' '#1073#1086#1083#1077#1077 +
              ' [txt_]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 513.000000000000000000
          Top = 1.102350000000001000
          Width = 200.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1053#1072#1087#1077#1095#1072#1090#1072#1085#1086': [<Date>]  [<Time>]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 16.255720000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 1.358069999999998000
          Width = 230.988250000000000000
          Height = 14.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' '#1086#1090#1095#1105#1090#1091)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 499.333333330000000000
          Top = 1.448669999999993000
          Width = 52.870130000000000000
          Height = 12.897650000000000000
          DataSet = frxDBDataset10
          DataSetName = 'frxDBData10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBData10."DOLG">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 646.000000000000000000
          Top = 1.062770000000000000
          Width = 68.988250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#] '#1080#1079' [TotalPages#]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBData10."NAME_REU"'
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 5.039269999999988000
          Width = 38.488250000000000000
          Height = 12.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1046#1069#1054':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 49.333333330000000000
          Top = 5.039269999999988000
          Width = 102.488250000000000000
          Height = 12.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBData10."NAME_REU"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxDBData10'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK=LSK'
      'NAME_REU=NAME_REU'
      'STREET_NAME=STREET_NAME'
      'ND=ND'
      'KW=KW'
      'FIO=FIO'
      'CNT_MONTH=CNT_MONTH'
      'DOLG=DOLG'
      'DAT=DAT')
    DataSet = OD_data
    BCDToCurrency = False
    Left = 64
    Top = 464
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 128
    Top = 368
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    FileName = 'C:\TEMP\test1.txt'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PageBreaks = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    OpenAfterExport = False
    DeleteEmptyColumns = True
    Left = 160
    Top = 368
  end
  object OD_typeslist: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.cd, t.name from scott.spr_typeslist t'
      'order by t.npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000005000000040000004900440001000000000004000000430044000100
      00000000080000004E0041004D0045000100000000000A000000430044005F00
      540050000100000000000A00000054004E0041004D004500010000000000}
    Session = DataModule1.OracleSession1
    Left = 224
    Top = 48
    object OD_typeslistNAME: TStringField
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 100
    end
    object OD_typeslistCD: TStringField
      DisplayWidth = 5
      FieldName = 'CD'
      Visible = False
      Size = 32
    end
    object OD_typeslistID: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object DS_typeslist: TDataSource
    DataSet = OD_typeslist
    Left = 256
    Top = 48
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 160
    Top = 304
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' scott.rep_lists.report(:rep_id_, :mg_,'
      '                          :org_,'
      '                          :var_,'
      '                          :cnt_,'
      '                          :proc_,'
      '                          :fname_,'
      '                          :prep_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      0400000008000000080000003A004D0047005F00050000000000000000000000
      1E0000003A0050005200450050005F0052004500460043005500520053004F00
      5200740000000000000000000000100000003A005200450050005F0049004400
      5F000300000000000000000000000A0000003A004F00520047005F0003000000
      00000000000000000A0000003A005600410052005F0003000000000000000000
      00000A0000003A0043004E0054005F000300000000000000000000000C000000
      3A00500052004F0043005F000400000000000000000000000E0000003A004600
      4E0041004D0045005F00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000000A000000530055004D004D00410001000000000006000000
      540058005400010000000000}
    Session = DataModule1.OracleSession1
    Left = 32
    Top = 336
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Top = 336
  end
  object OD_t_org: TOracleDataSet
    SQL.Strings = (
      
        'select o.reu, o.bank_fname||'#39'_'#39'||to_char(sysdate,'#39'MMDD'#39') as bank' +
        '_fname'
      ' from scott.t_org o'
      ' ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000060000005200450055000100000000001400000042004100
      4E004B005F0046004E0041004D004500010000000000}
    LockingMode = lmNone
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 216
    Top = 320
  end
end
