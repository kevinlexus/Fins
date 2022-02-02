object Form_gen_err_lst: TForm_gen_err_lst
  Left = 1635
  Top = 235
  Width = 629
  Height = 391
  Caption = #1057#1087#1080#1089#1086#1082' '#1083'/'#1089' '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1093' '#1086#1096#1080#1073#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 613
    Height = 352
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_data
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.gen.gen_check_lst(var_ => :err_,'
      '                    prep_refcursor => :prep_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      03000000020000000F0000003A505245505F524546435552534F527400000000
      00000000000000050000003A4552525F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {0400000001000000030000004C534B010000000000}
    Session = DataModule1.OracleSession1
    Left = 40
    Top = 160
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 72
    Top = 160
  end
end
