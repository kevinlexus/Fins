object Form_get_cnt_sch: TForm_get_cnt_sch
  Left = 1912
  Top = 217
  BorderStyle = bsSingle
  Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
  ClientHeight = 113
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 321
    Height = 57
    TabOrder = 0
    object Label5: TLabel
      Left = 3
      Top = 23
      Width = 66
      Height = 13
      Alignment = taCenter
      Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxMeter: TcxMaskEdit
      Left = 97
      Top = 16
      ParentFont = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyDown = cxMeterKeyDown
      Width = 163
    end
  end
  object GroupBox2: TGroupBox
    Left = -1
    Top = 64
    Width = 322
    Height = 49
    TabOrder = 1
    object Button1: TButton
      Left = 178
      Top = 16
      Width = 63
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 250
      Top = 16
      Width = 63
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
