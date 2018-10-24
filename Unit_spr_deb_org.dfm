object Form_spr_deb_org: TForm_spr_deb_org
  Left = 223
  Top = 446
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081'-'#1076#1086#1083#1078#1085#1080#1082#1086#1074
  ClientHeight = 430
  ClientWidth = 404
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
    Width = 401
    Height = 337
    Selected.Strings = (
      'ID'#9'10'#9#1050#1086#1076#9'F'
      'NAME'#9'48'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = DS_sprorg
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 376
    Width = 401
    Height = 49
    TabOrder = 2
    object Button1: TButton
      Left = 238
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 318
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 344
    Width = 180
    Height = 25
    DataSource = DS_sprorg
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete]
    Hints.Strings = (
      #1055#1077#1088#1074#1099#1081
      #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081
      #1057#1083#1077#1076#1091#1102#1097#1080#1081
      #1055#1086#1089#1083#1077#1076#1085#1080#1081
      #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1077#1075#1086
      #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1077#1075#1086
      'Edit record'
      'Post edit'
      'Cancel edit'
      'Refresh data')
    ParentShowHint = False
    ConfirmDelete = False
    ShowHint = True
    TabOrder = 1
    BeforeAction = DBNavigator2BeforeAction
  end
  object DS_sprorg: TwwDataSource
    DataSet = OD_sprorg
    Left = 112
    Top = 80
  end
  object OD_sprorg: TOracleDataSet
    SQL.Strings = (
      'select s.*, s.rowid'
      '  from scott.t_org s, scott.t_org_tp t'
      '  where s.fk_orgtp=t.id and t.cd='#39#1054#1056#1043'-'#1044#1054#1051#1043#39
      'order by s.name')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      040000000A000000040000004E414D4501000000000002000000494401000000
      000002000000434401000000000008000000464B5F4F52475450010000000000
      030000004E505001000000000001000000560100000000000900000050415245
      4E545F4944010000000000030000005245550100000000000500000054524553
      5401000000000003000000554348010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    AfterInsert = OD_sprorgAfterInsert
    Left = 80
    Top = 80
    object OD_sprorgID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
    end
    object OD_sprorgCD: TStringField
      FieldName = 'CD'
      Size = 32
    end
    object OD_sprorgFK_ORGTP: TFloatField
      FieldName = 'FK_ORGTP'
    end
    object OD_sprorgNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
    object OD_sprorgNPP: TFloatField
      FieldName = 'NPP'
    end
    object OD_sprorgV: TFloatField
      FieldName = 'V'
    end
    object OD_sprorgPARENT_ID: TFloatField
      FieldName = 'PARENT_ID'
    end
    object OD_sprorgREU: TStringField
      FieldName = 'REU'
      Size = 3
    end
    object OD_sprorgTREST: TStringField
      FieldName = 'TREST'
      Size = 2
    end
    object OD_sprorgUCH: TFloatField
      FieldName = 'UCH'
    end
  end
end
