object Form_changes_lsk: TForm_changes_lsk
  Left = 1600
  Top = 224
  Caption = #1055#1077#1088#1077#1088#1072#1089#1095#1077#1090#1099' '#1087#1086' '#1083#1080#1094#1077#1074#1099#1084
  ClientHeight = 507
  ClientWidth = 735
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 735
    Height = 507
    Align = alClient
    PopupMenu = PopupMenu3
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_changes
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1SUMMA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMMA
          Sorted = True
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMMA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
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
        Width = 69
      end
      object cxGrid1DBTableView1VOL: TcxGridDBColumn
        AlternateCaption = #1054#1073#1098#1077#1084
        Caption = #1054#1073#1098#1077#1084
        DataBinding.FieldName = 'VOL'
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
      0400000002000000080000003A00560041005200030000000400000000000000
      00000000120000003A004B005F004C0053004B005F0049004400030000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F0000000A000000530055004D004D00410001000000000004000000
      4E004D00010000000000080000004E0041004D00450001000000000008000000
      4400540045004B00010000000000100000004D0047004300480041004E004700
      4500010000000000040000005400530001000000000006000000460049004F00
      01000000000008000000500052004F004300010000000000060000004C005300
      4B00010000000000080000005400450058005400010000000000100000004300
      4E0054005F004400410059005300010000000000040000004900440001000000
      00000C00000044004F0043005F0049004400010000000000060000004D004700
      32000100000000000600000056004F004C00010000000000}
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
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
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
