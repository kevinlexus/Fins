object Form_smpl_chk: TForm_smpl_chk
  Left = 448
  Top = 311
  Width = 629
  Height = 391
  Caption = #1057#1087#1080#1089#1086#1082' '#1083#1080#1094#1077#1074#1099#1093' '#1089#1095#1077#1090#1086#1074' '#1076#1083#1103' '#1087#1088#1086#1074#1077#1088#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 613
    Height = 311
    Align = alClient
    PopupMenu = pm1
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = DS_data
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1057#1087#1080#1089#1086#1082':'
        DataBinding.FieldName = 'LSK'
        Width = 582
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 311
    Width = 613
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btn1: TButton
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1055#1088#1086#1087#1091#1089#1090#1080#1090#1100
      TabOrder = 0
      OnClick = btn1Click
    end
    object Button1: TButton
      Left = 528
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.gen.smpl_chk(p_var => :p_var,'
      '                    prep_refcursor => :prep_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000060000003A505F5641520300000004000000010000000000
      00000F0000003A505245505F524546435552534F527400000000000000000000
      00}
    QBEDefinition.QBEFieldDefs = {0400000001000000030000004C534B010000000000}
    Session = DataModule1.OracleSession1
    AfterOpen = OD_dataAfterOpen
    Left = 8
    Top = 64
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 40
    Top = 64
  end
  object pm1: TPopupMenu
    Left = 224
    Top = 96
    object N1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074' Excel'
      OnClick = N1Click
    end
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'xls'
    Left = 120
    Top = 64
  end
end
