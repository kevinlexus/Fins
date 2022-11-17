object Form_inkass: TForm_inkass
  Left = 336
  Top = 187
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1048#1085#1082#1072#1089#1089#1072#1094#1080#1103
  ClientHeight = 133
  ClientWidth = 448
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
    Left = 8
    Top = 8
    Width = 433
    Height = 73
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 21
      Width = 158
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082' '#1074' '#1082#1072#1089#1089#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 368
      Top = 21
      Width = 25
      Height = 13
      Caption = #1088#1091#1073'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 21
      Width = 84
      Height = 13
      Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 296
      Top = 16
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 96
      Top = 16
      Width = 33
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'Edit1'
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 48
      Width = 65
      Height = 17
      Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' Z '#1086#1090#1095#1105#1090
      Caption = 'Z '#1086#1090#1095#1105#1090
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object Button1: TButton
    Left = 8
    Top = 96
    Width = 131
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1080#1085#1082#1072#1089#1089#1072#1094#1080#1102
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 96
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 152
    Top = 96
    Width = 113
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100' '#1080#1085#1082#1072#1089#1072#1094#1080#1080
    TabOrder = 2
    OnClick = Button3Click
  end
end
