object Form_pass: TForm_pass
  Left = 526
  Top = 170
  Width = 237
  Height = 132
  BorderIcons = []
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 73
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 38
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object GroupBox1: TGroupBox
    Left = 133
    Top = 0
    Width = 88
    Height = 93
    Align = alRight
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 64
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 7
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cxUser: TcxTextEdit
    Left = 8
    Top = 24
    TabOrder = 1
    Width = 121
  end
  object cxPass: TcxTextEdit
    Left = 8
    Top = 61
    Properties.EchoMode = eemPassword
    TabOrder = 2
    OnKeyPress = cxPassKeyPress
    Width = 121
  end
end
