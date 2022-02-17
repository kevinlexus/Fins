object frmDebtRequest: TfrmDebtRequest
  Left = 0
  Top = 0
  Caption = #1054#1090#1074#1077#1090#1099' '#1085#1072' '#1079#1072#1087#1088#1086#1089#1099' '#1086' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080
  ClientHeight = 539
  ClientWidth = 1352
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 1352
    Height = 498
    Align = alClient
    TabOrder = 0
    object cxGrid1DBCardView1: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_debt
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CardIndent = 7
      object cxGrid1DBCardView1ID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ID'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1REQUEST_NUMBER: TcxGridDBCardViewRow
        DataBinding.FieldName = 'REQUEST_NUMBER'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1REQUEST_GUID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'REQUEST_GUID'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1FIRST_NAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FIRST_NAME'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1LAST_NAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'LAST_NAME'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1MIDDLE_NAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'MIDDLE_NAME'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1SNILS: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SNILS'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1DOC_SERIA: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DOC_SERIA'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1DOC_NUMBER: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DOC_NUMBER'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1DOC_TYPE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DOC_TYPE'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1ADDRESS: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ADDRESS'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1ADDRESS_DETAIL: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ADDRESS_DETAIL'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1STATUS_GIS: TcxGridDBCardViewRow
        DataBinding.FieldName = 'STATUS_GIS'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1RESULT_GIS_GUID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'RESULT_GIS_GUID'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1SENT_DATE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SENT_DATE'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1RESPONSE_DATE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'RESPONSE_DATE'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1HAS_DEBT: TcxGridDBCardViewRow
        DataBinding.FieldName = 'HAS_DEBT'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1EXECUTOR_GUID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'EXECUTOR_GUID'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1EXECUTOR_FIO: TcxGridDBCardViewRow
        DataBinding.FieldName = 'EXECUTOR_FIO'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1DT_CRT: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DT_CRT'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1DT_UPD: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DT_UPD'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1FK_USER: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK_USER'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1ORG_FROM_GUID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ORG_FROM_GUID'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1ORG_FROM_NAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ORG_FROM_NAME'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1ORG_FROM_PHONE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ORG_FROM_PHONE'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1STATUS: TcxGridDBCardViewRow
        DataBinding.FieldName = 'STATUS'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1RESPONSE_STATUS: TcxGridDBCardViewRow
        DataBinding.FieldName = 'RESPONSE_STATUS'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1FK_EOLINK_HOUSE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK_EOLINK_HOUSE'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1SEL: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SEL'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1FK_USER_RESPONSE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK_USER_RESPONSE'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1DESCRIPTION: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DESCRIPTION'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1RESULT: TcxGridDBCardViewRow
        DataBinding.FieldName = 'RESULT'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1TGUID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'TGUID'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1IS_REVOKED: TcxGridDBCardViewRow
        DataBinding.FieldName = 'IS_REVOKED'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1IS_ERROR_ON_RESPONSE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'IS_ERROR_ON_RESPONSE'
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1ROWID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ROWID'
        Visible = False
        Position.BeginsLayer = True
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      OnSelectionChanged = cxGrid1DBTableView1SelectionChanged
      DataController.DataSource = DS_debt
      DataController.Filter.Options = [fcoCaseInsensitive, fcoSoftNull]
      DataController.Filter.AutoDataSetFilter = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
      OptionsSelection.MultiSelectMode = msmPersistent
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 20
      end
      object cxGrid1DBTableView1UK_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'UK_NAME'
        Width = 110
      end
      object cxGrid1DBTableView1REQUEST_NUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'REQUEST_NUMBER'
        Width = 70
      end
      object cxGrid1DBTableView1ORG_FROM_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_FROM_NAME'
        Width = 144
      end
      object cxGrid1DBTableView1ADDRESS: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS'
        Width = 123
      end
      object cxGrid1DBTableView1ADDRESS_DETAIL: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS_DETAIL'
        Width = 81
      end
      object cxGrid1DBTableView1SENT_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'SENT_DATE'
        Width = 81
      end
      object cxGrid1DBTableView1RESPONSE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'RESPONSE_DATE'
        Width = 82
      end
      object cxGrid1DBTableView1FIRST_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'FIRST_NAME'
        Width = 56
      end
      object cxGrid1DBTableView1LAST_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'LAST_NAME'
        Width = 65
      end
      object cxGrid1DBTableView1MIDDLE_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'MIDDLE_NAME'
        Width = 67
      end
      object cxGrid1DBTableView1HAS_DEBT: TcxGridDBColumn
        DataBinding.FieldName = 'HAS_DEBT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 64
      end
      object cxGrid1DBTableView1IS_REVOKED: TcxGridDBColumn
        DataBinding.FieldName = 'IS_REVOKED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 61
      end
      object cxGrid1DBTableView1RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'RESULT'
        Width = 71
      end
      object cxGrid1DBTableView1RESPONSE_STATUS_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'RESPONSE_STATUS_NAME'
        Width = 96
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 54
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 59
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Visible = False
      end
      object cxGrid1DBTableView1IS_ERROR_ON_RESPONSE: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ERROR_ON_RESPONSE'
        Visible = False
      end
      object cxGrid1DBTableView1USER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'USER_ID'
        Visible = False
      end
      object cxGrid1DBTableView1RESPONSE_STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'RESPONSE_STATUS'
        Visible = False
      end
      object cxGrid1DBTableView1FK_UK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_UK'
        Visible = False
      end
      object cxGrid1DBTableView1FK_PROC_UK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_PROC_UK'
        Visible = False
      end
    end
    object cxGrid1DBCardView3: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = DS_debt
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CaptionWidth = 150
      OptionsView.CardIndent = 7
      OptionsView.CardWidth = 800
      OptionsView.CategoryRowCaptionInRowAlternateCaption = True
      OptionsView.CellAutoHeight = True
      object cxGrid1DBCardView3REQUEST_NUMBER: TcxGridDBCardViewRow
        DataBinding.FieldName = 'REQUEST_NUMBER'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3ORG_FROM_NAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ORG_FROM_NAME'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3ORG_FROM_PHONE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ORG_FROM_PHONE'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3ADDRESS: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ADDRESS'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3ADDRESS_DETAIL: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ADDRESS_DETAIL'
        Options.Filtering = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView3SENT_DATE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SENT_DATE'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3RESPONSE_DATE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'RESPONSE_DATE'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3HEADER: TcxGridDBCardViewRow
        Caption = #1044#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
        Expanded = True
        Kind = rkCategory
        Options.Editing = False
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3FIRST_NAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FIRST_NAME'
        Options.Filtering = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView3LAST_NAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'LAST_NAME'
        Options.Filtering = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView3MIDDLE_NAME: TcxGridDBCardViewRow
        DataBinding.FieldName = 'MIDDLE_NAME'
        Options.Filtering = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView3SNILS: TcxGridDBCardViewRow
        DataBinding.FieldName = 'SNILS'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3DOC_TYPE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DOC_TYPE_GUID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 350
        Properties.KeyFieldNames = 'GUID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_doc_nsi_95
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3DOC_SERIA: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DOC_SERIA'
        Options.Filtering = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView3DOC_NUMBER: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DOC_NUMBER'
        Options.Filtering = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView3DESCRIPTION: TcxGridDBCardViewRow
        DataBinding.FieldName = 'DESCRIPTION'
        PropertiesClassName = 'TcxMemoProperties'
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3HAS_DEBT: TcxGridDBCardViewRow
        DataBinding.FieldName = 'HAS_DEBT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView3IS_REVOKED: TcxGridDBCardViewRow
        DataBinding.FieldName = 'IS_REVOKED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Position.BeginsLayer = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBCardView3
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1352
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1352
      41)
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 55
      Height = 13
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100
    end
    object Button1: TButton
      Left = 1251
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
      Enabled = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object cbbUser: TcxLookupComboBox
      Left = 77
      Top = 11
      Hint = 
        #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1084' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1084', '#1077#1089#1083#1080' '#1085#1077' '#1074#1099#1073#1088#1072#1085#1086' - '#1090#1077#1082#1091#1097#1080#1084'. '#1054#1095 +
        #1080#1089#1090#1080#1090#1100' CTRL+A'
      ParentShowHint = False
      Properties.ClearKey = 16449
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_t_user
      ShowHint = True
      TabOrder = 1
      Width = 172
    end
    object chkResponseDate: TCheckBox
      Left = 280
      Top = 13
      Width = 122
      Height = 17
      Caption = #1042#1099#1096#1077#1083' '#1089#1088#1086#1082' '#1086#1090#1074#1077#1090#1072
      TabOrder = 2
      OnClick = chkResponseDateClick
    end
    object chkResponseExist: TCheckBox
      Left = 408
      Top = 13
      Width = 73
      Height = 17
      Caption = #1054#1090#1074#1077#1090' '#1076#1072#1085
      TabOrder = 3
      OnClick = chkResponseExistClick
    end
    object chkAllFields: TCheckBox
      Left = 551
      Top = 13
      Width = 97
      Height = 17
      Caption = #1042#1089#1077' '#1087#1086#1083#1103
      TabOrder = 4
      OnClick = chkAllFieldsClick
    end
  end
  object Uni_debt: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      
        'select t.*, u.id as user_id, decode(t.response_status, 0, '#39#1053#1077' '#1086#1090 +
        #1087#1088#1072#1074#1083#1077#1085#1086#39', 1, '#39#1054#1090#1087#1088#1072#1074#1083#1077#1085#1086#39', 2, '#39#1040#1074#1090#1086' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1086#39', null) as res' +
        'ponse_status_name,'
      ' o.name as uk_name,'
      
        ' t.rowid from exs.debt_sub_request t join scott.t_user u on u.cd' +
        '=user'
      '  left join scott.t_org o on t.fk_uk=o.id'
      'where 1=1'
      '&substResponseDate'
      '&substResponseExist'
      '')
    FilterOptions = [foCaseInsensitive]
    Left = 648
    Top = 160
    MacroData = <
      item
        Name = 'substResponseDate'
      end
      item
        Name = 'substResponseExist'
      end>
    object Uni_debtID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Uni_debtREQUEST_NUMBER: TStringField
      DisplayLabel = #8470' '#1079#1072#1087#1088#1086#1089#1072
      FieldName = 'REQUEST_NUMBER'
      ReadOnly = True
      Size = 30
    end
    object Uni_debtREQUEST_GUID: TStringField
      FieldName = 'REQUEST_GUID'
      ReadOnly = True
      Size = 36
    end
    object Uni_debtFIRST_NAME: TStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object Uni_debtLAST_NAME: TStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object Uni_debtMIDDLE_NAME: TStringField
      DisplayLabel = #1054#1090#1095#1077#1089#1090#1074#1086
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object Uni_debtSNILS: TStringField
      DisplayLabel = #1057#1053#1048#1051#1057
      FieldName = 'SNILS'
      Size = 11
    end
    object Uni_debtDOC_SERIA: TStringField
      DisplayLabel = #1044#1086#1082'.'#1057#1077#1088#1080#1103
      FieldName = 'DOC_SERIA'
    end
    object Uni_debtDOC_NUMBER: TStringField
      DisplayLabel = #1044#1086#1082'.'#1085#1086#1084#1077#1088
      FieldName = 'DOC_NUMBER'
    end
    object Uni_debtDOC_TYPE: TStringField
      DisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090
      FieldName = 'DOC_TYPE_GUID'
      Size = 36
    end
    object Uni_debtADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADDRESS'
      ReadOnly = True
      Size = 100
    end
    object Uni_debtADDRESS_DETAIL: TStringField
      DisplayLabel = #1055#1086#1084#1077#1097#1077#1085#1080#1077
      FieldName = 'ADDRESS_DETAIL'
      ReadOnly = True
      Size = 100
    end
    object Uni_debtSTATUS_GIS: TFloatField
      FieldName = 'STATUS_GIS'
      ReadOnly = True
    end
    object Uni_debtSENT_DATE: TDateTimeField
      DisplayLabel = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084' '#1046#1050#1059
      FieldName = 'SENT_DATE'
      ReadOnly = True
    end
    object Uni_debtRESPONSE_DATE: TDateTimeField
      DisplayLabel = #1050#1088#1072#1081#1085#1080#1081' '#1089#1088#1086#1082' '#1086#1090#1074#1077#1090#1072' '#1085#1072' '#1079#1072#1087#1088#1086#1089
      FieldName = 'RESPONSE_DATE'
      ReadOnly = True
    end
    object Uni_debtHAS_DEBT: TFloatField
      DisplayLabel = #1048#1084#1077#1077#1090#1089#1103' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100
      FieldName = 'HAS_DEBT'
    end
    object Uni_debtEXECUTOR_GUID: TStringField
      FieldName = 'EXECUTOR_GUID'
      ReadOnly = True
      Size = 36
    end
    object Uni_debtEXECUTOR_FIO: TStringField
      DisplayLabel = #1060'.'#1048'.'#1054'. '#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103', '#1086#1090#1087#1088#1072#1074#1080#1074#1096#1077#1075#1086' '#1079#1072#1087#1088#1086#1089
      FieldName = 'EXECUTOR_FIO'
      ReadOnly = True
      Size = 100
    end
    object Uni_debtDT_CRT: TDateTimeField
      DisplayLabel = #1057#1086#1079#1076#1072#1085#1086
      FieldName = 'DT_CRT'
      ReadOnly = True
    end
    object Uni_debtDT_UPD: TDateTimeField
      DisplayLabel = #1054#1073#1085#1086#1074#1083#1077#1085#1086
      FieldName = 'DT_UPD'
      ReadOnly = True
    end
    object Uni_debtFK_USER: TFloatField
      FieldName = 'FK_USER'
      ReadOnly = True
    end
    object Uni_debtORG_FROM_GUID: TStringField
      FieldName = 'ORG_FROM_GUID'
      ReadOnly = True
      Size = 36
    end
    object Uni_debtORG_FROM_NAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1085#1072#1087#1088#1072#1074#1080#1074#1096#1077#1081' '#1079#1072#1087#1088#1086#1089
      FieldName = 'ORG_FROM_NAME'
      ReadOnly = True
      Size = 500
    end
    object Uni_debtORG_FROM_PHONE: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080', '#1085#1072#1087#1088#1072#1074#1080#1074#1096#1077#1081' '#1079#1072#1087#1088#1086#1089
      FieldName = 'ORG_FROM_PHONE'
      ReadOnly = True
      Size = 30
    end
    object Uni_debtSTATUS: TFloatField
      FieldName = 'STATUS'
    end
    object Uni_debtRESPONSE_STATUS: TFloatField
      FieldName = 'RESPONSE_STATUS'
      ReadOnly = True
    end
    object Uni_debtFK_EOLINK_HOUSE: TFloatField
      FieldName = 'FK_EOLINK_HOUSE'
      ReadOnly = True
    end
    object Uni_debtSEL: TFloatField
      DisplayLabel = #1042#1099#1073#1088#1072#1085#1086
      FieldName = 'SEL'
    end
    object Uni_debtFK_USER_RESPONSE: TFloatField
      FieldName = 'FK_USER_RESPONSE'
    end
    object Uni_debtDESCRIPTION: TStringField
      DisplayLabel = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1086#1090#1074#1077#1090#1091' '
      FieldName = 'DESCRIPTION'
      Size = 1000
    end
    object Uni_debtRESULT: TStringField
      DisplayLabel = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1086#1090#1087#1088#1072#1074#1082#1080
      FieldName = 'RESULT'
      ReadOnly = True
      Size = 1024
    end
    object Uni_debtTGUID: TStringField
      FieldName = 'TGUID'
      ReadOnly = True
      Size = 36
    end
    object Uni_debtIS_REVOKED: TFloatField
      DisplayLabel = #1054#1090#1086#1079#1074#1072#1085#1086' '
      FieldName = 'IS_REVOKED'
    end
    object Uni_debtIS_ERROR_ON_RESPONSE: TFloatField
      FieldName = 'IS_ERROR_ON_RESPONSE'
      ReadOnly = True
    end
    object Uni_debtROWID: TStringField
      FieldName = 'ROWID'
      Size = 18
    end
    object Uni_debtUSER_ID: TFloatField
      FieldName = 'USER_ID'
      ReadOnly = True
    end
    object Uni_debtRESPONSE_STATUS_NAME: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1074' '#1043#1048#1057
      FieldName = 'RESPONSE_STATUS_NAME'
      ReadOnly = True
      Size = 17
    end
    object Uni_debtUK_NAME: TStringField
      DisplayLabel = #1059#1050
      FieldName = 'UK_NAME'
      ReadOnly = True
      Size = 64
    end
    object Uni_debtFK_UK: TFloatField
      FieldName = 'FK_UK'
      ReadOnly = True
      Required = True
    end
    object Uni_debtFK_PROC_UK: TFloatField
      FieldName = 'FK_PROC_UK'
      ReadOnly = True
    end
  end
  object DS_debt: TDataSource
    DataSet = Uni_debt
    Left = 696
    Top = 160
  end
  object Uni_doc_nsi_95: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select * from scott.v_doc_nsi_95 t'
      'order by t.name')
    FilterOptions = [foCaseInsensitive]
    Left = 648
    Top = 208
  end
  object DS_doc_nsi_95: TDataSource
    DataSet = Uni_doc_nsi_95
    Left = 696
    Top = 208
  end
  object Uni_t_user: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select t.* from scott.t_user t where t.guid is not null'
      'order by t.name')
    Left = 648
    Top = 264
  end
  object DS_t_user: TDataSource
    DataSet = Uni_t_user
    Left = 696
    Top = 264
  end
end