object Form_check_inkas: TForm_check_inkas
  Left = 231
  Top = 360
  BorderStyle = bsSingle
  Caption = #1057#1074#1077#1088#1082#1072' '#1087#1086' '#1080#1085#1082#1072#1089#1089#1072#1094#1080#1103#1084
  ClientHeight = 469
  ClientWidth = 386
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
  object Label1: TLabel
    Left = 80
    Top = 16
    Width = 7
    Height = 13
    Caption = #1057
  end
  object Label2: TLabel
    Left = 184
    Top = 16
    Width = 14
    Height = 13
    Caption = #1055#1086
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 369
    Height = 361
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
        FieldName = 'DAT_INK'
        Title.Caption = #1044#1072#1090#1072
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NKOM'
        Title.Caption = #8470' '#1082#1086#1084#1087'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NINK'
        Title.Caption = #8470' '#1080#1085#1082'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUMMA_G'
        Title.Caption = #1057#1091#1084#1084#1072' '#1086#1073#1086#1088#1086#1090#1082'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUMMA'
        Title.Caption = #1057#1091#1084#1084#1072' '#1080#1085#1082#1072#1089#1089'.'
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 96
    Top = 8
    Width = 73
    Height = 21
    KeyField = 'DAT_INK'
    ListField = 'DAT_INK'
    ListSource = DataSource2
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 200
    Top = 8
    Width = 73
    Height = 21
    KeyField = 'DAT_INK'
    ListField = 'DAT_INK'
    ListSource = DataSource2
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 408
    Width = 369
    Height = 57
    TabOrder = 3
    object Button2: TButton
      Left = 286
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 200
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1090#1095#1077#1090
      TabOrder = 1
    end
    object Button3: TButton
      Left = 112
      Top = 16
      Width = 75
      Height = 25
      Caption = #1060#1086#1088#1084#1080#1088'.'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 32
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select * from scott.v_check_inkas t'
      'where t.dat_ink between :dat1 and :dat2')
    Optimize = False
    Variables.Data = {
      0300000002000000050000003A444154310C0000000000000000000000050000
      003A444154320C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000005000000070000004441545F494E4B010000000000040000004E4B4F
      4D010000000000040000004E494E4B0100000000000700000053554D4D415F47
      0100000000000500000053554D4D41010000000000}
    Session = DataModule1.OracleSession1
  end
  object OD_dat1: TOracleDataSet
    SQL.Strings = (
      
        'select distinct dat_ink from scott.kwtp_day k order by dat_ink d' +
        'esc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {0400000001000000070000004441545F494E4B010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = OD_dat1
    Left = 32
    Top = 32
  end
end
