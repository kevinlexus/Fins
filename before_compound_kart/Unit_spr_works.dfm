object Form_spr_works: TForm_spr_works
  Left = 524
  Top = 126
  Width = 655
  Height = 676
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1088#1072#1073#1086#1090
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 82
    Width = 647
    Height = 511
    Align = alClient
    DataSource = Form_Main.DS_prices_works
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
        Width = 381
      end
      item
        EditButtons = <>
        FieldName = 'PRICE_WORK'
        Footers = <>
        Title.Caption = #1062#1077#1085#1072' '#1088#1072#1073#1086#1090#1099
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'PRICE_MATERIAL'
        Footers = <>
        Title.Caption = #1062#1077#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'NAME_MEAS'
        Footers = <>
        Title.Caption = #1045#1076'.'#1080#1079#1084'.'
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 593
    Width = 647
    Height = 49
    Align = alBottom
    TabOrder = 3
    object Button2: TButton
      Left = 485
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 566
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 647
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 45
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 256
      Top = 20
      Width = 30
      Height = 13
      Caption = #1046#1069#1054
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 59
      Top = 14
      Width = 145
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DS_mg
      TabOrder = 1
      OnCloseUp = DBLookupComboBox1CloseUp
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 291
      Top = 12
      Width = 145
      Height = 21
      KeyField = 'REU'
      ListField = 'NAME_REU'
      ListSource = DS_reu
      TabOrder = 0
      OnCloseUp = DBLookupComboBox2CloseUp
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 41
    Width = 647
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 21
      Width = 47
      Height = 13
      Caption = #1060#1080#1083#1100#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 62
      Top = 13
      Width = 539
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
    object BitBtn3: TBitBtn
      Left = 609
      Top = 8
      Width = 32
      Height = 30
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn3Click
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000FE0E0000FE0E000000010000000100009C5A2900B573
        2900BD7B4A00DE9C7300E7A57300394A9400949494004A6B9C00E7CEB5007B94
        C600F7E7D600ADCEE700E7E7E700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00000000000000000000000000
        0D0D0D0D0D0D0D0D0D0D0D000801010101010101010A0001000D0D0D0D0D0D0D
        0D0D0D000802020202020202020A000101000D0D0D0D0D0D0D0D0D0008020202
        02020202020A00010101000D0D0D0D0D0D0D0D000608030303030303030A0600
        010101050D0D0D0D0D0D0D0D000808080808080A0A0C080001010107050D0D0D
        0D0D0D0D0D00040404040404040404040001010907050D0D0D0D0D0D0D0D0004
        0404040404040404040001090907050D0D0D0D0D0D0D0D000404040404040404
        04040007090907050D0D0D0D0D0D0D0D00040404040404040404040507090907
        050D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B05070909050D0D0D0D0D0D0D
        0D0D050B0B0B0B0B0B0B0B0B0B050709050D0D0D0D0D0D0D0D0D0D050B0B0B0B
        0B0B0B0B0B0B0507050D0D0D0D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B05
        050D0D0D0D0D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B050D0D0D0D0D0D0D
        0D0D0D0D0D0D070505050505050505070D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
    end
  end
  object OD_reu: TOracleDataSet
    SQL.Strings = (
      'select v.* from  scott.v_permissions_reu v'
      ''
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000080000004E414D455F5245
      55010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 112
    Top = 232
    object OD_reuREU: TStringField
      FieldName = 'REU'
      Size = 3
    end
    object OD_reuNAME_REU: TStringField
      FieldName = 'NAME_REU'
      Size = 35
    end
  end
  object DS_reu: TDataSource
    DataSet = OD_reu
    Left = 144
    Top = 232
  end
  object OD_mg: TOracleDataSet
    SQL.Strings = (
      'select mg, substr(mg,1,4)||'#39'-'#39'||substr(mg,5,2) as mg1 from '
      'scott.period_reports p where p.id=55')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 112
    Top = 200
  end
  object DS_mg: TDataSource
    DataSet = OD_mg
    Left = 144
    Top = 200
  end
end
