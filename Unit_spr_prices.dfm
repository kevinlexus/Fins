object Form_spr_prices: TForm_spr_prices
  Left = 1571
  Top = 197
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1088#1072#1089#1094#1077#1085#1086#1082
  ClientHeight = 642
  ClientWidth = 533
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
    Top = 0
    Width = 533
    Height = 49
    Align = alTop
    Caption = #1060#1080#1083#1100#1090#1088
    TabOrder = 0
    object cbbOrg: TcxLookupComboBox
      Left = 96
      Top = 18
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_t_org2
      Properties.OnCloseUp = cbbOrgPropertiesCloseUp
      TabOrder = 0
      Width = 329
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 593
    Width = 533
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button4: TButton
      Left = 446
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button5: TButton
      Left = 366
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Enabled = False
      TabOrder = 0
      OnClick = Button5Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 533
    Height = 544
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnKeyPress = cxGrid1DBTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_prices
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
      end
      object cxGrid1DBTableView1USL: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1091#1089#1083'.'
        DataBinding.FieldName = 'USL'
        Width = 49
      end
      object cxGrid1DBTableView1NM: TcxGridDBColumn
        DataBinding.FieldName = 'NM'
        Width = 136
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
        Width = 75
      end
      object cxGrid1DBTableView1SUMMA3: TcxGridDBColumn
        Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1087#1088#1086#1078#1080#1074'.'
        DataBinding.FieldName = 'SUMMA3'
        Width = 106
      end
      object cxGrid1DBTableView1SUMMA2: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA2'
        Visible = False
      end
      object cxGrid1DBTableView1FK_ORG: TcxGridDBColumn
        DataBinding.FieldName = 'FK_ORG'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_prices: TOracleDataSet
    SQL.Strings = (
      
        'select p.*, o.id||'#39' '#39'||o.name||'#39' '#39'||tp.name as name, u.nm, p.row' +
        'id from '
      ' scott.prices p, scott.usl u, scott.t_org o, scott.t_org_tp tp '
      'where '
      'p.usl=u.usl and p.fk_org=o.id(+)'
      'and (p.fk_org=:fk_org_ and :var_=1 '
      'or :var_=-1 and p.fk_org is null'
      'or :var_=0) and'
      'o.fk_orgtp=tp.id(+)'
      'order by o.name, u.npp')
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0046004B005F004F00520047005F0003000000
      04000000FFFFFFFF000000000A0000003A005600410052005F00030000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000800000006000000550053004C000100000000000A00000053005500
      4D004D004100010000000000040000004E004D000100000000000C0000005300
      55004D004D00410032000100000000000C00000046004B005F004F0052004700
      0100000000000C000000530055004D004D004100330001000000000008000000
      4E0041004D0045000100000000000400000049004400010000000000}
    Master = OD_t_org2
    MasterFields = 'id'
    DetailFields = 'fk_org_'
    RefreshOptions = [roAfterInsert, roAfterUpdate, roAllFields]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    BeforeEdit = OD_pricesBeforeEdit
    Left = 80
    Top = 80
    object OD_pricesNAME: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      DisplayWidth = 26
      FieldName = 'NAME'
      Size = 64
    end
    object OD_pricesUSL: TStringField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 7
      FieldName = 'USL'
      ReadOnly = True
      Size = 3
    end
    object OD_pricesNM: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 23
      FieldName = 'NM'
      ReadOnly = True
      Size = 35
    end
    object OD_pricesSUMMA: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'SUMMA'
      currency = True
    end
    object OD_pricesSUMMA3: TFloatField
      DisplayLabel = #1062#1077#1085#1072'~'#1073#1077#1079' '#1087#1088#1086#1078#1080#1074'.'
      DisplayWidth = 10
      FieldName = 'SUMMA3'
    end
    object OD_pricesSUMMA2: TFloatField
      DisplayLabel = #1062#1077#1085#1072', '#1076#1086#1087
      DisplayWidth = 8
      FieldName = 'SUMMA2'
      Visible = False
      currency = True
    end
    object OD_pricesFK_ORG: TFloatField
      DisplayWidth = 10
      FieldName = 'FK_ORG'
      Visible = False
    end
  end
  object OD_t_org2: TOracleDataSet
    SQL.Strings = (
      
        'select -1 as id, '#39#1041#1072#1079#1086#1074#1099#1077' '#1088#1072#1089#1094#1077#1085#1082#1080#39' as name, null as gr_name fro' +
        'm dual'
      'union all'
      
        'select 0 as id, '#39#1042#1089#1077' '#1088#1072#1089#1094#1077#1085#1082#1080#39' as name, null as gr_name from dua' +
        'l'
      'union all'
      'select t.id, t.id||'#39' '#39'||t.name as name, tp.name as gr_name'
      'from scott.t_org t, scott.t_org_tp tp '
      'where t.fk_orgtp=tp.id'
      'and exists'
      '(select * from scott.prices c where c.fk_org=t.id)'
      'order by id, gr_name, name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000030000000400000049004400010000000000080000004E0041004D00
      45000100000000000E000000470052005F004E0041004D004500010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    Left = 80
    Top = 144
    object StringField1: TStringField
      DisplayWidth = 20
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
    object OD_t_org2GR_NAME: TStringField
      DisplayWidth = 15
      FieldName = 'GR_NAME'
      Size = 32
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 120
    Top = 280
    object N1: TMenuItem
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1089#1094#1077#1085#1082#1091' '#1074' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1089#1094#1077#1085#1082#1091' '#1080#1079' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      OnClick = N2Click
    end
  end
  object DS_t_org2: TDataSource
    DataSet = OD_t_org2
    Left = 120
    Top = 144
  end
  object DS_prices: TDataSource
    DataSet = OD_prices
    Left = 120
    Top = 80
  end
end
