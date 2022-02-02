object Form_spr_proc_pay: TForm_spr_proc_pay
  Left = 549
  Top = 271
  Width = 685
  Height = 509
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1086#1087#1083#1072#1090#1099
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 669
    Height = 470
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_spr_proc_pay
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1USL: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1091#1089#1083'.'
        DataBinding.FieldName = 'USL'
        Width = 25
      end
      object cxGrid1DBTableView1USL_NAME: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'USL'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'USL'
        Properties.ListColumns = <
          item
            FieldName = 'NM'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_usl
        Width = 135
      end
      object cxGrid1DBTableView1ORG: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1086#1088#1075'.'
        DataBinding.FieldName = 'ORG'
        Width = 46
      end
      object cxGrid1DBTableView1ORG_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORG'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_org
        Width = 115
      end
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1059#1050
        DataBinding.FieldName = 'REU'
        Width = 48
      end
      object cxGrid1DBTableView1UK_NAME: TcxGridDBColumn
        Caption = #1059#1050
        DataBinding.FieldName = 'REU'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'REU'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_uk
        Width = 93
      end
      object cxGrid1DBTableView1MG1: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'MG1'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '0000\-00;0;_'
        Width = 52
      end
      object cxGrid1DBTableView1MG2: TcxGridDBColumn
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'MG2'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '0000\-00;0;_'
        Width = 59
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_spr_proc_pay: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.spr_proc_pay t'
      'order by t.usl, t.org, t.reu, t.mg1, t.mg2')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      04000000060000000300000055534C010000000000030000004F524701000000
      000003000000524555010000000000030000004D473101000000000003000000
      4D4732010000000000020000004944010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 16
    Top = 128
    object OD_spr_proc_payUSL: TStringField
      FieldName = 'USL'
      Required = True
      Size = 3
    end
    object OD_spr_proc_payORG: TFloatField
      FieldName = 'ORG'
      Required = True
    end
    object OD_spr_proc_payREU: TStringField
      FieldName = 'REU'
      Required = True
      Size = 3
    end
    object OD_spr_proc_payMG1: TStringField
      FieldName = 'MG1'
      Required = True
      Size = 6
    end
    object OD_spr_proc_payMG2: TStringField
      FieldName = 'MG2'
      Required = True
      Size = 6
    end
    object OD_spr_proc_payID: TFloatField
      FieldName = 'ID'
    end
  end
  object DS_spr_proc_pay: TDataSource
    DataSet = OD_spr_proc_pay
    Left = 48
    Top = 128
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select t.usl, t.usl||'#39'-'#39'||t.nm as nm from scott.usl t'
      'order by t.uslm, t.usl')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000020000000300000055534C010000000000020000004E4D0100000000
      00}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 16
    Top = 192
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 48
    Top = 192
  end
  object OD_org: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.id||'#39'-'#39'||t.name as name from scott.t_org t'
      'order by t.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 16
    Top = 240
  end
  object DS_org: TDataSource
    DataSet = OD_org
    Left = 48
    Top = 240
  end
  object OD_uk: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.name from scott.t_org t where t.reu is not null')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000040000004E414D45010000
      000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 16
    Top = 288
  end
  object DS_uk: TDataSource
    DataSet = OD_uk
    Left = 48
    Top = 288
  end
end
