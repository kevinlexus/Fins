object Form_spr_street: TForm_spr_street
  Left = 1180
  Top = 217
  Width = 377
  Height = 457
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1091#1083#1080#1094
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
    Left = 0
    Top = 369
    Width = 361
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 198
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 286
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 361
    Height = 369
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_streets
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ID'
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'NAME'
      end
      object cxGrid1DBTableView1SETTLEMENT: TcxGridDBColumn
        DataBinding.FieldName = 'FK_SETTLEMENT'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_cities
        Width = 168
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_street: TOracleDataSet
    SQL.Strings = (
      'select p.*,  p.rowid from scott.spul p'
      'order by p.name')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      0400000005000000020000004944010000000000040000004E414D4501000000
      00000800000043445F4B4C4144520100000000000700000043445F55535A4E01
      00000000000D000000464B5F534554544C454D454E54010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 80
    Top = 80
    object OD_streetID: TStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 4
    end
    object OD_streetNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 25
    end
    object OD_streetFK_SETTLEMENT: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
      FieldName = 'FK_SETTLEMENT'
      Required = True
      OnValidate = OD_streetFK_SETTLEMENTValidate
    end
  end
  object OD_cities: TOracleDataSet
    SQL.Strings = (
      'select t.*'
      ' from scott.t_org t '
      ' join scott.t_org_tp tp on tp.cd='#39#1043#1086#1088#1086#1076#39' and tp.id=t.fk_orgtp'
      ' order by t.name')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      040000003F000000020000004944010000000000040000004E414D4501000000
      000002000000434401000000000008000000464B5F4F52475450010000000000
      030000004E505001000000000001000000560100000000000900000050415245
      4E545F4944010000000000030000005245550100000000000500000054524553
      5401000000000003000000554348010000000000030000004144520100000000
      0003000000494E4E010000000000070000004D414E4147455201000000000003
      0000004255480100000000000D000000524153434845545F5343484554010000
      000000070000004B5F5343484554010000000000090000004B4F445F4F4B4F4E
      48010000000000080000004B4F445F4F47524E0100000000000300000042494B
      0100000000000500000050484F4E45010000000000030000004B505001000000
      00000400000042414E4B0100000000000600000049445F455850010000000000
      090000004144525F52454349500100000000000E000000415554484F52495A45
      445F4449520100000000000E000000415554484F52495A45445F425548010000
      0000000C000000415554485F4449525F444F430100000000000C000000415554
      485F4255485F444F43010000000000040000004F4B504F010000000000060000
      005645525F43440100000000000900000046554C4C5F4E414D45010000000000
      0600000050484F4E45320100000000000A000000504152454E545F4944320100
      0000000007000000464B5F4F5247320100000000000700000042414E4B5F4344
      010000000000070000004144525F57575701000000000005000000454D41494C
      01000000000009000000484541445F4E414D450100000000000E000000524153
      434845545F53434845543201000000000009000000504F53545F494E44580100
      000000000B000000525F5343485F41444449540100000000000B000000464B5F
      42494C4C5F56415201000000000006000000414F475549440100000000000500
      00004F4B544D4F01000000000008000000434F44455F44454201000000000009
      000000444F4C475F4E414D450100000000000A00000042414E4B5F464E414D45
      0100000000000300000047525001000000000009000000525F5343485F474953
      0100000000000B000000444953545F5041595F54500100000000000800000041
      44525F434153480100000000000600000049535F52534F0100000000000F0000
      0049535F45584348414E47455F4749530100000000000A0000004F52475F5450
      5F474953010000000000070000004752505F4445420100000000000F00000049
      535F45584348414E47455F45585401000000000010000000534552564943455F
      4E414D455F4749530100000000001600000055534C5F464F525F435245415445
      5F4558545F4C534B0100000000001900000049535F4352454154455F4558545F
      4C534B5F494E5F4B415254010000000000110000004558545F4C534B5F464F52
      4D41545F5450010000000000150000004558545F4C534B5F4C4F41445F53414C
      444F5F5450010000000000100000004558545F4C534B5F4C4F41445F50415901
      0000000000150000004558545F4C534B5F5041595F464F524D41545F54500100
      00000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 80
    Top = 128
  end
  object DS_cities: TDataSource
    DataSet = OD_cities
    Left = 120
    Top = 128
  end
  object DS_streets: TDataSource
    DataSet = OD_street
    Left = 120
    Top = 80
  end
end
