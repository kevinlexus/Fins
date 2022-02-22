object Form_tarif_usl: TForm_tarif_usl
  Left = 1374
  Top = 346
  Caption = #1058#1072#1088#1080#1092#1099' '#1087#1086' '#1091#1089#1083#1091#1075#1072#1084
  ClientHeight = 888
  ClientWidth = 1014
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
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 848
    Width = 1014
    Height = 40
    Align = alBottom
    TabOrder = 0
    object Panel1: TPanel
      Left = 833
      Top = 1
      Width = 180
      Height = 38
      Align = alRight
      TabOrder = 0
      DesignSize = (
        180
        38)
      object CheckBox1: TCheckBox
        Left = 72
        Top = 5
        Width = 92
        Height = 25
        Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077', '#1087#1086#1089#1083#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1090#1072#1088#1080#1092#1072
        Anchors = [akRight]
        Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 0
        WordWrap = True
        OnClick = CheckBox1Click
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 25
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 6
      Width = 54
      Height = 13
      Caption = '                  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cxGridTarif: TcxGrid
    Left = 0
    Top = 25
    Width = 1014
    Height = 823
    Align = alClient
    PopupMenu = PopupMenu3
    TabOrder = 2
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnEditDblClick = cxGridDBTableView1EditDblClick
      DataController.DataSource = DM_Olap.DS_data
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1USL: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1091#1089#1083'.'
        DataBinding.FieldName = 'USL'
        Width = 47
      end
      object cxGridDBTableView1NM: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'NM'
        Width = 136
      end
      object cxGridDBTableView1NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'NAME'
        Width = 125
      end
      object cxGridDBTableView1NAME2: TcxGridDBColumn
        Caption = #1043#1083#1072#1074#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'NAME2'
        Width = 150
      end
      object cxGridDBTableView1KOEFF: TcxGridDBColumn
        Caption = #1050#1086#1101#1092#1092'.'
        DataBinding.FieldName = 'KOEFF'
        Width = 84
      end
      object cxGridDBTableView1NORM: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072#1090#1080#1074
        DataBinding.FieldName = 'NORM'
        Width = 83
      end
      object cxGridDBTableView1DT1: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'DT1'
        Width = 147
      end
      object cxGridDBTableView1DT2: TcxGridDBColumn
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DT2'
        Width = 147
      end
    end
    object cxGridTarifDBTableView1: TcxGridDBTableView
      OnDblClick = cxGridTarifDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DM_Olap.DS_nabor_lsk
      DataController.DetailKeyFieldNames = 'house_id;koeff;norm;usl;dt1;dt2'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'house_id;koeff;norm;usl;dt1;dt2'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      object cxGridTarifDBTableView1KW: TcxGridDBColumn
        Caption = #8470' '#1050#1074'.'
        DataBinding.FieldName = 'KW'
        Width = 64
      end
      object cxGridTarifDBTableView1LSK: TcxGridDBColumn
        Caption = #1051#1080#1094'.'#1089#1095'.'
        DataBinding.FieldName = 'LSK'
        Width = 64
      end
      object cxGridTarifDBTableView1ORG: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1086#1088#1075'.'
        DataBinding.FieldName = 'ORG'
      end
      object cxGridTarifDBTableView1KOEFF: TcxGridDBColumn
        Caption = #1050#1086#1101#1092#1092'.'
        DataBinding.FieldName = 'KOEFF'
      end
      object cxGridTarifDBTableView1NORM: TcxGridDBColumn
        Caption = #1053#1086#1088#1084'.'
        DataBinding.FieldName = 'NORM'
      end
      object cxGridTarifDBTableView1DT1: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'DT1'
        Width = 64
      end
      object cxGridTarifDBTableView1DT2: TcxGridDBColumn
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DT2'
        Width = 64
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
      object cxGridTarifLevel2: TcxGridLevel
        GridView = cxGridTarifDBTableView1
      end
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 46
    Top = 624
    object mnu1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      OnClick = mnu1Click
    end
    object mnu2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      OnClick = mnu2Click
    end
  end
end
