object frmReplaceKlsk: TfrmReplaceKlsk
  Left = 695
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1047#1072#1084#1077#1085#1072' KLSK '#1080' HOUSE_ID'
  ClientHeight = 150
  ClientWidth = 387
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
  object Label1: TLabel
    Left = 16
    Top = 88
    Width = 154
    Height = 13
    Caption = #1079#1072#1084#1077#1085#1080#1090#1100' '#1085#1072' KLSK '#1060#1080#1085'.'#1083#1080#1094'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 120
    Width = 166
    Height = 13
    Caption = #1079#1072#1084#1077#1085#1080#1090#1100' '#1085#1072' HOUSE_ID '#1076#1086#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 120
    Top = 56
    Width = 52
    Height = 13
    Caption = #1051#1080#1094'.'#1089#1095#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 369
    Height = 26
    Alignment = taCenter
    Caption = 
      #1042#1085#1080#1084#1072#1085#1080#1077'! '#1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1103'! '#1054#1090#1084#1077#1085#1080#1090#1100' '#1085#1077#1074#1086#1079#1084#1086#1078#1085#1086'.'#13#10#1042#1099#1087#1086#1083#1085#1103#1090 +
      #1100' '#1087#1088#1086#1074#1077#1088#1080#1074' '#1082#1086#1088#1088#1077#1082#1090#1085#1086#1089#1090#1100' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1086#1074'!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 304
    Top = 80
    Width = 75
    Height = 25
    Caption = #1047#1072#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 112
    Width = 75
    Height = 25
    Caption = #1047#1072#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 176
    Top = 48
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object OD_kart: TOracleDataSet
    SQL.Strings = (
      
        'select * from scott.kart k where k.lsk=scott.c_kart.find_correct' +
        '(p_lsk => :lsk)')
    Optimize = False
    Variables.Data = {0300000001000000040000003A4C534B050000000000000000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 8
    Top = 32
  end
end
