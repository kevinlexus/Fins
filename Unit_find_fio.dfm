object Form_find_fio: TForm_find_fio
  Left = 493
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1060'.'#1048'.'#1054'. '#1082#1074#1072#1088#1090#1080#1088#1086#1089#1098#1077#1084#1097#1080#1082#1072
  ClientHeight = 109
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
 
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 17
    Width = 43
    Height = 13
    Caption = #1060'.'#1048'.'#1054'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 56
    Width = 273
    Height = 49
    TabOrder = 0
    object Button1: TButton
      Left = 104
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 190
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cxtxtFIO: TcxTextEdit
    Left = 56
    Top = 12
    TabOrder = 1
    OnKeyPress = cxtxtFIOKeyPress
    Width = 217
  end
  object cxchckbx1: TcxCheckBox
    Left = 8
    Top = 40
    Caption = #1048#1089#1082#1072#1090#1100' '#1074' '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1080#1093
    TabOrder = 2
  end
end
