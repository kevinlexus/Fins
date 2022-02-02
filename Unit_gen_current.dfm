object Form_gen_current: TForm_gen_current
  Left = 334
  Top = 799
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1077
  ClientHeight = 126
  ClientWidth = 332
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
    Left = 118
    Top = 18
    Width = 9
    Height = 13
    Caption = #1057
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 18
    Width = 15
    Height = 13
    Caption = #1087#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 1
    Top = 40
    Width = 329
    Height = 2
  end
  object Label3: TLabel
    Left = 192
    Top = 56
    Width = 47
    Height = 13
    Caption = #1053#1072' '#1076#1072#1090#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox5: TGroupBox
    Left = -5
    Top = 76
    Width = 334
    Height = 49
    TabOrder = 2
    object Button2: TButton
      Left = 254
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 168
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object CheckBox1: TCheckBox
    Left = -3
    Top = 16
    Width = 121
    Height = 17
    Caption = #1058#1077#1082#1091#1097#1072#1103' '#1086#1087#1083#1072#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = -1
    Top = 56
    Width = 121
    Height = 17
    Caption = #1058#1077#1082#1091#1097#1080#1077' '#1076#1086#1083#1075#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = CheckBox2Click
  end
  object cxDtFrom: TcxDateEdit
    Left = 132
    Top = 12
    TabOrder = 3
    Width = 89
  end
  object cxDtTo: TcxDateEdit
    Left = 240
    Top = 13
    TabOrder = 4
    Width = 89
  end
  object cxDt: TcxDateEdit
    Left = 241
    Top = 49
    TabOrder = 5
    Width = 89
  end
end
