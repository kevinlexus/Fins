object Form_spr_spk: TForm_spr_spk
  Left = 404
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1072#1090#1077#1075#1086#1088#1080#1081
  ClientHeight = 427
  ClientWidth = 692
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
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 321
    Height = 337
    ControlType.Strings = (
      'fk_stat_g;CustomEdit;wwDBLookupCombo3;F'
      'fk_stat_k;CustomEdit;wwDBLookupCombo4;F')
    Selected.Strings = (
      'ID'#9'4'#9#1050#1086#1076
      'NAME'#9'25'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1083#1100#1075#1086#1090#1099
      'fk_stat_g'#9'8'#9#1090#1077#1082'.'#1089#1086#1076'.'#9'F'#9#1057#1090#1072#1090#1091#1089
      'fk_stat_k'#9'7'#9#1082#1086#1084#1084#1091#1085'.'#9'F'#9#1057#1090#1072#1090#1091#1089)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = DS_spk
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    OnExit = wwDBGrid1Exit
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 376
    Width = 689
    Height = 49
    TabOrder = 5
    object Button1: TButton
      Left = 518
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 606
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object wwDBGrid2: TwwDBGrid
    Left = 328
    Top = 0
    Width = 361
    Height = 337
    ControlType.Strings = (
      'usl_name;CustomEdit;wwDBLookupCombo1;F'
      'CHARGE_PART;CheckBox;1;0'
      'LIMIT_PART;CheckBox;1;0')
    Selected.Strings = (
      'NM'#9'20'#9#1059#1089#1083#1091#1075#1072#9#9
      'PRIORITET'#9'6'#9#1055#1088#1080#1086'-~'#1088#1080#1090#1077#1090#9#9
      'KOEF'#9'4'#9'%'#9#9
      'CHARGE_PART'#9'4'#9#1044#1086#1083#1080#9#9
      'LIMIT_PART'#9'8'#9#1054#1075#1088'.'#1076#1086#1083#1102' ~'#1089#1086#1094'.'#9#9
      'DOP_PL'#9'6'#9#1044#1086#1087'.'#1087#1083'.'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = DS_spk_usl
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object wwDBNavigator1: TwwDBNavigator
    Left = 144
    Top = 344
    Width = 350
    Height = 25
    DataSource = DS_spk
    Options = [noConfirmDelete, noUseInternationalText]
    ShowHint = True
    RepeatInterval.InitialDelay = 500
    RepeatInterval.Interval = 100
    ParentShowHint = False
    object wwDBNavigator1First: TwwNavButton
      Left = 0
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to first record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1First'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 0
      Style = nbsFirst
    end
    object wwDBNavigator1PriorPage: TwwNavButton
      Left = 25
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move backward 10 records'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1PriorPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 1
      Style = nbsPriorPage
    end
    object wwDBNavigator1Prior: TwwNavButton
      Left = 50
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to prior record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Prior'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 2
      Style = nbsPrior
    end
    object wwDBNavigator1Next: TwwNavButton
      Left = 75
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to next record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Next'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 3
      Style = nbsNext
    end
    object wwDBNavigator1NextPage: TwwNavButton
      Left = 100
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move forward 10 records'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1NextPage'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 4
      Style = nbsNextPage
    end
    object wwDBNavigator1Last: TwwNavButton
      Left = 125
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Move to last record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Last'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 5
      Style = nbsLast
    end
    object wwDBNavigator1Insert: TwwNavButton
      Left = 150
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Insert new record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Insert'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsInsert
    end
    object wwDBNavigator1Delete: TwwNavButton
      Left = 175
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Delete current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Delete'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsDelete
    end
    object wwDBNavigator1Edit: TwwNavButton
      Left = 200
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Edit current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Edit'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsEdit
      Visible = False
    end
    object wwDBNavigator1Post: TwwNavButton
      Left = 225
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Post changes of current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Post'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsPost
    end
    object wwDBNavigator1Cancel: TwwNavButton
      Left = 250
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Cancel changes made to current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Cancel'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 10
      Style = nbsCancel
      Visible = False
    end
    object wwDBNavigator1Refresh: TwwNavButton
      Left = 275
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Refresh the contents of the dataset'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Refresh'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 11
      Style = nbsRefresh
      Visible = False
    end
    object wwDBNavigator1SaveBookmark: TwwNavButton
      Left = 300
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Bookmark current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1SaveBookmark'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 12
      Style = nbsSaveBookmark
      Visible = False
    end
    object wwDBNavigator1RestoreBookmark: TwwNavButton
      Left = 325
      Top = 0
      Width = 25
      Height = 25
      Hint = 'Go back to saved bookmark'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1RestoreBookmark'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 13
      Style = nbsRestoreBookmark
      Visible = False
    end
  end
  object wwDBLookupCombo3: TwwDBLookupCombo
    Left = 144
    Top = 240
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NAME'#9'25'#9'NAME'#9#9)
    LookupTable = OD_status
    LookupField = 'ID'
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object wwDBLookupCombo4: TwwDBLookupCombo
    Left = 144
    Top = 264
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NAME'#9'25'#9'NAME'#9#9)
    LookupTable = OD_status_k
    LookupField = 'ID'
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object OD_spk: TOracleDataSet
    SQL.Strings = (
      'select s.rowid, s.id, s.name, fk_status_g, fk_status_k'
      '  from scott.spk s'
      '  order by s.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000004000000020000004944010000000000040000004E414D4501000000
      00000B000000464B5F5354415455535F470100000000000B000000464B5F5354
      415455535F4B010000000000}
    RefreshOptions = [roAfterInsert]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    AfterInsert = OD_spkAfterInsert
    AfterPost = OD_spkAfterPost
    Left = 80
    Top = 80
    object OD_spkID: TFloatField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 4
      FieldName = 'ID'
      ReadOnly = True
    end
    object OD_spkNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1083#1100#1075#1086#1090#1099
      DisplayWidth = 25
      FieldName = 'NAME'
      Size = 25
    end
    object OD_spkFK_STATUS_G: TFloatField
      FieldName = 'FK_STATUS_G'
    end
    object OD_spkfk_stat_g: TStringField
      FieldKind = fkLookup
      FieldName = 'fk_stat_g'
      LookupDataSet = OD_status
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'FK_STATUS_G'
      Lookup = True
    end
    object OD_spkFK_STATUS_K: TFloatField
      FieldName = 'FK_STATUS_K'
    end
    object OD_spkfk_stat_k: TStringField
      FieldKind = fkLookup
      FieldName = 'fk_stat_k'
      LookupDataSet = OD_status_k
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'FK_STATUS_K'
      Lookup = True
    end
  end
  object DS_spk: TwwDataSource
    DataSet = OD_spk
    Left = 112
    Top = 80
  end
  object OD_spk_usl: TOracleDataSet
    SQL.Strings = (
      
        'select s.rowid, s.koef, s.charge_part, s.dop_pl, s.limit_part, u' +
        '.nm, s.prioritet'
      '  from scott.c_spk_usl s, scott.usl u'
      '  where s.usl_id=u.usl'
      '      and s.spk_id = :spk_id'
      'order by u.npp')
    Optimize = False
    Variables.Data = {
      0300000001000000070000003A53504B5F494404000000080000000000000000
      00F03F00000000}
    QBEDefinition.QBEFieldDefs = {
      0400000006000000040000004B4F4546010000000000020000004E4D01000000
      00000B0000004348415247455F5041525401000000000006000000444F505F50
      4C0100000000000A0000004C494D49545F504152540100000000000900000050
      52494F5249544554010000000000}
    Master = OD_spk
    MasterFields = 'ID'
    DetailFields = 'SPK_ID'
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    Left = 80
    Top = 112
    object OD_spk_uslNM: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 20
      FieldName = 'NM'
      Size = 22
    end
    object OD_spk_uslPRIORITET: TFloatField
      DisplayLabel = #1055#1088#1080#1086'-~'#1088#1080#1090#1077#1090
      DisplayWidth = 6
      FieldName = 'PRIORITET'
    end
    object OD_spk_uslKOEF: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 4
      FieldName = 'KOEF'
      Required = True
    end
    object OD_spk_uslCHARGE_PART: TFloatField
      DisplayLabel = #1044#1086#1083#1080
      DisplayWidth = 4
      FieldName = 'CHARGE_PART'
    end
    object OD_spk_uslLIMIT_PART: TFloatField
      DisplayLabel = #1054#1075#1088'.'#1076#1086#1083#1102' ~'#1089#1086#1094'.'
      DisplayWidth = 8
      FieldName = 'LIMIT_PART'
    end
    object OD_spk_uslDOP_PL: TFloatField
      DisplayLabel = #1044#1086#1087'.'#1087#1083'.'
      DisplayWidth = 6
      FieldName = 'DOP_PL'
    end
  end
  object DS_spk_usl: TwwDataSource
    DataSet = OD_spk_usl
    Left = 112
    Top = 112
  end
  object OD_status: TOracleDataSet
    SQL.Strings = (
      'select id,name from scott.status s'
      'union all'
      'select null as id,'#39#39' as name from dual'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 80
    Top = 144
    object OD_statusNAME: TStringField
      DisplayWidth = 25
      FieldName = 'NAME'
      Size = 25
    end
    object OD_statusID: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object DS_status: TDataSource
    DataSet = OD_status
    Left = 112
    Top = 144
  end
  object OD_status_k: TOracleDataSet
    SQL.Strings = (
      'select id,name from scott.status s'
      'union all'
      'select null as id,'#39#39' as name from dual'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 80
    Top = 176
    object StringField1: TStringField
      DisplayWidth = 25
      FieldName = 'NAME'
      Size = 25
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object DS_status_k: TDataSource
    DataSet = OD_status_k
    Left = 112
    Top = 176
  end
end
