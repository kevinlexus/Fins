object Form_tree_par_edit: TForm_tree_par_edit
  Left = 548
  Top = 383
  BorderIcons = [biSystemMenu]
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
  ClientHeight = 294
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 435
    Height = 253
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      object cxDate: TcxDBDateEdit
        Left = 88
        Top = 24
        DataBinding.DataField = 'PARDT1'
        DataBinding.DataSource = DS_par
        Properties.OnCloseUp = cxDBDateEdit1PropertiesCloseUp
        TabOrder = 0
        OnKeyDown = cxDateKeyDown
        Width = 121
      end
    end
    object TabSheet2: TTabSheet
      ImageIndex = 1
      object DBEdit1: TDBEdit
        Left = 72
        Top = 24
        Width = 121
        Height = 21
        DataField = 'PARVC1'
        DataSource = DS_par
        TabOrder = 0
        OnKeyDown = DBEdit1KeyDown
      end
    end
    object TabSheet3: TTabSheet
      ImageIndex = 2
      object DBEdit2: TDBEdit
        Left = 72
        Top = 24
        Width = 121
        Height = 21
        DataField = 'PARN1'
        DataSource = DS_par
        TabOrder = 0
        OnKeyDown = DBEdit2KeyDown
      end
    end
    object TabSheet4: TTabSheet
      ImageIndex = 3
      object cbbList: TcxLookupComboBox
        Left = 8
        Top = 34
        Properties.GridMode = True
        Properties.KeyFieldNames = 'NAME'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_Uni_List
        Properties.OnCloseUp = cbbOrgPropertiesCloseUp
        TabOrder = 0
        OnKeyDown = cbbListKeyDown
        Width = 233
      end
    end
    object TabSheet5: TTabSheet
      ImageIndex = 4
      object cxYesNo: TcxDBRadioGroup
        Left = 104
        Top = 16
        DataBinding.DataField = 'PARN1'
        DataBinding.DataSource = DS_par
        Properties.Items = <
          item
            Caption = #1044#1072
            Value = 0
          end
          item
            Caption = #1053#1077#1090
            Value = 1
            Tag = 1
          end>
        TabOrder = 0
        Height = 57
        Width = 105
      end
    end
    object TabSheet6: TTabSheet
      ImageIndex = 5
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 427
        Height = 225
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_list
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1NAME: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet7: TTabSheet
      ImageIndex = 6
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 427
        Height = 225
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          FilterBox.Visible = fvNever
          OnEditValueChanged = cxGrid1DBTableView1EditValueChanged
          OnInitEditValue = cxGrid1DBTableView1InitEditValue
          DataController.DataSource = DS_list
          DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftCompare]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1060#1080#1083#1100#1090#1088
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1NAME: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            Options.Editing = False
            Width = 199
          end
          object cxGrid1DBTableView1SEL: TcxGridDBColumn
            Caption = #1042#1099#1073'.'
            DataBinding.FieldName = 'SEL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.DisplayUnchecked = 'True'
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueGrayed = -1
            Properties.ValueUnchecked = 0
            Width = 51
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 253
    Width = 435
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 136
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DS_list: TDataSource
    DataSet = Uni_List
    Left = 52
    Top = 40
  end
  object DS_par: TDataSource
    Left = 12
    Top = 40
  end
  object PopupMenu1: TPopupMenu
    Left = 132
    Top = 104
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077
      OnClick = N2Click
    end
  end
  object Uni_List: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select t.*, t.rowid from scott.list_c t'
      'where /*t.fk_par=:fk_par'
      'and */t.fk_ses=USERENV('#39'sessionid'#39')'
      'order by t.npp')
    MasterFields = 'ID'
    DetailFields = 'FK_PAR'
    Active = True
    Left = 16
    Top = 160
  end
  object DS_Uni_List: TDataSource
    DataSet = Uni_List
    Left = 68
    Top = 160
  end
end
