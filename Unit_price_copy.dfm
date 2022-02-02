object Form_price_copy: TForm_price_copy
  Left = 1192
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1072#1089#1094#1077#1085#1086#1082
  ClientHeight = 100
  ClientWidth = 442
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 442
    Height = 49
    Align = alTop
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103', '#1076#1083#1103' '#1088#1072#1089#1094#1077#1085#1086#1082
    TabOrder = 0
    object cbbOrg: TcxLookupComboBox
      Left = 4
      Top = 18
      Enabled = False
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_t_org2
      TabOrder = 0
      Width = 429
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 51
    Width = 442
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button3: TButton
      Left = 166
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 254
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object OD_t_org2: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.id||'#39' '#39'||t.name as name, tp.name as gr_name'
      'from scott.t_org t, scott.t_org_tp tp '
      'where t.fk_orgtp=tp.id'
      'order by tp.name, t.name'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000003000000020000004944010000000000040000004E414D4501000000
      00000700000047525F4E414D45010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 56
    object StringField1: TStringField
      DisplayWidth = 20
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
    object OD_t_org2GR_NAME: TStringField
      DisplayWidth = 15
      FieldName = 'GR_NAME'
      Required = True
      Size = 32
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object DS_t_org2: TDataSource
    DataSet = OD_t_org2
    Left = 56
    Top = 56
  end
end
