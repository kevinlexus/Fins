object Form_changes_houses2: TForm_changes_houses2
  Left = 527
  Top = 540
  Caption = #1055#1077#1088#1077#1088#1072#1089#1095#1077#1090#1099
  ClientHeight = 743
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
  object cxpgcntrl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 887
    Height = 723
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 719
    ClientRectLeft = 4
    ClientRectRight = 883
    ClientRectTop = 24
    object cxTabSheet: TcxTabSheet
      Caption = #1053#1086#1074#1099#1081' '#1087#1077#1088#1077#1088#1072#1089#1095#1077#1090
      ImageIndex = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 470
        Width = 879
        Height = 225
        Align = alBottom
        TabOrder = 0
        object Label4: TLabel
          Left = 6
          Top = 200
          Width = 74
          Height = 13
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn1: TButton
          Left = 672
          Top = 88
          Width = 193
          Height = 121
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btn1Click
        end
        object GroupBox2: TGroupBox
          Left = 352
          Top = 78
          Width = 305
          Height = 115
          Caption = #1060#1080#1083#1100#1090#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object chk4: TCheckBox
            Left = 8
            Top = 91
            Width = 129
            Height = 17
            Caption = #1085#1077#1090' '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1080#1093
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object imgOpenClose: TcxImageComboBox
            Left = 10
            Top = 12
            Properties.Items = <
              item
                Description = #1055#1086' '#1074#1089#1077#1084' '#1083#1080#1094#1077#1074#1099#1084
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1058#1086#1083#1100#1082#1086' '#1087#1086' '#1079#1072#1082#1088#1099#1090#1099#1084
                Value = 1
              end
              item
                Description = #1058#1086#1083#1100#1082#1086' '#1087#1086' '#1086#1090#1082#1088#1099#1090#1099#1084' '
                Value = 2
              end>
            TabOrder = 1
            Width = 141
          end
          object imgMeter: TcxImageComboBox
            Left = 9
            Top = 37
            Properties.Items = <
              item
                Description = #1041#1077#1079' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1042' '#1090'.'#1095'. '#1087#1086' '#1089#1095#1077#1090#1095#1080#1082#1072#1084
                Value = 1
              end
              item
                Description = #1058#1086#1083#1100#1082#1086' '#1087#1086' '#1089#1095#1077#1090#1095#1080#1082#1072#1084
                Value = 2
              end>
            TabOrder = 2
            Width = 141
          end
          object imgValve: TcxImageComboBox
            Left = 162
            Top = 12
            Properties.Items = <
              item
                Description = #1055#1086' '#1074#1089#1077#1084' '#1083#1080#1094#1077#1074#1099#1084
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1057' '#1082#1088#1072#1085#1072#1084#1080' '#1080#1079' '#1089#1080#1089#1090'.'#1086#1090#1086#1087'.'
                Value = 1
              end
              item
                Description = #1041#1077#1079' '#1082#1088#1072#1085#1086#1074' '#1080#1079' '#1089#1080#1089#1090'.'#1086#1090#1086#1087'.'
                Value = 2
              end>
            TabOrder = 3
            Width = 134
          end
          object imgType: TcxImageComboBox
            Left = 10
            Top = 62
            Properties.Items = <
              item
                Description = #1054#1089#1085#1086#1074#1085#1099#1077
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077
                Value = 1
              end
              item
                Description = #1042#1089#1077
                Value = 2
              end>
            TabOrder = 4
            Width = 141
          end
          object cbbStatus: TcxLookupComboBox
            Left = 161
            Top = 38
            Properties.GridMode = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_status
            TabOrder = 5
            Width = 133
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 8
          Width = 553
          Height = 65
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1087#1086':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Label3: TLabel
            Left = 418
            Top = 42
            Width = 17
            Height = 13
            Caption = #1055#1086
          end
          object chkIsPremise: TCheckBox
            Left = 6
            Top = 16
            Width = 97
            Height = 17
            Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1077
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = chkIsPremiseClick
          end
          object chkIsLsk: TCheckBox
            Left = 224
            Top = 40
            Width = 105
            Height = 17
            Caption = #1051#1080#1094'. '#1089#1095#1077#1090' c'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = chkIsLskClick
          end
          object chkIsObjects: TCheckBox
            Left = 5
            Top = 40
            Width = 124
            Height = 17
            Hint = #1042#1099#1073#1086#1088' '#1086#1073#1098#1077#1082#1090#1086#1074
            Caption = #1042#1099#1073#1086#1088' '#1086#1073#1098#1077#1082#1090#1086#1074
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = chkIsObjectsClick
          end
          object cxtxtPremise: TcxTextEdit
            Left = 100
            Top = 14
            TabOrder = 3
            Width = 317
          end
          object cxtxtLskFrom: TcxTextEdit
            Left = 327
            Top = 38
            TabOrder = 4
            Width = 89
          end
          object chkIsAll: TCheckBox
            Left = 132
            Top = 40
            Width = 93
            Height = 17
            Caption = #1042#1077#1089#1100' '#1092#1086#1085#1076
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnClick = chkIsAllClick
          end
          object cxtxtLskTo: TcxTextEdit
            Left = 439
            Top = 38
            TabOrder = 5
            Width = 89
          end
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 72
          Width = 337
          Height = 121
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object CheckBox1: TCheckBox
            Left = 5
            Top = 64
            Width = 156
            Height = 17
            Hint = #1044#1072#1085#1085#1072#1103' '#1092#1091#1085#1082#1094#1080#1103' '#1074#1099#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1090#1086#1083#1100#1082#1086' '#1087#1086' '#1061'.'#1042'. '#1080' '#1043'.'#1042'. '#1080' '#1050#1072#1085#1072#1083#1080#1079'.'
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1091#1089#1083#1091#1075#1080' '#1089#1074'.'#1089'.'#1085'.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Visible = False
          end
          object chkIsAddUslWaste: TCheckBox
            Left = 5
            Top = 40
            Width = 244
            Height = 17
            Hint = 
              #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077' '#1087#1086' '#1080#1090#1086#1075#1091' '#1087#1077#1088#1077#1088#1072#1089#1095#1077#1090#1072' ('#1089#1085#1080#1078#1077#1085#1080#1077' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083 +
              #1100#1085#1086#1089#1090#1080')'
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1086#1076#1086#1086#1090#1074#1077#1076#1077#1085#1080#1077' '#1082' '#1061'.'#1042'. '#1043'.'#1042'.'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 1
          end
          object CheckBox2: TCheckBox
            Left = 5
            Top = 16
            Width = 284
            Height = 17
            Hint = 
              #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1074#1089#1077#1093' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072', '#1087#1088#1080' '#1074#1074#1086#1076#1077' '#1086#1088#1075#1072#1085#1080#1079#1072 +
              #1094#1080#1081' '#1076#1083#1103' '#1087#1077#1088#1077#1088#1072#1089#1095#1105#1090#1072
            Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1074#1089#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080', '#1087#1088#1080' '#1074#1099#1073#1086#1088#1077
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = chk7Click
          end
          object chkIsChargeAtEnd: TCheckBox
            Left = 141
            Top = 64
            Width = 188
            Height = 17
            Hint = 
              #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077' '#1087#1086' '#1080#1090#1086#1075#1091' '#1087#1077#1088#1077#1088#1072#1089#1095#1077#1090#1072' ('#1089#1085#1080#1078#1077#1085#1080#1077' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083 +
              #1100#1085#1086#1089#1090#1080')'
            Caption = #1055#1086' '#1086#1082#1086#1085#1095#1072#1085#1080#1102' - '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 3
            Visible = False
          end
          object chk6: TCheckBox
            Left = 6
            Top = 88
            Width = 155
            Height = 17
            Caption = #1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' '#1089#1072#1083#1100#1076#1086
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            Visible = False
          end
        end
        object GroupBox5: TGroupBox
          Left = 568
          Top = 8
          Width = 305
          Height = 73
          Caption = #1055#1077#1088#1080#1086#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object Label1: TLabel
            Left = 8
            Top = 20
            Width = 73
            Height = 13
            Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076' '#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 186
            Top = 20
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
          object cbbMgFrom: TcxLookupComboBox
            Left = 88
            Top = 13
            Properties.KeyFieldNames = 'MG'
            Properties.ListColumns = <
              item
                FieldName = 'MG1'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_mg1
            TabOrder = 0
            Width = 89
          end
          object cbbMgTo: TcxLookupComboBox
            Left = 208
            Top = 13
            Properties.KeyFieldNames = 'MG'
            Properties.ListColumns = <
              item
                FieldName = 'MG1'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_mg2
            TabOrder = 1
            Width = 89
          end
          object chk1: TCheckBox
            Left = 8
            Top = 46
            Width = 145
            Height = 17
            Hint = 
              #1042#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100' '#1074#1099#1073#1086#1088#1072' '#1087#1077#1088#1080#1086#1076#1072', '#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1087#1088#1086#1074#1077#1089#1090#1080' '#1080#1079#1084#1077#1085#1077 +
              #1085#1080#1103
            Caption = #1055#1088#1086#1074#1077#1089#1090#1080' '#1087#1077#1088#1080#1086#1076#1086#1084
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            WordWrap = True
            OnClick = chk1Click
          end
          object cbbMgProcess: TcxLookupComboBox
            Left = 208
            Top = 42
            Enabled = False
            Properties.KeyFieldNames = 'MG'
            Properties.ListColumns = <
              item
                FieldName = 'MG1'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_mg1
            TabOrder = 3
            Width = 89
          end
        end
        object cxComment: TcxTextEdit
          Left = 82
          Top = 197
          TabOrder = 5
          Width = 575
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 879
        Height = 470
        Align = alClient
        TabOrder = 1
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 877
          Height = 468
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = DS_list_choices_changes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGrid1DBTableView1USL_ID: TcxGridDBColumn
              DataBinding.FieldName = 'USL_ID'
            end
            object cxGrid1DBTableView1usl_name: TcxGridDBColumn
              DataBinding.FieldName = 'usl_name'
            end
            object cxGrid1DBTableView1ORG1_ID: TcxGridDBColumn
              Caption = #1050#1086#1076' '#1086#1088#1075
              DataBinding.FieldName = 'ORG1_ID'
            end
            object cxGrid1DBTableView1org_name1: TcxGridDBColumn
              Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              DataBinding.FieldName = 'org_name1'
            end
            object cxGrid1DBTableView1PROC1: TcxGridDBColumn
              Caption = '% '#1087#1077#1088#1077#1088#1072#1089#1095#1077#1090#1072
              DataBinding.FieldName = 'PROC1'
            end
            object cxGrid1DBTableView1CNT_DAYS: TcxGridDBColumn
              DataBinding.FieldName = 'CNT_DAYS'
              Width = 72
            end
            object cxGrid1DBTableView1ABS_SET: TcxGridDBColumn
              DataBinding.FieldName = 'ABS_SET'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077
      ImageIndex = 1
      object cxgrd1: TcxGrid
        Left = 0
        Top = 0
        Width = 879
        Height = 695
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_c_change_docs
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxgrdbtblvwGrid1DBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Width = 58
          end
          object cxgrdbtblvwGrid1DBTableView1DTEK: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DTEK'
            Width = 55
          end
          object cxgrdbtblvwGrid1DBTableView1TS: TcxGridDBColumn
            Caption = #1044#1072#1090#1072'-'#1074#1088#1077#1084#1103' '#1087#1088#1086#1074#1086#1076#1082#1080
            DataBinding.FieldName = 'TS'
            Width = 120
          end
          object cxgrdbtblvwGrid1DBTableView1TEXT: TcxGridDBColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'TEXT'
            Width = 351
          end
          object cxgrdbtblvwGrid1DBTableView1MGCHANGE: TcxGridDBColumn
            Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'MGCHANGE'
            Width = 67
          end
          object cxgrdbtblvwGrid1DBTableView1MG2: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076#1086#1084
            DataBinding.FieldName = 'MG2'
            Width = 55
          end
          object cxgrdbtblvwGrid1DBTableView1USER_NAME: TcxGridDBColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'USER_NAME'
            Width = 62
          end
          object cxgrdbtblvwGrid1DBTableView1CD_TP: TcxGridDBColumn
            Caption = #1058#1080#1087' (CD_TP)'
            DataBinding.FieldName = 'CD_TP'
            Width = 50
          end
        end
        object cxgrd1Level1: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView1
        end
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 723
    Width = 887
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container1
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    object dxStatusBar1Container1: TdxStatusBarContainerControl
      Left = 2
      Top = 4
      Width = 867
      Height = 14
      object cxProgressBar1: TcxProgressBar
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Width = 867
      end
    end
  end
  object OD_list_choices_changes: TOracleDataSet
    SQL.Strings = (
      'select t.rowid, t.*, decode(t.type,1,'#39#1050#1054#1052#1055#39', null) as type_name'
      'from scott.list_choices_changes t, scott.usl u'
      'where t.usl_id=u.usl and nvl(u.typ_usl,0)=0'
      'order by u.npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000D0000000C000000550053004C005F00490044000100000000000E00
      00004F005200470031005F00490044000100000000000A000000500052004F00
      430031000100000000000E0000004F005200470032005F004900440001000000
      00000A000000500052004F00430032000100000000000E000000410042005300
      5F00530045005400010000000000040000004D00470001000000000008000000
      54005900500045000100000000001200000054005900500045005F004E004100
      4D0045000100000000000E00000046004F0052005F00550053004C0001000000
      00001000000043004E0054005F00440041005900530001000000000012000000
      43004E0054005F00440041005900530032000100000000000400000049004400
      010000000000}
    LockingMode = lmNone
    UpdatingTable = 'scott.list_choices_changes'
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    Left = 40
    Top = 88
    object OD_list_choices_changesUSL_ID: TStringField
      DisplayLabel = #1050#1086#1076' '#1091#1089#1083'.'
      DisplayWidth = 8
      FieldName = 'USL_ID'
      ReadOnly = True
      Size = 3
    end
    object OD_list_choices_changesusl_name: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'usl_name'
      LookupDataSet = OD_usl
      LookupKeyFields = 'USL'
      LookupResultField = 'NM'
      KeyFields = 'USL_ID'
      Lookup = True
    end
    object OD_list_choices_changesORG1_ID: TFloatField
      DisplayLabel = #1050#1086#1076' '#1086#1088#1075'1'
      DisplayWidth = 10
      FieldName = 'ORG1_ID'
    end
    object OD_list_choices_changesorg_name1: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'1'
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'org_name1'
      LookupDataSet = OD_sprorg
      LookupKeyFields = 'KOD'
      LookupResultField = 'NAME'
      KeyFields = 'ORG1_ID'
      Lookup = True
    end
    object OD_list_choices_changesPROC1: TFloatField
      DisplayLabel = #1044#1086#1083#1103' 1, %'
      DisplayWidth = 10
      FieldName = 'PROC1'
    end
    object OD_list_choices_changesORG2_ID: TFloatField
      DisplayLabel = #1050#1086#1076' '#1086#1088#1075'2'
      DisplayWidth = 8
      FieldName = 'ORG2_ID'
    end
    object OD_list_choices_changesorg_name2: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'2'
      DisplayWidth = 21
      FieldKind = fkLookup
      FieldName = 'org_name2'
      LookupDataSet = OD_sprorg2
      LookupKeyFields = 'KOD'
      LookupResultField = 'NAME'
      KeyFields = 'ORG2_ID'
      Lookup = True
    end
    object OD_list_choices_changesPROC2: TFloatField
      DisplayLabel = #1044#1086#1083#1103' 2, %'
      DisplayWidth = 10
      FieldName = 'PROC2'
    end
    object OD_list_choices_changesABS_SET: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072', '#1056#1091#1073'.'
      DisplayWidth = 10
      FieldName = 'ABS_SET'
    end
    object OD_list_choices_changesTYPE_NAME: TStringField
      DisplayLabel = #1042#1099#1087#1086#1083#1085'.'
      FieldName = 'TYPE_NAME'
      ReadOnly = True
      Size = 4
    end
    object OD_list_choices_changesCNT_DAYS: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081
      FieldName = 'CNT_DAYS'
    end
    object OD_list_choices_changesCNT_DAYS2: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081' 2'
      FieldName = 'CNT_DAYS2'
    end
  end
  object DS_list_choices_changes: TDataSource
    DataSet = OD_list_choices_changes
    Left = 72
    Top = 88
  end
  object OD_sprorg: TOracleDataSet
    SQL.Strings = (
      '/*select t.id as kod, to_char(t.id)||'#39' '#39'||t.name as name '
      'from scott.t_org t, scott.t_org_tp tp'
      
        'where tp.id=t.fk_orgtp and (:var_=1 and tp.cd='#39#1055#1086#1089#1090#1072#1074#1097#1080#1082#39' or :va' +
        'r_=0)'
      'order by t.name'
      '*/'
      ''
      '--'#1074#1099#1073#1080#1088#1072#1077#1084' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1090#1086#1083#1100#1082#1086' '#1087#1077#1088#1074#1086#1075#1086' '#1091#1088#1086#1074#1085#1103
      'select id as kod, to_char(id)||'#39' '#39'||name as name from ('
      
        '  select level as lvl, t.id, t.name from scott.t_org t, scott.t_' +
        'org_tp tp'
      
        '  where tp.id=t.fk_orgtp and (:var_=1 and tp.cd='#39#1055#1086#1089#1090#1072#1074#1097#1080#1082#39' or :' +
        'var_=0)'
      '  connect by prior t.id=t.parent_id2'
      '  start with t.parent_id2 is null'
      '  order by level'
      ') where lvl=1')
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A005600410052005F0003000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000060000004B00
      4F004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 40
    Top = 120
  end
  object DS_sprorg: TDataSource
    DataSet = OD_sprorg
    Left = 72
    Top = 120
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select t.usl, t.nm'
      'from scott.usl t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000006000000550053004C00010000000000040000004E004D00
      010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 104
    Top = 120
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 136
    Top = 120
  end
  object OD_sprorg2: TOracleDataSet
    SQL.Strings = (
      '/*select t.id as kod, to_char(t.id)||'#39' '#39'||t.name as name '
      'from scott.t_org t, scott.t_org_tp tp'
      
        'where tp.id=t.fk_orgtp and (:var_=1 and tp.cd='#39#1055#1086#1089#1090#1072#1074#1097#1080#1082#39' or :va' +
        'r_=0)'
      'order by t.name'
      '*/'
      ''
      '--'#1074#1099#1073#1080#1088#1072#1077#1084' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1090#1086#1083#1100#1082#1086' '#1087#1077#1088#1074#1086#1075#1086' '#1091#1088#1086#1074#1085#1103
      'select id as kod, to_char(id)||'#39' '#39'||name as name from ('
      
        '  select level as lvl, t.id, t.name from scott.t_org t, scott.t_' +
        'org_tp tp'
      
        '  where tp.id=t.fk_orgtp and (:var_=1 and tp.cd='#39#1055#1086#1089#1090#1072#1074#1097#1080#1082#39' or :' +
        'var_=0)'
      '  connect by prior t.id=t.parent_id2'
      '  start with t.parent_id2 is null'
      '  order by level'
      ') where lvl=1')
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A005600410052005F0003000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000060000004B004F004400010000000000080000004E004100
      4D004500010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 40
    Top = 152
  end
  object DS_sprorg2: TDataSource
    DataSet = OD_sprorg2
    Left = 72
    Top = 152
  end
  object OD_mg1: TOracleDataSet
    SQL.Strings = (
      'select to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39') as mg,'
      'to_char(add_months(sysdate, a.rn),'#39'YYYY-MM'#39') as mg1, '
      'substr(p.period,1,4)||'#39'-'#39'||substr(p.period,5,2) as period'
      ' from '
      '(select -1 * rownum as rn from all_objects where rownum <500'
      'union all'
      'select rownum-1 as rn from all_objects where rownum <500'
      ') a, scott.params p'
      'where to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39')>=p.period_back'
      'and to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39')<=p.period_forwrd'
      'order by mg')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004D004700010000000000060000004D0047003100
      0100000000000C00000050004500520049004F004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 280
    Top = 120
  end
  object DS_mg1: TDataSource
    DataSet = OD_mg1
    Left = 312
    Top = 120
  end
  object OD_report: TOracleDataSet
    SQL.Strings = (
      'select min(c.lsk) as lsk, max(c.lsk) as lsk_end, d.dtek, d.text,'
      '       s.name || '#39', '#39' || ltrim(k.nd, '#39'0'#39') ||'
      '        decode(:var_, 1, '#39'-'#39' || ltrim(k.kw, '#39'0'#39'), null) as adr,'
      
        '       substr(d.mgchange, 1, 4) || '#39'-'#39' || substr(d.mgchange, 5, ' +
        '2) as mgchange,'
      
        '       max(c.proc) as proc, trim(u.nm) as usl_name, sum(c.summa)' +
        ' as summa, sum(c.vol) as vol,'
      '       max(c.cnt_days) as cnt_days'
      
        '  from scott.kart k, scott.spul s, scott.c_change_docs d, scott.' +
        'c_change c, scott.usl u'
      ' where k.lsk = c.lsk and d.id=:doc_id_'
      '   and k.kul = s.id'
      '   and d.id = c.doc_id'
      '   and c.usl = u.usl'
      ' group by s.name || '#39', '#39' || ltrim(k.nd, '#39'0'#39') ||'
      
        '        decode(:var_, 1, '#39'-'#39' || ltrim(k.kw, '#39'0'#39'), null),  d.dtek' +
        ', d.text,'
      
        '          substr(d.mgchange, 1, 4) || '#39'-'#39' || substr(d.mgchange, ' +
        '5, 2),'
      '          trim(u.nm)'
      'order by lsk')
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0044004F0043005F00490044005F0003000000
      00000000000000000A0000003A005600410052005F0003000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      050000000B000000060000004C0053004B000100000000000E0000004C005300
      4B005F0045004E00440001000000000006000000410044005200010000000000
      100000004D0047004300480041004E0047004500010000000000080000005000
      52004F00430001000000000010000000550053004C005F004E0041004D004500
      0100000000000A000000530055004D004D004100010000000000100000004300
      4E0054005F004400410059005300010000000000080000004400540045004B00
      0100000000000800000054004500580054000100000000000600000056004F00
      4C00010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 168
    Top = 56
  end
  object DS_report: TDataSource
    DataSet = OD_report
    Left = 200
    Top = 56
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK=LSK'
      'LSK_END=LSK_END'
      'DTEK=DTEK'
      'TEXT=TEXT'
      'ADR=ADR'
      'MGCHANGE=MGCHANGE'
      'PROC=PROC'
      'USL_NAME=USL_NAME'
      'SUMMA=SUMMA'
      'VOL=VOL'
      'CNT_DAYS=CNT_DAYS')
    DataSet = OD_report
    BCDToCurrency = False
    Left = 232
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40035.457003796300000000
    ReportOptions.LastChange = 44803.587807627310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1087#1088#1072#1074#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1086#1084' '#1087#1077#1088#1077#1088#1072#1089#1095#1105#1090#1077' '#1079#1072'  [frxDBDataset1."DTEK"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1042#1099#1087#1086#1083#1085#1077#1085#1086' '#1089#1086#1075#1083#1072#1089#1085#1086': [frxDBDataset1."TEXT"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1055#1077#1088#1080#1086#1076' '#1087#1077#1088#1077#1088#1072#1089#1095#1077#1090#1072': [frxDBDataset1."MGCHANGE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LSK"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LSK_END"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ADR"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."USL_NAME"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PROC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CNT_DAYS"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 0.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SUMMA"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VOL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Frame.Typ = []
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1085#1072#1095'. '#1083'.'#1089'.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1082#1086#1085'. '#1083'.'#1089'.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 3.779529999999994000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1076#1088#1077#1089)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 3.779529999999994000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1089#1083#1091#1075#1072)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '%'
            #1080#1079#1084'.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'.'#1074#1086
            #1076#1085#1077#1081)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 4.559060000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1098#1077#1084)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 7.559059999999988000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 8.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."SUMMA">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.779530000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object OD_status: TOracleDataSet
    SQL.Strings = (
      'select 0 as tp, 0 as id, '#39#1055#1086' '#1074#1089#1077#1084#39' as name from dual t'
      'union all'
      'select 1 as tp, t.id, t.name from scott.status t'
      'order by tp, name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000030000000400000049004400010000000000080000004E0041004D00
      45000100000000000400000054005000010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 104
    Top = 200
  end
  object DS_status: TDataSource
    DataSet = OD_status
    Left = 136
    Top = 200
  end
  object OD_c_change_docs: TOracleDataSet
    SQL.Strings = (
      
        'select t.*, s.name as user_name, t.rowid from scott.c_change_doc' +
        's t left join scott.t_user s on t.user_id=s.id'
      'order by t.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000400000049004400010000000000100000004D0047004300
      480041004E0047004500010000000000080000004400540045004B0001000000
      000004000000540053000100000000000E00000055005300450052005F004900
      44000100000000000800000054004500580054000100000000000A0000004300
      44005F0054005000010000000000060000004D00470032000100000000001200
      000055005300450052005F004E0041004D004500010000000000140000005000
      4100520041004D005F004A0053004F004E00010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 176
    Top = 120
  end
  object DS_c_change_docs: TDataSource
    DataSet = OD_c_change_docs
    Left = 208
    Top = 120
  end
  object DS_mg2: TDataSource
    DataSet = OD_mg2
    Left = 312
    Top = 168
  end
  object OD_mg2: TOracleDataSet
    SQL.Strings = (
      'select to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39') as mg,'
      'to_char(add_months(sysdate, a.rn),'#39'YYYY-MM'#39') as mg1, '
      'substr(p.period,1,4)||'#39'-'#39'||substr(p.period,5,2) as period'
      ' from '
      '(select -1 * rownum as rn from all_objects where rownum <500'
      'union all'
      'select rownum-1 as rn from all_objects where rownum <500'
      ') a, scott.params p'
      'where to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39')>=p.period_back'
      'and to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39')<=p.period_forwrd'
      'order by mg')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004D004700010000000000060000004D0047003100
      0100000000000C00000050004500520049004F004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 280
    Top = 168
  end
end
