object Form_spr_deb_org: TForm_spr_deb_org
  Left = 458
  Top = 414
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081'-'#1076#1086#1083#1078#1085#1080#1082#1086#1074
  ClientHeight = 469
  ClientWidth = 404
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
    Top = 420
    Width = 404
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 238
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 318
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
    Width = 404
    Height = 420
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_sprorg
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ID'
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'NAME'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_sprorg: TOracleDataSet
    SQL.Strings = (
      'select s.*, s.rowid'
      '  from scott.t_org s, scott.t_org_tp t'
      '  where s.fk_orgtp=t.id and t.cd='#39#1054#1056#1043'-'#1044#1054#1051#1043#39
      'order by s.name')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      040000003F000000040000004E414D4501000000000002000000494401000000
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
    Active = True
    AfterInsert = OD_sprorgAfterInsert
    Left = 80
    Top = 80
    object OD_sprorgID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
    end
    object OD_sprorgCD: TStringField
      FieldName = 'CD'
      Size = 32
    end
    object OD_sprorgFK_ORGTP: TFloatField
      FieldName = 'FK_ORGTP'
    end
    object OD_sprorgNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
    object OD_sprorgNPP: TFloatField
      FieldName = 'NPP'
    end
    object OD_sprorgV: TFloatField
      FieldName = 'V'
    end
    object OD_sprorgPARENT_ID: TFloatField
      FieldName = 'PARENT_ID'
    end
    object OD_sprorgREU: TStringField
      FieldName = 'REU'
      Size = 3
    end
    object OD_sprorgTREST: TStringField
      FieldName = 'TREST'
      Size = 2
    end
    object OD_sprorgUCH: TFloatField
      FieldName = 'UCH'
    end
  end
  object DS_sprorg: TDataSource
    DataSet = OD_sprorg
    Left = 120
    Top = 80
  end
end
