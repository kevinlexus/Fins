object frmTwoDates: TfrmTwoDates
  Left = 244
  Top = 520
  AutoSize = True
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1077#1088#1080#1086#1076
  ClientHeight = 119
  ClientWidth = 297
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 297
    Height = 65
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
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
      Left = 146
      Top = 33
      Width = 17
      Height = 13
      Caption = #1055#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 17
      Top = 8
      Width = 254
      Height = 26
      Caption = #1054#1073#1088#1072#1079#1077#1094', '#1074#1099#1079#1086#1074#1072' '#1084#1086#1076#1072#1083#1100#1085#1086#1081' '#1092#1086#1088#1084#1099', '#1089' '#1087#1077#1088#1077#1076#1072#1095#1077#1081' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074'!!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
      WordWrap = True
    end
    object cxdtdt1: TcxDateEdit
      Left = 19
      Top = 24
      TabOrder = 0
      Width = 121
    end
    object cxdtdt2: TcxDateEdit
      Left = 168
      Top = 24
      TabOrder = 1
      Width = 121
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
