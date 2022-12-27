object Form_print_bills: TForm_print_bills
  Left = 1313
  Top = 247
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1095#1077#1090#1072' '#1085#1072' '#1086#1087#1083#1072#1090#1091' '#1091#1089#1083#1091#1075' '#1046#1050#1061
  ClientHeight = 500
  ClientWidth = 459
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
    Top = 369
    Width = 459
    Height = 61
    Align = alTop
    TabOrder = 2
    object Button1: TButton
      Left = 232
      Top = 22
      Width = 73
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 312
      Top = 22
      Width = 73
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 8
      Width = 145
      Height = 29
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
      TabOrder = 1
      WordWrap = True
    end
    object CheckBox5: TCheckBox
      Left = 8
      Top = 27
      Width = 145
      Height = 29
      Caption = #1083#1072#1079#1077#1088#1085#1099#1081' '#1087#1088#1080#1085#1090#1077#1088
      TabOrder = 3
      WordWrap = True
      OnClick = CheckBox5Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 459
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 86
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072', '#1089
    end
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 78
      Height = 13
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1090#1095#1077#1090#1072
    end
    object Label9: TLabel
      Left = 80
      Top = 80
      Width = 12
      Height = 13
      Caption = #1087#1086
      Visible = False
    end
    object Label10: TLabel
      Left = 229
      Top = 16
      Width = 18
      Height = 13
      Caption = ', '#1087#1086
    end
    object Label11: TLabel
      Left = 229
      Top = 40
      Width = 81
      Height = 13
      Caption = #1087#1077#1095#1072#1090#1072#1090#1100' '#1086#1073#1098#1077#1084
      Enabled = False
    end
    object Label12: TLabel
      Left = 229
      Top = 64
      Width = 33
      Height = 13
      Caption = #1086#1073#1098#1105#1084
      Enabled = False
    end
    object Label15: TLabel
      Left = 229
      Top = 88
      Width = 36
      Height = 13
      Caption = #1080#1085#1076#1077#1082#1089
      Enabled = False
    end
    object Edit1: TEdit
      Left = 280
      Top = 56
      Width = 57
      Height = 21
      Enabled = False
      TabOrder = 0
      OnChange = Edit1Change
    end
    object cbbPostIndex: TcxLookupComboBox
      Left = 280
      Top = 80
      Enabled = False
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'POSTCODE'
      Properties.ListColumns = <
        item
          FieldName = 'POSTCODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill.DS_postcode
      TabOrder = 1
      Width = 105
    end
    object cx3: TcxLookupComboBox
      Left = 256
      Top = 8
      Properties.DropDownWidth = 110
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_sel_obj
      Properties.OnCloseUp = cxLookupComboBox3PropertiesCloseUp
      TabOrder = 2
      Width = 129
    end
    object cxLookupComboBox4: TcxLookupComboBox
      Left = 320
      Top = 32
      Properties.DropDownHeight = 250
      Properties.DropDownRows = 16
      Properties.DropDownWidth = 65
      Properties.GridMode = True
      Properties.KeyFieldNames = 'FIRST_REC'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_ls_cnt
      Properties.OnPopup = cxLookupComboBox4PropertiesPopup
      TabOrder = 3
      Width = 65
    end
    object cxImageComboBox2: TcxImageComboBox
      Left = 96
      Top = 8
      Properties.Items = <>
      Properties.OnChange = cxImageComboBox2PropertiesChange
      Properties.OnCloseUp = cxImageComboBox2PropertiesCloseUp
      TabOrder = 4
      Width = 129
    end
    object lkpMgFrom: TcxLookupComboBox
      Left = 96
      Top = 40
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'MG1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_mg
      Properties.OnCloseUp = lkpMgFromPropertiesCloseUp
      TabOrder = 5
      Width = 97
    end
    object lkpMgTo: TcxLookupComboBox
      Left = 96
      Top = 72
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'MG1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_mg1
      Properties.OnCloseUp = lkpMgToPropertiesCloseUp
      TabOrder = 6
      Width = 97
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 145
    Width = 459
    Height = 224
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 28
      Width = 9
      Height = 13
      Caption = #1089':'
    end
    object Label1: TLabel
      Left = 104
      Top = 28
      Width = 15
      Height = 13
      Caption = #1087#1086':'
    end
    object Label2: TLabel
      Left = 8
      Top = 98
      Width = 14
      Height = 13
      Caption = #1091#1083'.'
      Enabled = False
    end
    object Label6: TLabel
      Left = 171
      Top = 98
      Width = 9
      Height = 13
      Caption = #1076'.'
      Enabled = False
    end
    object Label7: TLabel
      Left = 313
      Top = 98
      Width = 15
      Height = 13
      Caption = #1082#1074'.'
      Enabled = False
    end
    object Label8: TLabel
      Left = 7
      Top = 63
      Width = 15
      Height = 13
      Caption = #1059#1050
      Enabled = False
    end
    object Label13: TLabel
      Left = 8
      Top = 128
      Width = 99
      Height = 13
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1095#1077#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 56
      Top = 152
      Width = 50
      Height = 13
      Caption = #1064#1072#1073#1083#1086#1085':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 120
      Top = 176
      Width = 92
      Height = 13
      Caption = #1055#1091#1090#1100' '#1101#1089#1082#1087#1086#1088#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CheckBox2: TCheckBox
      Left = 248
      Top = 6
      Width = 157
      Height = 25
      Caption = #1087#1077#1095#1072#1090#1072#1090#1100' '#1089#1090#1072#1088#1099#1081' '#1092#1086#1085#1076
      TabOrder = 0
      WordWrap = True
    end
    object CheckBox4: TCheckBox
      Left = 248
      Top = 43
      Width = 133
      Height = 25
      Caption = #1087#1077#1085#1103' '#1085#1072' '#1090#1077#1082'. '#1076#1072#1090#1091
      Checked = True
      State = cbChecked
      TabOrder = 1
      WordWrap = True
    end
    object CheckBox3: TCheckBox
      Left = 248
      Top = 62
      Width = 133
      Height = 25
      Caption = #1088#1072#1089#1089#1095#1080#1090#1072#1090#1100
      TabOrder = 2
      WordWrap = True
    end
    object chk1: TCheckBox
      Left = 248
      Top = 25
      Width = 157
      Height = 25
      Caption = #1087#1077#1095#1072#1090#1072#1090#1100' '#1076#1086#1087'.'#1089#1095#1077#1090#1072
      Checked = True
      State = cbChecked
      TabOrder = 3
      WordWrap = True
    end
    object cbbUk: TcxLookupComboBox
      Left = 24
      Top = 56
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'REU'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_reu
      Properties.OnCloseUp = cbb1PropertiesCloseUp
      TabOrder = 4
      Width = 145
    end
    object cxImageComboBox1: TcxImageComboBox
      Left = 112
      Top = 120
      Properties.Items = <
        item
          Description = '1. '#1042#1089#1077
          ImageIndex = 0
          Value = 0
        end
        item
          Description = '2. '#1054#1089#1085#1086#1074#1085#1099#1077' + '#1082#1072#1087#1088#1077#1084#1086#1085#1090
          Value = 1
        end
        item
          Description = '3. '#1056#1057#1054
          Value = 2
        end>
      TabOrder = 5
      Width = 89
    end
    object cxCheckComboBox1: TcxCheckComboBox
      Left = 216
      Top = 120
      BeepOnEnter = False
      Properties.EditValueFormat = cvfStatesString
      Properties.Items = <>
      TabOrder = 6
      Width = 161
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 120
      Top = 147
      Properties.KeyFieldNames = 'FNAME_SCH'
      Properties.ListColumns = <
        item
          FieldName = 'FNAME_SCH'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_spr_services
      Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
      TabOrder = 7
      Width = 257
    end
    object chkExportPDF: TCheckBox
      Left = 4
      Top = 176
      Width = 112
      Height = 17
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' PDF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = chkExportPDFClick
    end
    object edtExpportPath: TEdit
      Left = 216
      Top = 172
      Width = 168
      Height = 21
      Enabled = False
      TabOrder = 9
      Text = 'c:\temp\export'
    end
    object CheckBox7: TCheckBox
      Left = 379
      Top = 122
      Width = 19
      Height = 17
      Hint = #1057#1085#1103#1090#1100'/'#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1074#1089#1077' '#1086#1090#1084#1077#1095#1077#1085#1085#1099#1077' '#1101#1083#1077#1084#1077#1085#1090#1099
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 10
      OnClick = CheckBox7Click
    end
    object chkExportFlow: TCheckBox
      Left = 3
      Top = 191
      Width = 166
      Height = 29
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1087#1086#1090#1086#1082#1086#1084' '#1074' PDF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      WordWrap = True
      OnClick = chkExportFlowClick
    end
    object cbbNd: TcxLookupComboBox
      Left = 184
      Top = 93
      Enabled = False
      Properties.GridMode = True
      Properties.KeyFieldNames = 'REU;KUL;ND_ID'
      Properties.ListColumns = <
        item
          FieldName = 'ND'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_houses
      Properties.OnCloseUp = cbbNdPropertiesCloseUp
      TabOrder = 12
      OnEnter = cbbNdEnter
      Width = 129
    end
    object cbbKw: TcxLookupComboBox
      Left = 328
      Top = 93
      Enabled = False
      Properties.DropDownWidth = 200
      Properties.GridMode = True
      Properties.KeyFieldNames = 'LSK'
      Properties.ListColumns = <
        item
          FieldName = 'KW'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_kw
      Properties.OnCloseUp = cxLookupComboBox3PropertiesCloseUp
      TabOrder = 13
      Width = 105
    end
    object cbbStreet: TcxLookupComboBox
      Left = 24
      Top = 93
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'STREET'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_streets
      Properties.OnCloseUp = cbbStreetPropertiesCloseUp
      TabOrder = 14
      OnEnter = cbbStreetEnter
      Width = 145
    end
    object cxmskdtLskFrom: TcxMaskEdit
      Left = 24
      Top = 20
      Properties.EditMask = '00000000;1;_'
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnChange = cxmskdtLskFromPropertiesChange
      TabOrder = 15
      Text = '        '
      Width = 65
    end
    object cxmskdtLskTo: TcxMaskEdit
      Left = 128
      Top = 20
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      TabOrder = 16
      Text = '        '
      OnDblClick = cxmskdtLskToDblClick
      Width = 65
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 430
    Width = 459
    Height = 37
    Align = alTop
    TabOrder = 3
    object filePath: TEdit
      Left = 8
      Top = 10
      Width = 377
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 105
    Width = 459
    Height = 40
    Align = alTop
    Caption = #1060#1080#1083#1100#1090#1088' '#1087#1077#1088#1080#1086#1076#1072
    TabOrder = 4
    Visible = False
    object Label16: TLabel
      Left = 232
      Top = 19
      Width = 12
      Height = 13
      Caption = #1087#1086
    end
    object Label17: TLabel
      Left = 80
      Top = 19
      Width = 6
      Height = 13
      Caption = #1089
    end
    object cbbMgFrom: TcxLookupComboBox
      Left = 96
      Top = 13
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'MG1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_mg
      TabOrder = 0
      Width = 97
    end
    object cbbMgTo: TcxLookupComboBox
      Left = 256
      Top = 11
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'MG1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM_Bill2.DS_mg1
      TabOrder = 1
      Width = 97
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 480
    Width = 459
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container3
        Bevel = dxpbNone
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    object dxStatusBar1Container3: TdxStatusBarContainerControl
      Left = 0
      Top = 2
      Width = 443
      Height = 18
      object cxProgressBar1: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Width = 443
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38614.483889131900000000
    ReportOptions.LastChange = 43749.465592638900000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReport1OnReportPrint'
    Left = 448
    Top = 128
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 448
    Top = 16
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 448
    Top = 48
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 448
    Top = 80
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'frmPrintBillsStore.ini'
    StorageType = stRegistry
    Top = 256
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'c:\temp\export'
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = []
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 448
    Top = 169
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 64
  end
end
