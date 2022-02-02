object Form_check_days: TForm_check_days
  Left = 266
  Top = 135
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1074#1077#1088#1082#1072' '#1087#1086' '#1076#1085#1103#1084
  ClientHeight = 471
  ClientWidth = 387
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 369
    Height = 393
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SUMMA_XITO10'
        Title.Caption = #1057#1091#1084#1084#1072' XITO10'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUMMA_XITO5'
        Title.Caption = #1057#1091#1084#1084#1072'  XITO5'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZN'
        Title.Caption = #1056#1072#1079#1085#1080#1094#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAT'
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 416
    Width = 369
    Height = 49
    TabOrder = 1
    object Button2: TButton
      Left = 280
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 192
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1090#1095#1077#1090
      TabOrder = 1
    end
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select * from scott.v_check_days t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000040000000C00000053554D4D415F5849544F31300100000000000B00
      000053554D4D415F5849544F350100000000000400000052415A4E0100000000
      0003000000444154010000000000}
    Session = DataModule1.OracleSession1
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 32
  end
end
