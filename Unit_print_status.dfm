object Form_print_status: TForm_print_status
  Left = 409
  Top = 555
  AutoSize = True
  BorderStyle = bsSingle
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1087#1086' '#1087#1088#1080#1074#1072#1090#1080#1079#1072#1094#1080#1080' '#1078#1080#1083#1100#1103
  ClientHeight = 105
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 56
    Width = 273
    Height = 49
    TabOrder = 0
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 274
    Height = 49
    TabOrder = 1
    object Label6: TLabel
      Left = 128
      Top = 56
      Width = 15
      Height = 13
      Caption = '     '
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_status_stat(:prep_refcursor);'
      'end;')
    Variables.Data = {
      03000000010000000F0000003A505245505F524546435552534F527400000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A00000003000000434E540100000000000300000052455501000000
      000006000000525F4E414D45010000000000020000004E440100000000000600
      000053544154555301000000000005000000534F525431010000000000050000
      0050524F43310100000000000400000050524F4301000000000006000000505F
      4E414D4501000000000006000000535F4E414D45010000000000}
    Session = DataModule1.OracleSession1
    Top = 24
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = OD_data
    Left = 32
    Top = 24
  end
  object frxReport1: TfrxReport
    Version = '3.20'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 38551.427990439800000000
    ReportOptions.LastChange = 38551.505961932900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 24
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 169.000000000000000000
          Top = 2.889610000000004000
          Width = 129.488250000000000000
          Height = 18.897650000000000000
          DataField = 'S_NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."S_NAME"]')
        end
        object Memo6: TfrxMemoView
          Left = 302.000000000000000000
          Top = 2.889610000000004000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CNT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."CNT"]')
        end
        object Memo8: TfrxMemoView
          Left = 377.000000000000000000
          Top = 2.889610000000004000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PROC"] %')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 33.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."R_NAME"'
        object Memo1: TfrxMemoView
          Left = 8.000000000000000000
          Top = 1.243969999999990000
          Width = 332.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."R_NAME"] '#1057#1026#1056#176#1056#8470#1056#1109#1056#1029)
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 79.677180000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."SORT1"'
        object Memo7: TfrxMemoView
          Left = 6.000000000000000000
          Top = 46.243969999999990000
          Width = 697.488250000000000000
          Height = 31.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#8221#1056#1109#1056#187#1057#1039' '#1056#1111#1057#1026#1056#1105#1056#1030#1056#176#1057#8218#1056#1105#1056#183#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#182#1056#1105#1056#187#1057#1034#1057#1039' ('#1056#1030#1056#1108#1056#187 +
              '.'#1057#1027#1056#1109#1056#177#1057#1027#1057#8218#1056#1030#1056#181#1056#1029#1056#1029#1056#1109#1056#181'): [frxDBDataset1."SORT1"] ')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        Condition = 
          '<frxDBDataset1."REU">+<frxDBDataset1."P_NAME">+<frxDBDataset1."N' +
          'D">'
        object Memo2: TfrxMemoView
          Left = 7.000000000000000000
          Top = 2.243970000000047000
          Width = 40.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."REU"]')
        end
        object Memo3: TfrxMemoView
          Left = 56.000000000000000000
          Top = 2.243969999999990000
          Width = 297.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."P_NAME"], [frxDBDataset1."ND"]')
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 8.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 165.000000000000000000
          Top = 4.574520000000007000
          Width = 290.000000000000000000
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 219.023190000000000000
        Top = 514.016080000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          Left = 377.000000000000000000
          Top = 28.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=1,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo29: TfrxMemoView
          Left = 300.000000000000000000
          Top = 28.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=1,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo30: TfrxMemoView
          Left = 377.000000000000000000
          Top = 54.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=2,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo31: TfrxMemoView
          Left = 300.000000000000000000
          Top = 54.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=2,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo32: TfrxMemoView
          Left = 377.000000000000000000
          Top = 80.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=3,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo33: TfrxMemoView
          Left = 300.000000000000000000
          Top = 80.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=3,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo34: TfrxMemoView
          Left = 377.000000000000000000
          Top = 105.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=4,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo35: TfrxMemoView
          Left = 300.000000000000000000
          Top = 105.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=4,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo36: TfrxMemoView
          Left = 377.000000000000000000
          Top = 131.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=5,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo37: TfrxMemoView
          Left = 300.000000000000000000
          Top = 131.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=5,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo38: TfrxMemoView
          Left = 377.000000000000000000
          Top = 157.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=6,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo39: TfrxMemoView
          Left = 300.000000000000000000
          Top = 157.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=6,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo40: TfrxMemoView
          Left = 168.000000000000000000
          Top = 29.125540000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1114#1057#1107#1056#1029#1056#1105#1057#8224#1056#1105#1056#1111#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#181)
        end
        object Memo41: TfrxMemoView
          Left = 168.000000000000000000
          Top = 55.125540000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1030#1056#176#1057#8218#1056#1105#1056#183#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029#1056#1029#1056#1109#1056#181)
        end
        object Memo42: TfrxMemoView
          Left = 168.000000000000000000
          Top = 81.125540000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1038#1056#1109#1056#177#1057#1027#1057#8218#1056#1030#1056#181#1056#1029#1056#1029#1056#1109#1056#181)
        end
        object Memo43: TfrxMemoView
          Left = 168.000000000000000000
          Top = 106.125540000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#167#1056#176#1057#1027#1057#8218#1056#1029#1056#1109#1056#181)
        end
        object Memo44: TfrxMemoView
          Left = 168.000000000000000000
          Top = 132.125540000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1038#1056#187#1057#1107#1056#182#1056#181#1056#177#1056#1029#1056#1109#1056#181)
        end
        object Memo45: TfrxMemoView
          Left = 168.000000000000000000
          Top = 158.125540000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1116#1056#181#1056#182#1056#1105#1056#187#1056#1109#1056#8470' '#1057#8222#1056#1109#1056#1029#1056#1169)
        end
        object Memo46: TfrxMemoView
          Left = 300.000000000000000000
          Top = 184.125540000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."CNT">,MasterData1)]')
        end
        object Memo47: TfrxMemoView
          Left = 168.000000000000000000
          Top = 185.125540000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
        end
        object Memo48: TfrxMemoView
          Left = 11.000000000000000000
          Top = 3.125540000000001000
          Width = 146.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 5.000000000000000000
          Top = 2.125540000000001000
          Width = 448.000000000000000000
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 190.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 377.000000000000000000
          Top = 4.558749999999975000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=1,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo9: TfrxMemoView
          Left = 300.000000000000000000
          Top = 4.558749999999975000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=1,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo10: TfrxMemoView
          Left = 377.000000000000000000
          Top = 30.558749999999970000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=2,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo11: TfrxMemoView
          Left = 300.000000000000000000
          Top = 30.558749999999970000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=2,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo12: TfrxMemoView
          Left = 377.000000000000000000
          Top = 56.558749999999970000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=3,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo13: TfrxMemoView
          Left = 300.000000000000000000
          Top = 56.558749999999970000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=3,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo14: TfrxMemoView
          Left = 377.000000000000000000
          Top = 81.558749999999970000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=4,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo15: TfrxMemoView
          Left = 300.000000000000000000
          Top = 81.558749999999970000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=4,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo16: TfrxMemoView
          Left = 377.000000000000000000
          Top = 107.558750000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=5,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo17: TfrxMemoView
          Left = 300.000000000000000000
          Top = 107.558750000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=5,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo18: TfrxMemoView
          Left = 377.000000000000000000
          Top = 133.558750000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=6,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)/SUM(<frxDBDataset1."CNT">,MasterData1)*100] %')
        end
        object Memo19: TfrxMemoView
          Left = 300.000000000000000000
          Top = 133.558750000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<frxDBDataset1."STATUS">=6,<frxDBDataset1."CNT">,0),Mas' +
              'terData1)]')
        end
        object Memo20: TfrxMemoView
          Left = 168.000000000000000000
          Top = 5.558749999999975000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1114#1057#1107#1056#1029#1056#1105#1057#8224#1056#1105#1056#1111#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#181)
        end
        object Memo21: TfrxMemoView
          Left = 168.000000000000000000
          Top = 31.558749999999970000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1030#1056#176#1057#8218#1056#1105#1056#183#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029#1056#1029#1056#1109#1056#181)
        end
        object Memo22: TfrxMemoView
          Left = 168.000000000000000000
          Top = 57.558749999999970000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1038#1056#1109#1056#177#1057#1027#1057#8218#1056#1030#1056#181#1056#1029#1056#1029#1056#1109#1056#181)
        end
        object Memo23: TfrxMemoView
          Left = 168.000000000000000000
          Top = 82.558749999999970000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#167#1056#176#1057#1027#1057#8218#1056#1029#1056#1109#1056#181)
        end
        object Memo24: TfrxMemoView
          Left = 168.000000000000000000
          Top = 108.558750000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1038#1056#187#1057#1107#1056#182#1056#181#1056#177#1056#1029#1056#1109#1056#181)
        end
        object Memo25: TfrxMemoView
          Left = 168.000000000000000000
          Top = 134.558750000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#1116#1056#181#1056#182#1056#1105#1056#187#1056#1109#1056#8470' '#1057#8222#1056#1109#1056#1029#1056#1169)
        end
        object Memo27: TfrxMemoView
          Left = 300.000000000000000000
          Top = 160.558750000000000000
          Width = 70.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."CNT">,MasterData1)]')
        end
        object Memo28: TfrxMemoView
          Left = 168.000000000000000000
          Top = 161.558750000000000000
          Width = 123.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
        end
        object Line1: TfrxLineView
          Left = 164.000000000000000000
          Top = 1.558749999999975000
          Width = 290.000000000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
