object Form_changes_list: TForm_changes_list
  Left = 577
  Top = 280
  Width = 899
  Height = 619
  Caption = #1055#1077#1088#1077#1088#1072#1089#1095#1077#1090#1099' '#1079#1072' '#1084#1077#1089#1103#1094
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
    Top = 541
    Width = 883
    Height = 39
    Align = alBottom
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    DesignSize = (
      883
      39)
    object Button2: TButton
      Left = 795
      Top = 9
      Width = 75
      Height = 25
      Anchors = []
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = Button2Click
    end
    object OracleNavigator1: TOracleNavigator
      Left = 360
      Top = 8
      Width = 64
      Height = 25
      VisibleButtons = [nbEnterQBE, nbExecuteQBE]
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 883
    Height = 541
    Align = alClient
    PopupMenu = PopupMenu3
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Visible = True
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        DataBinding.FieldName = 'REU'
      end
      object cxGrid1DBTableView1STREET: TcxGridDBColumn
        DataBinding.FieldName = 'STREET'
      end
      object cxGrid1DBTableView1ND: TcxGridDBColumn
        DataBinding.FieldName = 'ND'
      end
      object cxGrid1DBTableView1KW: TcxGridDBColumn
        DataBinding.FieldName = 'KW'
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        DataBinding.FieldName = 'LSK'
      end
      object cxGrid1DBTableView1DTEK: TcxGridDBColumn
        DataBinding.FieldName = 'DTEK'
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
      end
      object cxGrid1DBTableView1PROC: TcxGridDBColumn
        DataBinding.FieldName = 'PROC'
      end
      object cxGrid1DBTableView1CNT_DAYS: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081
        DataBinding.FieldName = 'CNT_DAYS'
      end
      object cxGrid1DBTableView1nm: TcxGridDBColumn
        DataBinding.FieldName = 'nm'
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
      end
      object cxGrid1DBTableView1MGCHANGE: TcxGridDBColumn
        DataBinding.FieldName = 'MGCHANGE'
      end
      object cxGrid1DBTableView1TS: TcxGridDBColumn
        DataBinding.FieldName = 'TS'
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        DataBinding.FieldName = 'FIO'
      end
      object cxGrid1DBTableView1TEXT: TcxGridDBColumn
        DataBinding.FieldName = 'TEXT'
      end
      object cxGrid1DBTableView1DOC_ID: TcxGridDBColumn
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
      
        'select t.lsk, k.reu, p.name as street, ltrim(k.nd,'#39'0'#39') as nd, lt' +
        'rim(k.kw, '#39'0'#39') as kw, t.dtek, '
      
        'substr(t.mgchange,1,4)||'#39'-'#39'||substr(t.mgchange,5,2) as mgchange,' +
        ' t.mg2, t.proc, t.cnt_days, t.summa, u.nm, s.name, us.name as fi' +
        'o, t.ts, d.text,'
      't.id, t.doc_id'
      'from  scott.spul p,  '
      '  scott.kart k, '
      '  scott.c_change t,'
      '  scott.c_change_docs d,'
      '  scott.usl u, scott.sprorg s, scott.t_user us'
      
        'where k.kul=p.id and t.lsk=k.lsk and ((t.lsk=:lsk and :var=1) or' +
        ' (:var=0)) '
      '  and d.id=t.doc_id '
      '  and t.usl = u.usl '
      '  and t.org = s.kod(+) and t.user_id=us.id'
      'order by t.doc_id, t.ts, p.name, k.nd, k.kw'
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000040000003A4C534B05000000090000003030303130303030
      0000000000040000003A56415203000000040000000000000000000000}
    OracleDictionary.DisplayFormats = True
    QBEDefinition.AllowOperators = True
    QBEDefinition.QBEFieldDefs = {
      04000000120000000500000053554D4D41010000000000020000004E4D010100
      000000040000004E414D45010100000000040000004454454B01000000000008
      0000004D474348414E4745010000000000020000005453010000010000030000
      0046494F0101000000000400000050524F43010000000000030000004C534B01
      0100000000020000004E44010100000000020000004B57010100000000040000
      0054455854010100000000060000005354524545540100000000000300000052
      455501000000000008000000434E545F44415953010000000000020000004944
      01000000000006000000444F435F4944010000000000030000004D4732010000
      000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    Active = True
    Left = 48
    Top = 96
    object OD_changesREU: TStringField
      DisplayLabel = #1056#1101#1091
      DisplayWidth = 3
      FieldName = 'REU'
      Size = 3
    end
    object OD_changesSTREET: TStringField
      DisplayLabel = #1059#1083#1080#1094#1072
      DisplayWidth = 17
      FieldName = 'STREET'
      Origin = 'p.name'
      Size = 25
    end
    object OD_changesND: TStringField
      DisplayLabel = #1044#1086#1084
      DisplayWidth = 4
      FieldName = 'ND'
      Size = 6
    end
    object OD_changesKW: TStringField
      DisplayLabel = #1050#1074'.'
      DisplayWidth = 4
      FieldName = 'KW'
      Size = 7
    end
    object OD_changesLSK: TStringField
      DisplayLabel = #1051'/C'
      DisplayWidth = 8
      FieldName = 'LSK'
      Origin = 'k.lsk'
      Required = True
      Size = 8
    end
    object OD_changesDTEK: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 9
      FieldName = 'DTEK'
      Origin = 't.dtek'
      Required = True
    end
    object OD_changesSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 11
      FieldName = 'SUMMA'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#########0.00'
    end
    object OD_changesPROC: TFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1085#1090
      DisplayWidth = 11
      FieldName = 'PROC'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#########0.00'
    end
    object OD_changesCNT_DAYS: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'~'#1076#1085#1077#1081
      DisplayWidth = 10
      FieldName = 'CNT_DAYS'
    end
    object OD_changesNM: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 21
      FieldName = 'nm'
      Size = 22
    end
    object OD_changesNAME: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      DisplayWidth = 16
      FieldName = 'NAME'
      Origin = 's.name'
      Size = 35
    end
    object OD_changesMGCHANGE: TStringField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 6
      FieldName = 'MGCHANGE'
      Origin = 't.mgchange'
      Required = True
      Size = 7
    end
    object OD_changesTS: TDateTimeField
      DisplayLabel = #1048#1079#1084#1077#1085#1077#1085#1086
      DisplayWidth = 17
      FieldName = 'TS'
      Origin = 't.ts'
      Required = True
    end
    object OD_changesFIO: TStringField
      DisplayLabel = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      DisplayWidth = 12
      FieldName = 'FIO'
      Origin = 'us.fio'
      Size = 32
    end
    object OD_changesTEXT: TStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'TEXT'
      Origin = 'd.text'
      Size = 2000
    end
    object OD_changesDOC_ID: TFloatField
      DisplayLabel = #8470' '#1076#1086#1082
      DisplayWidth = 10
      FieldName = 'DOC_ID'
    end
    object OD_changesID: TFloatField
      DisplayLabel = #8470' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object OD_changesMG2: TStringField
      FieldName = 'MG2'
      Size = 6
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 438
    Top = 184
    object mnu1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1095#1082#1091
      OnClick = mnu1Click
    end
    object mnu2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1077#1088#1077#1088#1072#1089#1095#1077#1090' '#1074' '#1094#1077#1083#1086#1084
      OnClick = mnu2Click
    end
  end
  object DS_changes: TDataSource
    DataSet = OD_changes
    Left = 112
    Top = 96
  end
end
