object frmSelObjects: TfrmSelObjects
  Left = 1630
  Top = 392
  Caption = #1042#1099#1073#1086#1088' '#1086#1073#1098#1077#1082#1090#1086#1074
  ClientHeight = 595
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 554
    Width = 518
    Height = 41
    Align = alBottom
    TabOrder = 0
    object chkIsPremiseSearch: TCheckBox
      Left = 8
      Top = 16
      Width = 129
      Height = 17
      Caption = #1055#1086#1080#1089#1082' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = chkIsPremiseSearchClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 433
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 516
      Height = 431
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        FilterBox.Visible = fvNever
        DataController.DataSource = DS_sel_objects
        DataController.Filter.Options = [fcoCaseInsensitive, fcoSoftCompare]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1050#1083#1080#1082' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1KUL: TcxGridDBColumn
          Caption = #1050#1086#1076'.'#1091#1083'.'
          DataBinding.FieldName = 'KUL'
          Width = 36
        end
        object cxGrid1DBTableView1ADR: TcxGridDBColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'ADR'
          Width = 383
        end
        object cxGrid1DBTableView1K_LSK_ID_DIVIDED: TcxGridDBColumn
          Caption = #1060#1080#1085'.'#1083#1080#1094'.'#1089#1095#1077#1090
          DataBinding.FieldName = 'K_LSK_ID_DIVIDED'
          Width = 80
        end
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGrid1DBTableView1ND: TcxGridDBColumn
          DataBinding.FieldName = 'ND'
          Visible = False
        end
        object cxGrid1DBTableView1KW: TcxGridDBColumn
          DataBinding.FieldName = 'KW'
          Visible = False
        end
        object cxGrid1DBTableView1K_LSK_ID: TcxGridDBColumn
          DataBinding.FieldName = 'K_LSK_ID'
          Visible = False
        end
        object cxGrid1DBTableView1TP: TcxGridDBColumn
          DataBinding.FieldName = 'TP'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 433
    Width = 518
    Height = 121
    Align = alClient
    TabOrder = 2
    object cxTreeList1: TcxTreeList
      Left = 1
      Top = 1
      Width = 516
      Height = 119
      Align = alClient
      Bands = <>
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Headers = False
      TabOrder = 0
      OnDblClick = cxTreeList1DblClick
    end
  end
  object Uni_sel_objects: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select * from scott.tree_adr t '
      'where t.tp in (&tp)'
      'order by t.id')
    Left = 40
    Top = 232
    MacroData = <
      item
        Name = 'tp'
        Value = '1'
      end>
  end
  object DS_sel_objects: TDataSource
    DataSet = Uni_sel_objects
    Left = 104
    Top = 232
  end
end
