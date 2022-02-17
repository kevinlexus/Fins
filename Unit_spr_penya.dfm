object Form_spr_penya: TForm_spr_penya
  Left = 540
  Top = 256
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1077#1085#1080
  ClientHeight = 516
  ClientWidth = 684
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
    Width = 684
    Height = 228
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_stav_r
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1DAYS1: TcxGridDBColumn
        Caption = #1044#1085#1077#1081' '#1086#1090
        DataBinding.FieldName = 'DAYS1'
      end
      object cxGrid1DBTableView1DAYS2: TcxGridDBColumn
        Caption = #1044#1085#1077#1081' '#1076#1086
        DataBinding.FieldName = 'DAYS2'
        Width = 63
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
        DataBinding.FieldName = 'FK_LSK_TP'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_lsk_tp
      end
      object cxGrid1DBTableView1DAT1: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'DAT1'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.AutoSelect = False
        Properties.InputKind = ikMask
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 71
      end
      object cxGrid1DBTableView1DAT2: TcxGridDBColumn
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DAT2'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.AutoSelect = False
        Properties.InputKind = ikMask
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 68
      end
      object cxGrid1DBTableView1RATE: TcxGridDBColumn
        Caption = '% '#1089#1090#1072#1074#1082#1080
        DataBinding.FieldName = 'RATE'
        Width = 98
      end
      object cxGrid1DBTableView1PARTRATE: TcxGridDBColumn
        Caption = #1044#1086#1083#1103' '#1086#1090' '#1089#1090#1072#1074#1082#1080
        DataBinding.FieldName = 'PARTRATE'
        Width = 79
      end
      object cxGrid1DBTableView1PROC: TcxGridDBColumn
        Caption = #1048#1090#1086#1075#1086#1074#1099#1081' '#1082#1086#1101#1092#1092
        DataBinding.FieldName = 'PROC'
        Width = 101
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 236
    Width = 684
    Height = 280
    Align = alBottom
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_spr_pen
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1MG: TcxGridDBColumn
        Caption = #1055#1077#1088#1080#1086#1076
        DataBinding.FieldName = 'MG'
        Width = 69
      end
      object cxGridDBTableView1DAT: TcxGridDBColumn
        Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1072#1103' '#1076#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
        DataBinding.FieldName = 'DAT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.AutoSelect = False
        Properties.InputKind = ikMask
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 226
      end
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
        DataBinding.FieldName = 'FK_LSK_TP'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_lsk_tp
        Width = 137
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = #1059#1050
        DataBinding.FieldName = 'REU'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'REU'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DataModule1.DS_reu
        Width = 176
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 228
    Width = 684
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salBottom
    PositionAfterOpen = 150
    MinSize = 60
    Control = cxGrid2
    Color = clBtnFace
    ParentColor = False
  end
  object OD_stav_r: TOracleDataSet
    SQL.Strings = (
      'select t.*,t.rowid from scott.stav_r t'
      'order by t.fk_lsk_tp, t.days1, t.dat1')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000A00000008000000500052004F004300010000000000080000004400
      4100540031000100000000000800000044004100540032000100000000001200
      00004D004F004E00540048005F00500045004E000100000000000A0000004400
      41005900530031000100000000000A0000004400410059005300320001000000
      00001200000046004B005F004C0053004B005F00540050000100000000000800
      0000520041005400450001000000000010000000500041005200540052004100
      540045000100000000000400000049004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    AfterInsert = OD_spr_penAfterPost
    AfterPost = OD_spr_penAfterPost
    AfterDelete = OD_spr_penAfterPost
    Left = 24
    Top = 120
    object OD_stav_rPROC: TFloatField
      FieldName = 'PROC'
    end
    object OD_stav_rDAT1: TDateTimeField
      FieldName = 'DAT1'
    end
    object OD_stav_rDAT2: TDateTimeField
      FieldName = 'DAT2'
    end
    object OD_stav_rMONTH_PEN: TFloatField
      FieldName = 'MONTH_PEN'
    end
    object OD_stav_rDAYS1: TFloatField
      FieldName = 'DAYS1'
    end
    object OD_stav_rDAYS2: TFloatField
      FieldName = 'DAYS2'
    end
    object OD_stav_rFK_LSK_TP: TFloatField
      FieldName = 'FK_LSK_TP'
    end
    object OD_stav_rRATE: TFloatField
      FieldName = 'RATE'
    end
    object OD_stav_rPARTRATE: TStringField
      FieldName = 'PARTRATE'
      Size = 100
    end
    object OD_stav_rID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
    end
  end
  object DS_stav_r: TDataSource
    DataSet = OD_stav_r
    Left = 56
    Top = 120
  end
  object OD_spr_pen: TOracleDataSet
    SQL.Strings = (
      'select t.*,t.rowid from scott.c_spr_pen t'
      'order by t.fk_lsk_tp, t.dat')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000050000001200000046004B005F004C0053004B005F00540050000100
      00000000040000004D0047000100000000000600000044004100540001000000
      0000060000005200450055000100000000000400000049004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    AfterInsert = OD_spr_penAfterPost
    AfterPost = OD_spr_penAfterPost
    AfterDelete = OD_spr_penAfterPost
    Left = 24
    Top = 88
    object OD_spr_penMG: TStringField
      FieldName = 'MG'
      Required = True
      Size = 6
    end
    object OD_spr_penDAT: TDateTimeField
      FieldName = 'DAT'
      Required = True
    end
    object OD_spr_penFK_LSK_TP: TFloatField
      FieldName = 'FK_LSK_TP'
    end
    object OD_spr_penREU: TStringField
      DisplayWidth = 3
      FieldName = 'REU'
      Size = 3
    end
  end
  object DS_spr_pen: TDataSource
    DataSet = OD_spr_pen
    Left = 56
    Top = 88
  end
  object OD_lsk_tp: TOracleDataSet
    SQL.Strings = (
      'select t.* from scott.v_lsk_tp t'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000004000000040000004900440001000000000004000000430044000100
      00000000080000004E0041004D004500010000000000060000004E0050005000
      010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 96
    Top = 88
  end
  object DS_lsk_tp: TDataSource
    DataSet = OD_lsk_tp
    Left = 128
    Top = 88
  end
end
