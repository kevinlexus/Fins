object Form_kart: TForm_kart
  Left = 1609
  Top = 439
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
  ClientHeight = 636
  ClientWidth = 887
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
  object Label24: TLabel
    Left = 12
    Top = 13
    Width = 75
    Height = 13
    Caption = 'K_ID '#1055#1086#1084#1077#1097
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label61: TLabel
    Left = 172
    Top = 13
    Width = 50
    Height = 13
    Caption = 'K_ID '#1051#1057
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 887
    Height = 224
    Align = alTop
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 344
      Height = 222
      Align = alLeft
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 342
        Height = 220
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = #1054#1089#1085#1086#1074#1085#1086#1077
          ImageIndex = 1
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = #1055#1088#1080#1073#1086#1088#1099' '#1091#1095#1077#1090#1072
            TabOrder = 0
            Height = 192
            Width = 334
            object Panel6: TPanel
              Left = 2
              Top = 18
              Width = 330
              Height = 30
              Align = alTop
              TabOrder = 0
              object cxdbchckbxKRAN1: TcxDBCheckBox
                Left = 128
                Top = 3
                Caption = #1057#1080#1089#1090'.'#1086#1090#1086#1087'.'
                DataBinding.DataField = 'KRAN1'
                DataBinding.DataSource = Form_list_kart.DS_list_kart
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                TabOrder = 0
              end
              object cxchckbx3: TcxCheckBox
                Left = 211
                Top = 3
                Caption = #1050#1086#1088#1088'.'
                TabOrder = 1
              end
              object cxdbchckbxKAN_SCH: TcxDBCheckBox
                Left = 269
                Top = 3
                Caption = #1050#1072#1085'.'#1089#1095'.'
                DataBinding.DataField = 'KAN_SCH'
                DataBinding.DataSource = Form_list_kart.DS_list_kart
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                TabOrder = 2
              end
            end
            object cxGrid6: TcxGrid
              Left = 2
              Top = 48
              Width = 330
              Height = 142
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object cxGrid6DBTableView1: TcxGridDBTableView
                OnDblClick = cxGrid6DBTableView1DblClick
                OnKeyDown = cxGrid6DBTableView1KeyDown
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataSource = DS_meter
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.InvertSelect = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                object cxGrid6DBTableView1NPP: TcxGridDBColumn
                  Caption = #8470
                  DataBinding.FieldName = 'NPP'
                  Width = 29
                end
                object cxGrid6DBTableView1NM: TcxGridDBColumn
                  Caption = #1059#1089#1083#1091#1075#1072
                  DataBinding.FieldName = 'NM'
                  Width = 101
                end
                object cxGrid6DBTableView1N1: TcxGridDBColumn
                  Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1077
                  DataBinding.FieldName = 'N1'
                  Width = 111
                end
                object cxGrid6DBTableView1VOL: TcxGridDBColumn
                  Caption = #1056#1072#1089#1093#1086#1076
                  DataBinding.FieldName = 'VOL'
                  Width = 87
                end
              end
              object cxGrid6Level1: TcxGridLevel
                GridView = cxGrid6DBTableView1
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1057#1072#1083#1100#1076#1086
          ImageIndex = 2
          OnHide = TabSheet4Hide
          OnShow = TabSheet4Show
          object cxGrid5: TcxGrid
            Left = 0
            Top = 0
            Width = 334
            Height = 192
            Align = alClient
            PopupMenu = PopupMenu2
            TabOrder = 0
            object cxGridDBTableView3: TcxGridDBTableView
              OnDblClick = cxGridDBTableView2DblClick
              OnKeyDown = cxGridDBTableView2KeyDown
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DS_saldo
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = #1054#1073#1098#1077#1084' 0.00'
                  Kind = skSum
                end
                item
                  Format = #1048#1079#1084#1077#1085#1077#1085#1080#1103' 0.00'
                  Kind = skSum
                end
                item
                  Format = #1058#1072#1088#1080#1092' 0.00'
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = #1048#1090#1086#1075#1086' 0.00'
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                end
                item
                  Format = #1048#1090#1086#1075#1086' 0.00'
                end
                item
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.HeaderAutoHeight = True
              OptionsView.Indicator = True
              object cxGridDBTableView3SUMMA: TcxGridDBColumn
                Caption = #1042#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086
                DataBinding.FieldName = 'SUMMA'
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
          ImageIndex = 3
          object GroupBox10: TGroupBox
            Left = 0
            Top = 57
            Width = 334
            Height = 49
            Align = alTop
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1079#1072#1076#1086#1083#1078#1085#1080#1082#1072
            TabOrder = 0
            object Label41: TLabel
              Left = 8
              Top = 19
              Width = 79
              Height = 13
              Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cbb1FK_DEB_ORG: TcxDBLookupComboBox
              Left = 91
              Top = 15
              DataBinding.DataField = 'FK_DEB_ORG'
              DataBinding.DataSource = Form_list_kart.DS_list_kart
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = Form_list_kart.DS_debits_org
              TabOrder = 0
              Width = 227
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = #1055#1088#1080#1079#1085#1072#1082#1080
            TabOrder = 1
            Height = 57
            Width = 334
            object Label39: TLabel
              Left = 5
              Top = 24
              Width = 82
              Height = 13
              Caption = #1050#1086#1101#1092#1092'.'#1078#1080#1083#1100#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cbb2KFG: TcxDBLookupComboBox
              Left = 91
              Top = 20
              DataBinding.DataField = 'KFG'
              DataBinding.DataSource = Form_list_kart.DS_list_kart
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'KOEFF'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DS_kfg
              TabOrder = 0
              Width = 79
            end
            object cxdbchckbxCPN: TcxDBCheckBox
              Left = 189
              Top = 21
              Caption = #1053#1077' '#1085#1072#1095'.'#1087#1077#1085#1080
              DataBinding.DataField = 'CPN'
              DataBinding.DataSource = Form_list_kart.DS_list_kart
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 1
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = #1048#1089#1090#1086#1088#1080#1103' '#1083#1080#1094'.'#1089#1095'.'
          ImageIndex = 5
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 334
            Height = 192
            Align = alClient
            TabOrder = 0
            object cxGrid2DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Visible = True
              DataController.DataSource = DS_states_sch
              DataController.KeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView1PSCH_NAME: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                DataBinding.FieldName = 'FK_STATUS'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'NAME'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = DS_psch
                Properties.OnCloseUp = cxGrid2DBTableView1PSCH_NAMEPropertiesCloseUp
                Properties.OnInitPopup = cxGrid2DBTableView1PSCH_NAMEPropertiesInitPopup
                Width = 76
              end
              object cxGrid2DBTableView1CLOSE_REASON: TcxGridDBColumn
                Caption = #1047#1072#1082#1088#1099#1090'.'#1089#1095'. '#1043#1048#1057' '#1046#1050#1061
                DataBinding.FieldName = 'FK_CLOSE_REASON'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.ClearKey = 46
                Properties.DropDownWidth = 500
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'NAME'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = DS_close_reason
                Width = 103
              end
              object cxGrid2DBTableView1DT1: TcxGridDBColumn
                Caption = #1053#1072#1095#1072#1083#1086
                DataBinding.FieldName = 'DT1'
                Width = 67
              end
              object cxGrid2DBTableView1DT2: TcxGridDBColumn
                Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
                DataBinding.FieldName = 'DT2'
                Width = 81
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1040#1076#1084#1080#1085'.'
          ImageIndex = 4
          object Label25: TLabel
            Left = 35
            Top = 48
            Width = 57
            Height = 13
            Caption = 'House_ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label27: TLabel
            Left = 0
            Top = 14
            Width = 83
            Height = 13
            Caption = 'KLSK '#1060#1080#1085'.'#1051#1057
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label46: TLabel
            Left = 60
            Top = 79
            Width = 27
            Height = 13
            Caption = 'REU'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label52: TLabel
            Left = 11
            Top = 112
            Width = 114
            Height = 13
            Caption = #1044#1072#1090#1072' '#1086#1075#1088#1072#1085#1080#1095'.'#1087#1077#1085#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label56: TLabel
            Left = 188
            Top = 13
            Width = 53
            Height = 13
            Caption = 'KLSK '#1051#1057
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label62: TLabel
            Left = 168
            Top = 45
            Width = 82
            Height = 13
            Caption = 'KLSK '#1055#1086#1084#1077#1097'.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object DBEdit1: TDBEdit
            Left = 96
            Top = 40
            Width = 65
            Height = 21
            DataField = 'HOUSE_ID'
            DataSource = Form_list_kart.DS_list_kart
            TabOrder = 1
          end
          object DBEdit13: TDBEdit
            Left = 96
            Top = 8
            Width = 65
            Height = 21
            DataField = 'K_LSK_ID'
            DataSource = Form_list_kart.DS_list_kart
            TabOrder = 0
          end
          object DBEdit17: TDBEdit
            Left = 96
            Top = 71
            Width = 65
            Height = 21
            DataField = 'REU'
            DataSource = Form_list_kart.DS_list_kart
            ReadOnly = True
            TabOrder = 2
          end
          object CheckBox1: TCheckBox
            Left = 8
            Top = 151
            Width = 201
            Height = 17
            Hint = #1042#1085#1080#1084#1072#1085#1080#1077'! '#1040#1076#1084#1080#1085'-'#1086#1087#1094#1080#1103'!'#1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1082#1072#1088#1090#1086#1095#1082#1080
            Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1086#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Visible = False
            OnClick = CheckBox1Click
          end
          object CheckBox4: TCheckBox
            Left = 8
            Top = 172
            Width = 161
            Height = 17
            Hint = #1042#1085#1080#1084#1072#1085#1080#1077'! '#1040#1076#1084#1080#1085'-'#1086#1087#1094#1080#1103'!'#1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1082#1072#1088#1090#1086#1095#1082#1080
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1083#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Visible = False
            OnClick = CheckBox4Click
          end
          object DBEdit8: TDBEdit
            Left = 256
            Top = 8
            Width = 65
            Height = 21
            DataField = 'FK_KLSK_OBJ'
            DataSource = Form_list_kart.DS_list_kart
            TabOrder = 5
          end
          object DBEdit20: TDBEdit
            Left = 256
            Top = 40
            Width = 65
            Height = 21
            DataField = 'FK_KLSK_PREMISE'
            DataSource = Form_list_kart.DS_list_kart
            TabOrder = 6
          end
          object CheckBox2: TCheckBox
            Left = 8
            Top = 132
            Width = 161
            Height = 17
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' KLSK'
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' KLSK'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = CheckBox2Click
          end
          object cxdbdtdtPN_DT: TcxDBDateEdit
            Left = 130
            Top = 104
            DataBinding.DataField = 'PN_DT'
            DataBinding.DataSource = Form_list_kart.DS_list_kart
            TabOrder = 8
            Width = 103
          end
        end
        object TabSheet8: TTabSheet
          Caption = #1043#1048#1057' '#1046#1050#1061
          ImageIndex = 6
          object cxGroupBox3: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = #1055#1088#1080#1079#1085#1072#1082#1080' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
            TabOrder = 0
            Height = 49
            Width = 334
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 8
              Top = 17
              Hint = 
                #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1076#1083#1103' '#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1083#1080#1094'.'#1089#1095#1077#1090#1072' '#1074' '#1043#1048#1057' '#1046#1050#1061' ('#1053#1077#1086#1073 +
                #1093#1086#1076#1080#1084#1086' '#1077#1097#1077' '#1079#1072#1087#1086#1083#1085#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072' '#1076#1083#1103' '#1088#1072#1079#1076#1077#1083#1077#1085#1085#1086#1075#1086' '#1045#1051#1057' ' +
                #1074' '#1043#1048#1057')'
              Caption = #1056#1072#1079#1076#1077#1083#1077#1085#1085#1099#1081' '#1083#1080#1094'.'#1089#1095#1077#1090' '
              DataBinding.DataField = 'DIVIDED'
              DataBinding.DataSource = Form_list_kart.DS_list_kart
              ParentFont = False
              ParentShowHint = False
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              ShowHint = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
            end
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 345
      Top = 1
      Width = 541
      Height = 222
      Align = alClient
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 539
        Height = 73
        Align = alTop
        Caption = #1054#1073#1098#1077#1082#1090' '#1085#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1080
        TabOrder = 0
        object Label8: TLabel
          Left = 144
          Top = 52
          Width = 47
          Height = 13
          Caption = #1057#1086#1073#1089#1090#1074'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 0
          Top = 24
          Width = 103
          Height = 13
          Caption = #1055#1083#1086#1097#1072#1076#1100': '#1054#1073#1097#1072#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 152
          Top = 23
          Width = 41
          Height = 13
          Caption = #1046#1080#1083#1072#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 2
          Top = 52
          Width = 31
          Height = 13
          Caption = #1069#1090#1072#1078
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 76
          Top = 52
          Width = 36
          Height = 13
          Caption = #1050#1086#1084#1085'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 251
          Top = 25
          Width = 67
          Height = 13
          Caption = #1055#1088#1086#1078#1080#1074#1072#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 360
          Top = 25
          Width = 56
          Height = 13
          Caption = #1042#1088'.'#1086#1090#1089#1091#1090'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 292
          Top = 52
          Width = 58
          Height = 13
          Caption = #1042#1088'.'#1079#1072#1088#1077#1075'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 453
          Top = 24
          Width = 53
          Height = 13
          Hint = #1050#1086#1083'-'#1074#1086' '#1083#1100#1075#1086#1090#1085#1080#1082#1086#1074
          Caption = #1055#1086#1076#1098#1077#1079#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TLabel
          Left = 388
          Top = 52
          Width = 54
          Height = 13
          Caption = #1042#1088'.'#1087#1088#1086#1078'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit5: TDBEdit
          Left = 112
          Top = 44
          Width = 25
          Height = 21
          DataField = 'KOMN'
          DataSource = Form_list_kart.DS_list_kart
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 318
          Top = 17
          Width = 33
          Height = 21
          DataField = 'KPR'
          DataSource = Form_list_kart.DS_list_kart
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 416
          Top = 17
          Width = 33
          Height = 21
          DataField = 'KPR_OT'
          DataSource = Form_list_kart.DS_list_kart
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 352
          Top = 44
          Width = 33
          Height = 21
          DataField = 'KPR_WR'
          DataSource = Form_list_kart.DS_list_kart
          ReadOnly = True
          TabOrder = 4
        end
        object dbedtENTR: TDBEdit
          Left = 506
          Top = 17
          Width = 33
          Height = 21
          DataField = 'ENTR'
          DataSource = Form_list_kart.DS_list_kart
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 448
          Top = 44
          Width = 33
          Height = 21
          DataField = 'KPR_WRP'
          DataSource = Form_list_kart.DS_list_kart
          ReadOnly = True
          TabOrder = 5
        end
        object cxdbtxEdit4OPL: TcxDBTextEdit
          Left = 106
          Top = 16
          DataBinding.DataField = 'OPL'
          DataBinding.DataSource = Form_list_kart.DS_list_kart
          TabOrder = 6
          Width = 42
        end
        object cxdbtxEdit6PPL: TcxDBTextEdit
          Left = 197
          Top = 17
          DataBinding.DataField = 'PPL'
          DataBinding.DataSource = Form_list_kart.DS_list_kart
          TabOrder = 7
          Width = 42
        end
        object cxdbtxEdit1ET: TcxDBTextEdit
          Left = 34
          Top = 43
          DataBinding.DataField = 'ET'
          DataBinding.DataSource = Form_list_kart.DS_list_kart
          TabOrder = 8
          Width = 34
        end
        object cbb2STATUS: TcxDBLookupComboBox
          Left = 192
          Top = 44
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = Form_list_kart.DS_list_kart
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_status
          TabOrder = 9
          Width = 96
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 74
        Width = 539
        Height = 147
        Align = alClient
        Caption = #1055#1088#1086#1078#1080#1074#1072#1102#1097#1080#1077
        TabOrder = 1
        object cxGrid4: TcxGrid
          Left = 2
          Top = 15
          Width = 535
          Height = 130
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            OnDblClick = cxGridDBTableView2DblClick
            OnKeyDown = cxGridDBTableView2KeyDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DS_kart_pr
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = #1054#1073#1098#1077#1084' 0.00'
                Kind = skSum
              end
              item
                Format = #1048#1079#1084#1077#1085#1077#1085#1080#1103' 0.00'
                Kind = skSum
              end
              item
                Format = #1058#1072#1088#1080#1092' 0.00'
                Kind = skSum
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Format = #1048#1090#1086#1075#1086' 0.00'
                Kind = skSum
              end
              item
                Kind = skSum
                Position = spFooter
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
              end
              item
                Format = #1048#1090#1086#1075#1086' 0.00'
              end
              item
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            Styles.Inactive = cxStyle2
            object cxGridDBTableView2RN: TcxGridDBColumn
              DataBinding.FieldName = 'RN'
            end
            object cxGridDBTableView2STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              Visible = False
            end
            object cxGridDBTableView2FIO: TcxGridDBColumn
              DataBinding.FieldName = 'FIO'
            end
            object cxGridDBTableView2PROC_PRIV: TcxGridDBColumn
              DataBinding.FieldName = 'PRIV_PROC'
            end
            object cxGridDBTableView2DAT_PROP: TcxGridDBColumn
              DataBinding.FieldName = 'DAT_PROP'
            end
            object cxGridDBTableView2DAT_UB: TcxGridDBColumn
              DataBinding.FieldName = 'DAT_UB'
            end
            object cxGridDBTableView2ST_DT1: TcxGridDBColumn
              Caption = #1053#1072#1095#1072#1083#1086
              DataBinding.FieldName = 'ST_DT1'
            end
            object cxGridDBTableView2ST_DT2: TcxGridDBColumn
              Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
              DataBinding.FieldName = 'ST_DT2'
            end
            object cxGridDBTableView2USE_GIS_DIVIDE_ELS: TcxGridDBColumn
              Caption = #1043#1048#1057
              DataBinding.FieldName = 'USE_GIS_DIVIDE_ELS'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 592
    Width = 887
    Height = 24
    Align = alBottom
    TabOrder = 2
    object cxDBNavigator1: TcxDBNavigator
      Left = 1
      Top = 1
      Width = 224
      Height = 22
      Buttons.CustomButtons = <>
      Buttons.Insert.Visible = False
      Buttons.Append.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Post.Visible = False
      Buttons.Cancel.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = Form_list_kart.DS_list_kart
      Align = alLeft
      TabOrder = 2
    end
    object chk1: TCheckBox
      Left = 256
      Top = 5
      Width = 145
      Height = 17
      Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1091#1089#1083#1091#1075#1080' '#1087#1086' '#1079#1072#1082#1088#1099#1090#1099#1084' '#1083#1080#1094'.'#1089#1095#1077#1090#1072#1084
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1082#1088#1099#1090#1099#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = chk1Click
    end
    object btn1: TButton
      Left = 676
      Top = 0
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = btn1Click
    end
    object Button2: TButton
      Left = 756
      Top = -1
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object chk2: TCheckBox
      Left = 400
      Top = 5
      Width = 105
      Height = 17
      Hint = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1080' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103
      Caption = #1043#1088#1091#1087#1080#1088#1086#1074#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = chk2Click
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 887
    Height = 81
    ActivePage = TabSheet5
    Align = alTop
    TabOrder = 0
    object TabSheet5: TTabSheet
      Caption = #1055#1086#1082#1074#1072#1088#1090#1080#1088#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
      object Label42: TLabel
        Left = 455
        Top = 36
        Width = 50
        Height = 13
        Caption = #1055#1088#1080#1084#1077#1095'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 320
        Top = 36
        Width = 37
        Height = 13
        Caption = #1056#1072#1081#1086#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 223
        Top = 37
        Width = 31
        Height = 13
        Caption = #8470' '#1082#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 140
        Top = 37
        Width = 27
        Height = 13
        Caption = #1044#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 0
        Top = 37
        Width = 38
        Height = 13
        Caption = #1059#1083#1080#1094#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 131
        Top = 6
        Width = 18
        Height = 13
        Caption = #1051#1057
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 398
        Top = 5
        Width = 52
        Height = 17
        DataField = 'MG1'
        DataSource = Form_list_kart.DS_list_kart
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 386
        Top = 4
        Width = 8
        Height = 13
        Caption = #1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 451
        Top = 4
        Width = 15
        Height = 13
        Caption = #1087#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 471
        Top = 5
        Width = 52
        Height = 17
        DataField = 'MG2'
        DataSource = Form_list_kart.DS_list_kart
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 522
        Top = 7
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1086#1073#1089#1090#1074'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label47: TLabel
        Left = 798
        Top = 26
        Width = 75
        Height = 13
        Hint = #1058#1080#1087' '#1089#1095#1077#1090#1072
        Caption = #1057#1095#1077#1090' '#1079#1072#1082#1088#1099#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label55: TLabel
        Left = 798
        Top = 39
        Width = 73
        Height = 13
        Hint = #1057#1095#1077#1090' '#1089#1074#1103#1079#1072#1085' '#1089' '#1088#1086#1076#1080#1090#1077#1083#1100#1089#1082#1080#1084' '#1095#1077#1088#1077#1079' '#1074#1082#1083#1072#1076#1082#1091' "'#1055#1072#1088#1072#1084#1077#1090#1088#1099'"'
        Caption = '------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
      end
      object lbl4: TLabel
        Left = 240
        Top = 6
        Width = 54
        Height = 13
        Hint = #1045#1076#1080#1085#1099#1081' '#1083#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090' '#1074' '#1089#1080#1089#1090#1077#1084#1077' "'#1044#1080#1088#1077#1082#1090'"'
        Caption = #1045#1051#1057' '#1043#1048#1057
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object SpeedButton1: TSpeedButton
        Left = 857
        Top = 1
        Width = 23
        Height = 22
        Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF006B846300319C3100319C3100319C3100319C310052634200636B4A00948C
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0073AD
          73001084100021A5210042BD420042BD420042BD4200319C310031942900319C
          310021842100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003994
          390029AD29004ABD4A005AC65A0052B5520073B56B004AA54200B5E7A50042BD
          420042CE4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008CBD
          8C00299C29005AC65A006BCE6B0063A56300F7FFEF0084BD7B00B5E7A50052C6
          520042BD4200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052B552004A9C4200BDC6C600BDC6C60094B57B007BCE7B0052B5
          52005A5242005A5242005A5242005A524200FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF004A8C420018734A00217BBD00217BBD004284630063BD6300528C
          4A0029292100FF00FF00FF00FF005A524200FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00217BBD002994EF003194FF003194FF002994EF00216B9C00FF00
          FF00292929000831FF00A5ADE7004A424A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002994EF00399CFF00399CFF00399CFF00399CFF00298CE700FF00
          FF0018181800FF00FF00FF00FF000831FF00FF00FF00FF00FF00FF00FF00FF00
          FF0063849C0042A5FF004AADFF006BBDFF006BBDFF004AADFF0042A5F700FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000831FF004A63CE00FF00FF00FF00
          FF006BA5C6004AADFF004AB5FF0052B5FF006BBDFF006BBDFF004AADFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000831FF00FF00FF00FF00
          FF0063A5C600298CCE003194DE002184C600298CC6002984C6002994CE00FF00
          FF0008080800FF00FF00FF00FF0042424200FF00FF00FF00FF00FF00FF00FF00
          FF0063849C00428CC6004A94C6007BBDEF0063ADF700398CCE00216BA500FF00
          FF0018181800FF00FF000831FF005A5A5A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00428CB5004294C6009CCEE7008CBDE700106B9C00FF00FF00FF00
          FF0018181800FF00FF00FF00FF000831FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF006BA5BD00529CBD004A8CAD00FF00FF00FF00FF00FF00
          FF002929290042424200424242000831FF004A63CE00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000831FF00}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object DBEdit12: TDBEdit
        Left = 504
        Top = 30
        Width = 289
        Height = 21
        Hint = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1087#1086' '#1082#1074#1072#1088#1090#1080#1088#1077
        DataField = 'MEMO'
        DataSource = Form_list_kart.DS_list_kart
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 8
        Top = 24
        Width = 873
        Height = 2
        TabOrder = 3
      end
      object DBEdit2: TDBEdit
        Left = 576
        Top = 1
        Width = 121
        Height = 21
        DataField = 'K_FAM'
        DataSource = Form_list_kart.DS_list_kart
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 704
        Top = 1
        Width = 73
        Height = 21
        DataField = 'K_IM'
        DataSource = Form_list_kart.DS_list_kart
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 784
        Top = 1
        Width = 73
        Height = 21
        DataField = 'K_OT'
        DataSource = Form_list_kart.DS_list_kart
        TabOrder = 2
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 297
        Top = 0
        Hint = #1045#1076#1080#1085#1099#1081' '#1083#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090' '#1074' '#1089#1080#1089#1090#1077#1084#1077' "'#1043#1048#1057' '#1046#1050#1061'"'
        DataBinding.DataField = 'UNIQNUM'
        DataBinding.DataSource = DS_eolink
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Width = 88
      end
      object cbb1KUL: TcxDBLookupComboBox
        Left = 43
        Top = 32
        DataBinding.DataField = 'KUL'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_spul
        TabOrder = 6
        Width = 96
      end
      object cbb12HOUSE_ID: TcxDBLookupComboBox
        Left = 171
        Top = 32
        DataBinding.DataField = 'HOUSE_ID'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'ND'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_houses
        TabOrder = 7
        Width = 51
      end
      object cbb4FK_DISTR: TcxDBLookupComboBox
        Left = 359
        Top = 31
        DataBinding.DataField = 'FK_DISTR'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_distr
        TabOrder = 8
        Width = 92
      end
      object cbb9REU: TcxDBLookupComboBox
        Left = 9
        Top = 1
        DataBinding.DataField = 'REU'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        Properties.KeyFieldNames = 'REU'
        Properties.ListColumns = <
          item
            FieldName = 'NAME_REU'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_reu_trest
        TabOrder = 9
        Width = 121
      end
      object cxtxtKw2: TcxTextEdit
        Left = 256
        Top = 32
        TabOrder = 10
        OnExit = cxtxtKw2Exit
        Width = 62
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 153
        Top = 1
        Hint = #1051#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090
        DataBinding.DataField = 'LSK'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 11
        Width = 83
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      ImageIndex = 1
      object Label35: TLabel
        Left = 9
        Top = 7
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = #1055#1088#1072#1074#1086#1091#1089#1090'.'#1076#1086#1082'-'#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 599
        Top = 12
        Width = 53
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 591
        Top = 36
        Width = 62
        Height = 13
        Caption = #1055#1072#1089#1087'.'#1089#1090#1086#1083
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 316
        Top = 7
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1072#1090#1072' '#1076#1086#1082'-'#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 316
        Top = 31
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1072#1090#1072' '#1076#1086#1082'-'#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 22
        Top = 31
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = #1055#1088#1080#1074#1072#1090'.'#1076#1086#1082'-'#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit15: TDBEdit
        Left = 104
        Top = 1
        Width = 185
        Height = 21
        Hint = 
          #1055#1088#1072#1074#1086#1091#1089#1090#1072#1085#1072#1074#1083#1080#1074#1072#1102#1097#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1085#1072' '#1085#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1100' ('#1054#1088#1076#1077#1088', '#13#10#1076#1086#1075#1086#1074#1086#1088' ' +
          #1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080', '#1076#1086#1075#1086#1074#1086#1088' '#1085#1072#1081#1084#1072')'
        DataField = 'LAW_DOC'
        DataSource = Form_list_kart.DS_list_kart
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object DBEdit16: TDBEdit
        Left = 656
        Top = 6
        Width = 113
        Height = 21
        Hint = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1087#1086' '#1082#1074#1072#1088#1090#1080#1088#1077
        DataField = 'TEXT'
        DataSource = Form_list_kart.DS_list_kart
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object DBEdit18: TDBEdit
        Left = 104
        Top = 25
        Width = 185
        Height = 21
        Hint = 
          #1055#1088#1072#1074#1086#1091#1089#1090#1072#1085#1072#1074#1083#1080#1074#1072#1102#1097#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1085#1072' '#1085#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1100' ('#1054#1088#1076#1077#1088', '#13#10#1076#1086#1075#1086#1074#1086#1088' ' +
          #1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080', '#1076#1086#1075#1086#1074#1086#1088' '#1085#1072#1081#1084#1072')'
        DataField = 'PRVT_DOC'
        DataSource = Form_list_kart.DS_list_kart
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object Button4: TButton
        Left = 835
        Top = 3
        Width = 43
        Height = 25
        Caption = #1057#1090#1072#1090#1091#1089
        TabOrder = 1
        OnClick = Button4Click
      end
      object cbb5FK_PASP_ORG: TcxDBLookupComboBox
        Left = 656
        Top = 31
        DataBinding.DataField = 'FK_PASP_ORG'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_pasp
        TabOrder = 4
        Width = 220
      end
      object cxdbdtdt3LAW_DOC_DT: TcxDBDateEdit
        Left = 392
        Top = 0
        DataBinding.DataField = 'LAW_DOC_DT'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        TabOrder = 5
        Width = 97
      end
      object cxdbdtdt4PRVT_DOC_DT: TcxDBDateEdit
        Left = 392
        Top = 24
        DataBinding.DataField = 'PRVT_DOC_DT'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        TabOrder = 6
        Width = 97
      end
    end
    object TabSheet12: TTabSheet
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 3
      object Label54: TLabel
        Left = 0
        Top = 34
        Width = 58
        Height = 13
        Hint = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1080#1081' '#1083#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090
        Caption = #1056#1086#1076#1080#1090'.'#1083#1089'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label60: TLabel
        Left = 136
        Top = 34
        Width = 44
        Height = 13
        Hint = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1083#1080#1094#1077#1074#1086#1075#1086' '#1089#1095#1077#1090#1072
        Caption = #1057#1086#1079#1076#1072#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label53: TLabel
        Left = 296
        Top = 32
        Width = 90
        Height = 13
        Hint = #1050#1086#1083'-'#1074#1086' '#1089#1086#1073#1089#1090#1074#1077#1085#1080#1080#1085#1086#1082#1086#1074' '#1076#1083#1103' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103' '#1042#1099#1074#1086#1079#1072' '#1084#1091#1089#1086#1088#1072', '#1042#1086#1076#1099' ('#1058#1057#1046')'
        Caption = #1050#1086#1083'-'#1074#1086' '#1089#1086#1073#1089#1090#1074'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label63: TLabel
        Left = 424
        Top = 32
        Width = 59
        Height = 13
        Hint = #1050#1086#1083'-'#1074#1086' '#1089#1086#1073#1089#1090#1074#1077#1085#1080#1080#1085#1086#1082#1086#1074' '#1076#1083#1103' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103' '#1042#1099#1074#1086#1079#1072' '#1084#1091#1089#1086#1088#1072', '#1042#1086#1076#1099' ('#1058#1057#1046')'
        Caption = #1050#1072#1076#1089#1090#1088'.'#8470
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 8
        Top = 0
        Caption = #1042#1099#1075#1088' '#1076#1083#1103' '#1059#1057#1047#1053
        DataBinding.DataField = 'SEL1'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        Properties.DisplayGrayed = 'False'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 0
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 60
        Top = 26
        Hint = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1080#1081' '#1083#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090
        DataBinding.DataField = 'PARENT_LSK'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        ParentShowHint = False
        Properties.ReadOnly = False
        ShowHint = True
        TabOrder = 1
        Width = 69
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 184
        Top = 26
        Hint = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1083#1080#1094#1077#1074#1086#1075#1086' '#1089#1095#1077#1090#1072
        DataBinding.DataField = 'DT_CR'
        DataBinding.DataSource = Form_list_kart.DS_list_kart
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 2
        Width = 105
      end
      object BitBtn1: TBitBtn
        Left = 816
        Top = 16
        Width = 25
        Height = 25
        Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1072#1089#1095#1105#1090
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0042424A0031393900FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0029394A0000081000000810001018
          3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF001018310008081800080818001021
          3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0018395200215A840018395A001031
          5200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00317BB500319CBD00296B8C003184
          C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0042ADEF0039A5D60039B5E70042C6
          F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00527B9C0042ADEF004AB5E7004ACEEF0042C6
          F700527B9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF004AADE70063CEF7006BD6F7006BCEEF0063D6
          F70052BDEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00949C9C0063D6F7007BE7FF009CEFFF009CEFFF007BE7
          FF006BD6F700949C9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0063B5DE0052ADE700A5F7FF00C6F7FF00B5F7FF00C6F7FF00B5F7
          FF0094F7FF005AC6EF009C9C9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0094B5D60063CEF700B5F7FF00C6F7FF00BDF7FF00ADF7FF00B5F7
          FF009CF7FF0063E7FF0084949C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF007BB5D60063DEFF00A5F7FF00B5F7FF00DEFFFF00DEFFFF00B5F7
          FF009CF7FF0063E7FF0084A5BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008CBDDE005AD6F7008CF7FF00ADF7FF00B5F7FF00B5F7FF00ADF7
          FF008CF7FF005AD6F700A5A5AD00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0063B5DE0063EFFF0073F7FF0084F7FF0084F7FF0073F7
          FF0063EFFF0094B5BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0052CEF70063E7FF006BF7FF006BF7FF0063E7
          FF0052CEF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084B5DE008CBDDE0094B5
          BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 848
        Top = 16
        Width = 25
        Height = 25
        Hint = #1046#1091#1088#1085#1072#1083' '#1076#1077#1081#1089#1090#1074#1080#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081' '#1087#1086' '#1082#1072#1088#1090#1086#1095#1082#1077
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BitBtn2Click
      end
      object DBEdit3: TDBEdit
        Left = 388
        Top = 25
        Width = 29
        Height = 21
        DataField = 'KPR_OWN'
        DataSource = Form_list_kart.DS_list_kart
        TabOrder = 5
      end
      object cxDBMaskEdit1: TcxDBMaskEdit
        Left = 488
        Top = 24
        DataBinding.DataField = 'CADASTR_NUM'
        DataBinding.DataSource = Form_list_kart.DS_kart_detail
        Properties.IgnoreMaskBlank = True
        Properties.EditMask = '00\:00\:0000000\:999999;1;_'
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        TabOrder = 6
        Width = 177
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 616
    Width = 887
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    SimplePanelStyle.AutoHint = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 305
    Width = 887
    Height = 287
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 283
    ClientRectLeft = 4
    ClientRectRight = 883
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 879
        Height = 259
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = DS_charge
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = #1054#1073#1098#1077#1084' 0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1VOLUME
            end
            item
              Format = #1048#1079#1084#1077#1085#1077#1085#1080#1103' 0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1CHANGES
            end
            item
              Format = #1058#1072#1088#1080#1092' 0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1TARIF
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1TARIF
            end
            item
              Format = #1048#1090#1086#1075#1086' 0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1ITOGN
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1ITOGN
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1TARIF
            end
            item
              Format = #1048#1090#1086#1075#1086' 0.00'
              Column = cxGrid1DBTableView1CHANGES
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1ITOGN
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.HeaderAutoHeight = True
          Styles.Inactive = cxStyle2
          object cxGrid1DBTableView1REU: TcxGridDBColumn
            Caption = #1059#1050
            DataBinding.FieldName = 'REU'
            Width = 33
          end
          object cxGrid1DBTableView1LSK: TcxGridDBColumn
            Caption = #1051#1057
            DataBinding.FieldName = 'LSK'
            Width = 75
          end
          object cxGrid1DBTableView1USL: TcxGridDBColumn
            DataBinding.FieldName = 'USL'
            Width = 43
          end
          object cxGrid1DBTableView1NM: TcxGridDBColumn
            DataBinding.FieldName = 'NM'
            Options.Editing = False
            Width = 124
          end
          object cxGrid1DBTableView1ORG_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'ORG_NAME'
            Options.Editing = False
            Width = 95
          end
          object cxGrid1DBTableView1VOLUME: TcxGridDBColumn
            Caption = #1054#1073#1098#1077#1084
            DataBinding.FieldName = 'VOLUME'
            Options.Editing = False
            Width = 68
          end
          object cxGrid1DBTableView1UNITS: TcxGridDBColumn
            Caption = #1045#1076'.'#1080#1079#1084'.'
            DataBinding.FieldName = 'UNITS'
            Width = 47
          end
          object cxGrid1DBTableView1CENA: TcxGridDBColumn
            DataBinding.FieldName = 'CENA'
            Options.Editing = False
            Width = 96
          end
          object cxGrid1DBTableView1TARIF: TcxGridDBColumn
            DataBinding.FieldName = 'TARIF'
            Options.Editing = False
            Width = 84
          end
          object cxGrid1DBTableView1CHANGES: TcxGridDBColumn
            DataBinding.FieldName = 'CHANGES'
            Options.Editing = False
            Width = 105
          end
          object cxGrid1DBTableView1ITOGN: TcxGridDBColumn
            DataBinding.FieldName = 'ITOGN'
            Options.Editing = False
            Width = 107
          end
          object cxGrid1DBTableView1CD_TP: TcxGridDBColumn
            DataBinding.FieldName = 'CD_TP'
            Visible = False
          end
          object cxGrid1DBTableView1PSCH: TcxGridDBColumn
            DataBinding.FieldName = 'PSCH'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1059#1089#1083#1091#1075#1080
      ImageIndex = 1
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 879
        Height = 259
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu3
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu3
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = DS_nabor
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
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.Inactive = cxStyle2
          object cxGridDBColumnREU: TcxGridDBColumn
            Caption = #1059#1050
            DataBinding.FieldName = 'REU'
            Width = 20
          end
          object cxGridDBColumnLSK: TcxGridDBColumn
            Caption = #1051#1057
            DataBinding.FieldName = 'LSK'
            Width = 45
          end
          object cxGridDBColumnUSL: TcxGridDBColumn
            DataBinding.FieldName = 'USL'
            Width = 25
          end
          object cxGridDBColumnNM: TcxGridDBColumn
            DataBinding.FieldName = 'NM'
            Options.Editing = False
            Width = 89
          end
          object cxGridDBColumnORG: TcxGridDBColumn
            Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
            DataBinding.FieldName = 'ORG'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'KOD'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_sprorg
            Width = 54
          end
          object cxGridDBColumnKOEFF: TcxGridDBColumn
            DataBinding.FieldName = 'KOEFF'
            Width = 38
          end
          object cxGridDBColumnNORM: TcxGridDBColumn
            DataBinding.FieldName = 'NORM'
            Width = 34
          end
          object cxGridDBColumnFK_VVOD: TcxGridDBColumn
            Caption = #8470' '#1042#1074#1086#1076#1072
            DataBinding.FieldName = 'FK_VVOD'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'VVOD_NUM'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_vvod
            Width = 42
          end
          object cxGridDBColumnVOL: TcxGridDBColumn
            Caption = #1056#1072#1089#1087#1088'.'#1085#1086#1088#1084'.'
            DataBinding.FieldName = 'VOL'
            Options.Editing = False
            Width = 60
          end
          object cxGridDBColumnVOL_ADD: TcxGridDBColumn
            Caption = #1056#1072#1089#1087#1088'.'#1089#1095#1077#1090#1095'.'
            DataBinding.FieldName = 'VOL_ADD'
            Options.Editing = False
            Width = 61
          end
          object cxGridDBColumnCD_TP: TcxGridDBColumn
            DataBinding.FieldName = 'CD_TP'
            Visible = False
          end
          object cxGridDBColumnPSCH: TcxGridDBColumn
            DataBinding.FieldName = 'PSCH'
            Visible = False
          end
          object cxGridDBColumnDT1: TcxGridDBColumn
            Caption = #1053#1072#1095#1072#1083#1086
            DataBinding.FieldName = 'DT1'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.AutoSelect = False
            Properties.InputKind = ikMask
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 72
          end
          object cxGridDBColumnDT2: TcxGridDBColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'DT2'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.AutoSelect = False
            Properties.InputKind = ikMask
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 104
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object DS_spul: TDataSource
    DataSet = DataModule1.OD_spul2
    Left = 392
    Top = 496
  end
  object DS_status: TDataSource
    DataSet = DataModule1.OD_status
    Left = 392
    Top = 528
  end
  object OD_kart_pr: TOracleDataSet
    SQL.Strings = (
      
        'select rownum as rn, c.rowid, c.lsk, c.id, c.fio, c.k_fam, c.k_i' +
        'm, c.k_ot, decode(pol, 1, '#39#1052#1059#1046#39', '#39#1046#1045#1053#39') as n_pol, pol,'
      
        'c.dat_prop, c.dat_ub, c.dat_rog, c.status, c.relat_id, c.status_' +
        'datb, c.status_dat, c.status_chng, c.fk_doc_tp, c.fk_nac,'
      
        'c.b_place, c.dok_c, c.dok_n, c.dok_d, c.dok_v, c.dok_div, c.dok_' +
        'inn, c.dok_snils, c.fk_frm_cntr, c.fk_frm_regn, c.fk_frm_distr, ' +
        'c.frm_town, c.frm_dat,'
      
        'c.fk_frm_kul, c.frm_nd, c.frm_kw, c.w_place, c.fk_ub, c.fk_to_cn' +
        'tr, c.fk_to_regn, c.fk_to_distr, c.fk_citiz, c.to_town, '
      
        'c.fk_to_kul, c.to_nd, c.to_kw, c.fk_milit, c.fk_milit_regn, a.dt' +
        '1 as st_dt1, a.dt2 as st_dt2, s.name2 as st_name, c.priv_proc, c' +
        '.use_gis_divide_els, c.dok_death_c, c.dok_death_n'
      '  from scott.c_kart_pr c, scott.c_status_pr s,'
      
        '  (select r.fk_kart_pr, r.dt1, r.dt2  from scott.c_states_pr r, ' +
        'scott.c_status_pr t, scott.u_list u, scott.params p'
      '   where r.fk_status=t.id and t.fk_tp=u.id and u.cd='#39'PROP_REG'#39
      '   and last_day(to_date(p.period||'#39'01'#39','#39'YYYYMMDD'#39')) between'
      
        '     nvl(r.dt1(+), to_date('#39'01011900'#39','#39'DDMMYYYY'#39')) and nvl(r.dt2' +
        '(+), to_date('#39'01012900'#39','#39'DDMMYYYY'#39'))'
      '   and exists'
      
        '   (select * from scott.c_kart_pr c where c.lsk=:lsk and c.id=r.' +
        'fk_kart_pr)'
      '   ) a'
      ' where lsk =:lsk and c.status=s.id '
      ' and (:var_=0 and c.status<>4 or :var_=1)'
      ' and c.id=a.fk_kart_pr(+)'
      'order by c.id')
    Optimize = False
    Variables.Data = {
      0400000002000000080000003A004C0053004B00050000000900000020202020
      2020202000000000000A0000003A005600410052005F00030000000000000000
      000000}
    SequenceField.ApplyMoment = amOnServer
    OracleDictionary.UseMessageTable = True
    OracleDictionary.DefaultValues = True
    QBEDefinition.QBEFieldDefs = {
      050000003600000006000000460049004F000100000000000600000050004F00
      4C00010000000000100000004400410054005F00500052004F00500001000000
      00000C0000005300540041005400550053000100000000000E00000044004100
      54005F0052004F00470001000000000004000000490044000100000000000600
      00004C0053004B000100000000000400000052004E000100000000000A000000
      4E005F0050004F004C0001000000000010000000520045004C00410054005F00
      49004400010000000000140000005300540041005400550053005F0044004100
      5400010000000000160000005300540041005400550053005F00430048004E00
      47000100000000000A0000004B005F00460041004D0001000000000008000000
      4B005F0049004D00010000000000080000004B005F004F005400010000000000
      1200000046004B005F0044004F0043005F00540050000100000000000C000000
      46004B005F004E00410043000100000000000E00000042005F0050004C004100
      430045000100000000000A00000044004F004B005F0043000100000000000A00
      000044004F004B005F004E000100000000000A00000044004F004B005F004400
      0100000000000A00000044004F004B005F0056000100000000000C0000004400
      410054005F00550042000100000000001600000046004B005F00460052004D00
      5F0043004E00540052000100000000001600000046004B005F00460052004D00
      5F005200450047004E000100000000001800000046004B005F00460052004D00
      5F004400490053005400520001000000000010000000460052004D005F005400
      4F0057004E000100000000000E000000460052004D005F004400410054000100
      000000000C000000460052004D005F004E0044000100000000000C0000004600
      52004D005F004B0057000100000000000E00000057005F0050004C0041004300
      45000100000000000A00000046004B005F005500420001000000000014000000
      46004B005F0054004F005F0043004E0054005200010000000000140000004600
      4B005F0054004F005F005200450047004E000100000000001600000046004B00
      5F0054004F005F00440049005300540052000100000000000E00000054004F00
      5F0054004F0057004E000100000000000A00000054004F005F004E0044000100
      000000000A00000054004F005F004B0057000100000000001000000046004B00
      5F0043004900540049005A000100000000001400000046004B005F0046005200
      4D005F004B0055004C000100000000001200000046004B005F0054004F005F00
      4B0055004C000100000000001000000046004B005F004D0049004C0049005400
      0100000000001A00000046004B005F004D0049004C00490054005F0052004500
      47004E00010000000000160000005300540041005400550053005F0044004100
      540042000100000000000C000000530054005F00440054003100010000000000
      0C000000530054005F004400540032000100000000000E000000530054005F00
      4E0041004D0045000100000000001200000050005200490056005F0050005200
      4F0043000100000000001200000044004F004B005F0053004E0049004C005300
      010000000000240000005500530045005F004700490053005F00440049005600
      4900440045005F0045004C0053000100000000000E00000044004F004B005F00
      4400490056000100000000000E00000044004F004B005F0049004E004E000100
      000000001600000044004F004B005F00440045004100540048005F0043000100
      000000001600000044004F004B005F00440045004100540048005F004E000100
      00000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAllFields]
    UpdatingTable = 'scott.c_kart_pr'
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    AfterScroll = OD_kart_prAfterScroll
    Left = 424
    Top = 432
    object OD_kart_prRN: TFloatField
      DisplayLabel = #8470
      DisplayWidth = 4
      FieldKind = fkInternalCalc
      FieldName = 'RN'
      ReadOnly = True
    end
    object OD_kart_prFIO: TStringField
      DisplayLabel = #1060'.'#1048'.'#1054'.'
      DisplayWidth = 28
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      Size = 50
    end
    object OD_kart_prDAT_PROP: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1087'.'
      DisplayWidth = 10
      FieldName = 'DAT_PROP'
    end
    object OD_kart_prDAT_UB: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1091#1073'.'
      DisplayWidth = 10
      FieldName = 'DAT_UB'
    end
    object OD_kart_prST_DT1: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1077#1075'.'
      DisplayWidth = 9
      FieldName = 'ST_DT1'
    end
    object OD_kart_prST_DT2: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1089#1085#1103#1090'.'
      DisplayWidth = 11
      FieldName = 'ST_DT2'
    end
    object OD_kart_prDAT_ROG: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 18
      FieldName = 'DAT_ROG'
      Visible = False
    end
    object OD_kart_prID: TFloatField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Visible = False
    end
    object OD_kart_prSTATUS: TFloatField
      DisplayWidth = 10
      FieldName = 'STATUS'
      Visible = False
      OnValidate = OD_kart_prSTATUSValidate
    end
    object OD_kart_prLSK: TStringField
      DisplayWidth = 8
      FieldName = 'LSK'
      Required = True
      Visible = False
      Size = 8
    end
    object OD_kart_prPOL: TFloatField
      DisplayWidth = 10
      FieldName = 'POL'
      Visible = False
    end
    object OD_kart_prRELAT_ID: TFloatField
      DisplayWidth = 10
      FieldName = 'RELAT_ID'
      Visible = False
    end
    object OD_kart_prSTATUS_DAT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'STATUS_DAT'
      Visible = False
    end
    object OD_kart_prSTATUS_CHNG: TDateTimeField
      DisplayWidth = 18
      FieldName = 'STATUS_CHNG'
      Visible = False
    end
    object OD_kart_prK_FAM: TStringField
      DisplayWidth = 25
      FieldName = 'K_FAM'
      Visible = False
      Size = 25
    end
    object OD_kart_prK_IM: TStringField
      DisplayWidth = 15
      FieldName = 'K_IM'
      Visible = False
      Size = 15
    end
    object OD_kart_prK_OT: TStringField
      DisplayWidth = 15
      FieldName = 'K_OT'
      Visible = False
      Size = 15
    end
    object OD_kart_prFK_DOC_TP: TFloatField
      DisplayWidth = 10
      FieldName = 'FK_DOC_TP'
      Visible = False
    end
    object OD_kart_prFK_NAC: TFloatField
      DisplayWidth = 10
      FieldName = 'FK_NAC'
      Visible = False
    end
    object OD_kart_prB_PLACE: TStringField
      DisplayWidth = 60
      FieldName = 'B_PLACE'
      Visible = False
      Size = 60
    end
    object OD_kart_prDOK_C: TStringField
      DisplayWidth = 8
      FieldName = 'DOK_C'
      Visible = False
      Size = 8
    end
    object OD_kart_prDOK_N: TStringField
      DisplayWidth = 7
      FieldName = 'DOK_N'
      Visible = False
      Size = 7
    end
    object OD_kart_prDOK_D: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOK_D'
      Visible = False
    end
    object OD_kart_prDOK_V: TStringField
      DisplayWidth = 65
      FieldName = 'DOK_V'
      Visible = False
      Size = 65
    end
    object OD_kart_prFK_FRM_CNTR: TFloatField
      DisplayWidth = 13
      FieldName = 'FK_FRM_CNTR'
      Visible = False
    end
    object OD_kart_prFK_FRM_REGN: TFloatField
      DisplayWidth = 13
      FieldName = 'FK_FRM_REGN'
      Visible = False
    end
    object OD_kart_prFK_FRM_DISTR: TFloatField
      DisplayWidth = 13
      FieldName = 'FK_FRM_DISTR'
      Visible = False
    end
    object OD_kart_prFRM_TOWN: TStringField
      DisplayWidth = 30
      FieldName = 'FRM_TOWN'
      Visible = False
      Size = 30
    end
    object OD_kart_prFRM_DAT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FRM_DAT'
      Visible = False
    end
    object OD_kart_prFRM_ND: TStringField
      DisplayWidth = 7
      FieldName = 'FRM_ND'
      Visible = False
      Size = 6
    end
    object OD_kart_prFRM_KW: TStringField
      DisplayWidth = 7
      FieldName = 'FRM_KW'
      Visible = False
      Size = 7
    end
    object OD_kart_prW_PLACE: TStringField
      DisplayWidth = 60
      FieldName = 'W_PLACE'
      Visible = False
      Size = 60
    end
    object OD_kart_prFK_UB: TFloatField
      DisplayWidth = 10
      FieldName = 'FK_UB'
      Visible = False
    end
    object OD_kart_prFK_TO_CNTR: TFloatField
      DisplayWidth = 11
      FieldName = 'FK_TO_CNTR'
      Visible = False
    end
    object OD_kart_prFK_TO_REGN: TFloatField
      DisplayWidth = 11
      FieldName = 'FK_TO_REGN'
      Visible = False
    end
    object OD_kart_prFK_TO_DISTR: TFloatField
      DisplayWidth = 12
      FieldName = 'FK_TO_DISTR'
      Visible = False
    end
    object OD_kart_prTO_TOWN: TStringField
      DisplayWidth = 30
      FieldName = 'TO_TOWN'
      Visible = False
      Size = 30
    end
    object OD_kart_prTO_ND: TStringField
      DisplayWidth = 6
      FieldName = 'TO_ND'
      Visible = False
      Size = 6
    end
    object OD_kart_prTO_KW: TStringField
      DisplayWidth = 7
      FieldName = 'TO_KW'
      Visible = False
      Size = 7
    end
    object OD_kart_prFK_CITIZ: TFloatField
      DisplayWidth = 10
      FieldName = 'FK_CITIZ'
      Visible = False
    end
    object OD_kart_prFK_FRM_KUL: TStringField
      DisplayWidth = 11
      FieldName = 'FK_FRM_KUL'
      Visible = False
      Size = 4
    end
    object OD_kart_prFK_TO_KUL: TStringField
      DisplayWidth = 10
      FieldName = 'FK_TO_KUL'
      Visible = False
      Size = 4
    end
    object OD_kart_prFK_MILIT: TFloatField
      DisplayWidth = 10
      FieldName = 'FK_MILIT'
      Visible = False
    end
    object OD_kart_prN_POL: TStringField
      DisplayLabel = #1055#1086#1083
      DisplayWidth = 5
      FieldKind = fkInternalCalc
      FieldName = 'N_POL'
      ReadOnly = True
      Visible = False
      Size = 3
    end
    object OD_kart_prFK_MILIT_REGN: TFloatField
      DisplayWidth = 14
      FieldName = 'FK_MILIT_REGN'
      Visible = False
    end
    object OD_kart_prSTATUS_DATB: TDateTimeField
      DisplayWidth = 18
      FieldName = 'STATUS_DATB'
      Visible = False
    end
    object OD_kart_prST_NAME: TStringField
      FieldName = 'ST_NAME'
      Size = 10
    end
    object OD_kart_prPRIV_PROC: TStringField
      DisplayLabel = '% '#1087#1088#1080#1074#1072#1090
      FieldName = 'PRIV_PROC'
      Size = 10
    end
    object OD_kart_prDOK_SNILS: TStringField
      FieldName = 'DOK_SNILS'
      Size = 11
    end
    object OD_kart_prUSE_GIS_DIVIDE_ELS: TFloatField
      FieldName = 'USE_GIS_DIVIDE_ELS'
      Required = True
    end
    object OD_kart_prDOK_DIV: TStringField
      FieldName = 'DOK_DIV'
      Size = 120
    end
    object OD_kart_prDOK_INN: TStringField
      FieldName = 'DOK_INN'
      Size = 12
    end
    object OD_kart_prDOK_DEATH_C: TStringField
      FieldName = 'DOK_DEATH_C'
      Size = 10
    end
    object OD_kart_prDOK_DEATH_N: TStringField
      FieldName = 'DOK_DEATH_N'
      Size = 10
    end
  end
  object DS_kart_pr: TDataSource
    DataSet = OD_kart_pr
    Left = 456
    Top = 432
  end
  object OD_charge: TOracleDataSet
    SQL.Strings = (
      'select 0 as tp, '
      '       m.npp,'
      '       k.k_lsk_id,'
      '       k.lsk,'
      '       k.psch,'
      '       k.reu,'
      '       tp.cd as cd_tp,'
      '       m.usl,'
      '       m.nm,'
      '       a.volume,'
      '       m.ed_izm as units,'
      '       a.cena,'
      '       o.id || '#39'  '#39' || o.name as org_name,'
      '       nvl(summa_tarif, 0) as tarif,'
      '       nvl(summa_privs, 0) as privs,'
      '       nvl(summa_subsid, 0) as subsid,'
      '       nvl(summa_change, 0) as changes,'
      
        '       nvl(a.summa_tarif, 0) - nvl(a.summa_privs, 0) - nvl(a.sum' +
        'ma_subsid, 0) +'
      '       nvl(a.summa_change, 0) as itogn'
      '  from  '
      '           scott.kart k'
      '           join scott.v_lsk_tp tp on k.fk_tp=tp.id'
      '           join (select lsk, usl, org, '
      '                  sum(summa_tarif) as summa_tarif,'
      '                  sum(summa_privs) as summa_privs,'
      '                  sum(summa_subsid) as summa_subsid,'
      '                  sum(summa_change) as summa_change,'
      '                  sum(volume) as volume,'
      '                  max(cena) as cena'
      '                   from '
      
        '                  (select t.lsk, t.usl, coalesce(t.org, n.org) a' +
        's org, '
      '                     decode(t.type,1,t.summa,0) as summa_tarif, '
      '                     decode(t.type,4,summa,0) as summa_privs, '
      '                     decode(t.type,2,summa,0) as summa_subsid,'
      '                     0 as summa_change,'
      '                     decode(t.type,1,test_opl,0) as volume,'
      '                     decode(t.type,1,test_cena,0) as cena'
      '                    from scott.kart a '
      
        '                     join scott.c_charge t on a.lsk=t.lsk and a.' +
        'k_lsk_id = :k_lsk_id '
      
        '                     left join scott.nabor n on t.lsk=n.lsk and ' +
        't.usl=n.usl and t.org is null'
      '                    union all'
      '                 select t.lsk, t.usl, t.org, '
      '                     0 as summa_tarif, '
      '                     0 as summa_privs, '
      '                     0 as summa_subsid,'
      '                     t.summa as summa_change,'
      '                     0 as volume,'
      '                     0 as cena'
      '                    from scott.kart a '
      
        '                     join scott.c_change t on a.lsk=t.lsk and a.' +
        'k_lsk_id = :k_lsk_id '
      '                    ) group by lsk, usl, org'
      '                   ) a on k.lsk = a.lsk'
      '           join scott.usl u on a.usl=u.usl'
      '           join scott.t_org o on a.org=o.id'
      '           join scott.usl m on u.usl = m.usl'
      
        ' where k.k_lsk_id = :k_lsk_id  and decode(k.psch, 8, :p_closed, ' +
        '9, :p_closed,1)=1'
      ' order by reu, npp'
      ''
      ''
      '/*select 0 as tp, '
      '       m.npp,'
      '       k.k_lsk_id,'
      '       k.lsk,'
      '       k.psch,'
      '       k.reu,'
      '       tp.cd as cd_tp,'
      '       m.usl,'
      '       m.nm,'
      
        '  --     to_char(a.volume,'#39'9999990'#39'||rpad('#39'.'#39',nvl(m.chrg_round,3' +
        ')+1,'#39'9'#39'))|| '#39' '#39' || m.ed_izm as volume, --'#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' '#1086#1082#1088#1091#1075#1083#1077#1085#1080#1077 +
        ' 3 '#1079#1085#1072#1082#1072', '#1074' '#1087#1088#1086#1090#1080#1074#1085#1086#1084' '#1089#1083#1091#1095#1072#1077' '#1073#1077#1088#1077#1090#1089#1103' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' usl - '#1091#1073#1088#1072#1083' ' +
        #1088#1077#1076'.01.10.21'
      '       a.volume,'
      '       m.ed_izm as units,'
      '       a.cena,'
      '       nvl(a.summa, 0) as tarif,'
      '       o.id || '#39'  '#39' || o.name as org_name,'
      '       nvl(a.summa_b, 0) as privs,'
      '       nvl(a.summa_c, 0) as subsid,'
      '       nvl(d.summa, 0) as changes,'
      '       nvl(a.summa, 0) - nvl(a.summa_b, 0) - nvl(a.summa_c, 0) +'
      '       nvl(d.summa, 0) as itogn'
      '  from  '
      '           scott.usl u '
      '           join scott.t_org o on 1=1'
      '           join scott.usl m on u.usl = m.usl'
      
        '           join scott.kart k on decode(k.psch, 8, :p_closed, 9, ' +
        ':p_closed,1)=1'
      '           join scott.v_lsk_tp tp on k.fk_tp=tp.id'
      
        '           left join (select t.lsk, t.usl, t.org, sum(decode(t.t' +
        'ype,1,t.summa,0)) as summa, '
      '                     sum(decode(t.type,4,summa,0)) as summa_b, '
      '                     sum(decode(t.type,2,summa,0)) as summa_c,'
      '                     sum(decode(t.type,1,test_opl,0)) as volume,'
      '                     max(decode(t.type,1,test_cena,0)) as cena'
      
        '                    from scott.c_charge t join scott.kart r on t' +
        '.lsk=r.lsk and r.k_lsk_id = :k_lsk_id'
      
        '                   group by t.lsk, t.usl, t.org) a on k.lsk = a.' +
        'lsk and u.usl=a.usl and o.id=a.org'
      
        '           left join (select s.lsk, s.usl, s.org, sum(s.summa) a' +
        's summa'
      
        '                    from scott.v_changes_for_saldo s join scott.' +
        'kart r on s.lsk=r.lsk and r.k_lsk_id = :k_lsk_id'
      
        '                   group by s.lsk, s.usl, s.org) d on k.lsk = d.' +
        'lsk and u.usl = d.usl and o.id=d.org'
      
        ' where k.k_lsk_id = :k_lsk_id and coalesce (a.usl,d.usl) is not ' +
        'null'
      ' order by reu, npp*/'
      '/*select 0 as tp, n.rowid,'
      '       m.npp,'
      '       k.k_lsk_id,'
      '       n.lsk,'
      '       k.psch,'
      '       k.reu,'
      '       tp.cd as cd_tp,'
      '       m.usl,'
      '       m.nm,'
      '       n.koeff,'
      
        '       to_char(a.volume,'#39'9999990'#39'||rpad('#39'.'#39',nvl(m.chrg_round,3)+' +
        '1,'#39'9'#39'))|| '#39' '#39' || m.ed_izm as volume, --'#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' '#1086#1082#1088#1091#1075#1083#1077#1085#1080#1077' 3' +
        ' '#1079#1085#1072#1082#1072', '#1074' '#1087#1088#1086#1090#1080#1074#1085#1086#1084' '#1089#1083#1091#1095#1072#1077' '#1073#1077#1088#1077#1090#1089#1103' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' usl'
      '       a.cena,'
      '       n.norm,'
      '       n.org,'
      '       nvl(a.summa, 0) as tarif,'
      '       n.fk_tarif,'
      '       n.fk_vvod,'
      '       n.vol,'
      '       n.vol_add,'
      '       v.vvod_num,'
      '       n.kf_kpr,'
      '       n.kf_kpr_sch,'
      '       n.nrm_kpr,'
      '       n.nrm_kpr2,'
      '       n.sch_auto,'
      '       g.kod || '#39'  '#39' || g.name as org_name,'
      '       nvl(a.summa_b, 0) as privs,'
      '       nvl(a.summa_c, 0) as subsid,'
      '       nvl(d.summa, 0) as changes,'
      '       nvl(a.summa, 0) - nvl(a.summa_b, 0) - nvl(a.summa_c, 0) +'
      '       nvl(d.summa, 0) as itogn,'
      '       m.sptarn,'
      '       n.dt1, n.dt2'
      
        '  from  scott.nabor n join scott.kart k on k.lsk=n.lsk and decod' +
        'e(k.psch, 8, :p_closed, 9, :p_closed,1)=1'
      
        '                     left join scott.c_vvod v on n.fk_vvod = v.i' +
        'd'
      '                     join scott.sprorg g on n.org = g.kod'
      '                     join scott.v_lsk_tp tp on k.fk_tp=tp.id'
      
        '                     left join (select lsk, usl, org, sum(decode' +
        '(t.type,1,summa,0)) as summa, '
      '           sum(decode(t.type,4,summa,0)) as summa_b, '
      '           sum(decode(t.type,2,summa,0)) as summa_c,'
      '           sum(decode(t.type,1,test_opl,0)) as volume,'
      '           max(decode(t.type,1,test_cena,0)) as cena'
      '          from scott.c_charge t'
      '         --where lsk = :lsk'
      
        '         group by lsk, usl, org) a on n.lsk = a.lsk and n.usl = ' +
        'a.usl and n.org=a.org'
      
        '                    left join (select cc.lsk, cc.usl, sum(cc.sum' +
        'ma) as summa'
      '          from scott.c_change cc'
      '         --where cc.lsk = :lsk'
      
        '         group by cc.lsk, cc.usl) d on n.lsk = d.lsk and n.usl =' +
        ' d.usl'
      '               join scott.usl m on n.usl = m.usl'
      ' where k.k_lsk_id = :k_lsk_id'
      '   union all'
      '   select 1 as tp,'
      
        '       null, --'#1088#1072#1079' '#1080#1079#1084'. '#1085#1077' '#1087#1088#1080#1089#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' '#1091#1089#1083#1091#1075' '#1072#1073 +
        #1086#1085#1077#1085#1090#1072
      '       u.npp,'
      '       k.k_lsk_id,'
      '       t.lsk,'
      '       k.psch,'
      '       k.reu,'
      '       tp.cd as cd_tp,'
      '       t.usl,'
      '       u.nm,'
      '       null as koeff,'
      '       null as volume,'
      '       null as cena,'
      '       null as norm,'
      '       0 as org,'
      '       null as tarif,'
      '       null as fk_tarif,'
      '       null as fk_vvod,'
      '       null as vol,'
      '       null as vol_add,'
      '       null as vvod_num,'
      '       null as kf_kpr,'
      '       null as kf_kpr_sch,'
      '       null as nrm_kpr,'
      '       null as nrm_kpr2,'
      '       null as sch_auto,'
      '       null as org_name,'
      '       null as privs,'
      '       null as subsid,'
      '       nvl(sum(t.summa), 0) as changes,'
      '       nvl(sum(t.summa), 0) as  itogn,'
      '       0 as sptarn,'
      '       null as dt1, null as dt2'
      '      from scott.kart k '
      '      join scott.c_change t on k.lsk=t.lsk'
      
        '      join scott.usl u  on k.k_lsk_id = :k_lsk_id and t.usl=u.us' +
        'l'
      '      join scott.v_lsk_tp tp on k.fk_tp=tp.id'
      
        '     where not exists (select * from scott.nabor n where n.lsk=k' +
        '.lsk and n.usl=t.usl)'
      '     and decode(k.psch, 8, :p_closed, 9, :p_closed,1)=1'
      
        '     group by k.k_lsk_id, u.npp, u.nm, t.lsk, k.reu, tp.cd, t.us' +
        'l,k.psch'
      '   union all'
      '   select 2 as tp,'
      '       null, --'#1054#1044#1053', ('#1076#1083#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080', '#1085#1077' '#1091#1095#1072#1089#1090#1074#1091#1077#1090' '#1074' '#1088#1072#1089#1095#1077#1090#1077')'
      '       u.npp,'
      '       k.k_lsk_id,'
      '       t.lsk,'
      '       k.psch,'
      '       k.reu,'
      '       tp.cd as cd_tp,'
      '       t.usl,'
      '       u.nm,'
      '       null as koeff,'
      
        '       to_char(t.test_opl,'#39'9999990.999'#39')|| '#39' '#39' || u.ed_izm as vo' +
        'lume,'
      '       null as cena,'
      '       null as norm,'
      '       0 as org,'
      '       null as tarif,'
      '       null as fk_tarif,'
      '       null as fk_vvod,'
      '       null as vol,'
      '       null as vol_add,'
      '       null as vvod_num,'
      '       null as kf_kpr,'
      '       null as kf_kpr_sch,'
      '       null as nrm_kpr,'
      '       null as nrm_kpr2,'
      '       null as sch_auto,'
      '       null as org_name,'
      '       null as privs,'
      '       null as subsid,'
      '       null as changes,'
      '       null as  itogn,'
      '       0 as sptarn,'
      '       null as dt1, null as dt2'
      
        '      from scott.kart k join scott.c_charge t on k.lsk=t.lsk and' +
        ' k.k_lsk_id=:k_lsk_id and decode(k.psch, 8, :p_closed, 9, :p_clo' +
        'sed,1)=1'
      '      join scott.usl u on t.usl=u.usl and t.type=5'
      '      join scott.v_lsk_tp tp on k.fk_tp=tp.id'
      ' order by reu, npp, dt1'
      ''
      '*/')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A004B005F004C0053004B005F00490044000300
      00000000000000000000120000003A0050005F0043004C004F00530045004400
      030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000120000000A000000540041005200490046000100000000000A000000
      5000520049005600530001000000000006000000550053004C00010000000000
      0C0000005300550042005300490044000100000000000E000000430048004100
      4E004700450053000100000000000A000000490054004F0047004E0001000000
      0000060000004C0053004B0001000000000008000000430045004E0041000100
      00000000040000004E004D000100000000000C00000056004F004C0055004D00
      4500010000000000100000004F00520047005F004E0041004D00450001000000
      0000060000004E00500050000100000000000400000054005000010000000000
      100000004B005F004C0053004B005F0049004400010000000000060000005200
      450055000100000000000A000000430044005F00540050000100000000000800
      000050005300430048000100000000000A00000055004E004900540053000100
      00000000}
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    BeforeClose = OD_chargeBeforeClose
    AfterScroll = OD_chargeAfterScroll
    Left = 24
    Top = 376
    object OD_chargeUSL: TStringField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 3
      FieldName = 'USL'
      Required = True
      Size = 3
    end
    object OD_chargeNM: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 17
      FieldName = 'NM'
      ReadOnly = True
      Size = 35
    end
    object OD_chargeCENA: TFloatField
      DisplayLabel = #1056#1072#1089#1094#1077#1085#1082#1072
      DisplayWidth = 9
      FieldName = 'CENA'
      ReadOnly = True
    end
    object OD_chargeTARIF: TFloatField
      DisplayLabel = #1058#1072#1088#1080#1092
      DisplayWidth = 8
      FieldKind = fkInternalCalc
      FieldName = 'TARIF'
      ReadOnly = True
    end
    object OD_chargePRIVS: TFloatField
      DisplayLabel = #1051#1100#1075#1086#1090#1099
      DisplayWidth = 7
      FieldKind = fkInternalCalc
      FieldName = 'PRIVS'
      ReadOnly = True
    end
    object OD_chargeSUBSID: TFloatField
      DisplayLabel = #1057#1091#1073#1089#1080#1076#1080#1103
      DisplayWidth = 8
      FieldKind = fkInternalCalc
      FieldName = 'SUBSID'
      ReadOnly = True
    end
    object OD_chargeCHANGES: TFloatField
      DisplayLabel = #1048#1079#1084#1077#1085#1077#1085#1080#1103
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CHANGES'
      ReadOnly = True
    end
    object OD_chargeITOGN: TFloatField
      DisplayLabel = #1048#1090#1086#1075#1086
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'ITOGN'
      ReadOnly = True
    end
    object OD_chargeorg_name: TStringField
      DisplayLabel = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      DisplayWidth = 25
      FieldKind = fkInternalCalc
      FieldName = 'ORG_NAME'
      Size = 25
    end
    object OD_chargeLSK: TStringField
      DisplayWidth = 8
      FieldName = 'LSK'
      ReadOnly = True
      Required = True
      Visible = False
      Size = 8
    end
    object fltfldOD_chargeTP: TFloatField
      FieldName = 'TP'
    end
    object OD_chargeREU: TStringField
      FieldName = 'REU'
      Size = 3
    end
    object OD_chargeCD_TP: TStringField
      FieldName = 'CD_TP'
      Size = 32
    end
    object OD_chargePSCH: TIntegerField
      FieldName = 'PSCH'
    end
    object OD_chargeVOLUME: TFloatField
      FieldName = 'VOLUME'
    end
    object OD_chargeUNITS: TStringField
      FieldName = 'UNITS'
      Size = 15
    end
  end
  object DS_sprorg: TDataSource
    DataSet = DataModule1.OD_sprorg
    Left = 392
    Top = 560
  end
  object DS_psch: TDataSource
    DataSet = DataModule1.OD_psch
    Left = 704
    Top = 344
  end
  object DS_usl: TDataSource
    DataSet = DataModule1.OD_usl
    Left = 592
    Top = 512
  end
  object OD_saldo: TOracleDataSet
    SQL.Strings = (
      
        'select s.lsk, substr(s.mg,1,4)||'#39'-'#39'||substr(s.mg,5,2) as mg, sum' +
        '(summa) as summa from scott.saldo_usl s '
      'where s.mg=(select period from scott.params) and s.lsk=:lsk'
      'group by s.lsk, substr(s.mg,1,4)||'#39'-'#39'||substr(s.mg,5,2)'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000000A000000530055004D004D00410001000000000006000000
      4C0053004B00010000000000040000004D004700010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    Session = DataModule1.OracleSession1
    Left = 488
    Top = 496
    object OD_saldoLSK: TStringField
      DisplayWidth = 8
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_saldoSUMMA: TFloatField
      DisplayWidth = 14
      FieldName = 'SUMMA'
      currency = True
    end
    object OD_saldoMG: TStringField
      DisplayWidth = 7
      FieldName = 'MG'
      Visible = False
      Size = 7
    end
  end
  object DS_saldo: TDataSource
    DataSet = OD_saldo
    Left = 520
    Top = 496
  end
  object DS_reu_trest: TDataSource
    DataSet = DataModule1.OD_s_reu_trest
    Left = 592
    Top = 544
  end
  object DS_kfg: TDataSource
    DataSet = DataModule1.OD_kfg
    Left = 520
    Top = 432
  end
  object DS_sch_el: TDataSource
    DataSet = DataModule1.OD_sch_el
    Left = 520
    Top = 400
  end
  object OD_vvod: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.vvod_num||'#39'-'#39'||u.nm as vvod_num'
      'from scott.c_vvod t join scott.usl u on t.usl=u.usl'
      'where t.house_id=:house_id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0048004F005500530045005F00490044000300
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004900440001000000000010000000560056004F00
      44005F004E0055004D00010000000000}
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    Left = 624
    Top = 544
  end
  object DS_vvod: TDataSource
    DataSet = OD_vvod
    Left = 656
    Top = 544
  end
  object DS_distr: TDataSource
    DataSet = DataModule1.OD_distr
    Left = 456
    Top = 528
  end
  object OD_spr_tarif: TOracleDataSet
    SQL.Strings = (
      
        'select t.name, t.id, null as parent_id, null as cena, t.cd from ' +
        'scott.spr_tarif t'
      '  where t.cd='#39'000'#39' '
      'union all'
      
        'select t.name, t.id, p.fk_tarif as parent_id, a.cena, t.cd from ' +
        'scott.spr_tarif t, scott.usl u,'
      '  (select s.* from scott.spr_tarif_prices s, scott.params p'
      '  where p.period between s.mg1 and s.mg2) a,'
      '  scott.spr_tarifxprogs p '
      
        '  where t.id=p.fk_prog and t.usl=:usl and t.usl=u.usl and nvl(u.' +
        'n_progs,0)=1 and'
      '   p.fk_prog=a.fk_tarif(+)')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00550053004C00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000000400000049004400010000000000080000004E0041004D00
      450001000000000008000000430045004E004100010000000000120000005000
      4100520045004E0054005F004900440001000000000004000000430044000100
      00000000}
    ReadOnly = True
    Session = DataModule1.OracleSession1
    Active = True
    Left = 228
    Top = 440
  end
  object DS_spr_tarif: TDataSource
    Left = 264
    Top = 440
  end
  object DS_pasp: TDataSource
    DataSet = DataModule1.OD_pasp
    Left = 456
    Top = 560
  end
  object OD_states_sch: TOracleDataSet
    SQL.Strings = (
      'select t.id,'
      't.dt1, t.dt2, '
      't.lsk, t.fk_status, t.fk_close_reason, t.rowid '
      'from scott.c_states_sch t'
      'where t.lsk=:lsk'
      'order by nvl(t.dt1, to_date('#39'01011900'#39','#39'DDMMYYYY'#39'))'
      ''
      '/*'
      'select '
      'decode(s.parn1, 0,'
      'decode(t.fk_status, 8,'#39#1055#1088#1086#1096#1083'.'#39', 9, '#39#1047#1072#1082#1088#1099#1090#39', 0, '#39#1053#1086#1088#1084#1072#1090#1080#1074#39', 1, '
      #39#1057#1095'. '#1061'.'#1042'. '#1080' '#1043'.'#1042'.'#39', 2, '#39#1057#1095'. '#1061'.'#1042'.'#39', 3, '#39#1057#1095'. '#1043'.'#1042'.'#39'),'
      'decode(t.fk_status, 8,'#39#1055#1088#1086#1096#1083'.'#39', 9, '#39#1047#1072#1082#1088#1099#1090#39', '#39#1054#1090#1082#1088#1099#1090#39')'
      ')'
      ' as status_nm, -- '#1054#1089#1090#1072#1074#1080#1083' '#1090#1086#1083#1100#1082#1086' '#1074#1080#1076#1080#1084#1099#1081' '#1089#1090#1072#1090#1091#1089' "'#1054#1090#1082#1088#1099#1090'"'
      'r.name as close_reason_nm,'
      't.dt1, t.dt2, '
      't.lsk, t.fk_status, t.fk_close_reason, t.rowid '
      
        'from scott.c_states_sch t left join  scott.spr_params s  on s.cd' +
        '='#39'VER_METER1'#39' '
      ' left join scott.v_close_reason r on t.fk_close_reason=r.id'
      'where t.lsk=:lsk'
      'order by nvl(t.dt1, to_date('#39'01011900'#39','#39'DDMMYYYY'#39'))'
      '*/')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00050000000900000020202020
      202020200000000000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      0500000006000000060000004400540031000100000000000600000044005400
      32000100000000001200000046004B005F005300540041005400550053000100
      00000000060000004C0053004B000100000000001E00000046004B005F004300
      4C004F00530045005F0052004500410053004F004E0001000000000004000000
      49004400010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    RefreshOptions = [roAfterInsert, roAfterUpdate, roAllFields]
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    AfterInsert = OD_states_schAfterInsert
    BeforePost = OD_states_schBeforePost
    Left = 748
    Top = 392
    object OD_states_schID: TFloatField
      FieldName = 'ID'
    end
    object OD_states_schDT1: TDateTimeField
      FieldName = 'DT1'
    end
    object OD_states_schDT2: TDateTimeField
      FieldName = 'DT2'
    end
    object OD_states_schLSK: TStringField
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_states_schFK_STATUS: TFloatField
      FieldName = 'FK_STATUS'
      Required = True
    end
    object OD_states_schFK_CLOSE_REASON: TFloatField
      FieldName = 'FK_CLOSE_REASON'
    end
  end
  object DS_states_sch: TDataSource
    DataSet = OD_states_sch
    Left = 780
    Top = 392
  end
  object PopupMenu2: TPopupMenu
    Left = 478
    Top = 217
    object N3: TMenuItem
      AutoCheck = True
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1099#1087#1080#1089#1072#1085#1085#1099#1093
      RadioItem = True
      OnClick = N3Click
    end
    object N4: TMenuItem
      AutoCheck = True
      Caption = #1057#1082#1088#1099#1090#1100' '#1074#1099#1087#1080#1089#1072#1085#1085#1099#1093
      Checked = True
      RadioItem = True
      OnClick = N4Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 598
    Top = 400
    object mnu1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      OnClick = N1Click
    end
    object mnu2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      OnClick = mnu2Click
    end
  end
  object OD_houses: TOracleDataSet
    SQL.Strings = (
      
        'select c.id, ltrim(c.nd,'#39'0'#39') as nd, c.nd as nd_id from scott.c_h' +
        'ouses c'
      ' where c.id=:house_id'
      'order by scott.utils.f_ord_digit(c.nd), scott.utils.f_ord3(c.nd)')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0048004F005500530045005F00490044000300
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000000400000049004400010000000000040000004E0044000100
      000000000A0000004E0044005F0049004400010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'house_id'
    DetailFields = 'house_id'
    Session = DataModule1.OracleSession1
    Left = 156
    Top = 400
  end
  object DS_houses: TDataSource
    DataSet = OD_houses
    Left = 192
    Top = 400
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <
      item
        Component = cxGrid1Level1
        Properties.Strings = (
          'Caption'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'GridView'
          'ImageIndex'
          'MaxDetailHeight'
          'Name'
          'Options'
          'Styles'
          'Tag'
          'Visible')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'frmKartStore.ini'
    StorageType = stRegistry
    Left = 416
  end
  object DS_psch2: TDataSource
    DataSet = DataModule1.OD_psch2
    Left = 672
    Top = 464
  end
  object OD_eolink: TOracleDataSet
    SQL.Strings = (
      'select t.* from exs.eolink t where t.lsk=:lsk'
      
        '--t.fk_klsk_obj=:fk_klsk_premise - '#1091#1082#1072#1079#1099#1074#1072#1083' '#1085#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1077'. '#1085#1072#1076#1086' '#1085 +
        #1072' '#1051#1080#1094' '#1089#1095'. '#1088#1077#1076'.21.07.2020')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001B000000060000004C0053004B000100000000000400000049004400
      01000000000006000000520045005500010000000000060000004B0055004C00
      010000000000040000004E004400010000000000040000004B00570001000000
      00000A00000045004E0054005200590001000000000006000000550053004C00
      0100000000000C000000490044005F0043004E00540001000000000008000000
      4700550049004400010000000000040000004300440001000000000010000000
      46004B005F004F0042004A00540050000100000000000E00000055004E004900
      51004E0055004D000100000000001200000046004B005F004F0042004A005400
      500058000100000000000C0000004100500050005F0054005000010000000000
      1600000046004B005F004B004C0053004B005F004F0042004A00010000000000
      1200000050004100520045004E0054005F004900440001000000000008000000
      4F00470052004E000100000000000C000000440054005F004300520054000100
      000000000E00000046004B005F0055005300450052000100000000000C000000
      5300540041005400550053000100000000000C000000490044005F0047005200
      50000100000000001000000043005F004C0053004B005F004900440001000000
      00000800000043004F004D004D000100000000000C000000440054005F005500
      5000440001000000000012000000530045005200560049004300450049004400
      01000000000006000000450052005200010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    ReadOnly = True
    Session = DataModule1.OracleSession1
    Left = 156
    Top = 368
  end
  object DS_eolink: TDataSource
    DataSet = OD_eolink
    Left = 192
    Top = 368
  end
  object DS_close_reason: TDataSource
    DataSet = DataModule1.OD_close_reason
    Left = 704
    Top = 392
  end
  object DS_doc: TDataSource
    DataSet = DataModule1.OD_doc
    Left = 48
    Top = 520
  end
  object OD_nabor: TOracleDataSet
    SQL.Strings = (
      'select 0 as tp, n.rowid,'
      '       m.npp,'
      '       k.k_lsk_id,'
      '       n.lsk,'
      '       k.psch,'
      '       k.reu,'
      '       tp.cd as cd_tp,'
      '       m.usl,'
      '       m.nm,'
      '       n.koeff,'
      '       n.norm,'
      '       n.org,'
      '       n.fk_tarif,'
      '       n.fk_vvod,'
      '       n.vol,'
      '       n.vol_add,'
      '       v.vvod_num,'
      '       n.kf_kpr,'
      '       n.kf_kpr_sch,'
      '       n.nrm_kpr,'
      '       n.nrm_kpr2,'
      '       n.sch_auto,'
      '       g.kod || '#39'  '#39' || g.name as org_name,'
      '       m.sptarn,'
      '       n.dt1, n.dt2'
      
        '  from  scott.nabor n join scott.kart k on k.lsk=n.lsk and decod' +
        'e(k.psch, 8, :p_closed, 9, :p_closed,1)=1'
      
        '                     left join scott.c_vvod v on n.fk_vvod = v.i' +
        'd'
      '                     join scott.sprorg g on n.org = g.kod'
      '                     join scott.v_lsk_tp tp on k.fk_tp=tp.id'
      '                     join scott.usl m on n.usl = m.usl'
      ' where k.k_lsk_id = :k_lsk_id'
      ' order by reu, npp, dt1'
      '')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A004B005F004C0053004B005F00490044000300
      00000000000000000000120000003A0050005F0043004C004F00530045004400
      030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001A00000006000000550053004C00010000000000060000004C005300
      4B000100000000000A0000004B004F0045004600460001000000000008000000
      4E004F0052004D00010000000000060000004F00520047000100000000000400
      00004E004D000100000000001000000046004B005F0054004100520049004600
      010000000000100000004F00520047005F004E0041004D004500010000000000
      0E00000046004B005F00560056004F0044000100000000001000000056005600
      4F0044005F004E0055004D000100000000000E00000056004F004C005F004100
      440044000100000000000C0000004B0046005F004B0050005200010000000000
      100000005300430048005F004100550054004F00010000000000060000005600
      4F004C000100000000000E0000004E0052004D005F004B005000520001000000
      0000060000004E00500050000100000000000400000054005000010000000000
      0C000000530050005400410052004E00010000000000140000004B0046005F00
      4B00500052005F00530043004800010000000000100000004E0052004D005F00
      4B00500052003200010000000000100000004B005F004C0053004B005F004900
      4400010000000000060000005200450055000100000000000A00000043004400
      5F00540050000100000000000800000050005300430048000100000000000600
      000044005400310001000000000006000000440054003200010000000000}
    UpdatingTable = 'scott.nabor'
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    Active = True
    BeforeClose = OD_chargeBeforeClose
    AfterScroll = OD_chargeAfterScroll
    Left = 24
    Top = 424
    object StringField1: TStringField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 3
      FieldName = 'USL'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object StringField2: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 17
      FieldName = 'NM'
      ReadOnly = True
      Size = 35
    end
    object FloatField7: TFloatField
      DisplayLabel = #1050#1086#1101#1092#1092
      DisplayWidth = 7
      FieldName = 'KOEFF'
    end
    object FloatField8: TFloatField
      DisplayLabel = #1053#1086#1088#1084#1072
      DisplayWidth = 6
      FieldName = 'NORM'
    end
    object FloatField9: TFloatField
      DisplayWidth = 10
      FieldName = 'FK_TARIF'
      Visible = False
    end
    object FloatField10: TFloatField
      FieldName = 'FK_VVOD'
    end
    object StringField5: TStringField
      DisplayWidth = 8
      FieldName = 'LSK'
      ReadOnly = True
      Required = True
      Visible = False
      Size = 8
    end
    object FloatField11: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VVOD_NUM'
    end
    object FloatField12: TFloatField
      FieldName = 'VOL_ADD'
      ReadOnly = True
    end
    object FloatField13: TFloatField
      FieldName = 'KF_KPR'
      ReadOnly = True
    end
    object FloatField14: TFloatField
      FieldName = 'SCH_AUTO'
    end
    object FloatField15: TFloatField
      FieldName = 'VOL'
      ReadOnly = True
    end
    object FloatField16: TFloatField
      FieldName = 'NRM_KPR'
      ReadOnly = True
    end
    object FloatField18: TFloatField
      FieldName = 'TP'
    end
    object FloatField19: TFloatField
      FieldName = 'SPTARN'
    end
    object FloatField20: TFloatField
      FieldName = 'KF_KPR_SCH'
      ReadOnly = True
    end
    object FloatField21: TFloatField
      FieldName = 'NRM_KPR2'
    end
    object StringField6: TStringField
      FieldName = 'REU'
      Size = 3
    end
    object StringField7: TStringField
      FieldName = 'CD_TP'
      Size = 32
    end
    object IntegerField1: TIntegerField
      FieldName = 'PSCH'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DT1'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DT2'
    end
    object OD_naborORG: TIntegerField
      FieldName = 'ORG'
      Required = True
    end
  end
  object DS_charge: TDataSource
    DataSet = OD_charge
    Left = 72
    Top = 376
  end
  object DS_nabor: TDataSource
    DataSet = OD_nabor
    Left = 72
    Top = 424
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 16
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object OD_meter: TOracleDataSet
    SQL.Strings = (
      'select t.id, u.npp, u.nm, '#11
      
        '       case when :period is null then t.n1 end as n1, -- '#1085#1077' '#1087#1088#1080#1076 +
        #1091#1084#1072#1083', '#1082#1072#1082' '#1074' '#1072#1088#1093#1080#1074#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1095'. '#11
      '       sum(x.n1) as vol'#11
      'from scott.meter t'#11
      '         join scott.usl u on t.fk_usl = u.usl'#11
      '         join scott.params p on 1 = 1'#11
      '         join scott.u_list s on s.cd = '#39'ins_vol_sch'#39#11
      
        '         left join scott.t_objxpar x on t.k_lsk_id = x.fk_k_lsk ' +
        'and x.fk_list = s.id and x.mg = coalesce(:period,p.period)'#11
      'where t.fk_klsk_obj = :k_lsk_id'#11
      
        '  and (t.dt2 >= last_day(to_date(coalesce(:period,p.period) || '#39 +
        '01'#39', '#39'YYYYMMDD'#39')) or  -- '#1083#1080#1073#1086' '#1089#1095'. '#1076#1072#1083#1100#1096#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1077#1090', '#1083#1080#1073#1086' '#1079#1072#1074#1077#1088#1096 +
        #1072#1077#1090' '#1088#1072#1073#1086#1090#1091' '#1074' '#1074#1099#1073#1088#1072#1085#1085#1086#1084' '#1087#1077#1088#1080#1086#1076#1077#11
      '      t.dt2 between'#11
      
        '      to_date(coalesce(:period,p.period) || '#39'01'#39', '#39'YYYYMMDD'#39') an' +
        'd'#11
      
        '      last_day(to_date(coalesce(:period,p.period) || '#39'01'#39', '#39'YYYY' +
        'MMDD'#39')))'#11
      'group by t.id, u.npp, u.nm, t.n1'#11
      'order by u.npp'#11
      '')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A004B005F004C0053004B005F00490044000300
      000000000000000000000E0000003A0050004500520049004F00440005000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000005000000040000004E004D00010000000000040000004E0031000100
      000000000400000049004400010000000000060000004E005000500001000000
      00000600000056004F004C00010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    RefreshOptions = [roAfterUpdate, roAllFields]
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 248
    Top = 368
    object OD_meterID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_meterNPP: TFloatField
      FieldName = 'NPP'
    end
    object OD_meterNM: TStringField
      FieldName = 'NM'
      Size = 35
    end
    object OD_meterN1: TFloatField
      FieldName = 'N1'
    end
    object OD_meterVOL: TFloatField
      FieldName = 'VOL'
    end
  end
  object DS_meter: TDataSource
    DataSet = OD_meter
    Left = 284
    Top = 368
  end
end
