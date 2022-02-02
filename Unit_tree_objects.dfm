object Form_tree_objects: TForm_tree_objects
  Left = 396
  Top = 440
  Align = alLeft
  ClientHeight = 850
  ClientWidth = 334
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
 
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnEndDock = FormEndDock
  OnPaint = FormPaint
  OnStartDock = FormStartDock
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 453
    Width = 334
    Height = 6
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 335
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 334
    Height = 433
    Align = alTop
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 41
      Width = 332
      Height = 40
      Align = alBottom
      TabOrder = 0
      object Label2: TLabel
        Left = 134
        Top = 15
        Width = 21
        Height = 16
        Caption = #1055#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 2
        Top = 17
        Width = 11
        Height = 16
        Caption = #1057
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 160
        Top = 9
        Width = 115
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'MG'
        ListField = 'MG1'
        ListSource = DM_Olap.DS_mg2
        ParentFont = False
        TabOrder = 1
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 19
        Top = 9
        Width = 115
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'MG'
        ListField = 'MG1'
        ListSource = DM_Olap.DS_mg1
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 81
      Width = 332
      Height = 78
      Align = alBottom
      TabOrder = 1
      object Label7: TLabel
        Left = 6
        Top = 36
        Width = 20
        Height = 16
        Caption = #1059#1050
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 6
        Top = 60
        Width = 20
        Height = 16
        Caption = #1059#1083
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 148
        Top = 60
        Width = 30
        Height = 16
        Caption = #1044#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CheckBox5: TCheckBox
        Left = 6
        Top = 12
        Width = 107
        Height = 15
        Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1090#1077#1082#1091#1097#1077#1084#1091' '#1087#1077#1088#1080#1086#1076#1091
        Caption = #1058#1077#1082#1091#1097'.'#1080#1085#1092'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = CheckBox5Click
      end
      object Edit1: TEdit
        Left = 25
        Top = 28
        Width = 112
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 25
        Top = 52
        Width = 112
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 178
        Top = 52
        Width = 44
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 118
        Top = 12
        Width = 219
        Height = 15
        Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1082#1088#1099#1090#1099#1081' '#1092#1086#1085#1076
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1082#1088#1099#1090#1099#1081' '#1092#1086#1085#1076
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 4
        OnClick = CheckBox1Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 282
      Width = 332
      Height = 150
      Align = alBottom
      TabOrder = 5
      object cxGrid1: TcxGrid
        Left = 2
        Top = 15
        Width = 328
        Height = 133
        Align = alClient
        PopupMenu = Form_kart.PopupMenu3
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DM_Olap.DS_spr_params
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          object cxGrid1DBTableView1GR_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'GR_NAME'
            Width = 109
          end
          object cxGrid1DBTableView1PARNAME: TcxGridDBColumn
            DataBinding.FieldName = 'PARNAME'
            Width = 103
          end
          object cxGrid1DBTableView1VAL: TcxGridDBColumn
            DataBinding.FieldName = 'VAL'
            Width = 103
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object GroupBox5: TGroupBox
      Left = 1
      Top = 241
      Width = 332
      Height = 41
      Align = alBottom
      Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      object cbbDet: TcxLookupComboBox
        Left = 8
        Top = 14
        Properties.GridMode = True
        Properties.KeyFieldNames = 'LEVEL_ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM_Olap.DS_level
        TabOrder = 0
        Width = 321
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 200
      Width = 332
      Height = 41
      Align = alBottom
      Caption = #1054#1087#1077#1088#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      object cbbOper: TcxLookupComboBox
        Left = 8
        Top = 14
        Properties.GridMode = True
        Properties.KeyFieldNames = 'OPER'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM_Olap.DS_oper
        TabOrder = 0
        Width = 321
      end
    end
    object GroupBox6: TGroupBox
      Left = 1
      Top = 159
      Width = 332
      Height = 41
      Align = alBottom
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      object cbbOrg: TcxLookupComboBox
        Left = 8
        Top = 14
        Properties.GridMode = True
        Properties.KeyFieldNames = 'KOD'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM_Olap.DS_org
        TabOrder = 0
        Width = 321
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 821
    Width = 334
    Height = 29
    Align = alBottom
    ButtonHeight = 21
    ButtonWidth = 142
    Caption = 'ToolBar1'
    TabOrder = 2
    DesignSize = (
      334
      29)
    object Button3: TButton
      Left = 0
      Top = 0
      Width = 137
      Height = 21
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 137
      Top = 0
      Width = 137
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 433
    Width = 334
    Height = 20
    Align = alTop
    TabOrder = 3
    object cxm1: TcxMemo
      Left = 1
      Top = 1
      Align = alClient
      ParentFont = False
      ParentShowHint = False
      Properties.ReadOnly = True
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -5
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 18
      Width = 332
    end
  end
  object cxDBTreeList1: TcxDBTreeList
    Left = 0
    Top = 459
    Width = 334
    Height = 362
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = DM_Olap.DS_tree_objects
    DataController.ParentField = 'MAIN_ID'
    DataController.KeyField = 'ID'
    Navigator.Buttons.CustomButtons = <>
    Navigator.Buttons.Filter.Visible = False
    Navigator.Visible = True
    OptionsBehavior.CopyCaptionsToClipboard = False
    OptionsView.Headers = False
    PopupMenu = PopupMenu1
    RootValue = 0
    TabOrder = 4
    object cxDBTreeList1ID: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'ID'
      Width = 100
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1NAME: TcxDBTreeListColumn
      DataBinding.FieldName = 'NAME'
      Options.Editing = False
      Width = 237
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1SEL: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ValueChecked = 0
      Properties.ValueUnchecked = '1'
      Properties.OnEditValueChanged = cxDBTreeList1SELPropertiesEditValueChanged
      DataBinding.FieldName = 'SEL'
      Width = 32
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1EXIST1: TcxDBTreeListColumn
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Images = Form_Main.ImageListTiny
      Properties.Items = <
        item
          ImageIndex = 0
          Value = 0
        end
        item
          ImageIndex = 1
          Value = 1
        end>
      Properties.ShowDescriptions = False
      Properties.ValidateOnEnter = False
      DataBinding.FieldName = 'EXIST1'
      Options.EditAutoHeight = ieahNone
      Options.Sizing = False
      Options.VertSizing = False
      Options.Editing = False
      Width = 30
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1OBJ_LEVEL: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'OBJ_LEVEL'
      Width = 100
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object Panel2: TPanel
    Left = 96
    Top = 472
    Width = 105
    Height = 33
    Caption = #1046#1076#1080#1090#1077
    TabOrder = 1
    Visible = False
  end
  object dlgOpen1: TOpenDialog
    InitialDir = 'c:\temp'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofNoNetworkButton, ofEnableSizing]
    Left = 264
    Top = 24
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 265
    Top = 100
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 608
    object N1: TMenuItem
      Caption = #1057#1085#1103#1090#1100' '#1086#1090#1084#1077#1090#1082#1080
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1077' '#1101#1083#1077#1084#1077#1085#1090#1099
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1077' '#1101#1083#1077#1084#1077#1085#1090#1099
      OnClick = N3Click
    end
  end
end
