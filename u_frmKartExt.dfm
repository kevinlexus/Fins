object frmKartExt: TfrmKartExt
  Left = 699
  Top = 499
  Caption = #1042#1085#1077#1096#1085#1080#1077' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
  ClientHeight = 491
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 450
    Width = 1070
    Height = 41
    Align = alBottom
    TabOrder = 0
    object chk1: TCheckBox
      Left = 8
      Top = 8
      Width = 97
      Height = 17
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100', '#1077#1089#1083#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1086#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = chk1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1070
    Height = 421
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = DS_kartExt
      DataController.KeyFieldNames = 'EXT_LSK'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1059#1050
        DataBinding.FieldName = 'REU'
        Width = 33
      end
      object cxGrid1DBTableView1NAME_REU: TcxGridDBColumn
        Caption = #1059#1050
        DataBinding.FieldName = 'NAME_REU'
        Width = 69
      end
      object cxGrid1DBTableView1EXT_LSK: TcxGridDBColumn
        Caption = #1042#1085#1077#1096#1085#1080#1081' '#1083#1080#1094'.'#1089#1095'.'
        DataBinding.FieldName = 'EXT_LSK'
        Width = 55
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        Caption = #1051#1080#1094'.'#1089#1095'.'
        DataBinding.FieldName = 'LSK'
        Width = 56
      end
      object cxGrid1DBTableView1FK_KLSK_ID: TcxGridDBColumn
        Caption = 'KLSK '#1060#1080#1085'.'#1083#1080#1094'.'
        DataBinding.FieldName = 'FK_KLSK_ID'
        Width = 56
      end
      object cxGrid1DBTableView1FK_KLSK_PREMISE: TcxGridDBColumn
        Caption = 'KLSK '#1055#1086#1084#1077#1097'.'
        DataBinding.FieldName = 'FK_KLSK_PREMISE'
        Width = 49
      end
      object cxGrid1DBTableView1FIO: TcxGridDBColumn
        Caption = #1060'.'#1048'.'#1054'.'
        DataBinding.FieldName = 'FIO'
        Width = 63
      end
      object cxGrid1DBTableView1KUL: TcxGridDBColumn
        Caption = #1050#1086#1076'.'#1091#1083'.'
        DataBinding.FieldName = 'KUL'
        Width = 40
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1059#1083#1080#1094#1072
        DataBinding.FieldName = 'NAME'
        Width = 45
      end
      object cxGrid1DBTableView1N_ND: TcxGridDBColumn
        Caption = #1044#1086#1084
        DataBinding.FieldName = 'N_ND'
        Width = 35
      end
      object cxGrid1DBTableView1N_KW: TcxGridDBColumn
        Caption = #1050#1074'.'
        DataBinding.FieldName = 'N_KW'
        Width = 29
      end
      object cxGrid1DBTableView1KPR: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1078'.'
        DataBinding.FieldName = 'KPR'
        Width = 54
      end
      object cxGrid1DBTableView1OPL: TcxGridDBColumn
        Caption = #1054#1073#1097'.'#1087#1083'.'
        DataBinding.FieldName = 'OPL'
        Width = 57
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        Caption = #1057#1086#1079#1076#1072#1085
        DataBinding.FieldName = 'DT_CRT'
        Width = 63
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        Caption = #1054#1073#1085#1086#1074#1083#1105#1085
        DataBinding.FieldName = 'DT_UPD'
        Width = 61
      end
      object cxGrid1DBTableView1PSCH: TcxGridDBColumn
        DataBinding.FieldName = 'PSCH'
        Visible = False
      end
      object cxGrid1DBTableView1LSK_TP_CD: TcxGridDBColumn
        DataBinding.FieldName = 'LSK_TP_CD'
        Visible = False
      end
      object cxGrid1DBTableView1V: TcxGridDBColumn
        Caption = #1040#1082#1090#1091#1072#1083#1100#1085#1099#1081'?'
        DataBinding.FieldName = 'V'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 49
      end
      object cxGrid1DBTableView1INSAL: TcxGridDBColumn
        Caption = #1042#1093'.'#1086#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'INSAL'
        Width = 63
      end
      object cxGrid1DBTableView1CHRG: TcxGridDBColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
        DataBinding.FieldName = 'CHRG'
        Width = 64
      end
      object cxGrid1DBTableView1PAYMENT: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1095#1077#1085#1086
        DataBinding.FieldName = 'PAYMENT'
        Width = 63
      end
      object cxGrid1DBTableView1OUTSAL: TcxGridDBColumn
        Caption = #1048#1089#1093'.'#1086#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'OUTSAL'
        Width = 64
      end
      object cxGrid1DBTableView1RASCHET_SCHET: TcxGridDBColumn
        Caption = #1056'/'#1057
        DataBinding.FieldName = 'RASCHET_SCHET'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1070
    Height = 29
    Caption = 'ToolBar1'
    Images = Form_Main.ImageList3
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' QBE'
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' QBE'
      Caption = 'ToolButton2'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
  end
  object pnl1: TPanel
    Left = 448
    Top = 192
    Width = 185
    Height = 41
    Caption = #1047#1072#1075#1088#1091#1079#1082#1072'...'
    TabOrder = 3
    Visible = False
  end
  object OD_kartExt: TOracleDataSet
    SQL.Strings = (
      'select '
      
        'e.rowid, e.fk_klsk_premise, r.reu, e.lsk, e.fk_klsk_id, e.ext_ls' +
        'k, e.fio, e.dt_crt, e.dt_upd,'
      
        'r.reu||'#39'-'#39'||r.name as name_reu, t.kul, s.name, ltrim(t.nd,'#39'0'#39') a' +
        's n_nd, ltrim(t.kw,'#39'0'#39') as n_kw,'
      
        't.psch, t.kpr, t.opl, u.cd as lsk_tp_cd, e.v, e.insal, e.chrg, e' +
        '.payment, e.outsal, e.raschet_schet'
      'from scott.kart_ext e'
      
        'left join scott.kart k2 join scott.kart_detail d2 on k2.lsk=d2.l' +
        'sk and d2.is_main_in_premise=1 on e.fk_klsk_premise = k2.fk_klsk' +
        '_premise'
      
        'left join scott.kart k3 join scott.kart_detail d3 on k3.lsk=d3.l' +
        'sk and d3.is_main_in_klsk=1 on e.fk_klsk_id = k3.k_lsk_id'
      'left join scott.kart t on t.lsk=coalesce(e.lsk, d2.lsk, d3.lsk)'
      'left join scott.kart_detail a on t.lsk=a.lsk'
      'left join scott.spul s on t.kul=s.id'
      'left join scott.t_org r on e.fk_uk=r.id'
      'left join scott.u_list u on t.fk_tp=u.id'
      'order by a.ord1'
      ''
      ''
      '/*'
      'select '
      
        'e.rowid, e.fk_klsk_premise, k.reu, e.lsk, e.fk_klsk_id, e.ext_ls' +
        'k, e.fio, e.dt_crt, e.dt_upd,'
      
        'r.reu||'#39'-'#39'||r.name_reu as name_reu, k.kul, s.name, ltrim(k.nd,'#39'0' +
        #39') as n_nd, ltrim(k.kw,'#39'0'#39') as n_kw,'
      
        'k.psch, k.kpr, k.opl, u.cd as lsk_tp_cd, e.v, e.insal, e.chrg, e' +
        '.payment, e.outsal, e.raschet_schet'
      'from scott.kart_ext e'
      'join scott.kart k on '
      
        '     case when e.lsk is not null then e.lsk else k.lsk end = k.l' +
        'sk'
      
        '     and case when e.fk_klsk_premise is not null then e.fk_klsk_' +
        'premise else k.fk_klsk_premise end = k.fk_klsk_premise'
      
        '     and case when e.fk_klsk_id is not null then e.fk_klsk_id el' +
        'se k.k_lsk_id end = k.k_lsk_id'
      'join scott.kart_detail d on k.lsk=d.lsk '
      '     and ('
      
        '     case when e.lsk is not null and e.fk_klsk_premise is null a' +
        'nd e.fk_klsk_id is null then 1 else 0 end=1 '
      
        '     or case when e.fk_klsk_premise is not null then d.is_main_i' +
        'n_premise else 0 end = 1 -- '#1075#1083#1072#1074#1085#1099#1081' '#1083#1080#1094'.'#1089#1095#1077#1090' '#1074' '#1087#1086#1084#1077#1097#1077#1085#1080#1080
      
        '     or case when e.fk_klsk_id is not null then d.is_main_in_kls' +
        'k else 0 end = 1) -- '#1075#1083#1072#1074#1085#1099#1081' '#1083#1080#1094'.'#1089#1095#1077#1090' '#1074' '#1092#1080#1085'.'#1083#1080#1094'.'#1089#1095'.'
      'left join scott.spul s on k.kul=s.id'
      'left join scott.s_reu_trest r on k.reu=r.reu'
      'left join scott.u_list u on k.fk_tp=u.id'
      'order by d.ord1'
      '*/')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000170000000E0000004500580054005F004C0053004B00010000000000
      06000000460049004F00010000000000060000004C0053004B00010000000000
      0C000000440054005F004300520054000100000100000C000000440054005F00
      550050004400010000010000100000004E0041004D0045005F00520045005500
      000000000000060000004B0055004C00010000000000080000004E0041004D00
      4500010000000000080000004E005F004E004400010000000000080000004E00
      5F004B0057000100000000000800000050005300430048000000000000000600
      00004B0050005200000000000000060000004F0050004C000000000000000600
      0000520045005500010000000000120000004C0053004B005F00540050005F00
      430044000000000000000200000056000100000000001E00000046004B005F00
      4B004C0053004B005F005000520045004D004900530045000100000000001400
      000046004B005F004B004C0053004B005F00490044000100000000000A000000
      49004E00530041004C0000000000000008000000430048005200470000000000
      00000E0000005000410059004D0045004E0054000000000000000C0000004F00
      55005400530041004C000000000000001A000000520041005300430048004500
      54005F0053004300480045005400000000000000}
    ReadOnly = True
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterUpdate, roAllFields]
    BeforeQuery = OD_kartExtBeforeQuery
    AfterQuery = OD_kartExtAfterQuery
    QBEMode = True
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Top = 72
    object OD_kartExtREU: TStringField
      FieldName = 'REU'
      Origin = 't.reu'
      ReadOnly = True
      Size = 3
    end
    object OD_kartExtLSK: TStringField
      DisplayWidth = 15
      FieldName = 'LSK'
      Origin = 'e.lsk'
      Size = 8
    end
    object OD_kartExtEXT_LSK: TStringField
      FieldName = 'EXT_LSK'
      Origin = 'e.ext_lsk'
      Size = 9
    end
    object OD_kartExtFIO: TStringField
      FieldName = 'FIO'
      Origin = 'e.fio'
      ReadOnly = True
      Size = 60
    end
    object OD_kartExtDT_CRT: TDateTimeField
      FieldName = 'DT_CRT'
      ReadOnly = True
    end
    object OD_kartExtDT_UPD: TDateTimeField
      FieldName = 'DT_UPD'
      ReadOnly = True
    end
    object OD_kartExtNAME_REU: TStringField
      FieldName = 'NAME_REU'
      ReadOnly = True
      Size = 68
    end
    object OD_kartExtKUL: TStringField
      FieldName = 'KUL'
      Origin = 't.kul'
      ReadOnly = True
      Size = 4
    end
    object OD_kartExtNAME: TStringField
      FieldName = 'NAME'
      Origin = 's.name'
      ReadOnly = True
      Size = 25
    end
    object OD_kartExtN_ND: TStringField
      FieldName = 'N_ND'
      Origin = 't.nd'
      ReadOnly = True
      Size = 6
    end
    object OD_kartExtN_KW: TStringField
      FieldName = 'N_KW'
      Origin = 't.kw'
      ReadOnly = True
      Size = 7
    end
    object OD_kartExtPSCH: TIntegerField
      FieldName = 'PSCH'
      Origin = 't.psch'
      ReadOnly = True
    end
    object OD_kartExtKPR: TIntegerField
      FieldName = 'KPR'
      ReadOnly = True
    end
    object OD_kartExtOPL: TFloatField
      FieldName = 'OPL'
      ReadOnly = True
    end
    object OD_kartExtLSK_TP_CD: TStringField
      FieldName = 'LSK_TP_CD'
      ReadOnly = True
      Size = 32
    end
    object OD_kartExtV: TFloatField
      FieldName = 'V'
      Required = True
    end
    object OD_kartExtFK_KLSK_PREMISE: TFloatField
      FieldName = 'FK_KLSK_PREMISE'
      Origin = 'e.FK_KLSK_PREMISE'
    end
    object OD_kartExtFK_KLSK_ID: TFloatField
      FieldName = 'FK_KLSK_ID'
      Origin = 'e.FK_KLSK_PREMISE'
    end
    object OD_kartExtINSAL: TFloatField
      FieldName = 'INSAL'
    end
    object OD_kartExtCHRG: TFloatField
      FieldName = 'CHRG'
    end
    object OD_kartExtPAYMENT: TFloatField
      FieldName = 'PAYMENT'
    end
    object OD_kartExtOUTSAL: TFloatField
      FieldName = 'OUTSAL'
    end
    object OD_kartExtRASCHET_SCHET: TStringField
      FieldName = 'RASCHET_SCHET'
    end
  end
  object DS_kartExt: TDataSource
    DataSet = OD_kartExt
    Left = 32
    Top = 72
  end
end
