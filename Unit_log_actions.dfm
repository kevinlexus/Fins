object Form_log_actions: TForm_log_actions
  Left = 290
  Top = 281
  Width = 677
  Height = 566
  Caption = #1040#1091#1076#1080#1090' '#1089#1086#1073#1099#1090#1080#1081
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
    Width = 661
    Height = 527
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_data
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = #1050#1083#1080#1082' '#1079#1076#1077#1089#1100' - '#1086#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      FilterRow.Visible = True
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1079#1072#1087#1080#1089#1077#1081
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1040#1074#1090#1086#1088
        DataBinding.FieldName = 'NAME'
        Width = 92
      end
      object cxGrid1DBTableView1TEXT: TcxGridDBColumn
        Caption = #1044#1077#1081#1089#1090#1074#1080#1077
        DataBinding.FieldName = 'TEXT'
        Width = 344
      end
      object cxGrid1DBTableView1TS: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'TS'
        Width = 85
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'select u.name, t.* from scott.log_actions t, scott.t_user u'
      'where t.lsk=:lsk and t.fk_user_id=u.id(+)'
      'order by t.id desc')
    Optimize = False
    Variables.Data = {
      0300000001000000040000003A4C534B05000000090000002020202020202020
      0000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000008000000040000005445585401000000000002000000545301000000
      00000A000000464B5F555345525F4944010000000000030000004C534B010000
      0000000B000000464B5F545950455F414354010000000000040000004E414D45
      010000000000020000004944010000000000020000004D47010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    DetailFields = 'lsk'
    ReadOnly = True
    Session = DataModule1.OracleSession1
    Active = True
    Top = 72
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 32
    Top = 72
  end
end
