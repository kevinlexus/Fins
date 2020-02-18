object Form_load_files: TForm_load_files
  Left = 1361
  Top = 169
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1092#1072#1081#1083#1086#1074' '#1074' '#1089#1080#1089#1090#1077#1084#1091
  ClientHeight = 125
  ClientWidth = 356
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
    Left = 8
    Top = 64
    Width = 54
    Height = 13
    Caption = #1058#1080#1087' '#1092#1072#1081#1083#1072
  end
  object GroupBox1: TGroupBox
    Left = 216
    Top = 0
    Width = 137
    Height = 121
    TabOrder = 0
    object Button2: TButton
      Left = 6
      Top = 16
      Width = 123
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 6
      Top = 88
      Width = 123
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object wwDBComboBox1: TwwDBComboBox
    Left = 8
    Top = 80
    Width = 201
    Height = 21
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      #1057#1091#1073#1089#1080#1076#1080#1103' '#1076#1083#1103' '#1080#1085#1092'.'#9'1')
    ItemIndex = 0
    Sorted = False
    TabOrder = 2
    UnboundDataType = wwDefault
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 201
    Height = 57
    Lines.Strings = (
      #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091', '#1085#1072' '#1089#1077#1088#1074#1077#1088#1077': ')
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    InitialDir = 'c:\temp'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 224
    Top = 56
  end
end
