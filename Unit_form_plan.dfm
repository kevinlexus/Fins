object Form_plan: TForm_plan
  Left = 563
  Top = 448
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1074#1086#1076' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1077#1081' '#1087#1083#1072#1085#1072' '#1085#1072' '#1087#1077#1088#1080#1086#1076
  ClientHeight = 364
  ClientWidth = 297
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 8
    Width = 41
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076':'
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 315
    Width = 297
    Height = 49
    TabOrder = 0
    object Button2: TButton
      Left = 214
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 24
    Width = 297
    Height = 257
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REU'
        Title.Caption = #1046#1069#1059
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUMPLAN'
        Title.Caption = #1057#1091#1084#1084#1072', '#1090#1099#1089'.'#1088#1091#1073
        Width = 124
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 216
    Top = 0
    Width = 73
    Height = 21
    KeyField = 'MG'
    ListField = 'MG'
    ListSource = DataSource2
    TabOrder = 2
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 288
    Width = 288
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 3
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid '
      'from scott.proc_plan t '
      'where t.mg=:mg')
    Optimize = False
    Variables.Data = {0300000001000000030000003A4D47050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000030000005245550100000000000700000053554D504C414E
      010000000000020000004D47010000000000}
    Session = DataModule1.OracleSession1
  end
  object DataSource1: TDataSource
    DataSet = OD_data
    Left = 32
  end
  object OracleDataSet2: TOracleDataSet
    SQL.Strings = (
      'select distinct mg'
      'from scott.proc_plan t '
      'order by mg desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {0400000001000000020000004D47010000000000}
    Session = DataModule1.OracleSession1
    Left = 64
  end
  object DataSource2: TDataSource
    DataSet = OracleDataSet2
    Left = 96
  end
end
