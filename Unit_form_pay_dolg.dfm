object Form_get_pay_dolg: TForm_get_pay_dolg
  Left = 356
  Top = 679
  Width = 634
  Height = 409
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1044#1086#1083#1075#1080' '#1087#1086' '#1084#1077#1089#1103#1094#1072#1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 321
    Width = 618
    Height = 49
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      618
      49)
    object Label1: TLabel
      Left = 110
      Top = 21
      Width = 79
      Height = 16
      Caption = #1055#1086#1083#1091#1095#1077#1085#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 481
      Top = 16
      Width = 63
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 20
      Width = 89
      Height = 17
      Caption = #1055#1077#1088#1080#1086#1076#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object btn1: TButton
      Left = 290
      Top = 16
      Width = 79
      Height = 25
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1086#1087#1083#1072#1090#1099
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btn1Click
    end
    object Button2: TButton
      Left = 549
      Top = 16
      Width = 63
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 371
      Top = 16
      Width = 79
      Height = 25
      Hint = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1086#1087#1083#1072#1090#1099
      Caption = #1042#1086#1089#1089#1090'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button3Click
    end
    object cxSumma: TcxMaskEdit
      Left = 192
      Top = 16
      ParentFont = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      OnKeyPress = cxSummaKeyPress
      Width = 90
    end
  end
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 0
    Width = 618
    Height = 33
    Sections = <>
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 618
    Height = 288
    Align = alClient
    PopupMenu = pm1
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyPress = cxGrid1DBTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnFocusedItemChanged = cxGrid1DBTableView1FocusedItemChanged
      DataController.DataSource = Form_get_pay_nal.DS_chargepay
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1CHARGE
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PAYMENT
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMMA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PENYA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1ITOG
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
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        Caption = #1051#1080#1094'.'#1089#1095'.'
        DataBinding.FieldName = 'LSK'
        Width = 72
      end
      object cxGrid1DBTableView1USL_NAME_SHORT: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'USL_NAME_SHORT'
        Width = 130
      end
      object cxGrid1DBTableView1MG: TcxGridDBColumn
        Caption = #1055#1077#1088#1080#1086#1076
        DataBinding.FieldName = 'MG'
        Width = 60
      end
      object cxGrid1DBTableView1CHARGE: TcxGridDBColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
        DataBinding.FieldName = 'CHARGE'
        Options.Editing = False
      end
      object cxGrid1DBTableView1PAYMENT: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1095#1077#1085#1086
        DataBinding.FieldName = 'PAYMENT'
        Options.Editing = False
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'SUMMA'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
      end
      object cxGrid1DBTableView1PENYA: TcxGridDBColumn
        Caption = #1055#1077#1085#1103
        DataBinding.FieldName = 'PENYA'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
      end
      object cxGrid1DBTableView1ITOG: TcxGridDBColumn
        Caption = #1048#1090#1086#1075#1086
        DataBinding.FieldName = 'ITOG'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
        Options.Editing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object pm1: TPopupMenu
    Left = 132
    Top = 91
    object N1: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1074#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1087#1077#1085#1077
      OnClick = N1Click
    end
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'frmGetPayDolgStore'
    StorageType = stRegistry
    Left = 24
    Top = 48
  end
end
