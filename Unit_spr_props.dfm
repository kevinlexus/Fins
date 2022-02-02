object Form_spr_props: TForm_spr_props
  Left = 412
  Top = 416
  Width = 637
  Height = 700
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1088#1077#1082#1074#1080#1079#1080#1090#1086#1074
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
    Top = 612
    Width = 621
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button5: TButton
      Left = 446
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Enabled = False
      TabOrder = 0
      OnClick = Button5Click
    end
    object Button4: TButton
      Left = 526
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 621
    Height = 57
    Align = alTop
    Caption = #1058#1080#1087' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
    TabOrder = 0
    object cbbTp: TcxLookupComboBox
      Left = 8
      Top = 24
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_list_tp
      Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
      TabOrder = 0
      Width = 329
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 621
    Height = 555
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_list
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_list_tp: TOracleDataSet
    SQL.Strings = (
      'select * from ('
      'select -1 as id, null as cd, '#39#1042#1089#1077#39' as name from dual'
      'union all'
      'select t.id, t.cd, t.name from scott.u_listtp t)'
      'order by nvl(id,0), name')
    Optimize = False
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000003000000020000004944010000000000040000004E414D4501000000
      0000020000004344010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 360
    Top = 16
  end
  object OD_list: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.cd, t.fk_listtp, t.name, t.rowid from scott.u_lis' +
        't t'
      
        'where (:fk_listtp <> -1 and t.fk_listtp = :fk_listtp or :fk_list' +
        'tp = -1)'
      'order by t.name')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A464B5F4C49535454500300000004000000FFFF
      FFFF00000000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      0400000004000000020000004944010000000000040000004E414D4501000000
      000002000000434401000000000009000000464B5F4C49535454500100000000
      00}
    RefreshOptions = [roAfterInsert, roAfterUpdate, roAllFields]
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    Active = True
    BeforeInsert = OD_listBeforeInsert
    AfterInsert = OD_listAfterInsert
    BeforeEdit = OD_listBeforeEdit
    BeforeDelete = OD_listBeforeDelete
    Left = 80
    Top = 80
    object OD_listID: TFloatField
      DisplayWidth = 4
      FieldName = 'ID'
      ReadOnly = True
    end
    object OD_listCD: TStringField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 6
      FieldName = 'CD'
      ReadOnly = True
      Size = 32
    end
    object OD_listNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 83
      FieldName = 'NAME'
      Required = True
      Size = 96
    end
    object OD_listFK_LISTTP: TFloatField
      DisplayWidth = 10
      FieldName = 'FK_LISTTP'
      Required = True
      Visible = False
    end
  end
  object DS_list: TDataSource
    DataSet = OD_list
    Left = 120
    Top = 88
  end
  object DS_list_tp: TDataSource
    DataSet = OD_list_tp
    Left = 392
    Top = 16
  end
end
