object Form_spr_sprorg: TForm_spr_sprorg
  Left = 1161
  Top = 589
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
  ClientHeight = 681
  ClientWidth = 1295
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
    Width = 609
    Height = 681
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_sprorg
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
      end
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        DataBinding.FieldName = 'REU'
        Width = 33
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
      end
      object cxGrid1DBTableView1IS_RSO: TcxGridDBColumn
        Caption = #1056#1057#1054'?'
        DataBinding.FieldName = 'IS_RSO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 34
      end
      object cxGrid1DBTableView1FK_BILL_VAR: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1089#1095#1077#1090#1072'/FK_BILL_VAR'
        DataBinding.FieldName = 'FK_BILL_VAR'
      end
      object cxGrid1DBTableView1IS_EXCHANGE_GIS: TcxGridDBColumn
        Caption = #1054#1073#1084#1077#1085' '#1043#1048#1057'?'
        DataBinding.FieldName = 'IS_EXCHANGE_GIS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 43
      end
      object cxGrid1DBTableView1NPP: TcxGridDBColumn
        DataBinding.FieldName = 'NPP'
      end
      object cxGrid1DBTableView1GRP: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072' '#1076#1083#1103' '#1054#1073#1086#1088#1086#1090#1082#1080
        DataBinding.FieldName = 'GRP'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        Caption = #1050#1086#1076'.'#1088#1086#1076'.'#1086#1088#1075'.'
        DataBinding.FieldName = 'PARENT_ID'
      end
      object cxGrid1DBTableView1LVL: TcxGridDBColumn
        DataBinding.FieldName = 'LVL'
      end
      object cxGrid1DBTableView1LKPAR: TcxGridDBColumn
        Caption = #1056#1086#1076'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'LKPAR'
        Width = 62
      end
      object cxGrid1DBTableView1LKPAR2: TcxGridDBColumn
        Caption = #1056#1086#1076'. '#1086#1088#1075'.'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074
        DataBinding.FieldName = 'LKPAR2'
        Width = 66
      end
      object cxGrid1DBTableView1BANK_CD: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1073#1072#1085#1082#1072' '#1076#1083#1103' txt '#1092#1072#1081#1083'.'
        DataBinding.FieldName = 'BANK_CD'
        Width = 129
      end
      object cxGrid1DBTableView1ADR_WWW: TcxGridDBColumn
        DataBinding.FieldName = 'ADR_WWW'
        Width = 100
      end
      object cxGrid1DBTableView1EMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'EMAIL'
        Width = 100
      end
      object cxGrid1DBTableView1RASCHET_SCHET: TcxGridDBColumn
        Caption = #1056'/C-1'
        DataBinding.FieldName = 'RASCHET_SCHET'
        Width = 92
      end
      object cxGrid1DBTableView1RASCHET_SCHET2: TcxGridDBColumn
        DataBinding.FieldName = 'RASCHET_SCHET2'
        Width = 92
      end
      object cxGrid1DBTableView1R_SCH_GIS: TcxGridDBColumn
        Caption = #1056'/'#1057' '#1043#1048#1057' '#1046#1050#1061
        DataBinding.FieldName = 'R_SCH_GIS'
        Width = 80
      end
      object cxGrid1DBTableView1R_SCH_ADDIT: TcxGridDBColumn
        DataBinding.FieldName = 'R_SCH_ADDIT'
        Width = 84
      end
      object cxGrid1DBTableView1CODE_DEB: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1076#1083#1103' '#1074#1099#1075#1088' '#1076#1086#1083#1075#1086#1074
        DataBinding.FieldName = 'CODE_DEB'
        Width = 46
      end
      object cxGrid1DBTableView1DOLG_NAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1083#1075#1086#1074
        DataBinding.FieldName = 'DOLG_NAME'
        Width = 60
      end
      object cxGrid1DBTableView1V: TcxGridDBColumn
        DataBinding.FieldName = 'V'
        Visible = False
      end
      object cxGrid1DBTableView1UCH: TcxGridDBColumn
        Caption = #1059#1095#1072#1089#1090#1086#1082
        DataBinding.FieldName = 'UCH'
        Width = 52
      end
      object cxGrid1DBTableView1ADR: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089' '#1086#1088#1075'.'
        DataBinding.FieldName = 'ADR'
        Width = 73
      end
      object cxGrid1DBTableView1ADR_CASH: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089' '#1050#1072#1089#1089#1099
        DataBinding.FieldName = 'ADR_CASH'
        Width = 77
      end
      object cxGrid1DBTableView1INN: TcxGridDBColumn
        Caption = #1048#1085#1085
        DataBinding.FieldName = 'INN'
        Width = 66
      end
      object cxGrid1DBTableView1MANAGER: TcxGridDBColumn
        Caption = #1044#1080#1088#1077#1082#1090#1086#1088
        DataBinding.FieldName = 'MANAGER'
        Width = 56
      end
      object cxGrid1DBTableView1BUH: TcxGridDBColumn
        Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088
        DataBinding.FieldName = 'BUH'
        Width = 58
      end
      object cxGrid1DBTableView1K_SCHET: TcxGridDBColumn
        Caption = #1050#1086#1088#1088'.'#1089#1095'.'
        DataBinding.FieldName = 'K_SCHET'
        Width = 72
      end
      object cxGrid1DBTableView1KOD_OKONH: TcxGridDBColumn
        Caption = #1054#1050#1054#1053#1061
        DataBinding.FieldName = 'KOD_OKONH'
        Width = 58
      end
      object cxGrid1DBTableView1KOD_OGRN: TcxGridDBColumn
        Caption = #1054#1043#1056#1053
        DataBinding.FieldName = 'KOD_OGRN'
        Width = 50
      end
      object cxGrid1DBTableView1BIK: TcxGridDBColumn
        Caption = #1041#1048#1050
        DataBinding.FieldName = 'BIK'
        Width = 52
      end
      object cxGrid1DBTableView1PHONE: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'PHONE'
        Width = 52
      end
      object cxGrid1DBTableView1PHONE2: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085'-2'
        DataBinding.FieldName = 'PHONE2'
        Width = 60
      end
      object cxGrid1DBTableView1KPP: TcxGridDBColumn
        Caption = #1050#1055#1055
        DataBinding.FieldName = 'KPP'
        Width = 42
      end
      object cxGrid1DBTableView1BANK: TcxGridDBColumn
        Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1073#1072#1085#1082#1072
        DataBinding.FieldName = 'BANK'
        Width = 106
      end
      object cxGrid1DBTableView1ID_EXP: TcxGridDBColumn
        DataBinding.FieldName = 'ID_EXP'
        Visible = False
      end
      object cxGrid1DBTableView1ADR_RECIP: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
        DataBinding.FieldName = 'ADR_RECIP'
        Width = 106
      end
      object cxGrid1DBTableView1AUTHORIZED_DIR: TcxGridDBColumn
        Caption = #1059#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1099#1081' '#1087#1088#1080#1082#1072#1079#1086#1084', '#1079#1072' '#1076#1080#1088#1077#1082#1090#1086#1088#1072
        DataBinding.FieldName = 'AUTHORIZED_DIR'
        Width = 100
      end
      object cxGrid1DBTableView1AUTHORIZED_BUH: TcxGridDBColumn
        Caption = #1059#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1099#1081' '#1087#1088#1080#1082#1072#1079#1086#1084', '#1079#1072' '#1075#1083'.'#1073#1091#1093'.'
        DataBinding.FieldName = 'AUTHORIZED_BUH'
        Width = 98
      end
      object cxGrid1DBTableView1AUTH_DIR_DOC: TcxGridDBColumn
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090' - '#1059#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1099#1081' '#1087#1088#1080#1082#1072#1079#1086#1084', '#1079#1072' '#1076#1080#1088#1077#1082#1090#1086#1088#1072
        DataBinding.FieldName = 'AUTH_DIR_DOC'
        Width = 76
      end
      object cxGrid1DBTableView1AUTH_BUH_DOC: TcxGridDBColumn
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090' - '#1059#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1099#1081' '#1087#1088#1080#1082#1072#1079#1086#1084', '#1079#1072' '#1075#1083'.'#1073#1091#1093'.'
        DataBinding.FieldName = 'AUTH_BUH_DOC'
        Width = 64
      end
      object cxGrid1DBTableView1OKPO: TcxGridDBColumn
        Caption = #1054#1050#1055#1054
        DataBinding.FieldName = 'OKPO'
      end
      object cxGrid1DBTableView1VER_CD: TcxGridDBColumn
        DataBinding.FieldName = 'VER_CD'
        Visible = False
      end
      object cxGrid1DBTableView1FULL_NAME: TcxGridDBColumn
        Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        DataBinding.FieldName = 'FULL_NAME'
        Width = 80
      end
      object cxGrid1DBTableView1PARENT_ID2: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID2'
        Visible = False
      end
      object cxGrid1DBTableView1HEAD_NAME: TcxGridDBColumn
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103
        DataBinding.FieldName = 'HEAD_NAME'
        Width = 70
      end
      object cxGrid1DBTableView1POST_INDX: TcxGridDBColumn
        DataBinding.FieldName = 'POST_INDX'
        Width = 60
      end
      object cxGrid1DBTableView1BANK_FNAME: TcxGridDBColumn
        Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072' '#1076#1083#1103' '#1074#1099#1075#1088#1091#1079#1082#1080' '#1074' '#1057#1073#1077#1088#1073#1072#1085#1082
        DataBinding.FieldName = 'BANK_FNAME'
        Width = 78
      end
      object cxGrid1DBTableView1GRP_DEB: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087'.'#1076#1086#1083#1075
        DataBinding.FieldName = 'GRP_DEB'
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 46
      end
      object cxGrid1DBTableView1FK_ORG2: TcxGridDBColumn
        DataBinding.FieldName = 'FK_ORG2'
        Width = 50
      end
      object cxGrid1DBTableView1SERVICE_NAME_GIS: TcxGridDBColumn
        Caption = #1048#1084#1103' '#1089#1077#1088#1074#1080#1089#1072' '#1043#1048#1057
        DataBinding.FieldName = 'SERVICE_NAME_GIS'
        Width = 78
      end
      object cxGrid1DBTableView1IS_AUTO_SEND_DEB_REQ: TcxGridDBColumn
        Caption = #1054#1090#1087#1088#1072#1074#1083#1103#1090#1100' '#1086#1090#1074#1077#1090#1099' '#1085#1072' '#1079#1072#1087#1088#1086#1089#1099' '#1086' '#1079#1072#1076#1086#1083#1078'. '#1074' '#1059#1057#1047#1053' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080'?'
        DataBinding.FieldName = 'IS_AUTO_SEND_DEB_REQ'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 288
    Width = 217
    Height = 105
    Color = clGradientActiveCaption
    Lines.Strings = (
      #1053#1072' '#1101#1090#1086#1081' '#1092#1086#1088#1084#1077' '#1087#1086#1082#1072#1079#1072#1085' '#1091#1076#1072#1095#1085#1099#1081' '#1087#1088#1080#1084#1077#1088
      #1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' '#1089#1074#1086#1081#1089#1090#1074' '#1080' '#1084#1077#1090#1086#1076#1086#1074' DOA'
      'UpdatesPending,'
      'CashedUpdates,'
      'ApplyUpdates'
      #1072' '#1090#1072#1082' '#1078#1077' '#1088#1091#1089#1089#1080#1092#1080#1094#1080#1088#1086#1074#1072#1085#1072' '#1088#1077#1072#1082#1094#1080#1103' '#1085#1072' '
      'required '
      #1087#1086#1083#1103)
    TabOrder = 3
    Visible = False
  end
  object cxSplitter1: TcxSplitter
    Left = 609
    Top = 0
    Width = 8
    Height = 681
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salRight
    PositionAfterOpen = 150
    InvertDirection = True
    MinSize = 60
    Control = Panel1
    OnAfterOpen = cxSplitter1AfterOpen
    OnAfterClose = cxSplitter1AfterClose
    Color = clBtnFace
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 617
    Top = 0
    Width = 678
    Height = 681
    Align = alRight
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 676
      Height = 679
      ActivePage = TabSheet4
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1057#1095#1077#1090
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 668
          Height = 651
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = DS_usl_bills
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.InvertSelect = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            object cxGridDBTableView1ID: TcxGridDBColumn
              Caption = #1059#1089#1083#1091#1075#1072'/ ID '
              DataBinding.FieldName = 'ID'
              Width = 28
            end
            object cxGridDBTableView1USL_ID: TcxGridDBColumn
              Caption = #1059#1089#1083#1091#1075#1072' '#1087#1086#1076#1095'./ USL_ID'
              DataBinding.FieldName = 'USL_ID'
              Width = 46
            end
            object cxGridDBTableView1MG1: TcxGridDBColumn
              Caption = 'C'
              DataBinding.FieldName = 'MG1'
            end
            object cxGridDBTableView1MG2: TcxGridDBColumn
              Caption = #1055#1086
              DataBinding.FieldName = 'MG2'
            end
            object cxGridDBTableView1IS_VOL: TcxGridDBColumn
              Caption = #1042#1082#1083'.'#1086#1073#1098#1077#1084'/ IS_VOL'
              DataBinding.FieldName = 'IS_VOL'
            end
            object cxGridDBTableView1FK_TP: TcxGridDBColumn
              DataBinding.FieldName = 'FK_TP'
            end
            object cxGridDBTableView1FK_BILL_VAR: TcxGridDBColumn
              Caption = #1058#1080#1087' '#1089#1095#1077#1090#1072'/ FK_BILL_VAR'
              DataBinding.FieldName = 'FK_BILL_VAR'
            end
            object cxGridDBTableView1FRC_GET_PRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FRC_GET_PRICE'
            end
            object cxGridDBTableView1BILL_AGG: TcxGridDBColumn
              DataBinding.FieldName = 'BILL_AGG'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077' '#1091#1089#1083#1091#1075' '#1090#1077#1082'.'#1089#1086#1076'.'
        ImageIndex = 1
        object cxGrid3: TcxGrid
          Left = 0
          Top = 41
          Width = 668
          Height = 610
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = DS_usl_round
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.InvertSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            object cxGridDBTableView2USL: TcxGridDBColumn
              Caption = #1050#1086#1076' '#1091#1089#1083#1091#1075#1080
              DataBinding.FieldName = 'USL'
              Width = 69
            end
            object cxGridDBTableView2Column1: TcxGridDBColumn
              Caption = #1059#1089#1083#1091#1075#1072
              DataBinding.FieldName = 'USL'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'USL'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListSource = DS_usl
              Width = 399
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object Memo2: TMemo
          Left = 0
          Top = 0
          Width = 668
          Height = 41
          Align = alTop
          Lines.Strings = (
            
              #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1080', '#1082#1086#1090#1086#1088#1099#1077' '#1073#1091#1076#1091#1090' '#1091#1095#1072#1089#1090#1074#1086#1074#1072#1090#1100' '#1074' '#1086#1082#1088#1091#1075#1083#1077#1085 +
              #1080#1080' ('#1086#1073#1099#1095#1085#1086' '#1074#1093#1086#1076#1103#1097#1080#1077' '
            
              #1074' '#1090#1077#1082#1091#1097#1077#1077' '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1077'). '#1054#1082#1088#1091#1075#1083#1077#1085#1080#1077' '#1073#1091#1076#1077#1090' '#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1086' '#1085#1072' '#1091#1089#1083#1091#1075#1091' '#1089' ' +
              #1084#1077#1085#1100#1096#1080#1084' '#1082#1086#1076#1086#1084'.')
          TabOrder = 1
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1057#1095#1077#1090'-'#1076#1077#1090#1072#1083'.'
        ImageIndex = 2
        object Memo3: TMemo
          Left = 0
          Top = 0
          Width = 668
          Height = 73
          Align = alTop
          Lines.Strings = (
            
              #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1089#1095#1077#1090#1072'. '#1058#1086', '#1082#1072#1082' '#1074#1099#1075#1083#1103#1076#1103#1090' '#1089#1090#1088#1086#1082#1080' '#1091#1089#1083#1091#1075' '#1089' '#1086#1073#1098 +
              #1077#1084#1086#1084', '#1088#1072#1089#1094#1077#1085#1082#1086#1081', '
            
              #1085#1072#1095#1080#1089#1083#1077#1085#1080#1077#1084'. '#1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1090#1080#1087' '#1089#1095#1077#1090#1072', '#1077#1089#1083#1080' '#1079#1072#1087#1086#1083#1085#1077#1085' ID '#1076#1086#1084#1072', '#1090#1086' '#1073#1091#1076#1077 +
              #1090' '#1085#1072#1089#1090#1088#1086#1077#1085#1086' '#1090#1086#1083#1100#1082#1086' '
            
              #1076#1083#1103' '#1076#1086#1084#1072'.'#1058#1080#1087': 0-'#1086#1073#1099#1095#1085#1072#1103' '#1091#1089#1083#1091#1075#1072', 1-'#1089#1086#1076#1077#1088#1078#1080#1090' '#1074#1083#1086#1078#1077#1085#1085#1099#1077', 2- SUM('#1089#1091#1084 +
              #1084#1072','#1086#1073#1098#1077#1084', '#1088#1072#1089#1094#1077#1085#1082#1072' '
            
              #1074#1083#1086#1078#1077#1085#1085#1099#1093') '#1045#1089#1083#1080' '#1085#1091#1078#1085#1086' '#1089#1082#1088#1099#1090#1100' '#1094#1077#1085#1091' '#1080#1083#1080' '#1086#1073#1098#1077#1084' '#1080#1083#1080' '#1074#1089#1102' '#1089#1090#1088#1086#1082#1091', '#1089#1090#1072#1074 +
              #1080#1090#1100' 1 '#1074' "'#1057#1082#1088#1099#1090#1100' '
            #1094#1077#1085#1091'/'#1086#1073#1098#1105#1084'"')
          TabOrder = 0
        end
        object cxGrid4: TcxGrid
          Left = 0
          Top = 73
          Width = 668
          Height = 578
          Align = alClient
          TabOrder = 1
          object cxGridDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = DS_usl_tree
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            object cxGridDBTableView3NPP: TcxGridDBColumn
              Caption = #8470' '#1087'/'#1087
              DataBinding.FieldName = 'NPP'
              Width = 41
            end
            object cxGridDBTableView3TP: TcxGridDBColumn
              Caption = #1058#1080#1087
              DataBinding.FieldName = 'TP'
              Width = 30
            end
            object cxGridDBTableView3USL: TcxGridDBColumn
              Caption = #1059#1089#1083#1091#1075#1072' USL'
              DataBinding.FieldName = 'USL'
              Width = 77
            end
            object cxGridDBTableView3PARENT_USL: TcxGridDBColumn
              Caption = #1056#1086#1076#1080#1090'.'#1091#1089#1083'. PARENT_USL'
              DataBinding.FieldName = 'PARENT_USL'
              Width = 77
            end
            object cxGridDBTableView3HIDE_PRICE: TcxGridDBColumn
              Caption = #1057#1082#1088#1099#1090#1100' '#1094#1077#1085#1091
              DataBinding.FieldName = 'HIDE_PRICE'
            end
            object cxGridDBTableView3HIDE_VOL: TcxGridDBColumn
              Caption = #1057#1082#1088#1099#1090#1100' '#1086#1073#1098#1077#1084
              DataBinding.FieldName = 'HIDE_VOL'
            end
            object cxGridDBTableView3HIDE_ROW: TcxGridDBColumn
              Caption = #1057#1082#1088#1099#1090#1100' '#1089#1090#1088#1086#1082#1091
              DataBinding.FieldName = 'HIDE_ROW'
            end
            object cxGridDBTableView3FK_BILL_VAR: TcxGridDBColumn
              Caption = #1058#1080#1087' '#1089#1095#1077#1090#1072'/ FK_BILL_VAR'
              DataBinding.FieldName = 'FK_BILL_VAR'
              Width = 63
            end
            object cxGridDBTableView3FK_HOUSE: TcxGridDBColumn
              Caption = 'ID '#1044#1086#1084#1072'/ FKHOUSE'
              DataBinding.FieldName = 'FK_HOUSE'
              Width = 78
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1057#1095#1077#1090' '#1101#1082#1089#1087#1086#1088#1090
        ImageIndex = 3
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 668
          Height = 651
          Align = alClient
          TabOrder = 0
          object cxGrid5DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = DS_spr_bill_print
            DataController.KeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid5DBTableView1UK: TcxGridDBColumn
              Caption = #1059#1050
              DataBinding.FieldName = 'REU'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'REU'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DS_reu
              Width = 100
            end
            object cxGrid5DBTableView1FILTER_REU: TcxGridDBColumn
              Caption = #1060#1080#1083#1100#1090#1088' '#1059#1050
              DataBinding.FieldName = 'FILTER_REU'
              Width = 273
            end
            object cxGrid5DBTableView1PREFIX: TcxGridDBColumn
              Caption = #1055#1088#1077#1092#1080#1082#1089
              DataBinding.FieldName = 'PREFIX'
              Width = 60
            end
            object cxGrid5DBTableView1IS_EXPORT_PDF: TcxGridDBColumn
              DataBinding.FieldName = 'IS_EXPORT_PDF'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 99
            end
            object cxGrid5DBTableView1IS_EXPORT_EMAIL: TcxGridDBColumn
              Caption = #1058#1086#1083#1100#1082#1086' '#1089' '#1101#1083'.'#1087#1086#1095#1090#1086#1081
              DataBinding.FieldName = 'IS_EXPORT_EMAIL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 134
            end
          end
          object cxGrid5Level1: TcxGridLevel
            GridView = cxGrid5DBTableView1
          end
        end
      end
    end
  end
  object OD_sprorg: TOracleDataSet
    SQL.Strings = (
      'select '#39#39' as lvl, s.id, s.cd, s.fk_orgtp, s.name, s.npp, '
      
        's.v, s.parent_id, s.reu, s.trest, s.uch, s.adr, s.inn, s.manager' +
        ', s.buh, s.raschet_schet, s.raschet_schet2, '
      
        's.k_schet, s.kod_okonh, s.kod_ogrn, s.bik, s.phone, s.kpp, s.ban' +
        'k, s.id_exp, s.adr_recip, s.authorized_dir,'
      
        ' s.authorized_buh, s.auth_dir_doc, s.auth_buh_doc, s.okpo, s.ver' +
        '_cd, s.full_name, s.phone2, s.parent_id2, '
      
        ' s.fk_org2, s.bank_cd, s.adr_www, s.email, s.head_name, s.post_i' +
        'ndx, s.r_sch_addit, s.code_deb, s.dolg_name, '
      
        ' s.fk_bill_var, s.bank_fname, s.grp, s.r_sch_gis, s.adr_cash, s.' +
        'is_rso, s.is_exchange_gis, s.grp_deb, s.service_name_gis, s.is_a' +
        'uto_send_deb_req,'
      ' s.rowid'
      '  from scott.t_org s'
      '  order by s.reu, s.name')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      0500000036000000040000004900440001000000000004000000430044000100
      000000001000000046004B005F004F0052004700540050000100000000000800
      00004E0041004D004500010000000000060000004E0050005000010000000000
      0200000056000100000000001200000050004100520045004E0054005F004900
      4400010000000000060000005200450055000100000000000A00000054005200
      4500530054000100000000000600000055004300480001000000000006000000
      4100440052000100000000000600000049004E004E000100000000000E000000
      4D0041004E004100470045005200010000000000060000004200550048000100
      000000001A00000052004100530043004800450054005F005300430048004500
      54000100000000000E0000004B005F0053004300480045005400010000000000
      120000004B004F0044005F004F004B004F004E00480001000000000010000000
      4B004F0044005F004F00470052004E0001000000000006000000420049004B00
      0100000000000A000000500048004F004E004500010000000000060000004B00
      5000500001000000000008000000420041004E004B000100000000000C000000
      490044005F00450058005000010000000000120000004100440052005F005200
      45004300490050000100000000001C00000041005500540048004F0052004900
      5A00450044005F004400490052000100000000001C0000004100550054004800
      4F00520049005A00450044005F00420055004800010000000000180000004100
      5500540048005F004400490052005F0044004F00430001000000000018000000
      41005500540048005F004200550048005F0044004F0043000100000000000800
      00004F004B0050004F000100000000000C0000005600450052005F0043004400
      01000000000012000000460055004C004C005F004E0041004D00450001000000
      00000C000000500048004F004E00450032000100000000001400000050004100
      520045004E0054005F004900440032000100000000000E00000046004B005F00
      4F00520047003200010000000000060000004C0056004C000100000000000E00
      0000420041004E004B005F00430044000100000000000E000000410044005200
      5F005700570057000100000000000A00000045004D00410049004C0001000000
      00001200000048004500410044005F004E0041004D0045000100000000001C00
      000052004100530043004800450054005F005300430048004500540032000100
      000000001200000050004F00530054005F0049004E0044005800010000000000
      1600000052005F005300430048005F0041004400440049005400010000000000
      1000000043004F00440045005F00440045004200010000000000120000004400
      4F004C0047005F004E0041004D0045000100000000001600000046004B005F00
      420049004C004C005F0056004100520001000000000014000000420041004E00
      4B005F0046004E0041004D004500010000000000060000004700520050000100
      000000001200000052005F005300430048005F00470049005300010000000000
      100000004100440052005F0043004100530048000100000000000C0000004900
      53005F00520053004F000100000000001E000000490053005F00450058004300
      480041004E00470045005F004700490053000100000000000E00000047005200
      50005F0044004500420001000000000020000000530045005200560049004300
      45005F004E0041004D0045005F00470049005300010000000000280000004900
      53005F004100550054004F005F00530045004E0044005F004400450042005F00
      520045005100010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DataModule1.OracleSession1
    BeforeEdit = OD_sprorgBeforeEdit
    AfterEdit = OD_sprorgAfterEdit
    AfterScroll = OD_sprorgAfterScroll
    Left = 24
    Top = 56
    object OD_sprorgLVL: TStringField
      DisplayLabel = #1059#1088#1086#1074#1077#1085#1100
      DisplayWidth = 7
      FieldName = 'LVL'
      Size = 1
    end
    object OD_sprorgID: TFloatField
      DisplayLabel = #1050#1086#1076'.'
      DisplayWidth = 6
      FieldName = 'ID'
    end
    object OD_sprorgCD: TStringField
      DisplayLabel = #1050#1086#1076'.CD'
      DisplayWidth = 10
      FieldName = 'CD'
      Size = 32
    end
    object OD_sprorgNPP: TFloatField
      DisplayLabel = #8470' '#1087'/'#1087
      DisplayWidth = 6
      FieldName = 'NPP'
    end
    object OD_sprorgNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 26
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
    object OD_sprorgPARENT_ID: TFloatField
      DisplayLabel = #1050#1086#1076'.~'#1088#1086#1076'.'#1086#1088#1075'.'
      DisplayWidth = 10
      FieldName = 'PARENT_ID'
    end
    object OD_sprorgREU: TStringField
      DisplayWidth = 3
      FieldName = 'REU'
      Size = 3
    end
    object OD_sprorgTREST: TStringField
      DisplayWidth = 6
      FieldName = 'TREST'
      Size = 2
    end
    object OD_sprorgBANK_CD: TStringField
      DisplayLabel = #1050#1086#1076' '#1073#1072#1085#1082#1072'~'#1076#1083#1103' txt '#1092#1072#1081#1083'.'
      DisplayWidth = 32
      FieldName = 'BANK_CD'
      Size = 32
    end
    object OD_sprorgADR_WWW: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089' '#1089#1072#1081#1090#1072
      DisplayWidth = 256
      FieldName = 'ADR_WWW'
      Size = 256
    end
    object OD_sprorgEMAIL: TStringField
      DisplayWidth = 256
      FieldName = 'EMAIL'
      Size = 256
    end
    object OD_sprorgRASCHET_SCHET: TStringField
      DisplayLabel = #1056'/C'
      DisplayWidth = 20
      FieldName = 'RASCHET_SCHET'
    end
    object OD_sprorgRASCHET_SCHET2: TStringField
      DisplayLabel = #1056'/C-2'
      DisplayWidth = 20
      FieldName = 'RASCHET_SCHET2'
    end
    object OD_sprorgR_SCH_ADDIT: TStringField
      DisplayLabel = #1056'/C '#1044#1086#1087'.'
      DisplayWidth = 20
      FieldName = 'R_SCH_ADDIT'
    end
    object OD_sprorgCODE_DEB: TStringField
      DisplayLabel = #1050#1086#1076' '#1076#1083#1103' '#1074#1099#1075#1088'~'#1076#1086#1083#1075#1086#1074
      DisplayWidth = 11
      FieldName = 'CODE_DEB'
      Size = 10
    end
    object OD_sprorgDOLG_NAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'~'#1076#1083#1103' '#1076#1086#1083#1075#1086#1074
      DisplayWidth = 64
      FieldName = 'DOLG_NAME'
      Size = 64
    end
    object OD_sprorgFK_ORGTP: TFloatField
      DisplayLabel = #1058#1080#1087
      DisplayWidth = 10
      FieldName = 'FK_ORGTP'
      Required = True
      Visible = False
    end
    object OD_sprorgV: TFloatField
      DisplayWidth = 10
      FieldName = 'V'
      Visible = False
    end
    object OD_sprorgUCH: TFloatField
      DisplayWidth = 10
      FieldName = 'UCH'
      Visible = False
    end
    object OD_sprorgADR: TStringField
      DisplayWidth = 100
      FieldName = 'ADR'
      Visible = False
      Size = 100
    end
    object OD_sprorgINN: TStringField
      DisplayWidth = 12
      FieldName = 'INN'
      Visible = False
      Size = 12
    end
    object OD_sprorgMANAGER: TStringField
      DisplayWidth = 50
      FieldName = 'MANAGER'
      Visible = False
      Size = 50
    end
    object OD_sprorgBUH: TStringField
      DisplayWidth = 50
      FieldName = 'BUH'
      Visible = False
      Size = 50
    end
    object OD_sprorgK_SCHET: TStringField
      DisplayWidth = 20
      FieldName = 'K_SCHET'
      Visible = False
    end
    object OD_sprorgKOD_OKONH: TStringField
      DisplayWidth = 20
      FieldName = 'KOD_OKONH'
      Visible = False
    end
    object OD_sprorgKOD_OGRN: TStringField
      DisplayWidth = 20
      FieldName = 'KOD_OGRN'
      Visible = False
    end
    object OD_sprorgBIK: TStringField
      DisplayWidth = 20
      FieldName = 'BIK'
      Visible = False
    end
    object OD_sprorgPHONE: TStringField
      DisplayWidth = 15
      FieldName = 'PHONE'
      Visible = False
      Size = 15
    end
    object OD_sprorgKPP: TStringField
      DisplayWidth = 12
      FieldName = 'KPP'
      Visible = False
      Size = 12
    end
    object OD_sprorgBANK: TStringField
      DisplayWidth = 100
      FieldName = 'BANK'
      Visible = False
      Size = 100
    end
    object OD_sprorgID_EXP: TFloatField
      DisplayWidth = 10
      FieldName = 'ID_EXP'
      Visible = False
    end
    object OD_sprorgADR_RECIP: TStringField
      DisplayWidth = 100
      FieldName = 'ADR_RECIP'
      Visible = False
      Size = 100
    end
    object OD_sprorgAUTHORIZED_DIR: TStringField
      DisplayWidth = 50
      FieldName = 'AUTHORIZED_DIR'
      Visible = False
      Size = 50
    end
    object OD_sprorgAUTHORIZED_BUH: TStringField
      DisplayWidth = 50
      FieldName = 'AUTHORIZED_BUH'
      Visible = False
      Size = 50
    end
    object OD_sprorgAUTH_DIR_DOC: TStringField
      DisplayWidth = 50
      FieldName = 'AUTH_DIR_DOC'
      Visible = False
      Size = 50
    end
    object OD_sprorgAUTH_BUH_DOC: TStringField
      DisplayWidth = 50
      FieldName = 'AUTH_BUH_DOC'
      Visible = False
      Size = 50
    end
    object OD_sprorgOKPO: TStringField
      DisplayWidth = 8
      FieldName = 'OKPO'
      Visible = False
      Size = 8
    end
    object OD_sprorgVER_CD: TStringField
      DisplayWidth = 7
      FieldName = 'VER_CD'
      Visible = False
      Size = 1
    end
    object OD_sprorgFULL_NAME: TStringField
      DisplayWidth = 64
      FieldName = 'FULL_NAME'
      Visible = False
      Size = 64
    end
    object OD_sprorgPHONE2: TStringField
      DisplayWidth = 15
      FieldName = 'PHONE2'
      Visible = False
      Size = 15
    end
    object OD_sprorgPARENT_ID2: TFloatField
      DisplayWidth = 10
      FieldName = 'PARENT_ID2'
      Visible = False
    end
    object OD_sprorgHEAD_NAME: TStringField
      DisplayWidth = 50
      FieldName = 'HEAD_NAME'
      Visible = False
      Size = 50
    end
    object OD_sprorgPOST_INDX: TStringField
      DisplayLabel = #1055#1086#1095#1090#1086#1074#1099#1081' '#1080#1085#1076#1077#1082#1089
      DisplayWidth = 10
      FieldName = 'POST_INDX'
      Visible = False
      Size = 10
    end
    object OD_sprorgBANK_FNAME: TStringField
      FieldName = 'BANK_FNAME'
      Size = 100
    end
    object OD_sprorgGRP: TFloatField
      FieldName = 'GRP'
    end
    object OD_sprorgR_SCH_GIS: TStringField
      FieldName = 'R_SCH_GIS'
    end
    object OD_sprorgADR_CASH: TStringField
      FieldName = 'ADR_CASH'
      Size = 100
    end
    object OD_sprorgFK_ORG2: TFloatField
      FieldName = 'FK_ORG2'
    end
    object OD_sprorgIS_RSO: TFloatField
      FieldName = 'IS_RSO'
    end
    object OD_sprorgIS_EXCHANGE_GIS: TFloatField
      FieldName = 'IS_EXCHANGE_GIS'
    end
    object OD_sprorgFK_BILL_VAR: TFloatField
      FieldName = 'FK_BILL_VAR'
    end
    object OD_sprorgGRP_DEB: TFloatField
      FieldName = 'GRP_DEB'
    end
    object OD_sprorgSERVICE_NAME_GIS: TStringField
      FieldName = 'SERVICE_NAME_GIS'
    end
    object OD_sprorgIS_AUTO_SEND_DEB_REQ: TFloatField
      FieldName = 'IS_AUTO_SEND_DEB_REQ'
    end
  end
  object OD_usl_bills: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.usl_bills t'
      ' where t.fk_bill_var=:fk_bill_var'
      'order by t.mg1, t.mg2, t.id, t.usl_id')
    Optimize = False
    Variables.Data = {
      0400000001000000180000003A0046004B005F00420049004C004C005F005600
      4100520003000000040000000100000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000900000004000000490044000100000000000C000000550053004C00
      5F0049004400010000000000060000004D004700310001000000000006000000
      4D00470032000100000000000C000000490053005F0056004F004C0001000000
      00000A00000046004B005F00540050000100000000001600000046004B005F00
      420049004C004C005F005600410052000100000000001A000000460052004300
      5F004700450054005F0050005200490043004500010000000000100000004200
      49004C004C005F00410047004700010000000000}
    Master = OD_sprorg
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 272
    Top = 280
  end
  object DS_usl_bills: TDataSource
    DataSet = OD_usl_bills
    Left = 304
    Top = 280
  end
  object OD_usl_round: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.usl_round t'
      ' where t.reu=:reu'
      'order by t.usl')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00520045005500050000000400000030303100
      00000000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      0500000002000000060000005200450055000100000000000600000055005300
      4C00010000000000}
    Master = OD_sprorg
    MasterFields = 'REU'
    DetailFields = 'REU'
    Session = DataModule1.OracleSession1
    Active = True
    Left = 856
    Top = 456
  end
  object DS_usl_round: TDataSource
    DataSet = OD_usl_round
    Left = 888
    Top = 456
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select t.usl, t.usl||'#39'-'#39'||t.nm as name from scott.usl t'
      'order by t.usl')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000060000005500
      53004C00010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 856
    Top = 504
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 888
    Top = 504
  end
  object OD_usl_tree: TOracleDataSet
    SQL.Strings = (
      
        'select t.usl, t.parent_usl, t.tp, t.fk_bill_var, t.fk_house, t.n' +
        'pp, t.hide_price, t.hide_vol, t.hide_row, t.rowid'
      ' from scott.USL_TREE t'
      'where (t.fk_bill_var=:fk_bill_var or t.fk_house is not null)'
      'order by t.npp')
    Optimize = False
    Variables.Data = {
      0400000001000000180000003A0046004B005F00420049004C004C005F005600
      4100520003000000040000000100000000000000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      05000000090000001600000046004B005F00420049004C004C005F0056004100
      520001000000000006000000550053004C000100000000001400000050004100
      520045004E0054005F00550053004C0001000000000004000000540050000100
      000000001000000046004B005F0048004F005500530045000100000000000600
      00004E00500050000100000000001400000048004900440045005F0050005200
      4900430045000100000000001000000048004900440045005F0056004F004C00
      0100000000001000000048004900440045005F0052004F005700010000000000}
    Master = OD_sprorg
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 856
    Top = 560
  end
  object DS_usl_tree: TDataSource
    DataSet = OD_usl_tree
    Left = 888
    Top = 560
  end
  object OD_spr_bill_print: TOracleDataSet
    SQL.Strings = (
      'select t.*,t.rowid from scott.spr_bill_print t')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      0500000006000000040000004900440001000000000006000000520045005500
      01000000000014000000460049004C005400450052005F005200450055000100
      000000001A000000490053005F004500580050004F00520054005F0050004400
      46000100000000000C0000005000520045004600490058000100000000001E00
      0000490053005F004500580050004F00520054005F0045004D00410049004C00
      010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 856
    Top = 608
    object OD_spr_bill_printID: TFloatField
      FieldName = 'ID'
      ReadOnly = True
    end
    object OD_spr_bill_printREU: TStringField
      FieldName = 'REU'
      Required = True
      Size = 3
    end
    object OD_spr_bill_printFILTER_REU: TStringField
      FieldName = 'FILTER_REU'
      Size = 500
    end
    object OD_spr_bill_printIS_EXPORT_PDF: TFloatField
      DisplayLabel = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
      FieldName = 'IS_EXPORT_PDF'
      Required = True
    end
    object OD_spr_bill_printPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 256
    end
    object OD_spr_bill_printIS_EXPORT_EMAIL: TFloatField
      FieldName = 'IS_EXPORT_EMAIL'
    end
  end
  object DS_spr_bill_print: TDataSource
    DataSet = OD_spr_bill_print
    Left = 888
    Top = 608
  end
  object OD_reu: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.reu||'#39'-'#39'||t.name as name'
      'from scott.t_org t, scott.t_org_tp tp'
      'where tp.id=t.fk_orgtp and t.reu is not null'
      'order by t.reu')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000060000005200
      45005500010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 936
    Top = 456
  end
  object DS_reu: TDataSource
    DataSet = OD_reu
    Left = 976
    Top = 456
  end
  object DS_sprorg: TDataSource
    DataSet = OD_sprorg
    Left = 72
    Top = 56
  end
end
