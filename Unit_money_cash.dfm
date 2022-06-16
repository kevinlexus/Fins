object Form_money_cash: TForm_money_cash
  Left = 1009
  Top = 200
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 216
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 40
    Width = 37
    Height = 13
    Caption = #1057#1091#1084#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 80
    Width = 232
    Height = 52
    Caption = 
      #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077': '#1095#1090#1086#1073#1099' '#1092#1086#1088#1084#1072' '#1074#1086#1079#1074#1088#1072#1097#1072#1083#1072' '#1087#1088#1072#1074#1080#1083#1100#1085#1099#1081' ModalResult,'#13#10#1085#1091#1078#1085 +
      #1086' '#1085#1077' '#1076#1077#1083#1072#1090#1100' Action:=caFree'#13#10#1080' Close '#1085#1072' '#1082#1085#1086#1087#1082#1077'!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 175
    Width = 352
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      352
      41)
    object Button1: TButton
      Left = 190
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1082
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 270
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxSumma: TcxMaskEdit
    Left = 75
    Top = 35
    ParentFont = False
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
    Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    OnKeyPress = cxSummaKeyPress
    Width = 109
  end
end
