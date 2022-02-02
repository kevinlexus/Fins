object Form_print_debits_adm: TForm_print_debits_adm
  Left = 376
  Top = 643
  BorderStyle = bsSingle
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1086#1087#1083#1072#1090#1077' '#1085#1072#1089#1077#1083#1077#1085#1080#1103' '#1079#1072' '#1046#1050#1059
  ClientHeight = 105
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
  object Label7: TLabel
    Left = 48
    Top = 16
    Width = 80
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072' :'
  end
  object CheckBox1: TCheckBox
    Left = 160
    Top = 37
    Width = 105
    Height = 17
    Caption = #1090#1077#1082#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 54
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
    object Button1: TButton
      Left = 214
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 160
    Top = 8
    Width = 99
    Height = 21
    KeyField = 'MG'
    ListField = 'MG1'
    ListSource = DS_period
    TabOrder = 2
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      ' scott.rep_debits.report_debits_adm'
      '            (:mg_, :dat_, :prep_refcursor);'
      'end;')
    Variables.Data = {
      0300000003000000040000003A4D475F05000000070000003230303630380000
      000000050000003A4441545F0C00000000000000000000000F0000003A505245
      505F524546435552534F52740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000010000000050000005452455354010000000000070000004E414D455F
      54520100000000000400000044454231010000000000060000004D4F4E544831
      0100000000000400000044454232010000000000050000004E41434831010000
      00000004000000504159310100000000000800000050455243454E5431010000
      00000004000000504159320100000000000800000050455243454E5432010000
      0000000400000044454233010000000000030000004D47310100000000000300
      00004D4732010000000000030000004D4733010000000000030000004D473401
      0000000000030000004D4735010000000000}
    Session = DataModule1.OracleSession1
    Top = 32
  end
  object OD_period: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME1(substr(mg,5,2))||'#39' '#39'||substr(' +
        'mg,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t '
      'where t.id=23 and mg is not null'
      'order by mg desc'
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
  end
  object DS_period: TDataSource
    DataSet = OD_period
    Left = 32
    Top = 32
  end
  object frxReport1: TfrxReport
    Version = '3.20'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    ReportOptions.CreateDate = 38973.558597361100000000
    ReportOptions.LastChange = 38973.558597361100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 32
    Datasets = <
      item
        DataSet = frxDBData_deb
        DataSetName = 'frxDBData_deb'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 27.677180000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo5: TfrxMemoView
          Left = 217.000000000000000000
          Top = 0.102350000000001300
          Width = 713.488250000000000000
          Height = 23.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            
              #1056#152#1056#1029#1057#8222#1056#1109#1057#1026#1056#1112#1056#176#1057#8224#1056#1105#1057#1039' '#1056#1109#1056#177' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1056#181' '#1056#1029#1056#176#1057#1027#1056#181#1056#187#1056#181#1056#1029#1056#1105#1057#1039' '#1056#183#1056#176' '#1056 +
              #8211#1056#1113#1056#1032' '#1056#1111#1056#1109' '#1056#1110'.'#1056#1113#1056#181#1056#1112#1056#181#1057#1026#1056#1109#1056#1030#1056#1109' [frxDBData_deb."MG4"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 38.535250000000000000
        Top = 257.008040000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBData_deb
        DataSetName = 'frxDBData_deb'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 39.000000000000000000
          Top = 1.716450000000009000
          Width = 203.488250000000000000
          Height = 20.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBData_deb."NAME_TR"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 248.000000000000000000
          Top = 1.716450000000009000
          Width = 101.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."DEB1"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 359.000000000000000000
          Top = 1.716450000000009000
          Width = 102.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."DEB2"]')
        end
        object Memo6: TfrxMemoView
          Left = 474.000000000000000000
          Top = 1.716450000000009000
          Width = 37.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."MONTH1"]')
        end
        object Memo1: TfrxMemoView
          Left = 2.000000000000000000
          Top = 1.716450000000009000
          Width = 34.488250000000000000
          Height = 21.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[<Line#>]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 530.000000000000000000
          Top = 1.535250000000019000
          Width = 81.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."NACH1"]')
        end
        object Memo8: TfrxMemoView
          Left = 621.000000000000000000
          Top = 2.535250000000019000
          Width = 94.488250000000000000
          Height = 21.897650000000000000
          DataField = 'PAY1'
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."PAY1"]')
        end
        object Memo20: TfrxMemoView
          Left = 718.000000000000000000
          Top = 2.535250000000019000
          Width = 84.488250000000000000
          Height = 21.897650000000000000
          DataField = 'PERCENT1'
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."PERCENT1"]')
        end
        object Memo21: TfrxMemoView
          Left = 805.000000000000000000
          Top = 2.535250000000019000
          Width = 84.488250000000000000
          Height = 21.897650000000000000
          DataField = 'PAY2'
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."PAY2"]')
        end
        object Memo22: TfrxMemoView
          Left = 897.000000000000000000
          Top = 2.535250000000019000
          Width = 76.488250000000000000
          Height = 21.897650000000000000
          DataField = 'PERCENT2'
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."PERCENT2"]')
        end
        object Memo23: TfrxMemoView
          Left = 984.000000000000000000
          Top = 2.535250000000019000
          Width = 93.488250000000000000
          Height = 21.897650000000000000
          DataField = 'DEB3'
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBData_deb."DEB3"]')
        end
        object Line23: TfrxLineView
          Left = 4.000000000000000000
          Top = 37.535250000000020000
          Width = 1074.000000000000000000
          Frame.Typ = [ftTop]
        end
        object Line12: TfrxLineView
          Left = 245.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 355.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 466.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 518.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 620.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 716.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 803.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 890.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 974.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 1078.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 4.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 38.000000000000000000
          Top = 0.535250000000019100
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 129.850340000000000000
        Top = 68.031540000000010000
        Width = 1084.725110000000000000
        object Shape1: TfrxShapeView
          Left = 5.000000000000000000
          Top = 3.850340000000003000
          Width = 1073.000000000000000000
          Height = 125.000000000000000000
        end
        object Line1: TfrxLineView
          Left = 39.000000000000000000
          Top = 4.850340000000003000
          Height = 125.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 245.000000000000000000
          Top = 3.850340000000003000
          Height = 125.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 355.000000000000000000
          Top = 4.850340000000003000
          Height = 124.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 518.000000000000000000
          Top = 3.850340000000003000
          Height = 124.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 356.000000000000000000
          Top = 65.850339999999990000
          Width = 619.000000000000000000
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 466.000000000000000000
          Top = 66.850339999999990000
          Height = 62.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 620.000000000000000000
          Top = 66.850339999999990000
          Height = 62.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 716.000000000000000000
          Top = 65.850339999999990000
          Height = 64.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 803.000000000000000000
          Top = 66.850339999999990000
          Height = 63.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 890.000000000000000000
          Top = 66.850339999999990000
          Height = 63.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 974.000000000000000000
          Top = 4.850340000000003000
          Height = 124.000000000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo9: TfrxMemoView
          Left = 40.000000000000000000
          Top = 33.850340000000000000
          Width = 204.488250000000000000
          Height = 61.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8211#1056#1105#1056#187#1056#1105#1057#8240#1056#1029#1056#1109'-'
            #1057#1036#1056#1108#1057#1027#1056#1111#1056#187#1057#1107#1056#176#1057#8218#1056#176#1057#8224#1056#1105#1056#1109#1056#1029#1056#1029#1057#8249#1056#181
            #1056#1109#1057#1026#1056#1110#1056#176#1056#1029#1056#1105#1056#183#1056#176#1057#8224#1056#1105#1056#1105' '#1056#1110'.'#1056#1113#1056#181#1056#1112#1056#181#1057#1026#1056#1109#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 246.000000000000000000
          Top = 35.850340000000000000
          Width = 109.488250000000000000
          Height = 87.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#181#1056#177#1056#1105#1057#8218#1056#1109#1057#1026#1057#1027#1056#1108#1056#176#1057#1039
            #1056#183#1056#176#1056#1169#1056#1109#1056#187#1056#182#1056#181#1056#1029#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034
            #1056#1029#1056#176' [frxDBData_deb."MG1"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 378.000000000000000000
          Top = 7.850340000000003000
          Width = 109.488250000000000000
          Height = 54.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#181#1056#177#1056#1105#1057#8218#1056#1109#1057#1026#1057#1027#1056#1108#1056#176#1057#1039
            #1056#183#1056#176#1056#1169#1056#1109#1056#187#1056#182#1056#181#1056#1029#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034
            #1056#1029#1056#176' [frxDBData_deb."MG2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 356.000000000000000000
          Top = 67.850339999999990000
          Width = 109.488250000000000000
          Height = 41.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#1107#1056#1112#1056#1112#1056#176
            '('#1057#8218#1057#8249#1057#1027'.'#1057#1026#1057#1107#1056#177'.)')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 468.000000000000000000
          Top = 67.850339999999990000
          Width = 49.488250000000000000
          Height = 41.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109
            #1056#1112#1056#181#1057#1027'.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 523.000000000000000000
          Top = 68.850340000000030000
          Width = 93.488249999999990000
          Height = 56.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#176#1057#8225#1056#1105#1057#1027#1056#187#1056#181#1056#1029#1056#1105#1056#181
            '[frxDBData_deb."MG3"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 621.000000000000000000
          Top = 68.850340000000030000
          Width = 93.488249999999990000
          Height = 54.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1056#1109#1056#177#1057#1026#1056#176#1056#1029#1056#1109
            '[frxDBData_deb."MG4"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 713.000000000000000000
          Top = 72.850339999999990000
          Width = 93.488250000000000000
          Height = 41.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '% '#1057#1027#1056#177#1056#1109#1057#1026#1056#176)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 801.000000000000000000
          Top = 68.850340000000030000
          Width = 93.488249999999990000
          Height = 54.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1030' '#1057#8218'.'#1057#8225'. '#1056#1169#1056#1109#1056#187#1056#1110#1056#1105
            #1056#1111#1057#1026#1056#1109#1057#8364#1056#187#1057#8249#1057#8230
            #1056#187#1056#181#1057#8218)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 886.000000000000000000
          Top = 74.850339999999990000
          Width = 93.488250000000000000
          Height = 41.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '% '#1057#1027#1056#177#1056#1109#1057#1026#1056#176)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 972.000000000000000000
          Top = 32.850340000000000000
          Width = 109.488250000000000000
          Height = 54.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#181#1056#177#1056#1105#1057#8218#1056#1109#1057#1026#1057#1027#1056#1108#1056#176#1057#1039
            #1056#183#1056#176#1056#1169#1056#1109#1056#187#1056#182#1056#181#1056#1029#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034
            #1056#1029#1056#176' [frxDBData_deb."MG5"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 34.677180000000000000
        Top = 317.480520000000000000
        Width = 1084.725110000000000000
        object Memo25: TfrxMemoView
          Left = 248.000000000000000000
          Top = 0.921150000000011500
          Width = 101.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData_deb."DEB1">,MasterData1)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 359.000000000000000000
          Top = 0.921150000000011500
          Width = 102.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData_deb."DEB2">,MasterData1)]')
        end
        object Memo27: TfrxMemoView
          Left = 474.000000000000000000
          Top = 0.921150000000011500
          Width = 37.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[AVG(<frxDBData_deb."MONTH1">,MasterData1)]')
        end
        object Memo29: TfrxMemoView
          Left = 530.000000000000000000
          Top = 0.739950000000021600
          Width = 81.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData_deb."NACH1">,MasterData1)]')
        end
        object Memo30: TfrxMemoView
          Left = 621.000000000000000000
          Top = 1.739950000000022000
          Width = 94.488250000000000000
          Height = 21.897650000000000000
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData_deb."PAY1">,MasterData1)]')
        end
        object Memo31: TfrxMemoView
          Left = 718.000000000000000000
          Top = 1.739950000000022000
          Width = 84.488250000000000000
          Height = 21.897650000000000000
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[AVG(<frxDBData_deb."PERCENT1">,MasterData1)]')
        end
        object Memo32: TfrxMemoView
          Left = 805.000000000000000000
          Top = 1.739950000000022000
          Width = 84.488250000000000000
          Height = 21.897650000000000000
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData_deb."PAY2">,MasterData1)]')
        end
        object Memo33: TfrxMemoView
          Left = 897.000000000000000000
          Top = 1.739950000000022000
          Width = 76.488250000000000000
          Height = 21.897650000000000000
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[AVG(<frxDBData_deb."PERCENT2">,MasterData1)]')
        end
        object Memo34: TfrxMemoView
          Left = 984.000000000000000000
          Top = 1.739950000000022000
          Width = 93.488250000000000000
          Height = 21.897650000000000000
          DataSet = frxDBData_deb
          DataSetName = 'frxDBData_deb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBData_deb."DEB3">,MasterData1)]')
        end
        object Memo24: TfrxMemoView
          Left = 77.000000000000000000
          Top = 2.739950000000022000
          Width = 101.488250000000000000
          Height = 21.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1056#1118#1056#1115#1056#8220#1056#1115':')
          ParentFont = False
        end
        object Line35: TfrxLineView
          Left = 4.000000000000000000
          Top = 2.739950000000022000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 38.000000000000000000
          Top = 3.739950000000022000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 245.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Left = 355.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          Left = 466.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 518.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 620.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 716.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 803.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 890.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 974.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 1078.000000000000000000
          Top = 3.519479999999987000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 4.000000000000000000
          Top = 28.960420000000000000
          Width = 1074.000000000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBData_deb: TfrxDBDataset
    UserName = 'frxDBData_deb'
    CloseDataSource = False
    DataSet = OD_data
    Left = 96
    Top = 32
  end
  object OD_period1: TOracleDataSet
    SQL.Strings = (
      'select cdat as mg, cdat as mg1 from scott.v_period_reports t '
      'where t.id=23 and dat is not null')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 32
  end
end
