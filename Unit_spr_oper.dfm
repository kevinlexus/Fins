object Form_spr_oper: TForm_spr_oper
  Left = 1305
  Top = 240
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1087#1077#1088#1072#1094#1080#1081
  ClientHeight = 416
  ClientWidth = 702
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
    Top = 367
    Width = 702
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 518
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 606
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
    Width = 702
    Height = 367
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_oper
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1OPER: TcxGridDBColumn
        DataBinding.FieldName = 'OPER'
      end
      object cxGrid1DBTableView1NAIM: TcxGridDBColumn
        DataBinding.FieldName = 'NAIM'
      end
      object cxGrid1DBTableView1sprorg_name: TcxGridDBColumn
        DataBinding.FieldName = 'sprorg_name'
      end
      object cxGrid1DBTableView1usl_nm: TcxGridDBColumn
        DataBinding.FieldName = 'usl_nm'
      end
      object cxGrid1DBTableView1usl_nm1: TcxGridDBColumn
        DataBinding.FieldName = 'usl_nm1'
      end
      object cxGrid1DBTableView1ISCOUNTER: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079#1099#1074'.'#1089#1095'.?'
        DataBinding.FieldName = 'ISCOUNTER'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_oper: TOracleDataSet
    SQL.Strings = (
      'select p.*,  p.rowid from scott.oper p'
      'order by p.oper')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000B000000040000004F504552010000000000040000004E41494D0100
      000000000300000054504C010000000000040000004F49475501000000000004
      00000053564F4901000000000004000000504F53540100000000000600000046
      4B5F55534C01000000000006000000464B5F4F52470100000000000A00000046
      4B5F55534C5F43484B010000000000090000004953434F554E54455201000000
      00000C000000434153485F4F5045525F5450010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 80
    Top = 80
    object OD_operOPER: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'OPER'
      ReadOnly = True
      Size = 3
    end
    object OD_operNAIM: TStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      DisplayWidth = 20
      FieldName = 'NAIM'
      Size = 17
    end
    object OD_opersprorg_name: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      DisplayWidth = 26
      FieldKind = fkLookup
      FieldName = 'sprorg_name'
      LookupDataSet = OD_t_org
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'FK_ORG'
      Lookup = True
    end
    object OD_operusl_nm: TStringField
      DisplayLabel = #1069#1082#1089#1082#1083#1102#1079#1080#1074#1085#1072#1103' '#1091#1089#1083#1091#1075#1072' '
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'usl_nm'
      LookupDataSet = OD_usl
      LookupKeyFields = 'USL'
      LookupResultField = 'NM'
      KeyFields = 'FK_USL'
      Lookup = True
    end
    object OD_operusl_nm1: TStringField
      DisplayLabel = #1058#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1076#1072#1085#1085#1086#1081' '#1091#1089#1083#1091#1075#1080
      DisplayWidth = 22
      FieldKind = fkLookup
      FieldName = 'usl_nm1'
      LookupDataSet = OD_usl2
      LookupKeyFields = 'USL'
      LookupResultField = 'NM'
      KeyFields = 'FK_USL_CHK'
      Lookup = True
    end
    object OD_operFK_USL: TStringField
      DisplayWidth = 3
      FieldName = 'FK_USL'
      Visible = False
      Size = 3
    end
    object OD_operFK_USL_CHK: TStringField
      DisplayWidth = 3
      FieldName = 'FK_USL_CHK'
      Visible = False
      Size = 3
    end
    object OD_operFK_ORG: TFloatField
      FieldName = 'FK_ORG'
    end
    object OD_operISCOUNTER: TFloatField
      FieldName = 'ISCOUNTER'
    end
  end
  object OD_t_org: TOracleDataSet
    SQL.Strings = (
      
        'select s.id, s.fk_orgtp, s.id||'#39' '#39'||s.name as name from scott.t_' +
        'org s'
      ' order by s.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000004E414D4501000000000002000000494401000000
      000008000000464B5F4F52475450010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 80
    Top = 120
    object OD_t_orgNAME: TStringField
      FieldName = 'NAME'
      Size = 35
    end
    object OD_t_orgID: TFloatField
      FieldName = 'ID'
      Required = True
    end
  end
  object DS_t_org: TDataSource
    DataSet = OD_t_org
    Left = 112
    Top = 120
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select * from scott.usl u')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000310000000400000055534C4D0100000000000300000055534C010000
      000000050000004B41525457010000000000040000004B574E49010000000000
      030000004C50570100000000000600000045445F495A4D010000000000020000
      004E4D010000000000030000004E4D310100000000000500000055534C5F5001
      00000000000600000053505441524E0100000000000800000055534C5F545950
      450100000000000700000055534C5F504C520100000000000800000055534C5F
      4E4F524D010000000000070000005459505F55534C0100000000000900000055
      534C5F4F524445520100000000000900000055534C5F54595045320100000000
      000800000055534C5F53554253010000000000030000004E4D32010000000000
      030000004E4D33010000000000020000004344010000000000030000004E5050
      0100000000000A000000464B5F43414C435F5450010000000000040000005553
      4C4701000000000007000000434F554E54455201000000000009000000484156
      455F56564F44010000000000070000004E5F50524F47530100000000000A0000
      00464B5F55534C5F50454E0100000000000600000043414E5F56560100000000
      000700000049535F49544552010000000000070000004D41585F564F4C010000
      0000000B000000464B5F55534C5F43484C440100000000000D0000004652435F
      4745545F50524943450100000000000800000055534C5F454D50540100000000
      000A000000504152454E545F55534C0100000000000A000000434852475F524F
      554E440100000000000A00000042494C4C5F4252414B450100000000000E0000
      0049535F5357505F50454E5F4F524701000000000008000000464F525F415243
      480100000000000A0000004C494E4B45445F55534C0100000000000300000049
      44530100000000000900000054505F50454E5F44540100000000000A00000054
      505F50454E5F5245460100000000000700000055534C5F564F4C010000000000
      0800000042494C4C5F434F4C0100000000000900000042494C4C5F434F4C3201
      0000000000080000004E4D5F53484F52540100000000000B0000005553455F56
      4F4C5F43414E01000000000009000000484944455F434852470100000000000B
      00000055534C4D5F47524F555031010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 80
    Top = 160
    object OD_uslUSL: TStringField
      FieldName = 'USL'
      Required = True
      Size = 3
    end
    object OD_uslNM1: TStringField
      FieldName = 'NM1'
      Size = 35
    end
    object OD_uslNM: TStringField
      FieldName = 'NM'
      Size = 35
    end
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 112
    Top = 160
  end
  object OD_usl2: TOracleDataSet
    SQL.Strings = (
      'select * from scott.usl u')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000310000000400000055534C4D0100000000000300000055534C010000
      000000050000004B41525457010000000000040000004B574E49010000000000
      030000004C50570100000000000600000045445F495A4D010000000000020000
      004E4D010000000000030000004E4D310100000000000500000055534C5F5001
      00000000000600000053505441524E0100000000000800000055534C5F545950
      450100000000000700000055534C5F504C520100000000000800000055534C5F
      4E4F524D010000000000070000005459505F55534C0100000000000900000055
      534C5F4F524445520100000000000900000055534C5F54595045320100000000
      000800000055534C5F53554253010000000000030000004E4D32010000000000
      030000004E4D33010000000000020000004344010000000000030000004E5050
      0100000000000A000000464B5F43414C435F5450010000000000040000005553
      4C4701000000000007000000434F554E54455201000000000009000000484156
      455F56564F44010000000000070000004E5F50524F47530100000000000A0000
      00464B5F55534C5F50454E0100000000000600000043414E5F56560100000000
      000700000049535F49544552010000000000070000004D41585F564F4C010000
      0000000B000000464B5F55534C5F43484C440100000000000D0000004652435F
      4745545F50524943450100000000000800000055534C5F454D50540100000000
      000A000000504152454E545F55534C0100000000000A000000434852475F524F
      554E440100000000000A00000042494C4C5F4252414B450100000000000E0000
      0049535F5357505F50454E5F4F524701000000000008000000464F525F415243
      480100000000000A0000004C494E4B45445F55534C0100000000000300000049
      44530100000000000900000054505F50454E5F44540100000000000A00000054
      505F50454E5F5245460100000000000700000055534C5F564F4C010000000000
      0800000042494C4C5F434F4C0100000000000900000042494C4C5F434F4C3201
      0000000000080000004E4D5F53484F52540100000000000B0000005553455F56
      4F4C5F43414E01000000000009000000484944455F434852470100000000000B
      00000055534C4D5F47524F555031010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 80
    Top = 192
    object StringField1: TStringField
      FieldName = 'USL'
      Required = True
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'NM1'
      Size = 35
    end
    object OD_usl2NM: TStringField
      FieldName = 'NM'
      Size = 35
    end
  end
  object DS_usl2: TDataSource
    DataSet = OD_usl2
    Left = 112
    Top = 192
  end
  object DS_oper: TDataSource
    DataSet = OD_oper
    Left = 112
    Top = 80
  end
end
