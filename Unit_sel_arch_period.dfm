object Form_sel_arch_period: TForm_sel_arch_period
  Left = 1086
  Top = 192
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
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 198
    Top = 130
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = Button3Click
  end
  object cbbMg: TcxLookupComboBox
    Left = 72
    Top = 56
    Properties.DropDownAutoSize = True
    Properties.DropDownSizeable = True
    Properties.KeyFieldNames = 'MG'
    Properties.ListColumns = <
      item
        FieldName = 'MG1'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_mg
    TabOrder = 2
    Width = 121
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
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
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
