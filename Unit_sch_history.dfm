object Form_sch_history: TForm_sch_history
  Left = 1127
  Top = 239
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1074#1074#1086#1076#1072' '#1087#1086#1082#1072#1079#1072#1085#1080#1081' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
  ClientHeight = 331
  ClientWidth = 1042
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 1042
    Height = 331
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1048#1055#1059
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 529
        Height = 199
        Align = alLeft
        Caption = 'Panel1'
        TabOrder = 0
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 527
          Height = 197
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            Navigator.Buttons.OnButtonClick = cxGrid2DBTableView1NavigatorButtonsButtonClick
            Navigator.Buttons.CustomButtons = <
              item
                Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077
                ImageIndex = 1
              end>
            Navigator.Buttons.Images = Form_Main.ImageListTiny
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = DS_meter
            DataController.KeyFieldNames = 'id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.NavigatorHints = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGrid2DBTableView1NAME: TcxGridDBColumn
              Caption = #8470' '#1087'.'#1087'.'
              DataBinding.FieldName = 'NPP'
              Width = 37
            end
            object cxGrid2DBTableView1NM: TcxGridDBColumn
              Caption = #1059#1089#1083#1091#1075#1072
              DataBinding.FieldName = 'NM'
              Options.Editing = False
              Width = 71
            end
            object cxGrid2DBTableView1N1: TcxGridDBColumn
              Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1077
              DataBinding.FieldName = 'N1'
              Options.Editing = False
            end
            object cxGrid2DBTableView1ACT: TcxGridDBColumn
              Caption = #1040#1082#1090#1080#1074#1085#1099#1081
              DataBinding.FieldName = 'ACT'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Options.Editing = False
              Width = 49
            end
            object cxGrid2DBTableView1DT1: TcxGridDBColumn
              Caption = #1053#1072#1095#1072#1083#1086
              DataBinding.FieldName = 'DT1'
              Width = 65
            end
            object cxGrid2DBTableView1DT2: TcxGridDBColumn
              Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
              DataBinding.FieldName = 'DT2'
              Width = 65
            end
            object cxGrid2DBTableView1GIS_CONN: TcxGridDBColumn
              Caption = #1043#1048#1057' '#1055#1088#1080#1074#1103#1079#1082#1072
              DataBinding.FieldName = 'K_LSK_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FK_KLSK_OBJ'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DS_eolink_meter
              Properties.OnPopup = cxGrid2DBTableView1GIS_CONNPropertiesPopup
              Width = 96
            end
            object cxGrid2DBTableView1GIS_CONN_TP: TcxGridDBColumn
              Caption = #1043#1048#1057' '#1087#1086#1082#1072#1079'.'
              DataBinding.FieldName = 'GIS_CONN_TP'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.ClearKey = 16449
              Properties.DefaultImageIndex = 0
              Properties.Items = <
                item
                  Description = '3 - '#1042' '#1086#1073#1077' '#1089#1090#1086#1088#1086#1085#1099
                  ImageIndex = 0
                  Value = 3
                end
                item
                  Description = '1 - '#1055#1088#1080#1085#1080#1084#1072#1090#1100
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = '2 - '#1054#1090#1087#1088#1072#1074#1083#1103#1090#1100
                  Value = 2
                end
                item
                  Description = '0 - '#1053#1077#1090' '#1086#1073#1084#1077#1085#1072
                  Value = 0
                end>
              HeaderHint = #1055#1088#1080#1079#1085#1072#1082' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1087#1086#1082#1072#1079#1072#1085#1080#1081' '#1074' '#1043#1048#1057' '#1046#1050#1061
              MinWidth = 5
              Width = 50
            end
            object cxGrid2DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Width = 54
            end
            object cxGrid2DBTableView1KLSK: TcxGridDBColumn
              DataBinding.FieldName = 'K_LSK_ID'
              Width = 51
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object Panel2: TPanel
        Left = 546
        Top = 0
        Width = 488
        Height = 199
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object cxGrid3: TcxGrid
          Left = 1
          Top = 1
          Width = 486
          Height = 197
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Hint = 'REMOVE THIS BUTTON!'
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DS_t_objxpar
            DataController.KeyFieldNames = 'id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems.OnSummary = cxGridDBTableView2DataControllerSummaryFooterSummaryItemsSummary
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #1056#1072#1089#1093#1086#1076':'
                Kind = skCount
                Column = cxGridDBTableView2OPER_NAME
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.NavigatorHints = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGridDBTableView2OPER_NAME: TcxGridDBColumn
              Caption = #1044#1077#1081#1089#1090#1074#1080#1077
              DataBinding.FieldName = 'OPER_NAME'
              Width = 124
            end
            object cxGridDBTableView2N1: TcxGridDBColumn
              Caption = #1047#1085#1072#1095#1077#1085#1080#1077
              DataBinding.FieldName = 'N1'
              Width = 70
            end
            object cxGridDBTableView2TS: TcxGridDBColumn
              Caption = #1044#1072#1090#1072'-'#1074#1088#1077#1084#1103
              DataBinding.FieldName = 'TS'
              Width = 91
            end
            object cxGridDBTableView2USER_NAME: TcxGridDBColumn
              Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
              DataBinding.FieldName = 'USER_NAME'
              Width = 56
            end
            object cxGridDBTableView2STATUS_GIS: TcxGridDBColumn
              Caption = #1057#1090#1072#1090#1091#1089' '#1043#1048#1057
              DataBinding.FieldName = 'STATUS_GIS'
              Width = 70
            end
            object cxGridDBTableView2PERIOD: TcxGridDBColumn
              Caption = #1055#1077#1088#1080#1086#1076
              DataBinding.FieldName = 'PERIOD'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 199
        Width = 1034
        Height = 104
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 2
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 1032
          Height = 102
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 98
          ClientRectLeft = 4
          ClientRectRight = 1028
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = #1042#1085#1077#1089#1090#1080' '#1087#1086#1082#1072#1079#1072#1085#1080#1077
            ImageIndex = 0
            object Panel4: TPanel
              Left = 933
              Top = 0
              Width = 91
              Height = 74
              Align = alRight
              TabOrder = 1
              DesignSize = (
                91
                74)
              object Button1: TButton
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Anchors = [akTop, akRight]
                Caption = #1042#1085#1077#1089#1090#1080
                TabOrder = 0
                OnClick = Button1Click
              end
              object Button3: TButton
                Left = 8
                Top = 40
                Width = 75
                Height = 25
                Anchors = [akTop, akRight]
                Cancel = True
                Caption = #1047#1072#1082#1088#1099#1090#1100
                TabOrder = 1
                OnClick = Button3Click
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 587
              Height = 74
              Align = alCustom
              TabOrder = 0
              object Label1: TLabel
                Left = 447
                Top = 52
                Width = 122
                Height = 13
                Caption = #1057#1095#1077#1090#1095#1080#1082' '#1085#1077#1080#1089#1087#1088#1072#1074#1077#1085'!'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Visible = False
              end
              object cxLabel1: TcxLabel
                Left = 2
                Top = 12
                Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1087'.'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
              end
              object CheckBox1: TCheckBox
                Left = 16
                Top = 40
                Width = 169
                Height = 17
                Hint = 
                  #1042#1082#1083#1102#1095#1080#1090#1100' '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1087#1086#1082#1072#1079#1072#1085#1080#1103', '#1079#1072#1090#1077#1084' '#1085#1072#1078#1072#1090#1100' "' +
                  #1042#1085#1077#1089#1090#1080'"'
                Caption = #1056#1077#1076#1072#1082#1090' '#1087#1086#1089#1083#1077#1076#1085#1077#1077' '#1087#1086#1082#1072#1079#1072#1085#1080#1077
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                OnClick = CheckBox1Click
              end
              object cxLabel2: TcxLabel
                Left = 194
                Top = 12
                Caption = #1053#1086#1074#1086#1077' '#1087#1086#1082#1072#1079#1072#1085#1080#1077
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
              end
              object cxLabel3: TcxLabel
                Left = 418
                Top = 12
                Caption = #1056#1072#1089#1093#1086#1076
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
              end
              object cxLastVal: TcxDBMaskEdit
                Left = 91
                Top = 8
                DataBinding.DataField = 'N1'
                DataBinding.DataSource = DS_meter
                ParentFont = False
                Properties.MaskKind = emkRegExprEx
                Properties.EditMask = '\-?\d{1,8}\.?\d{0,5}'
                Properties.ReadOnly = True
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                OnKeyPress = cxLastValKeyPress
                Width = 99
              end
              object cxNewVal: TcxMaskEdit
                Left = 307
                Top = 8
                ParentFont = False
                Properties.MaskKind = emkRegExprEx
                Properties.EditMask = '\-?\d{1,8}\.?\d{0,5}'
                Properties.OnChange = cxNewValPropertiesChange
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                OnKeyPress = cxNewValKeyPress
                Width = 99
              end
              object cxVal: TcxMaskEdit
                Left = 475
                Top = 8
                ParentFont = False
                Properties.MaskKind = emkRegExprEx
                Properties.EditMask = '\-?\d{1,8}\.?\d{0,5}'
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 2
                OnKeyPress = cxValKeyPress
                Width = 99
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1048#1055#1059
            ImageIndex = 1
            DesignSize = (
              1024
              74)
            object cxTextEdit1: TcxTextEdit
              Left = 104
              Top = 8
              TabOrder = 0
              Text = '1'
              Width = 121
            end
            object cxLabel4: TcxLabel
              Left = 8
              Top = 12
              Caption = #8470' '#1087'.'#1087'.'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object cxLabel5: TcxLabel
              Left = 224
              Top = 12
              Caption = #1059#1089#1083#1091#1075#1072
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object cxLabel6: TcxLabel
              Left = 424
              Top = 12
              Caption = #1055#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099', '#1089
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object cxLabel7: TcxLabel
              Left = 640
              Top = 12
              Caption = #1087#1086
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object Button2: TButton
              Left = 942
              Top = 24
              Width = 75
              Height = 25
              Anchors = [akTop, akRight]
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              TabOrder = 5
              OnClick = Button2Click
            end
            object cxDateEdit1: TcxDateEdit
              Left = 536
              Top = 8
              EditValue = 0d
              TabOrder = 6
              Width = 97
            end
            object cxDateEdit2: TcxDateEdit
              Left = 664
              Top = 8
              EditValue = 54789d
              TabOrder = 7
              Width = 97
            end
            object cxLookupComboBox1: TcxLookupComboBox
              Left = 272
              Top = 8
              Properties.KeyFieldNames = 'USL'
              Properties.ListColumns = <
                item
                  FieldName = 'NM'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DS_usl
              TabOrder = 8
              Width = 145
            end
            object cxLabel8: TcxLabel
              Left = 8
              Top = 37
              Caption = #1053#1072#1095#1072#1083#1100#1085#1086#1077' '#1087#1086#1082#1072#1079#1072#1085#1080#1077
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
            object cxStartVal: TcxMaskEdit
              Left = 143
              Top = 37
              Properties.MaskKind = emkRegExprEx
              Properties.EditMask = '\-?\d{1,8}\.?\d{0,5}'
              TabOrder = 10
              Width = 98
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 529
        Top = 0
        Width = 17
        Height = 199
        Control = Panel1
      end
    end
    object ts1: TTabSheet
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1089#1095'.'#1087#1086' '#1089#1090#1072#1088#1086#1084#1091
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1034
        Height = 303
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_data
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1050#1083#1080#1082' '#1079#1076#1077#1089#1100' '#1076#1083#1103' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1092#1080#1083#1100#1090#1088#1072
          FilterRow.Visible = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          object cxGridDBTableView1NAME_USL: TcxGridDBColumn
            Caption = #1059#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'NAME_USL'
          end
          object cxGridDBTableView1NAME_ACT: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1074#1074#1086#1076#1072
            DataBinding.FieldName = 'NAME_ACT'
            Width = 167
          end
          object cxGridDBTableView1NAME_TP: TcxGridDBColumn
            Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1074#1074#1086#1076#1072
            DataBinding.FieldName = 'NAME_TP'
          end
          object cxGridDBTableView1NAME_USER: TcxGridDBColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'NAME_USER'
            Width = 118
          end
          object cxGridDBTableView1VOL: TcxGridDBColumn
            Caption = #1056#1072#1089#1093#1086#1076'/'#1055#1086#1082#1072#1079#1072#1085#1080#1077
            DataBinding.FieldName = 'VOL'
          end
          object cxGridDBTableView1TS: TcxGridDBColumn
            Caption = #1044#1072#1090#1072'-'#1074#1088#1077#1084#1103
            DataBinding.FieldName = 'TS'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'select '
      
        '      decode(t.tp, 0, '#39#1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076#39', 1, '#39#1040#1074#1090#1086#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077#39', 2, '#39#1054#1090 +
        #1084#1077#1085#1072' '#1072#1074#1090#1086#1085#1072#1095'.'#39') AS name_tp,'
      '      s.name name_act,'
      '      t.ts, us.name as name_user,'
      '      t.n1 as vol,'
      '      u.nm as name_usl'
      
        '  from scott.t_objxpar t, scott.u_list s, scott.t_user us, scott' +
        '.u_listtp tp, scott.usl u'
      ' where fk_lsk = :lsk'
      '   and t.fk_list = s.id'
      '   and t.fk_user = us.id(+)'
      
        '   and t.tp <> 3 --'#1082#1088#1086#1084#1077' '#1086#1095#1080#1089#1090#1082#1080' '#1089#1095#1077#1090#1095#1080#1082#1086#1074' '#1074' '#1087#1077#1088#1077#1093#1086#1076' - '#1079#1072#1075#1088#1103#1079#1085#1103#1077 +
        #1090' '#1074#1080#1076' '#1080#1085#1072#1095#1077
      '   and s.fk_listtp=tp.id '
      '   and tp.cd='#39#1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1083#1080#1094'.'#1089#1095#1077#1090#1072#39
      '   and t.fk_usl=u.usl'
      ' order by t.id desc')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00050000000900000020202020
      202020200000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000060000000E0000004E0041004D0045005F0054005000010000000000
      0400000054005300010000000000120000004E0041004D0045005F0055005300
      45005200010000000000100000004E0041004D0045005F004100430054000100
      00000000100000004E0041004D0045005F00550053004C000100000000000600
      000056004F004C00010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 400
    Top = 80
  end
  object OD_t_objxpar: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.n1, t.ts, '
      
        '  u.name as oper_name, s.name as user_name, substr(t.mg,5,2)||'#39'.' +
        #39'||substr(t.mg,1,4) as period,'
      
        ' decode(t.tp,0, '#39#1088#1091#1095#1085'.'#1074#1074#1086#1076#39', 1, '#39#1072#1074#1090#1086#1085#1072#1095'.'#39', 2, '#39#1086#1090#1084#1077#1085#1072' '#1072#1074#1090#1086#1085#1072#1095'.'#39 +
        ', 3, '#39#1087#1077#1088#1077#1093#1086#1076#39', 4, '#39#1082#1086#1088#1088#1077#1082#1094'.'#1085#1077#1080#1089#1087#1088'.'#39') as comm,'
      
        ' decode(t.status,0, '#39#1074#1085#1077#1089#1077#1085#1086#39', 1, '#39#1086#1090#1087#1088#1072#1074#1082#1072' '#1074' '#1043#1048#1057#39', 2, '#39#1079#1072#1075#1088#1091#1078#1077#1085 +
        #1086' '#1074' '#1043#1048#1057#39',  3, '#39#1087#1088#1080#1085#1103#1090#1086' '#1086#1090' '#1043#1048#1057#39', 4, '#39#1086#1096#1080#1073#1082#1072' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1074' '#1043#1048#1057#39') as s' +
        'tatus_gis'
      ' from scott.t_objxpar t'
      ' left join scott.u_list u on t.fk_list=u.id'
      ' left join scott.t_user s on t.fk_user=s.id'
      ' where t.fk_k_lsk=:k_lsk_id'
      ' order by t.mg, t.id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A004B005F004C0053004B005F00490044000300
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000008000000040000004E00310001000000000004000000540053000100
      00000000120000004F005000450052005F004E0041004D004500010000000000
      1200000055005300450052005F004E0041004D00450001000000000004000000
      490044000100000000000C00000050004500520049004F004400010000000000
      0800000043004F004D004D000100000000001400000053005400410054005500
      53005F00470049005300010000000000}
    Master = OD_meter
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterRefresh = OD_t_objxparAfterRefresh
    Left = 296
    Top = 80
  end
  object DS_t_objxpar: TDataSource
    DataSet = OD_t_objxpar
    Left = 332
    Top = 80
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select u.usl, u.usl||'#39' '#39'||TRIM(u.nm) as nm'
      ' from scott.usl u where u.counter is not null'
      'order by nm')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000006000000550053004C00010000000000040000004E004D00
      010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 208
    Top = 80
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 256
    Top = 80
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 436
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = OD_data
    Left = 436
    Top = 80
  end
  object OD_eolink_meter: TOracleDataSet
    SQL.Strings = (
      
        'select e.fk_klsk_obj, wm_concat(u.name_short||'#39': '#39'||coalesce(x.s' +
        '1,to_char(x.n1),to_char(x.d1,'#39'DD.MM.YYYY'#39'))) as name'
      ' from exs.eolink e join exs.eolxpar x on e.id=x.fk_eolink'
      
        ' join (select * from oralv.u_hfpar r order by r.npp) u on x.fk_p' +
        'ar=u.id '
      ' join exs.eolink k on e.parent_id=k.id -- '#1087#1086#1084#1077#1097#1077#1085#1080#1077
      ' and u.cd not in ('#39#1043#1048#1057' '#1046#1050#1061'.'#1055#1088#1080#1079#1085#1072#1082'_'#1055#1059'_'#1050#1056#39')'
      'where k.fk_klsk_obj=:FK_KLSK_PREMISE'
      ' group by e.fk_klsk_obj')
    Optimize = False
    Variables.Data = {
      0400000001000000200000003A0046004B005F004B004C0053004B005F005000
      520045004D00490053004500030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001600000046004B005F004B004C0053004B005F004F004200
      4A00010000000000080000004E0041004D004500010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'FK_KLSK_PREMISE'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 84
    Top = 144
  end
  object DS_eolink_meter: TDataSource
    DataSet = OD_eolink_meter
    Left = 124
    Top = 144
  end
  object OD_meter: TOracleDataSet
    SQL.Strings = (
      'select u.nm,'#11
      ''
      ''
      ''
      '       t.*,'#11
      ''
      ''
      ''
      
        '       case when t.dt2 > last_day(to_date(p.period || '#39'01'#39', '#39'YYY' +
        'YMMDD'#39')) then 1 else 0 end act,'#11
      ''
      ''
      ''
      '       null as state,'#11
      ''
      ''
      ''
      '       null as state_cd,'#11
      ''
      ''
      ''
      '       u.counter,'#11
      ''
      ''
      '       t.gis_conn_tp,'
      ''
      '       t.rowid'#11
      ''
      ''
      ''
      'from scott.meter t'#11
      ''
      ''
      ''
      '         join scott.usl u on t.fk_usl = u.usl'#11
      ''
      ''
      ''
      '         join scott.params p on 1 = 1'#11
      ''
      ''
      ''
      'where t.fk_klsk_obj = :k_lsk_id'#11
      ''
      ''
      ''
      
        '  and (:flt1 = 0 or t.dt2 >= to_date(p.period || '#39'01'#39', '#39'YYYYMMDD' +
        #39')) order by u.npp, t.dt1, t.dt2'#11
      ''
      ''
      '')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A004B005F004C0053004B005F00490044000300
      000000000000000000000A0000003A0046004C00540031000300000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F000000040000004E004D0001000000000004000000490044000100
      000000000C00000046004B005F00550053004C00010000000000100000004B00
      5F004C0053004B005F0049004400010000000000060000004400540031000100
      00000000060000004400540032000100000000001600000046004B005F004B00
      4C0053004B005F004F0042004A00010000000000040000004E00310001000000
      000006000000410043005400010000000000060000004E005000500001000000
      00000A0000005300540041005400450001000000000010000000530054004100
      540045005F00430044000100000000000E00000043004F0055004E0054004500
      5200010000000000160000004700490053005F0043004F004E004E005F005400
      50000100000000001A0000004700490053005F0043004F004E004E005F005400
      50005F003100010000000000}
    RefreshOptions = [roAfterUpdate, roAllFields]
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterScroll = OD_meterAfterScroll
    Left = 88
    Top = 80
    object OD_meterNM: TStringField
      FieldName = 'NM'
      Size = 35
    end
    object OD_meterID: TFloatField
      FieldName = 'ID'
      ReadOnly = True
    end
    object OD_meterNPP: TFloatField
      FieldName = 'NPP'
    end
    object OD_meterFK_USL: TStringField
      FieldName = 'FK_USL'
      Required = True
      Size = 3
    end
    object OD_meterK_LSK_ID: TFloatField
      FieldName = 'K_LSK_ID'
      ReadOnly = True
    end
    object OD_meterDT1: TDateTimeField
      FieldName = 'DT1'
      Required = True
    end
    object OD_meterDT2: TDateTimeField
      FieldName = 'DT2'
      Required = True
    end
    object OD_meterFK_KLSK_OBJ: TFloatField
      FieldName = 'FK_KLSK_OBJ'
      Required = True
    end
    object OD_meterN1: TFloatField
      FieldName = 'N1'
    end
    object OD_meterGIS_CONN_TP: TFloatField
      FieldName = 'GIS_CONN_TP'
    end
    object OD_meterACT: TFloatField
      FieldName = 'ACT'
    end
    object OD_meterSTATE: TStringField
      FieldName = 'STATE'
      Size = 1
    end
    object OD_meterSTATE_CD: TStringField
      FieldName = 'STATE_CD'
      Size = 1
    end
    object OD_meterCOUNTER: TStringField
      FieldName = 'COUNTER'
      Size = 15
    end
    object OD_meterGIS_CONN_TP_1: TFloatField
      FieldName = 'GIS_CONN_TP_1'
    end
  end
  object DS_meter: TDataSource
    DataSet = OD_meter
    Left = 140
    Top = 80
  end
end
