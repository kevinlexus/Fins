object Form_edit_price: TForm_edit_price
  Left = 769
  Top = 222
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 113
  ClientWidth = 321
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
  object Label5: TLabel
    Left = 8
    Top = 56
    Width = 85
    Height = 13
    Caption = #1045#1076'.'#1080#1079#1084#1077#1088#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 140
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 112
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 72
    Width = 321
    Height = 41
    TabOrder = 3
    object Button2: TButton
      Left = 14
      Top = 10
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
    end
    object Button1: TButton
      Left = 238
      Top = 10
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 96
    Top = 48
    Width = 225
    Height = 21
    KeyField = 'ID'
    ListField = 'FNAME'
    ListSource = DS_spr_meas
    TabOrder = 2
  end
  object DBNumberEditEh1: TDBNumberEditEh
    Left = 160
    Top = 0
    Width = 97
    Height = 21
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object DBNumberEditEh2: TDBNumberEditEh
    Left = 160
    Top = 24
    Width = 97
    Height = 21
    EditButtons = <>
    TabOrder = 1
    Visible = True
  end
  object OD_spr_meas: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.name||'#39', '#39'||t.fname as fname from scott.spr_meas ' +
        't')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000002000000494401000000000005000000464E414D45010000
      000000}
    Session = DataModule1.OracleSession1
    Left = 96
    Top = 88
  end
  object DS_spr_meas: TDataSource
    DataSet = OD_spr_meas
    Left = 128
    Top = 88
  end
end
