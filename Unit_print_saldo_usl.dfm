object Form_print_saldo_usl: TForm_print_saldo_usl
  Left = 597
  Top = 133
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086' '#1091#1089#1083#1091#1075#1072#1084
  ClientHeight = 132
  ClientWidth = 329
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 329
    Height = 81
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1077#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 136
      Top = 56
      Width = 21
      Height = 13
      Caption = '       '
    end
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 87
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072' '#1057':'
    end
    object Label8: TLabel
      Left = 200
      Top = 24
      Width = 17
      Height = 13
      Caption = #1055#1086':'
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 96
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource1
      TabOrder = 0
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 224
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource2
      TabOrder = 1
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 184
      Top = 51
      Width = 137
      Height = 21
      Enabled = False
      KeyField = 'KEY'
      ListField = 'REU'
      ListSource = DS_reu
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 16
      Top = 52
      Width = 113
      Height = 21
      KeyField = 'MENU_ID'
      ListField = 'NAME'
      ListSource = DS_perm_menu
      TabOrder = 3
      OnCloseUp = DBLookupComboBox3CloseUp
      OnKeyUp = DBLookupComboBox3KeyUp
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 83
    Width = 329
    Height = 49
    TabOrder = 1
    object Button4: TButton
      Left = 153
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button1: TButton
      Left = 238
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object OD_reu_trest: TOracleDataSet
    SQL.Strings = (
      'select reu as key, reu from scott.s_reu_trest')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000030000004B455901000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 72
    Top = 40
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  scott.rep_saldo.report_saldo_uslm2(:reu_, :trest_, :mg_, :mg1_' +
        ',  :kul_, :nd_, :uch_, :var_, :prep_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000300000030310000000000040000003A4D475F05
      000000070000003230303431310000000000050000003A4D47315F0500000007
      0000003230303431310000000000050000003A4B554C5F050000000000000000
      000000040000003A4E445F050000000000000000000000050000003A5543485F
      0300000000000000000000000F0000003A505245505F524546435552534F5274
      0000000000000000000000050000003A5641525F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001000000007000000494E444542455401000000000008000000494E4B
      5245444954010000000000070000004348415247455301000000000007000000
      4348414E474553010000000000070000005041594D454E540100000000000200
      0000504E010000000000080000004F5554444542455401000000000009000000
      4F55544B52454449540100000000000600000053554253494401000000000003
      0000004E4D310100000000000400000054595045010000000000060000005052
      454450520100000000000500000050524956530100000000000A000000505249
      56535F434954590100000000000700000043485F46554C4C0100000000000800
      00004348414E47455332010000000000}
    Session = DataModule1.OracleSession1
    Left = 40
    Top = 40
  end
  object OracleDataSet2: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t where t.id=:v' +
        'ar_'
      'order by mg desc'
      '')
    Optimize = False
    Variables.Data = {
      0300000001000000050000003A5641525F030000000400000001000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 72
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 104
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = OracleDataSet2
    Left = 128
    Top = 72
  end
  object DS_reu: TDataSource
    DataSet = OD_reu_trest
    Left = 160
    Top = 72
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 192
    Top = 72
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      
        'select mg, scott.utils.MONTH_NAME1(substr(mg,5,2))||'#39' '#39'||substr(' +
        'mg,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t where t.id=:' +
        'var_'
      'order by mg desc'
      '')
    Optimize = False
    Variables.Data = {
      0300000001000000050000003A5641525F030000000400000001000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 40
  end
  object OD_perm_menu: TOracleDataSet
    SQL.Strings = (
      'select  menu_id, name from scott.v_permissions_menu3 t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D454E555F4944010000000000040000004E414D
      45010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 72
  end
  object DS_perm_menu: TDataSource
    DataSet = OD_perm_menu
    Left = 136
    Top = 168
  end
  object OD_streets: TOracleDataSet
    SQL.Strings = (
      
        'select distinct s.id, s.name from scott.spul s,scott.v_permissio' +
        'ns_nd v'
      'where v.kul=s.id'
      'order by name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 168
  end
  object DS_streets: TDataSource
    DataSet = OD_streets
    Left = 72
    Top = 168
  end
  object DS_houses: TDataSource
    Left = 104
    Top = 168
  end
  object OD_itog1: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_saldo.report_saldo_org_uslm_itog2 (type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      '                                        uch_ => :uch_,'
      
        '                                       prep_refcursor=> :prep_re' +
        'fcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000060000
      003A545950455F0500000002000000300000000000060000003A55534C4B5F05
      000000040000003030330000000000050000003A4B554C5F0500000000000000
      00000000040000003A4E445F050000000000000000000000050000003A554348
      5F0300000000000000000000000F0000003A505245505F524546435552534F52
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000003000000524555010000000000020000004E440100000000
      0007000000494E444542455401000000000008000000494E4B52454449540100
      000000000700000043484152474553010000000000070000004348414E474553
      010000000000070000005041594D454E5401000000000002000000504E010000
      000000080000004F55544445424554010000000000090000004F55544B524544
      4954010000000000030000005543480100000000000600000053554253494401
      0000000000040000004E414D4501000000000005000000545245535401000000
      0000030000004E4D310100000000000400000054595045010000000000060000
      00535452454554010000000000}
    Session = DataModule1.OracleSession1
    Left = 8
    Top = 200
  end
  object OD_itog2: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_saldo.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      '                                        uch_ => :uch_,'
      
        '                                       prep_refcursor => :prep_r' +
        'efcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000060000
      003A545950455F0500000002000000300000000000060000003A55534C4B5F05
      000000040000003030320000000000050000003A4B554C5F0500000000000000
      00000000040000003A4E445F050000000000000000000000050000003A554348
      5F0300000000000000000000000F0000003A505245505F524546435552534F52
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000003000000524555010000000000020000004E440100000000
      0007000000494E444542455401000000000008000000494E4B52454449540100
      000000000700000043484152474553010000000000070000004348414E474553
      010000000000070000005041594D454E5401000000000002000000504E010000
      000000080000004F55544445424554010000000000090000004F55544B524544
      4954010000000000030000005543480100000000000600000053554253494401
      0000000000040000004E414D4501000000000005000000545245535401000000
      0000030000004E4D310100000000000400000054595045010000000000060000
      00535452454554010000000000}
    Session = DataModule1.OracleSession1
    Left = 8
    Top = 224
  end
  object OD_itog3: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_saldo.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      '                                        uch_ => :uch_,'
      
        '                                       prep_refcursor => :prep_r' +
        'efcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000060000
      003A545950455F0500000002000000300000000000060000003A55534C4B5F05
      000000040000003030340000000000050000003A4B554C5F0500000000000000
      00000000040000003A4E445F050000000000000000000000050000003A554348
      5F0300000000000000000000000F0000003A505245505F524546435552534F52
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000003000000524555010000000000020000004E440100000000
      0007000000494E444542455401000000000008000000494E4B52454449540100
      000000000700000043484152474553010000000000070000004348414E474553
      010000000000070000005041594D454E5401000000000002000000504E010000
      000000080000004F55544445424554010000000000090000004F55544B524544
      4954010000000000030000005543480100000000000600000053554253494401
      0000000000040000004E414D4501000000000005000000545245535401000000
      0000030000004E4D310100000000000400000054595045010000000000060000
      00535452454554010000000000}
    Session = DataModule1.OracleSession1
    Left = 8
    Top = 248
  end
  object OD_itog6: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_saldo.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      '                                        uch_ => :uch_,'
      
        '                                       prep_refcursor => :prep_r' +
        'efcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000060000
      003A545950455F0500000002000000310000000000060000003A55534C4B5F05
      000000040000003030340000000000050000003A4B554C5F0500000000000000
      00000000040000003A4E445F050000000000000000000000050000003A554348
      5F0300000000000000000000000F0000003A505245505F524546435552534F52
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000003000000524555010000000000020000004E440100000000
      0007000000494E444542455401000000000008000000494E4B52454449540100
      000000000700000043484152474553010000000000070000004348414E474553
      010000000000070000005041594D454E5401000000000002000000504E010000
      000000080000004F55544445424554010000000000090000004F55544B524544
      4954010000000000030000005543480100000000000600000053554253494401
      0000000000040000004E414D4501000000000005000000545245535401000000
      0000030000004E4D310100000000000400000054595045010000000000060000
      00535452454554010000000000}
    Session = DataModule1.OracleSession1
    Left = 48
    Top = 248
  end
  object OD_itog5: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_saldo.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      '                                        uch_ => :uch_,'
      
        '                                       prep_refcursor => :prep_r' +
        'efcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000060000
      003A545950455F0500000002000000310000000000060000003A55534C4B5F05
      000000040000003030320000000000050000003A4B554C5F0500000000000000
      00000000040000003A4E445F050000000000000000000000050000003A554348
      5F0300000000000000000000000F0000003A505245505F524546435552534F52
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000003000000524555010000000000020000004E440100000000
      0007000000494E444542455401000000000008000000494E4B52454449540100
      000000000700000043484152474553010000000000070000004348414E474553
      010000000000070000005041594D454E5401000000000002000000504E010000
      000000080000004F55544445424554010000000000090000004F55544B524544
      4954010000000000030000005543480100000000000600000053554253494401
      0000000000040000004E414D4501000000000005000000545245535401000000
      0000030000004E4D310100000000000400000054595045010000000000060000
      00535452454554010000000000}
    Session = DataModule1.OracleSession1
    Left = 48
    Top = 224
  end
  object OD_itog4: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_saldo.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      '                                        uch_ => :uch_,'
      
        '                                       prep_refcursor => :prep_r' +
        'efcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000060000
      003A545950455F0500000002000000310000000000060000003A55534C4B5F05
      000000040000003030330000000000050000003A4B554C5F0500000000000000
      00000000040000003A4E445F050000000000000000000000050000003A554348
      5F0300000000000000000000000F0000003A505245505F524546435552534F52
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000003000000524555010000000000020000004E440100000000
      0007000000494E444542455401000000000008000000494E4B52454449540100
      000000000700000043484152474553010000000000070000004348414E474553
      010000000000070000005041594D454E5401000000000002000000504E010000
      000000080000004F55544445424554010000000000090000004F55544B524544
      4954010000000000030000005543480100000000000600000053554253494401
      0000000000040000004E414D4501000000000005000000545245535401000000
      0000030000004E4D310100000000000400000054595045010000000000060000
      00535452454554010000000000}
    Session = DataModule1.OracleSession1
    Left = 48
    Top = 200
  end
  object OD_itog7: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_saldo.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      '                                        uch_ => :uch_,'
      
        '                                       prep_refcursor => :prep_r' +
        'efcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000060000
      003A545950455F0500000002000000300000000000060000003A55534C4B5F05
      000000040000003030310000000000050000003A4B554C5F0500000000000000
      00000000040000003A4E445F050000000000000000000000050000003A554348
      5F0300000000000000000000000F0000003A505245505F524546435552534F52
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000004E414D450100000000000500000053554D4D4101
      00000000000600000053554D4D4132010000000000}
    Session = DataModule1.OracleSession1
    Left = 80
    Top = 224
  end
  object OD_itog8: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_saldo.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      '                                        uch_ => :uch_,'
      
        '                                       prep_refcursor => :prep_r' +
        'efcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      030000000A000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000060000
      003A545950455F0500000002000000310000000000060000003A55534C4B5F05
      000000040000003030310000000000050000003A4B554C5F0500000000000000
      00000000040000003A4E445F050000000000000000000000050000003A554348
      5F0300000000000000000000000F0000003A505245505F524546435552534F52
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000003000000524555010000000000020000004E440100000000
      0007000000494E444542455401000000000008000000494E4B52454449540100
      000000000700000043484152474553010000000000070000004348414E474553
      010000000000070000005041594D454E5401000000000002000000504E010000
      000000080000004F55544445424554010000000000090000004F55544B524544
      4954010000000000030000005543480100000000000600000053554253494401
      0000000000040000004E414D4501000000000005000000545245535401000000
      0000030000004E4D310100000000000400000054595045010000000000060000
      00535452454554010000000000}
    Session = DataModule1.OracleSession1
    Left = 80
    Top = 248
  end
  object frxDBData3: TfrxDBDataset
    UserName = 'frxDBData3'
    CloseDataSource = False
    DataSet = OD_data
    BCDToCurrency = False
    Left = 112
    Top = 200
  end
  object OD_list_choice: TOracleDataSet
    SQL.Strings = (
      'select * from scott.list_choices where sel=0')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000600000003000000524555010000000000020000004E440100000000
      000300000053454C010000000000030000004B554C0100000000000300000055
      434801000000000008000000484F5553455F4944010000000000}
    LockingMode = lmNone
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    Left = 48
    Top = 168
  end
  object frxReport1: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38547.570682638900000000
    ReportOptions.LastChange = 40128.377327361110000000
    ScriptLanguage = 'PascalScript'
    ShowProgress = False
    StoreInDFM = False
    Left = 224
    Top = 72
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 288
    Top = 72
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 136
    Top = 40
  end
end
