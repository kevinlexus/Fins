object Form_add_lsk: TForm_add_lsk
  Left = 660
  Top = 192
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1053#1086#1074#1099#1081' '#1076#1086#1084
  ClientHeight = 191
  ClientWidth = 294
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 142
    Width = 294
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button2: TButton
      Left = 128
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 214
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 294
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 24
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
    object Label2: TLabel
      Left = 32
      Top = 56
      Width = 38
      Height = 13
      Caption = #1059#1083#1080#1094#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 43
      Top = 88
      Width = 27
      Height = 13
      Caption = #1044#1086#1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label43: TLabel
      Left = 8
      Top = 116
      Width = 62
      Height = 13
      Caption = #1055#1072#1089#1087'.'#1089#1090#1086#1083
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 80
      Top = 16
      Width = 185
      Height = 21
      EditButtons = <>
      KeyField = 'REU'
      ListField = 'NAME_REU'
      ListSource = DS_reu
      TabOrder = 0
      Visible = True
    end
    object DBLookupComboboxEh3: TDBLookupComboboxEh
      Left = 80
      Top = 48
      Width = 185
      Height = 21
      DropDownBox.Sizable = True
      DropDownBox.Width = 250
      EditButtons = <>
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = DS_spul
      TabOrder = 1
      Visible = True
    end
    object DBEditEh1: TDBEditEh
      Left = 80
      Top = 80
      Width = 121
      Height = 21
      EditButtons = <>
      TabOrder = 2
      Visible = True
    end
    object DBLookupComboboxEh5: TDBLookupComboboxEh
      Left = 80
      Top = 110
      Width = 185
      Height = 21
      EditButtons = <>
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = DS_pasp
      TabOrder = 3
      Visible = True
    end
  end
  object OD_reu: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.name_reu '
      ' from scott.s_reu_trest t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000080000004E414D455F5245
      55010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 11
    Top = 184
    object OD_reuREU: TStringField
      FieldName = 'REU'
      Required = True
      Size = 3
    end
    object OD_reuNAME_REU: TStringField
      FieldName = 'NAME_REU'
      Size = 35
    end
  end
  object DS_reu: TDataSource
    DataSet = OD_reu
    Left = 43
    Top = 184
  end
  object DS_spul: TDataSource
    DataSet = OD_spul
    Left = 48
    Top = 216
  end
  object OD_spul: TOracleDataSet
    SQL.Strings = (
      
        'select s.id, ot.name_short||'#39'. '#39'||o.name||'#39', '#39'||s.name as name  ' +
        'from scott.spul s'
      'join scott.t_org o on s.fk_settlement=o.id'
      'join scott.t_org_tp ot on o.fk_orgtp=ot.id'
      'order by ot.name_short||'#39'. '#39'||o.name||'#39', '#39'||s.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 16
    Top = 216
  end
  object DS_pasp: TDataSource
    DataSet = OD_pasp
    Left = 120
    Top = 216
  end
  object OD_pasp: TOracleDataSet
    SQL.Strings = (
      
        'select t.* from scott.t_org t, scott.t_org_tp tp where t.fk_orgt' +
        'p=tp.id'
      'and tp.cd='#39#1055#1072#1089#1087#1086#1088#1090#1085#1099#1081' '#1089#1090#1086#1083#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000A000000020000004944010000000000040000004E414D4501000000
      0000020000004344010000000000030000004E50500100000000000800000046
      4B5F4F5247545001000000000001000000560100000000000900000050415245
      4E545F4944010000000000030000005245550100000000000500000054524553
      5401000000000003000000554348010000000000}
    Session = DataModule1.OracleSession1
    Left = 88
    Top = 216
    object OD_paspID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_paspNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
  end
end
