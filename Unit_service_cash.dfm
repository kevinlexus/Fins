object Form_service_cash: TForm_service_cash
  Left = 654
  Top = 272
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1072#1089#1089#1072
  ClientHeight = 392
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 12
    Width = 115
    Height = 13
    Caption = #1048#1053#1053' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1050#1050#1052':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 36
    Width = 103
    Height = 13
    Caption = 'IP '#1090#1077#1082#1091#1097#1077#1075#1086' '#1050#1050#1052':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn2: TButton
    Left = 8
    Top = 64
    Width = 265
    Height = 25
    Caption = #1042#1085#1077#1089#1090#1080' '#1089#1091#1084#1084#1091
    TabOrder = 0
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 8
    Top = 96
    Width = 265
    Height = 25
    Caption = #1042#1099#1087#1083#1072#1090#1080#1090#1100' '#1089#1091#1084#1084#1091
    TabOrder = 1
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 8
    Top = 184
    Width = 265
    Height = 25
    Caption = #1054#1090#1095#1077#1090' '#1073#1077#1079' '#1075#1072#1096#1077#1085#1080#1103' (X '#1086#1090#1095#1077#1090')'
    TabOrder = 2
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 8
    Top = 248
    Width = 265
    Height = 25
    Caption = #1054#1090#1095#1077#1090' '#1089' '#1075#1072#1096#1077#1085#1080#1077#1084' (Z '#1086#1090#1095#1077#1090') + '#1069#1082#1074#1072#1081#1088#1080#1085#1075
    TabOrder = 4
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 8
    Top = 216
    Width = 265
    Height = 25
    Caption = #1054#1090#1095#1077#1090' '#1073#1077#1079' '#1075#1072#1096#1077#1085#1080#1103', '#1087#1086' '#1086#1090#1076#1077#1083#1072#1084' (X '#1086#1090#1095#1077#1090')'
    TabOrder = 3
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 8
    Top = 360
    Width = 265
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1089#1084#1077#1085#1091
    TabOrder = 5
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 8
    Top = 328
    Width = 265
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1095#1077#1082
    TabOrder = 6
    OnClick = btn8Click
  end
  object edt1: TEdit
    Left = 128
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object edt2: TEdit
    Left = 128
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 8
    Top = 128
    Width = 265
    Height = 25
    Caption = #1042#1086#1079#1074#1088#1072#1090' '#1069#1082#1074#1072#1081#1088#1080#1085#1075
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 280
    Width = 265
    Height = 25
    Caption = #1069#1082#1074#1072#1081#1088#1080#1085#1075' - '#1089#1074#1077#1088#1082#1072' '#1080#1090#1086#1075#1086#1074
    TabOrder = 10
    OnClick = Button2Click
  end
end
