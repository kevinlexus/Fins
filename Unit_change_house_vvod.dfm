object Form_change_house_vvod: TForm_change_house_vvod
  Left = 522
  Top = 134
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1074#1074#1086#1076#1072
  ClientHeight = 112
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 63
    Width = 267
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 94
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 182
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cbbVvod: TcxLookupComboBox
    Left = 65
    Top = 29
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'VVOD_NUM'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_vvod2
    TabOrder = 1
    Width = 120
  end
  object OD_vvod2: TOracleDataSet
    SQL.Strings = (
      'select null as id, '#39#1085#1077#1090' '#1074#1074#1086#1076#1072#39' as vvod_num from dual'
      'union all'
      'select v.id, to_char(v.vvod_num)'
      'from scott.c_vvod v'
      'where v.usl=:usl_ and v.house_id=:house_id_')
    Optimize = False
    Variables.Data = {
      0300000002000000050000003A55534C5F0500000000000000000000000A0000
      003A484F5553455F49445F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000020000000200000049440100000000000800000056564F445F4E554D
      010000000000}
    MasterFields = 'usl'
    DetailFields = 'usl'
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    Active = True
    object OD_vvodID: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object OD_vvod2VVOD_NUM: TStringField
      FieldName = 'VVOD_NUM'
      Size = 40
    end
  end
  object DS_vvod2: TDataSource
    DataSet = OD_vvod2
    Left = 32
  end
end
