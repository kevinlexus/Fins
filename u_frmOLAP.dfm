object frmOLAP: TfrmOLAP
  Left = 0
  Top = 0
  Caption = 'OLAP'
  ClientHeight = 918
  ClientWidth = 1417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBPivotGrid1: TcxDBPivotGrid
    Left = 8
    Top = 728
    Width = 209
    Height = 166
    Align = alCustom
    DataSource = DataSource1
    Groups = <>
    TabOrder = 0
  end
  object fcxSliceGrid1: TfcxSliceGrid
    Left = 0
    Top = 22
    Width = 1417
    Height = 855
    Version = '2.10.4'
    Align = alClient
    Slice = fcxSlice1
    Styles.CaptionArea.TextColor = clBlack
    Styles.CaptionArea.FillColor = 15466495
    Styles.CaptionArea.GradientColor = clWhite
    Styles.CaptionArea.Font.Charset = DEFAULT_CHARSET
    Styles.CaptionArea.Font.Color = clWindowText
    Styles.CaptionArea.Font.Height = -11
    Styles.CaptionArea.Font.Name = 'Tahoma'
    Styles.CaptionArea.Font.Style = []
    Styles.CaptionArea.GradientDirection = tgdHorizontal
    Styles.HeaderArea.TextColor = clBlack
    Styles.HeaderArea.FillColor = clBtnFace
    Styles.HeaderArea.Font.Charset = DEFAULT_CHARSET
    Styles.HeaderArea.Font.Color = clWindowText
    Styles.HeaderArea.Font.Height = -11
    Styles.HeaderArea.Font.Name = 'Tahoma'
    Styles.HeaderArea.Font.Style = []
    Styles.HeaderCells.TextColor = clBlack
    Styles.HeaderCells.FillColor = clBtnFace
    Styles.HeaderCells.Font.Charset = DEFAULT_CHARSET
    Styles.HeaderCells.Font.Color = clWindowText
    Styles.HeaderCells.Font.Height = -11
    Styles.HeaderCells.Font.Name = 'Tahoma'
    Styles.HeaderCells.Font.Style = []
    Styles.HeaderCellsSelected.TextColor = clBtnText
    Styles.HeaderCellsSelected.FillColor = clBtnShadow
    Styles.HeaderCellsSelected.Font.Charset = DEFAULT_CHARSET
    Styles.HeaderCellsSelected.Font.Color = clWindowText
    Styles.HeaderCellsSelected.Font.Height = -11
    Styles.HeaderCellsSelected.Font.Name = 'Tahoma'
    Styles.HeaderCellsSelected.Font.Style = []
    Styles.DataArea.TextColor = clGray
    Styles.DataArea.FillColor = clWhite
    Styles.DataArea.Font.Charset = DEFAULT_CHARSET
    Styles.DataArea.Font.Color = clWindowText
    Styles.DataArea.Font.Height = -11
    Styles.DataArea.Font.Name = 'Tahoma'
    Styles.DataArea.Font.Style = []
    Styles.DataCells.TextColor = clBlack
    Styles.DataCells.FillColor = clWhite
    Styles.DataCells.Font.Charset = DEFAULT_CHARSET
    Styles.DataCells.Font.Color = clWindowText
    Styles.DataCells.Font.Height = -11
    Styles.DataCells.Font.Name = 'Tahoma'
    Styles.DataCells.Font.Style = []
    Styles.DataCellsSelected.TextColor = clHighlightText
    Styles.DataCellsSelected.FillColor = clHighlight
    Styles.DataCellsSelected.Font.Charset = DEFAULT_CHARSET
    Styles.DataCellsSelected.Font.Color = clWindowText
    Styles.DataCellsSelected.Font.Height = -11
    Styles.DataCellsSelected.Font.Name = 'Tahoma'
    Styles.DataCellsSelected.Font.Style = []
    Styles.StatusArea.TextColor = clBlack
    Styles.StatusArea.FillColor = clBtnFace
    Styles.StatusArea.Font.Charset = DEFAULT_CHARSET
    Styles.StatusArea.Font.Color = clWindowText
    Styles.StatusArea.Font.Height = -11
    Styles.StatusArea.Font.Name = 'Tahoma'
    Styles.StatusArea.Font.Style = []
    Styles.ActiveDimension.TextColor = clCaptionText
    Styles.ActiveDimension.FillColor = clActiveCaption
    Styles.ActiveDimension.GradientColor = clGradientActiveCaption
    Styles.ActiveDimension.Font.Charset = DEFAULT_CHARSET
    Styles.ActiveDimension.Font.Color = clWindowText
    Styles.ActiveDimension.Font.Height = -11
    Styles.ActiveDimension.Font.Name = 'Tahoma'
    Styles.ActiveDimension.Font.Style = []
    Styles.ActiveDimension.GradientDirection = tgdHorizontal
    Styles.InactiveDimension.TextColor = clInactiveCaptionText
    Styles.InactiveDimension.FillColor = clInactiveCaption
    Styles.InactiveDimension.GradientColor = clGradientInactiveCaption
    Styles.InactiveDimension.Font.Charset = DEFAULT_CHARSET
    Styles.InactiveDimension.Font.Color = clWindowText
    Styles.InactiveDimension.Font.Height = -11
    Styles.InactiveDimension.Font.Name = 'Tahoma'
    Styles.InactiveDimension.Font.Style = []
    Styles.InactiveDimension.GradientDirection = tgdHorizontal
    Styles.Measure.TextColor = clCaptionText
    Styles.Measure.FillColor = clGreen
    Styles.Measure.GradientColor = clMoneyGreen
    Styles.Measure.Font.Charset = DEFAULT_CHARSET
    Styles.Measure.Font.Color = clWindowText
    Styles.Measure.Font.Height = -11
    Styles.Measure.Font.Name = 'Tahoma'
    Styles.Measure.Font.Style = []
    Styles.Measure.GradientDirection = tgdHorizontal
    Styles.DataCellsTotals.TextColor = clBlack
    Styles.DataCellsTotals.FillColor = 15466495
    Styles.DataCellsTotals.GradientColor = clWhite
    Styles.DataCellsTotals.Font.Charset = DEFAULT_CHARSET
    Styles.DataCellsTotals.Font.Color = clWindowText
    Styles.DataCellsTotals.Font.Height = -11
    Styles.DataCellsTotals.Font.Name = 'Tahoma'
    Styles.DataCellsTotals.Font.Style = []
    Styles.FieldsItem.TextColor = clCaptionText
    Styles.FieldsItem.FillColor = clMoneyGreen
    Styles.FieldsItem.Font.Charset = DEFAULT_CHARSET
    Styles.FieldsItem.Font.Color = clWindowText
    Styles.FieldsItem.Font.Height = -11
    Styles.FieldsItem.Font.Name = 'Tahoma'
    Styles.FieldsItem.Font.Style = []
    TabOrder = 1
    XDimsZone.Visible = True
    YDimsZone.Visible = True
    PageDimsZone.Visible = True
    StatusZone.FloatFormat.DecSeparator = ','
    StatusZone.FloatFormat.FormatStr = '#0.##'
    StatusZone.FloatFormat.Kind = fkNumeric
    StatusZone.IntegerFormat.DecSeparator = ','
    StatusZone.IntegerFormat.FormatStr = '#0.##'
    StatusZone.IntegerFormat.Kind = fkNumeric
    FieldsZone.Visible = True
    ExplicitHeight = 896
  end
  object fcSliceGridToolbar1: TfcxSliceGridToolbar
    Left = 0
    Top = 0
    Width = 1417
    Height = 22
    AutoSize = True
    Caption = 'fcSliceGridToolbar1'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Version = '2.10.4'
    SliceGrid = fcxSliceGrid1
    object ToolButton2: TToolButton
      Left = 405
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 15
      Style = tbsSeparator
    end
    object Button1: TButton
      Left = 413
      Top = 0
      Width = 75
      Height = 22
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 877
    Width = 1417
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = 752
    ExplicitTop = 768
    ExplicitWidth = 185
    DesignSize = (
      1417
      41)
    object Button2: TButton
      Left = 1328
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object DataSource1: TDataSource
    Left = 152
    Top = 136
  end
  object fcxCube1: TfcxCube
    Version = '2.10.4'
    DataSource = fcxDataSource1
    CubeSource = fccs_DataSource
    Formats.BooleanFormat.DecSeparator = ','
    Formats.BooleanFormat.FormatStr = 'False,True'
    Formats.BooleanFormat.Kind = fkBoolean
    Formats.DateFormat.DecSeparator = ','
    Formats.DateFormat.FormatStr = 'dd/MM/yyyy'
    Formats.DateFormat.Kind = fkDateTime
    Formats.TimeFormat.DecSeparator = ','
    Formats.TimeFormat.FormatStr = 'h:mm'
    Formats.TimeFormat.Kind = fkDateTime
    Formats.DateTimeFormat.DecSeparator = ','
    Formats.DateTimeFormat.FormatStr = 'dd/MM/yyyy'
    Formats.DateTimeFormat.Kind = fkDateTime
    Formats.FloatFormat.DecSeparator = ','
    Formats.FloatFormat.FormatStr = '%2.2n'
    Formats.FloatFormat.Kind = fkNumeric
    Formats.CurrencyFormat.DecSeparator = ','
    Formats.CurrencyFormat.FormatStr = '%2.2m'
    Formats.CurrencyFormat.Kind = fkNumeric
    Formats.IntegerFormat.DecSeparator = ','
    Formats.IntegerFormat.FormatStr = '%g'
    Formats.IntegerFormat.Kind = fkNumeric
    Formats.TextFormat.DecSeparator = ','
    Formats.PercentFormat.DecSeparator = ','
    Formats.PercentFormat.FormatStr = '%2.2n'
    Formats.PercentFormat.Kind = fkNumeric
    Formats.DatePathFormat.MonthDisplayFormat = mdf_Long
    Formats.DatePathFormat.WeekDayDisplayFormat = wddf_Long
    Formats.DatePathFormat.QuarterDisplayFormat = qdf_System
    Formats.DatePathFormat.WeekNumberDisplayFormat = wndf_System
    Left = 272
    Top = 136
  end
  object fcxDataSource1: TfcxDataSource
    Version = '2.10.4'
    DataSet = fcxDBDataSet1
    Fields = <>
    Left = 232
    Top = 136
  end
  object fcxDBDataSet1: TfcxDBDataSet
    Version = '2.10.4'
    DataSet = DM_Olap.Uni_Data
    Left = 192
    Top = 136
  end
  object fcxSlice1: TfcxSlice
    Version = '2.10.4'
    Cube = fcxCube1
    FieldsOrder = fcfloByFieldDisplayLabel
    Left = 312
    Top = 136
  end
  object fcxXLSXExport1: TfcxXLSXExport
    Version = '2.10.4'
    FileName = 'checkExcelExport'
    DefaultPath = 'd:\temp\5\'
    ExportPageBreaks = False
    Creator = 'FastReport'
    Left = 352
    Top = 136
  end
  object frxReport1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44589.754146967590000000
    ReportOptions.LastChange = 44590.278771574070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 288
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1069#1090#1086' '#1086#1090#1083#1080#1095#1085#1099#1081' '#1086#1090#1095#1077#1090'!!!')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 102.047310000000000000
        Width = 1046.929810000000000000
        RowCount = 1
        object TfcxpCross1: TfcxpCrossView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 80.000000000000000000
          Height = 36.000000000000000000
          SliceGridProvider = fcxpSliceGridProvider1
          SliceGridProviderName = 'fcxpSliceGridProvider1'
          Schema = {}
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C666363726F73733E3C
            63656C6C6D656D6F733E3C54666378704D656D6F5669657720416C6C6F775665
            63746F724578706F72743D225472756522204C6566743D22302220546F703D22
            3138222057696474683D22383022204865696768743D22313822205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D223135222048416C69676E3D2268615269
            676874222056416C69676E3D22766143656E74657222204772616469656E7443
            6F6C6F723D22302220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63
            656C6C6865616465726D656D6F732F3E3C636F6C756D6E6D656D6F732F3E3C63
            6F6C756D6E746F74616C6D656D6F732F3E3C636F726E65726D656D6F733E3C54
            666378704D656D6F5669657720416C6C6F77566563746F724578706F72743D22
            5472756522204C6566743D22302220546F703D2230222057696474683D223022
            204865696768743D22313822205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D223135222048416C69676E3D22686143656E746572222056416C69676E3D22
            766143656E74657222204772616469656E74436F6C6F723D2230222054657874
            3D22222F3E3C54666378704D656D6F5669657720416C6C6F77566563746F7245
            78706F72743D225472756522204C6566743D22302220546F703D223022205769
            6474683D22383022204865696768743D22313822205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D223135222048416C69676E3D22686143656E7465722220
            56416C69676E3D22766143656E74657222204772616469656E74436F6C6F723D
            22302220546578743D22222F3E3C54666378704D656D6F5669657720416C6C6F
            77566563746F724578706F72743D225472756522204C6566743D22302220546F
            703D223138222057696474683D223022204865696768743D2230222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C736522204672616D652E5479703D223135222048416C69676E3D22686143
            656E746572222056416C69676E3D22766143656E74657222204772616469656E
            74436F6C6F723D22302220546578743D22222F3E3C2F636F726E65726D656D6F
            733E3C726F776D656D6F732F3E3C726F77746F74616C6D656D6F732F3E3C2F66
            6363726F73733E}
          MemoSizes = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C6D656D6F5F73697A65
            733E3C686561645F636F6C5F73697A65733E3C686561645F636F6C5F73697A65
            20583D22302220593D223138222F3E3C2F686561645F636F6C5F73697A65733E
            3C686561645F726F775F73697A65732F3E3C636F6C5F73697A65733E3C636F6C
            5F73697A6520583D22302220593D223830222F3E3C2F636F6C5F73697A65733E
            3C726F775F73697A65733E3C726F775F73697A6520583D2231382220593D2231
            38222F3E3C2F726F775F73697A65733E3C2F6D656D6F5F73697A65733E}
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1086#1076#1087#1080#1089#1100' '#1076#1080#1088#1077#1082#1090#1086#1088#1072' '#1079#1076#1077#1089#1100'!')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 321.260050000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 967.559680000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1072#1088#1072#1088#1072#1088#1072#1088#1072#1088#1072#1088#1072#1088#1072#1088'!')
        end
      end
    end
  end
  object fcxpSliceGridProvider1: TfcxpSliceGridProvider
    Version = '2.10.4'
    SliceGrid = fcxSliceGrid1
    UserName = 'fcxpSliceGridProvider1'
    PaintSizes.AutoSizeStyle = ssAutoColWidth
    Left = 392
    Top = 136
  end
end
