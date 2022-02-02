object Form_spr_params: TForm_spr_params
  Left = 1585
  Top = 211
  Width = 882
  Height = 491
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074
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
    Top = 403
    Width = 866
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 785
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object chk1: TCheckBox
      Left = 256
      Top = 16
      Width = 97
      Height = 17
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100', '#1077#1089#1083#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1086#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = chk1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 520
      Top = 16
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1073#1072#1079#1099':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 47
      Height = 13
      Caption = #1060#1080#1083#1100#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button2: TButton
      Left = 616
      Top = 8
      Width = 91
      Height = 25
      TabOrder = 0
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 61
      Top = 16
      Width = 148
      Height = 21
      TabOrder = 1
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 417
      Top = 11
      Hint = #1055#1088#1080#1079#1085#1072#1082' '#1080#1090#1086#1075#1086#1074#1086#1075#1086' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103
      Caption = #1048#1090#1086#1075'.'#1092#1086#1088#1084#1080#1088'.'
      DataBinding.DataField = 'STATE_BASE_'
      DataBinding.DataSource = DS_params
      ParentShowHint = False
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      ShowHint = True
      TabOrder = 2
      Width = 97
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 866
    Height = 362
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_spr
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 37
      end
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
        Width = 77
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 82
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 178
      end
      object cxGrid1DBTableView1PARVC1: TcxGridDBColumn
        DataBinding.FieldName = 'PARVC1'
        Width = 52
      end
      object cxGrid1DBTableView1PARN1: TcxGridDBColumn
        DataBinding.FieldName = 'PARN1'
        Width = 48
      end
      object cxGrid1DBTableView1CDTP: TcxGridDBColumn
        DataBinding.FieldName = 'CDTP'
        Width = 46
      end
      object cxGrid1DBTableView1FK_PARCDTP: TcxGridDBColumn
        DataBinding.FieldName = 'FK_PARCDTP'
        Width = 44
      end
      object cxGrid1DBTableView1PARDT1: TcxGridDBColumn
        DataBinding.FieldName = 'PARDT1'
        Width = 72
      end
      object cxGrid1DBTableView1SQL_TEXT: TcxGridDBColumn
        DataBinding.FieldName = 'SQL_TEXT'
        Width = 199
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_spr: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.spr_params t '
      
        ' where (:varflt_=1 and (upper(t.name) like '#39'%'#39'||upper(:flt_)||'#39'%' +
        #39' or upper(t.cd) like '#39'%'#39'||upper(:flt_)||'#39'%'#39') '
      ''
      ' or :varflt_=0)'
      'order by t.fk_parcdtp, t.parent_id desc, t.id')
    Optimize = False
    Variables.Data = {
      0300000002000000080000003A564152464C545F030000000400000000000000
      00000000050000003A464C545F050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000C000000020000004944010000000000040000004E414D4501000000
      0000020000004344010000000000060000005041525643310100000000000500
      00005041524E3101000000000004000000434454500100000000000A00000046
      4B5F504152434454500100000000000600000050415244543101000000000009
      000000504152454E545F49440100000000000800000053514C5F544558540100
      00000000030000004E5050010000000000040000004D454D4F010000000000}
    ReadOnly = True
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate]
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 104
    object OD_sprID: TFloatField
      DisplayWidth = 4
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object OD_sprPARENT_ID: TFloatField
      FieldName = 'PARENT_ID'
    end
    object OD_sprCD: TStringField
      DisplayWidth = 16
      FieldName = 'CD'
      Required = True
      Size = 32
    end
    object OD_sprNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 44
      FieldName = 'NAME'
      Size = 64
    end
    object OD_sprPARVC1: TStringField
      DisplayLabel = #1055#1072#1088#1072#1084#1077#1090#1088' '#1089#1080#1084#1074'.'
      DisplayWidth = 21
      FieldName = 'PARVC1'
      Size = 1000
    end
    object OD_sprPARN1: TFloatField
      DisplayLabel = #1055#1072#1088#1072#1084#1077#1090#1088' '#1095#1080#1089#1083'.'
      DisplayWidth = 14
      FieldName = 'PARN1'
    end
    object OD_sprCDTP: TFloatField
      DisplayLabel = #1058#1080#1087
      DisplayWidth = 10
      FieldName = 'CDTP'
    end
    object OD_sprFK_PARCDTP: TStringField
      DisplayLabel = #1043#1088#1091#1087#1087#1072'~'#1087#1072#1088#1072#1084#1077#1090#1088#1072
      DisplayWidth = 32
      FieldName = 'FK_PARCDTP'
      Size = 32
    end
    object OD_sprPARDT1: TDateTimeField
      DisplayLabel = #1055#1072#1088#1072#1084#1077#1090#1088' '#1076#1072#1090#1072
      DisplayWidth = 18
      FieldName = 'PARDT1'
    end
    object OD_sprSQL_TEXT: TStringField
      FieldName = 'SQL_TEXT'
      Size = 1000
    end
  end
  object Timer2: TTimer
    Interval = 300
    OnTimer = Timer2Timer
    Left = 224
    Top = 8
  end
  object OD_params: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.params t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000002500000005000000504152414D010000000000070000004D45535341
      47450100000000000300000056455201000000000006000000504552494F4401
      00000000000C0000004147454E545F555054494D45010000000000090000004D
      4553535F48494E5401000000000009000000504552494F445F504C0100000000
      0007000000535542535F4F420100000000000200000049440100000000000D00
      0000504552494F445F4445424954530100000000000800000044545F4F544F50
      310100000000000800000044545F4F544F503201000000000004000000504152
      5401000000000007000000434E545F534348010000000000070000004B414E5F
      5343480100000000000600000053565F534F430100000000000B000000535441
      54455F424153455F010000000000070000004B414E5F56415201000000000007
      0000004F52475F5641520100000000000600000053504C415348010000000000
      0B00000047454E5F4558505F4C5354010000000000080000004B414E5F564152
      32010000000000080000004B4152545F45443101000000000009000000415554
      4F5F5349474E0100000000000B00000046494E445F5354524545540100000000
      000B00000050454E59415F4D4F4E544801000000000007000000434F52525F4C
      470100000000000D00000052454348415247455F42494C4C0100000000000C00
      000053484F575F4558505F5041590100000000000B000000444953545249425F
      5041590100000000000800000042494C4C5F50454E0100000000000B00000050
      4552494F445F4241434B0100000000000D000000504552494F445F464F525752
      440100000000000900000050454E59415F5641520100000000000C0000004953
      5F46554C4C4D4F4E544801000000000008000000574149545F56455201000000
      00000B00000049535F4445545F43485247010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 40
    Top = 168
  end
  object DS_params: TDataSource
    DataSet = OD_params
    Left = 96
    Top = 168
  end
  object DS_spr: TDataSource
    DataSet = OD_spr
    Left = 48
    Top = 104
  end
end
