object Form_change_house_status: TForm_change_house_status
  Left = 236
  Top = 143
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1090#1072#1090#1091#1089#1072
  ClientHeight = 112
  ClientWidth = 267
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
  object Label3: TLabel
    Left = 8
    Top = 24
    Width = 41
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 63
    Width = 267
    Height = 49
    Align = alBottom
    TabOrder = 1
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
  object wwDBLookupCombo5: TwwDBLookupCombo
    Left = 64
    Top = 16
    Width = 153
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NAME'#9'64'#9'NAME'#9#9)
    LookupTable = OD_status
    LookupField = 'ID'
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
  end
  object OD_status: TOracleDataSet
    SQL.Strings = (
      'select t.* from scott.status t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 80
    object StringField4: TStringField
      DisplayWidth = 64
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object DS_status: TDataSource
    DataSet = OD_status
    Left = 40
    Top = 80
  end
end
