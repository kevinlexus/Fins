object Form_add_usl: TForm_add_usl
  Left = 1325
  Top = 241
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  ClientHeight = 398
  ClientWidth = 311
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
  object Label1: TLabel
    Left = 8
    Top = 72
    Width = 124
    Height = 13
    Caption = #1055#1088#1077#1092#1080#1082#1089', '#1085#1072#1087#1088#1080#1084#1077#1088' GW'
  end
  object Label2: TLabel
    Left = 8
    Top = 94
    Width = 112
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  end
  object Label4: TLabel
    Left = 8
    Top = 142
    Width = 37
    Height = 13
    Caption = #1050#1086#1076' CD'
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label6: TLabel
    Left = 8
    Top = 216
    Width = 134
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1088#1091#1075#1086#1081' '#1082#1086#1101#1092#1092
    Enabled = False
  end
  object Label7: TLabel
    Left = 8
    Top = 264
    Width = 132
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1088#1091#1075#1091#1102' '#1085#1086#1088#1084#1091
    Enabled = False
  end
  object Label8: TLabel
    Left = 8
    Top = 312
    Width = 121
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1088#1091#1075#1091#1102' '#1086#1088#1075'.'
    Enabled = False
  end
  object Label3: TLabel
    Left = 10
    Top = 118
    Width = 167
    Height = 13
    Caption = #1059#1082#1086#1088#1086#1095#1077#1085#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083'.'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 351
    Width = 311
    Height = 47
    Align = alBottom
    TabOrder = 10
    object Button1: TButton
      Left = 150
      Top = 16
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 230
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Edit1: TEdit
    Left = 184
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 184
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 184
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 184
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit5KeyPress
  end
  object CheckBox2: TCheckBox
    Left = 8
    Top = 192
    Width = 177
    Height = 17
    Caption = #1050#1086#1101#1092#1092' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1082' '#1091' '#1091#1089#1083#1091#1075#1080':'
    Enabled = False
    TabOrder = 5
    OnClick = CheckBox2Click
  end
  object Edit6: TEdit
    Left = 184
    Top = 208
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 6
    OnKeyPress = Edit6KeyPress
  end
  object CheckBox3: TCheckBox
    Left = 8
    Top = 240
    Width = 177
    Height = 17
    Caption = #1053#1086#1088#1084#1091' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1082' '#1091' '#1091#1089#1083#1091#1075#1080':'
    Enabled = False
    TabOrder = 7
    OnClick = CheckBox3Click
  end
  object Edit7: TEdit
    Left = 184
    Top = 256
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 8
    OnKeyPress = Edit7KeyPress
  end
  object CheckBox4: TCheckBox
    Left = 8
    Top = 288
    Width = 177
    Height = 17
    Caption = #1054#1088#1075'. '#1076#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1082' '#1091' '#1091#1089#1083#1091#1075#1080':'
    Enabled = False
    TabOrder = 9
    OnClick = CheckBox4Click
  end
  object Edit4: TEdit
    Left = 184
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object cbbUsl: TcxLookupComboBox
    Left = 185
    Top = 184
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'USL'
    Properties.ListColumns = <
      item
        FieldName = 'NM'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_usl
    TabOrder = 11
    Width = 118
  end
  object cbbUsl2: TcxLookupComboBox
    Left = 185
    Top = 232
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'USL'
    Properties.ListColumns = <
      item
        FieldName = 'NM'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_usl2
    TabOrder = 12
    Width = 118
  end
  object cbbUsl3: TcxLookupComboBox
    Left = 185
    Top = 280
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'USL'
    Properties.ListColumns = <
      item
        FieldName = 'NM'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_usl3
    TabOrder = 13
    Width = 118
  end
  object cbbOrg: TcxLookupComboBox
    Left = 185
    Top = 306
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_org
    TabOrder = 14
    Width = 118
  end
  object cxrSelVar: TcxRadioGroup
    Left = 0
    Top = 1
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
    Properties.Items = <
      item
        Caption = #1050#1072#1082' '#1085#1086#1074#1091#1102' '#1091#1089#1083#1091#1075#1091
      end
      item
        Caption = #1050#1072#1082' '#1076#1086#1095#1077#1088#1085#1102#1102' '#1091#1089#1083#1091#1075#1091' '#1082' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077
      end>
    ItemIndex = 0
    TabOrder = 15
    Height = 63
    Width = 304
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.usl t')
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
    Left = 64
    Top = 152
  end
  object OD_usl2: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.usl t')
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
    Left = 64
    Top = 200
  end
  object OD_usl3: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.usl t')
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
    Left = 64
    Top = 256
  end
  object OD_t_org: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.t_org t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000003F000000020000004344010000000000030000004E50500100000000
      0002000000494401000000000008000000464B5F4F5247545001000000000004
      0000004E414D4501000000000001000000560100000000000900000050415245
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
    Session = DataModule1.OracleSession1
    Active = True
    Left = 64
    Top = 304
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 104
    Top = 152
  end
  object DS_usl2: TDataSource
    DataSet = OD_usl2
    Left = 104
    Top = 200
  end
  object DS_usl3: TDataSource
    DataSet = OD_usl3
    Left = 104
    Top = 256
  end
  object DS_org: TDataSource
    DataSet = OD_t_org
    Left = 104
    Top = 304
  end
end
