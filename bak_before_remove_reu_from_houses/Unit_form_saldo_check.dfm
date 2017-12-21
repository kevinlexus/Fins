object Form_saldo_check: TForm_saldo_check
  Left = 460
  Top = 460
  BorderStyle = bsSingle
  Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1089#1072#1083#1100#1076#1086
  ClientHeight = 355
  ClientWidth = 525
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
    Width = 513
    Height = 297
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
        FieldName = 'MG'
        Title.Caption = #1055#1077#1088#1080#1086#1076
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SV_OUT'
        Title.Caption = #1048#1089#1093#1086#1076#1103#1097#1077#1077
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SV_IN'
        Title.Caption = #1042#1093#1086#1076#1103#1097#1077#1077
        Width = 77
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'DIFF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = #1056#1072#1079#1085#1080#1094#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1046#1069#1054
        Width = 124
        Visible = True
      end>
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 307
    Width = 513
    Height = 49
    TabOrder = 1
    object Button1: TButton
      Left = 430
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBLookupComboboxEh1: TDBLookupComboboxEh
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      EditButtons = <>
      KeyField = 'MENU_ID'
      ListField = 'NAME'
      ListSource = DS_perm_menu
      TabOrder = 1
      Visible = True
      OnCloseUp = DBLookupComboboxEh1CloseUp
    end
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select * from scott.v_check_saldo t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000005000000020000004D470100000000000600000053565F4F55540100
      000000000500000053565F494E01000000000004000000444946460100000000
      00020000004E4D010000000000}
    Session = DataModule1.OracleSession1
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 32
  end
  object OD_perm_menu: TOracleDataSet
    SQL.Strings = (
      'select  menu_id, name from scott.v_permissions_menu t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D454E555F4944010000000000040000004E414D
      45010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Top = 32
  end
  object DS_perm_menu: TDataSource
    DataSet = OD_perm_menu
    Left = 32
    Top = 32
  end
end
