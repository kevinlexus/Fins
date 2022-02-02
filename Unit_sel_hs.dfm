object Form_sel_hs: TForm_sel_hs
  Left = 1238
  Top = 168
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1084#1086#1074' '#1076#1083#1103' '#1086#1090#1095#1077#1090#1072
  ClientHeight = 416
  ClientWidth = 424
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 375
    Width = 424
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 342
      Top = 8
      Width = 67
      Height = 25
      Cancel = True
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 424
    Height = 375
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      FilterBox.MRUItemsListDropDownCount = 5
      FilterBox.Visible = fvNever
      DataController.DataSource = DS_list_choice
      DataController.Filter.Options = [fcoCaseInsensitive, fcoSoftCompare]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.InfoText = #1050#1083#1080#1082' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ADR: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADR'
        Options.Editing = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1SEL: TcxGridDBColumn
        Caption = #1042#1099#1073#1088#1072#1085#1086'?'
        DataBinding.FieldName = 'SEL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 0
        Properties.ValueUnchecked = 1
        Options.Filtering = False
        Options.Sorting = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DS_list_choice: TDataSource
    DataSet = DataModule1.OD_list_choice
    Left = 16
    Top = 384
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 40
    object N2: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
      OnClick = N1Click
    end
  end
end
