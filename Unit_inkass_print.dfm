object Form_inkass_print: TForm_inkass_print
  Left = 645
  Top = 245
  Width = 380
  Height = 395
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1055#1077#1095#1072#1090#1100' '#1080#1085#1082#1072#1089#1089#1072#1094#1080#1080
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
  object Panel1: TPanel
    Left = 0
    Top = 315
    Width = 364
    Height = 41
    Align = alBottom
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 96
      Top = 16
      Width = 97
      Height = 17
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1086#1090#1074#1072#1083#1103#1102#1097#1080#1077' '#1087#1083#1072#1090#1077#1078' '#1086#1087#1077#1088#1072#1094#1080#1080
      Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 0
    end
    object Button1: TButton
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 288
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 364
    Height = 315
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_ink
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1ITOG
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMMA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PENYA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DAT_INK: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1080#1085#1082'.'
        DataBinding.FieldName = 'DAT_INK'
        Width = 87
      end
      object cxGrid1DBTableView1NINK: TcxGridDBColumn
        Caption = #8470' '#1080#1085#1082'.'
        DataBinding.FieldName = 'NINK'
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'SUMMA'
        Width = 79
      end
      object cxGrid1DBTableView1PENYA: TcxGridDBColumn
        Caption = #1055#1077#1085#1103
        DataBinding.FieldName = 'PENYA'
        Width = 76
      end
      object cxGrid1DBTableView1ITOG: TcxGridDBColumn
        Caption = #1048#1090#1086#1075
        DataBinding.FieldName = 'ITOG'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_ink: TOracleDataSet
    SQL.Strings = (
      'select t.dat_ink,t.nink, sum(summa) as summa, '
      'sum(penya) as penya, sum(nvl(summa,0)+nvl(penya,0)) as itog'
      'from scott.c_kwtp t where t.nkom=scott.init.get_nkom()'
      'and nink <> 0'
      'group by t.dat_ink,t.nink'
      'order by t.dat_ink')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000005000000040000004E494E4B0100000000000500000053554D4D4101
      00000000000500000050454E59410100000000000400000049544F4701000000
      0000070000004441545F494E4B010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 24
    Top = 56
    object OD_inkDAT_INK: TDateTimeField
      FieldName = 'DAT_INK'
    end
    object OD_inkNINK: TFloatField
      FieldName = 'NINK'
    end
    object OD_inkSUMMA: TFloatField
      FieldName = 'SUMMA'
    end
    object OD_inkPENYA: TFloatField
      FieldName = 'PENYA'
    end
    object OD_inkITOG: TFloatField
      FieldName = 'ITOG'
    end
  end
  object DS_ink: TDataSource
    DataSet = OD_ink
    Left = 56
    Top = 56
  end
  object OD_inkass: TOracleDataSet
    SQL.Strings = (
      
        'select c.c_kwtp_id, t.lsk, s.name||'#39' '#39'||ltrim(k.nd,'#39'0'#39')||'#39'-'#39'||lt' +
        'rim(k.kw,'#39'0'#39') as adr, sum(c.summa) as summa, '
      'sum(c.penya) as penya, t.oper, '
      
        ' substr(t.dopl,1,4)||'#39'-'#39'||substr(t.dopl,5,2) as dopl , t.dtek, t' +
        '.nink, t.nkom, t.nkvit,'
      
        ' to_char(t.ts,'#39'HH:MI'#39') as wr, decode(tp.cd,'#39'LSK_TP_MAIN'#39', 1, '#39'LS' +
        'K_TP_ADDIT'#39', 2, 1) as dep'
      
        'from scott.c_kwtp t, scott.c_kwtp_mg c, scott.kart k, scott.spul' +
        ' s, scott.v_lsk_tp tp'
      'where t.id=c.c_kwtp_id and'
      'k.lsk=t.lsk and t.nkom = scott.init.get_nkom()'
      'and t.nink =:nink and k.kul=s.id'
      'and k.fk_tp=tp.id(+)'
      
        'group by decode(tp.cd,'#39'LSK_TP_MAIN'#39', 1, '#39'LSK_TP_ADDIT'#39', 2, 1), c' +
        '.c_kwtp_id, t.lsk, s.name||'#39' '#39'||ltrim(k.nd,'#39'0'#39')||'#39'-'#39'||ltrim(k.kw' +
        ','#39'0'#39') , '
      
        ' t.oper, substr(t.dopl,1,4)||'#39'-'#39'||substr(t.dopl,5,2), t.dtek, t.' +
        'nink, t.nkom, t.nkvit,'
      ' to_char(t.ts,'#39'HH:MI'#39')'
      'order by t.nkvit')
    Optimize = False
    Variables.Data = {0300000001000000050000003A4E494E4B030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D0000000500000053554D4D410100000000000500000050454E5941
      010000000000030000004C534B010000000000040000004F5045520100000000
      0004000000444F504C010000000000040000004454454B010000000000020000
      00575201000000000003000000414452010000000000040000004E494E4B0100
      00000000040000004E4B4F4D010000000000050000004E4B5649540100000000
      0009000000435F4B5754505F4944010000000000030000004445500100000000
      00}
    Master = OD_ink
    MasterFields = 'nink'
    Session = DataModule1.OracleSession1
    Left = 24
    Top = 88
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'C_KWTP_ID=C_KWTP_ID'
      'LSK=LSK'
      'ADR=ADR'
      'SUMMA=SUMMA'
      'PENYA=PENYA'
      'OPER=OPER'
      'DOPL=DOPL'
      'DTEK=DTEK'
      'NINK=NINK'
      'NKOM=NKOM'
      'NKVIT=NKVIT'
      'WR=WR'
      'DEP=DEP')
    DataSet = OD_inkass
    BCDToCurrency = False
    Left = 144
    Top = 88
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39361.812760590300000000
    ReportOptions.LastChange = 39362.752001770800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.677180000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 30.236240000000000000
          Top = 0.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'DTEK'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."DTEK"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Top = 0.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'LSK'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."LSK"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 325.039580000000000000
          Top = 0.779529999999994100
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'SUMMA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."SUMMA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 389.291590000000000000
          Top = 0.779529999999994100
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          DataField = 'PENYA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PENYA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 449.764070000000000000
          Top = 0.779529999999994100
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'DOPL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."DOPL"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 525.354670000000100000
          Top = 0.779529999999994100
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'NKVIT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."NKVIT"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 597.165740000000000000
          Top = 0.779529999999994100
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'WR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."WR"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 665.197280000000000000
          Top = 0.779529999999994100
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'OPER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."OPER"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 173.858380000000000000
          Top = 0.779530000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          DataField = 'ADR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."ADR"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Top = 0.779530000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataField = 'DEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."DEP"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 75.590600000000000000
          Width = 544.252320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1119#1056#160#1056#1115#1056#1118#1056#1115#1056#1113#1056#1115#1056#8250' '#1056#1113#1056#8217#1056#152#1056#1118#1056#1106#1056#1116#1056#166#1056#152#1056#8482' '#1056#1119#1056#1115' '#1056#152#1056#1116#1056#1113#1056#1106#1056#1038#1056#1038#1056#1106#1056#166#1056#152#1056#152' '#1074#8222 +
              #8211' [frxDBDataset1."NINK"],  '#1056#1113#1056#1109#1056#1112#1056#1111' '#1074#8222#8211'  [frxDBDataset1."NKOM"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 98.267780000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8250#1056#1105#1057#8224#1056#181#1056#1030#1056#1109#1056#8470)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 306.141930000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#181#1056#1029#1057#1039)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 449.764070000000000000
          Top = 2.779529999999994000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '
            #1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#8249)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 525.354670000000000000
          Top = 3.779529999999994000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1108#1056#1030#1056#1105#1057#8218'.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779529999999994000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8217#1057#1026#1056#181#1056#1112#1057#1039)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 665.197280000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1109#1056#1111#1056#181#1057#1026)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 173.858380000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1106#1056#1169#1057#1026#1056#181#1057#1027)
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 37.795299999999980000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211#1056#1115#1057#8218#1056#1169)
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          Left = 317.480520000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."PENYA">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<frxDBDataset1."SUMMA">+<frxDBDataset1."PENYA">,MasterData1' +
              ')]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 457.323130000000000000
          Top = 3.779529999999994000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#1105#1056#8470' '#1056#1105#1057#8218#1056#1109#1056#1110':')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 653.858690000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page]')
          ParentFont = False
        end
      end
    end
  end
  object OD_inkass2: TOracleDataSet
    SQL.Strings = (
      
        'select c.nkom, c.nink, c.dat_ink, c.oper, o.naim, sum(c.summa) a' +
        's summa, sum(c.penya) as penya, decode(tp.cd,'#39'LSK_TP_MAIN'#39', 1, '#39 +
        'LSK_TP_ADDIT'#39', 2, 1) as dep'
      
        'from scott.c_kwtp_mg c, scott.oper o, scott.kart k, scott.v_lsk_' +
        'tp tp'
      'where c.oper=o.oper and nkom = scott.init.get_nkom()'
      'and c.nink = :nink and c.lsk=k.lsk and k.fk_tp=tp.id(+)'
      
        'group by c.nkom, c.nink, c.dat_ink, c.oper, o.naim, decode(tp.cd' +
        ','#39'LSK_TP_MAIN'#39', 1, '#39'LSK_TP_ADDIT'#39', 2, 1)')
    Optimize = False
    Variables.Data = {0300000001000000050000003A4E494E4B030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000080000000500000053554D4D410100000000000500000050454E5941
      010000000000040000004F504552010000000000040000004E41494D01000000
      0000040000004E4B4F4D010000000000040000004E494E4B0100000000000700
      00004441545F494E4B01000000000003000000444550010000000000}
    Master = OD_ink
    MasterFields = 'nink'
    Session = DataModule1.OracleSession1
    Active = True
    Left = 24
    Top = 120
  end
  object frxReport2: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39361.812760590300000000
    ReportOptions.LastChange = 42016.627347418980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 21.456710000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Top = 1.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."OPER"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 105.826840000000000000
          Top = 1.779530000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'NAIM'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."NAIM"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 336.378170000000000000
          Top = 1.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."SUMMA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 415.748300000000000000
          Top = 1.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."PENYA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 498.897960000000000000
          Top = 1.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBDataset2."SUMMA">+<frxDBDataset2."PENYA">]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 4.559060000000000000
          Top = 1.559060000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'DEP'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."DEP"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 34.015770000000010000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 75.590600000000000000
          Width = 544.252320000000100000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1119#1056#160#1056#1115#1056#1118#1056#1115#1056#1113#1056#1115#1056#8250' '#1056#1115#1056#8216#1056#160#1056#1106#1056#8216#1056#1115#1056#1118#1056#1113#1056#152' '#1056#1119#1056#8250#1056#1106#1056#1118#1056#8226#1056#8211#1056#8226#1056#8482' '#1056#1119#1056#1115' '#1056#1115#1056#1119#1056#8226 +
              #1056#160#1056#1106#1056#166#1056#152#1056#1031#1056#1114' '#1056#183#1056#176' [frxDBDataset2."DAT_INK"]  '#1056#152#1056#1029#1056#1108' '#1074#8222#8211' [frxDBDa' +
              'taset2."NINK"],  '#1056#1113#1056#1109#1056#1112#1056#1111' '#1074#8222#8211'  [frxDBDataset2."NKOM"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1056#1105)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 419.527830000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#181#1056#1029#1057#1039)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 41.574830000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1109#1056#1111#1056#181#1057#1026)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 22.677179999999990000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779529999999994000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#1105#1056#8470' '#1056#1105#1057#8218#1056#1109#1056#1110)
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211#1056#1115#1057#8218#1056#1169)
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<frxDBDataset2."SUMMA">+<frxDBDataset2."PENYA">,MasterData1' +
              ')]'
            '')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset2."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset2."PENYA">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 653.858690000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NKOM=NKOM'
      'NINK=NINK'
      'DAT_INK=DAT_INK'
      'OPER=OPER'
      'NAIM=NAIM'
      'SUMMA=SUMMA'
      'PENYA=PENYA'
      'DEP=DEP')
    DataSet = OD_inkass2
    BCDToCurrency = False
    Left = 144
    Top = 120
  end
  object OD_inkass_det: TOracleDataSet
    SQL.Strings = (
      
        'select c.lsk, s.name||'#39' '#39'||ltrim(k.nd,'#39'0'#39')||'#39'-'#39'||ltrim(k.kw,'#39'0'#39')' +
        ' as adr, c.summa, c.penya, c.oper, '
      
        ' substr(c.dopl,1,4)||'#39'-'#39'||substr(c.dopl,5,2) as dopl , c.dtek, n' +
        'ink, nkom, nkvit,'
      ' to_char(c.ts,'#39'HH:MI'#39') as wr '
      'from scott.c_kwtp_mg c, scott.kart k, scott.spul s'
      'where k.lsk=c.lsk and nkom = scott.init.get_nkom()'
      'and c.nink =:nink and k.kul=s.id'
      'order by nkvit')
    Optimize = False
    Variables.Data = {0300000001000000050000003A4E494E4B030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000B0000000500000053554D4D410100000000000500000050454E5941
      010000000000030000004C534B010000000000040000004F5045520100000000
      0004000000444F504C010000000000040000004454454B010000000000020000
      00575201000000000003000000414452010000000000040000004E494E4B0100
      00000000040000004E4B4F4D010000000000050000004E4B5649540100000000
      00}
    Master = OD_ink
    MasterFields = 'nink'
    Session = DataModule1.OracleSession1
    Active = True
    Left = 56
    Top = 88
  end
end
