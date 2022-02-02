object Form_changes_lsk: TForm_changes_lsk
  Left = 1600
  Top = 224
  Width = 751
  Height = 546
  Caption = #1055#1077#1088#1077#1088#1072#1089#1095#1077#1090#1099' '#1087#1086' '#1083#1080#1094#1077#1074#1099#1084
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 470
    Width = 735
    Height = 37
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      735
      37)
    object Button2: TButton
      Left = 666
      Top = 8
      Width = 75
      Height = 25
      Anchors = []
      Cancel = True
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 735
    Height = 470
    Align = alClient
    PopupMenu = Form_kart.PopupMenu3
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_changes
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        DataBinding.FieldName = 'LSK'
      end
      object cxGrid1DBTableView1DTEK: TcxGridDBColumn
        DataBinding.FieldName = 'DTEK'
        Width = 68
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
      end
      object cxGrid1DBTableView1PROC: TcxGridDBColumn
        Caption = #1055#1088#1086#1094#1077#1085#1090
        DataBinding.FieldName = 'PROC'
        Width = 48
      end
      object cxGrid1DBTableView1CNT_DAYS: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081
        DataBinding.FieldName = 'CNT_DAYS'
        Width = 44
      end
      object cxGrid1DBTableView1NM: TcxGridDBColumn
        DataBinding.FieldName = 'NM'
        Width = 92
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 102
      end
      object cxGrid1DBTableView1MGCHANGE: TcxGridDBColumn
        Caption = #1055#1088#1086#1074#1077#1076#1077#1085#1086' '#1087#1077#1088#1080#1086#1076#1086#1084
        DataBinding.FieldName = 'MGCHANGE'
        Width = 70
      end
      object cxGrid1DBTableView1MG2: TcxGridDBColumn
        Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076
        DataBinding.FieldName = 'MG2'
        Width = 64
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        DataBinding.FieldName = 'FIO'
      end
      object cxGrid1DBTableView1TEXT: TcxGridDBColumn
        DataBinding.FieldName = 'TEXT'
        Width = 200
      end
      object cxGrid1DBTableView1DOC_ID: TcxGridDBColumn
        Caption = #8470' '#1076#1086#1082'.'
        DataBinding.FieldName = 'DOC_ID'
      end
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_changes: TOracleDataSet
    SQL.Strings = (
      'select  t.lsk, t.dtek, '
      
        'substr(t.mgchange,1,4)||'#39'-'#39'||substr(t.mgchange,5,2) as mgchange,' +
        ' t.mg2, t.proc, t.cnt_days, t.summa, '
      'u.nm, s.name, u.name as fio, t.ts, d.text, t.id, t.doc_id, t.vol'
      'from '
      'scott.c_change t, scott.kart k, '
      
        '  scott.usl u, scott.sprorg s, scott.t_user u, scott.c_change_do' +
        'cs d'
      
        'where k.lsk=t.lsk  and d.id=t.doc_id  and  ((k.k_lsk_id=:k_lsk_i' +
        'd and :var=1) or (:var=0))'
      '  and t.usl = u.usl '
      '  and t.org = s.kod(+) and t.user_id=u.id'
      'order by t.ts, t.usl')
    Optimize = False
    Variables.Data = {
      0300000002000000040000003A56415203000000040000000000000000000000
      090000003A4B5F4C534B5F4944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F0000000500000053554D4D41010000000000020000004E4D010000
      000000040000004E414D45010000000000040000004454454B01000000000008
      0000004D474348414E4745010000000000020000005453010000000000030000
      0046494F0100000000000400000050524F43010000000000030000004C534B01
      0000000000040000005445585401000000000008000000434E545F4441595301
      000000000002000000494401000000000006000000444F435F49440100000000
      00030000004D473201000000000003000000564F4C010000000000}
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    AfterOpen = OD_changesAfterOpen
    BeforeDelete = OD_changesBeforeDelete
    AfterRefresh = OD_changesAfterRefresh
    Left = 48
    Top = 64
    object OD_changesLSK: TStringField
      DisplayLabel = #1051'/'#1057
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_changesDTEK: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DTEK'
      Required = True
    end
    object OD_changesMGCHANGE: TStringField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      FieldKind = fkInternalCalc
      FieldName = 'MGCHANGE'
      Size = 7
    end
    object OD_changesMG2: TStringField
      FieldName = 'MG2'
      Size = 6
    end
    object OD_changesPROC: TFloatField
      DisplayLabel = '%'
      FieldName = 'PROC'
    end
    object OD_changesCNT_DAYS: TFloatField
      FieldName = 'CNT_DAYS'
    end
    object OD_changesSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
    end
    object OD_changesNM: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      FieldKind = fkInternalCalc
      FieldName = 'NM'
      Size = 35
    end
    object OD_changesNAME: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      FieldKind = fkInternalCalc
      FieldName = 'NAME'
      Size = 35
    end
    object OD_changesFIO: TStringField
      DisplayLabel = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      Size = 32
    end
    object OD_changesTS: TDateTimeField
      DisplayLabel = #1048#1079#1084#1077#1085#1077#1085#1086
      FieldName = 'TS'
      Required = True
    end
    object OD_changesTEXT: TStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldKind = fkInternalCalc
      FieldName = 'TEXT'
      Size = 2000
    end
    object OD_changesID: TFloatField
      FieldName = 'ID'
    end
    object OD_changesDOC_ID: TFloatField
      FieldName = 'DOC_ID'
    end
    object OD_changesVOL: TFloatField
      FieldName = 'VOL'
    end
  end
  object DS_changes: TDataSource
    DataSet = OD_changes
    Left = 80
    Top = 64
  end
  object OD_mg: TOracleDataSet
    SQL.Strings = (
      'select a.mg, substr(a.mg,1,4)||'#39'-'#39'||substr(a.mg,5,2) as mg1'
      ' from scott.long_table a'
      'order by a.mg')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 48
    Top = 104
  end
  object DS_mg: TDataSource
    DataSet = OD_mg
    Left = 80
    Top = 104
  end
  object PopupMenu3: TPopupMenu
    Left = 446
    Top = 144
    object mnu1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1095#1082#1091
      OnClick = mnu1Click
    end
    object mnu2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1077#1088#1077#1088#1072#1089#1095#1077#1090' '#1074' '#1094#1077#1083#1086#1084
      OnClick = mnu2Click
    end
  end
end
