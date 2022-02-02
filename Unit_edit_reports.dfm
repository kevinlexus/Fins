object Form_edit_reports: TForm_edit_reports
  Left = 330
  Top = 419
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1090#1095#1105#1090#1086#1074
  ClientHeight = 77
  ClientWidth = 360
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
  object Label1: TLabel
    Left = 5
    Top = 12
    Width = 32
    Height = 13
    Caption = #1060#1072#1081#1083':'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 28
    Width = 360
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button2: TButton
      Left = 280
      Top = 16
      Width = 73
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 118
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 198
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1090#1082#1088#1099#1090#1100
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Edit1: TEdit
    Left = 40
    Top = 8
    Width = 313
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Filter = 'fr3|*.fr3'
    Left = 40
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
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 8
    Top = 48
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40128.370449189820000000
    ReportOptions.LastChange = 40128.370449189820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 72
    Top = 48
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = OpenDialog1
        Properties.Strings = (
          'FileName')
      end>
    StorageName = 'frmEditReportsStore'
    StorageType = stRegistry
    Left = 104
    Top = 48
  end
end
