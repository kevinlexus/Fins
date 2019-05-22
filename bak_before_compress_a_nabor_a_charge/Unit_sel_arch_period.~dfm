object Form_sel_arch_period: TForm_sel_arch_period
  Left = 831
  Top = 138
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1072#1088#1093#1080#1074#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 163
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 110
    Top = 130
    Width = 75
    Height = 25
    Caption = #1054#1082
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 198
    Top = 130
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button3Click
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 72
    Top = 48
    Width = 121
    Height = 21
    EditButtons = <>
    KeyField = 'MG'
    ListField = 'MG1'
    ListSource = DS_mg
    TabOrder = 0
    Visible = True
  end
  object OD_mg: TOracleDataSet
    SQL.Strings = (
      'select mg, substr(mg,1,4)||'#39'-'#39'||substr(mg,5,2) as mg1 from '
      'scott.period_reports p where p.id=51'
      'union all'
      'select '#39'999999'#39' as mg, '#39#1090#1077#1082#1091#1097#1080#1081#39' as mg1 from dual'
      'order by mg desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    object OD_mgMG: TStringField
      FieldName = 'MG'
      Size = 6
    end
    object OD_mgMG1: TStringField
      FieldName = 'MG1'
      Size = 7
    end
  end
  object DS_mg: TDataSource
    DataSet = OD_mg
    Left = 32
  end
end
