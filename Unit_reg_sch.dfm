object Form_reg_sch: TForm_reg_sch
  Left = 727
  Top = 196
  Width = 645
  Height = 355
  Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1087#1086' '#1087#1088#1080#1073#1086#1088#1072#1084' '#1091#1095#1077#1090#1072
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
  object Panel2: TPanel
    Left = 0
    Top = 270
    Width = 629
    Height = 46
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      629
      46)
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 328
      Height = 44
      Align = alLeft
      TabOrder = 0
    end
    object Button1: TButton
      Left = 549
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 466
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 629
    Height = 270
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_data
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DT1: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DT1'
        Width = 63
      end
      object cxGrid1DBTableView1ACTION: TcxGridDBColumn
        Caption = #1044#1077#1081#1089#1090#1074#1080#1077
        DataBinding.FieldName = 'FK_TP'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_tp
        Width = 75
      end
      object cxGrid1DBTableView1STATE: TcxGridDBColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        DataBinding.FieldName = 'FK_STATE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_state
        Width = 83
      end
      object cxGrid1DBTableView1USL: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'FK_USL'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'USL'
        Properties.ListColumns = <
          item
            FieldName = 'NM'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_usl
        Properties.ReadOnly = True
        Width = 65
      end
      object cxGrid1DBTableView1METER: TcxGridDBColumn
        Caption = #1057#1095#1077#1090#1095#1080#1082
        DataBinding.FieldName = 'FK_METER'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ClearKey = 46
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 250
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_meter
        Width = 105
      end
      object cxGrid1DBTableView1TEXT: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        DataBinding.FieldName = 'TEXT'
        Width = 101
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1080#1079#1084'.'
        DataBinding.FieldName = 'DTF'
        PropertiesClassName = 'TcxDateEditProperties'
        Options.Editing = False
        Width = 61
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'USERNAME'
        Options.Editing = False
        Width = 74
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'select t.*, u.name as username, t.rowid from scott.C_REG_SCH t'
      'left join scott.t_user u on t.fk_user=u.id'
      'where t.lsk=:lsk'
      'order by t.dt1 desc')
    Optimize = False
    Variables.Data = {
      0300000001000000040000003A4C534B05000000090000002020202020202020
      0000000000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      040000000B000000020000004944010000000000030000004454310100000000
      0005000000464B5F545001000000000008000000464B5F535441544501000000
      0000040000005445585401000000000006000000464B5F55534C010000000000
      030000004C534B01000000000008000000464B5F4D4554455201000000000003
      00000044544601000000000007000000464B5F55534552010000000000080000
      00555345524E414D45010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    RefreshOptions = [roBeforeEdit, roAfterUpdate, roAllFields]
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    DesignActivation = True
    BeforeInsert = OD_dataBeforeInsert
    AfterInsert = OD_dataAfterInsert
    BeforeEdit = OD_dataBeforeEdit
    BeforePost = OD_dataBeforePost
    BeforeDelete = OD_dataBeforeDelete
    Left = 72
    Top = 48
    object OD_dataID: TFloatField
      FieldName = 'ID'
    end
    object OD_dataDT1: TDateTimeField
      FieldName = 'DT1'
      Required = True
    end
    object OD_dataFK_TP: TFloatField
      FieldName = 'FK_TP'
      Required = True
    end
    object OD_dataFK_STATE: TFloatField
      FieldName = 'FK_STATE'
      Required = True
    end
    object OD_dataTEXT: TStringField
      FieldName = 'TEXT'
      Size = 1000
    end
    object OD_dataFK_USL: TStringField
      FieldName = 'FK_USL'
      Size = 3
    end
    object OD_dataLSK: TStringField
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_dataFK_METER: TFloatField
      FieldName = 'FK_METER'
    end
    object OD_dataDTF: TDateTimeField
      FieldName = 'DTF'
    end
    object OD_dataUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 32
    end
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select to_char(t.usl)||'#39' '#39'||t.nm as nm, t.usl'
      ' from scott.usl t'
      ' where t.counter is not null'
      'order by t.npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004E4D0100000000000300000055534C0100000000
      00}
    QueryAllRecords = False
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Top = 48
  end
  object OD_state: TOracleDataSet
    SQL.Strings = (
      'select u.id, u.cd, u.name from scott.u_list u, scott.u_listtp d'
      '  where u.fk_listtp=d.id'
      '    and d.cd='#39#1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1087#1086' '#1055#1059#39
      '    order by u.npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000003000000020000004944010000000000020000004344010000000000
      040000004E414D45010000000000}
    QueryAllRecords = False
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Top = 136
  end
  object OD_tp: TOracleDataSet
    SQL.Strings = (
      'select u.id, u.cd, u.name from scott.u_list u, scott.u_listtp d'
      '  where u.fk_listtp=d.id'
      '    and d.cd='#39#1058#1080#1087' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1087#1086' '#1055#1059#39
      '    order by u.npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000003000000020000004944010000000000020000004344010000000000
      040000004E414D45010000000000}
    QueryAllRecords = False
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Top = 96
  end
  object OD_meter: TOracleDataSet
    SQL.Strings = (
      'select m.id, m.npp||'#39'-'#39'||trim(u.nm)||'
      
        ' case when m.dt1 <=last_day(to_date(p.period||'#39'01'#39', '#39'YYYYMMDD'#39'))' +
        ' '
      'and m.dt2 > last_day(to_date(p.period||'#39'01'#39', '#39'YYYYMMDD'#39')) '
      'then '#39' - '#1040#1050#1058#1048#1042#1053#1067#1049#39' else '#39' - '#1053#1045' '#1040#1050#1058#1048#1042#1053#1067#1049#39' end as name'
      ' from scott.meter m, scott.usl u, scott.params p'
      'where m.fk_klsk_obj=:K_LSK_ID'
      'and m.fk_usl=u.usl'
      'order by m.npp||'#39'-'#39'||u.nm')
    Optimize = False
    Variables.Data = {
      0300000001000000090000003A4B5F4C534B5F49440300000000000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004E414D4501000000000002000000494401000000
      0000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'K_LSK_ID'
    QueryAllRecords = False
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Top = 184
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 32
    Top = 48
  end
  object DS_tp: TDataSource
    DataSet = OD_tp
    Left = 32
    Top = 96
  end
  object DS_state: TDataSource
    DataSet = OD_state
    Left = 32
    Top = 136
  end
  object DS_meter: TDataSource
    DataSet = OD_meter
    Left = 32
    Top = 184
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 104
    Top = 48
  end
end
