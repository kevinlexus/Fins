object frmProject: TfrmProject
  Left = 573
  Top = 422
  Width = 1251
  Height = 573
  Caption = #1055#1088#1086#1077#1082#1090#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1235
    Height = 535
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_proj
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGrid1DBTableView1OUTER_ID: TcxGridDBColumn
        Caption = #1042#1085#1077#1096#1085#1080#1081' ID'
        DataBinding.FieldName = 'OUTER_ID'
      end
      object cxGrid1DBTableView1SHORT_TXT: TcxGridDBColumn
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        DataBinding.FieldName = 'SHORT_TXT'
        Width = 505
      end
      object cxGrid1DBTableView1TP: TcxGridDBColumn
        Caption = #1057#1072#1081#1090
        DataBinding.FieldName = 'TP'
      end
      object cxGrid1DBTableView1PAGE: TcxGridDBColumn
        Caption = #8470' '#1089#1090#1088#1072#1085#1080#1094#1099
        DataBinding.FieldName = 'PAGE'
      end
      object cxGrid1DBTableView1STRDT1: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
        DataBinding.FieldName = 'STRDT1'
        Width = 126
      end
      object cxGrid1DBTableView1CHK: TcxGridDBColumn
        Caption = #1057#1082#1088#1099#1090#1100'?'
        DataBinding.FieldName = 'CHK'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxGrid1DBTableView1DT1: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
        DataBinding.FieldName = 'DT1'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_proj: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.pp_proj t'
      'where nvl(t.chk,0) <>1'
      'order by t.id desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000008000000020000004944010000000000080000004F555445525F4944
      0100000000000900000053484F52545F54585400000000000002000000545001
      0000000000030000004454310100000000000400000050414745010000000000
      060000005354524454310100000000000300000043484B010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 8
    Top = 88
  end
  object DS_proj: TDataSource
    DataSet = OD_proj
    Left = 40
    Top = 88
  end
end
