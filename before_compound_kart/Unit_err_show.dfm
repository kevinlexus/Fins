object Form_err_show: TForm_err_show
  Left = 587
  Top = 238
  Width = 443
  Height = 508
  Caption = #1057#1087#1080#1089#1086#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 435
    Height = 433
    Selected.Strings = (
      'LSK'#9'8'#9'LSK')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DS_data
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgProportionalColResize, dgDblClickColSizing]
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 433
    Width = 435
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 350
      Top = 10
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'select * from scott.log_err t ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {0400000001000000030000004C534B010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 24
    Top = 16
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 56
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 56
    object N1: TMenuItem
      Caption = #1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
      OnClick = N1Click
    end
  end
end
