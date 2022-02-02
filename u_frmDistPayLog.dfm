object frmDistPayLog: TfrmDistPayLog
  Left = 706
  Top = 338
  Width = 630
  Height = 589
  Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1086#1087#1083#1072#1090#1099
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
    Width = 614
    Height = 550
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_kwtp_day_log
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NPP: TcxGridDBColumn
        Caption = #8470' '#1087'.'#1087'.'
        DataBinding.FieldName = 'NPP'
        Width = 44
      end
      object cxGrid1DBTableView1TEXT: TcxGridDBColumn
        DataBinding.FieldName = 'TEXT'
        IsCaptionAssigned = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_kwtp_day_log: TOracleDataSet
    SQL.Strings = (
      
        'select t.* from scott.kwtp_day_log t where t.fk_c_kwtp_mg=:fk_c_' +
        'kwtp_mg'
      'order by t.id')
    Optimize = False
    Variables.Data = {
      03000000010000000D0000003A464B5F435F4B5754505F4D4703000000000000
      0000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000040000000200000049440100000000000C000000464B5F435F4B5754
      505F4D470100000000000400000054455854010000000000030000004E505001
      0000000000}
    Master = Form_month_payments.OD_c_kwtp_mg
    MasterFields = 'id'
    DetailFields = 'fk_c_kwtp_mg'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 24
    Top = 40
  end
  object DS_kwtp_day_log: TDataSource
    DataSet = OD_kwtp_day_log
    Left = 48
    Top = 40
  end
end
