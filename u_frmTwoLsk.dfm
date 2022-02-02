object frmTwoLsk: TfrmTwoLsk
  Left = 273
  Top = 223
  Width = 313
  Height = 158
  AutoSize = True
  Caption = #1055#1077#1088#1077#1085#1086#1089' '#1085#1072' '#1076#1088#1091#1075#1086#1081' '#1083'.'#1089'.'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 297
    Height = 65
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 32
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
    object lbl2: TLabel
      Left = 144
      Top = 33
      Width = 17
      Height = 13
      Caption = #1053#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxTextEdit1: TcxTextEdit
      Left = 32
      Top = 26
      TabOrder = 0
      Width = 101
    end
    object cxTextEdit2: TcxTextEdit
      Left = 176
      Top = 26
      TabOrder = 1
      Width = 101
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 70
    Width = 297
    Height = 49
    TabOrder = 1
    object Button2: TButton
      Left = 128
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      ModalResult = 1
      TabOrder = 0
    end
    object Button1: TButton
      Left = 214
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
