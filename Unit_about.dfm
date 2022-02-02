object Form_about: TForm_about
  Left = 551
  Top = 312
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1088#1086#1083#1080
  ClientHeight = 418
  ClientWidth = 797
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
  object Button1: TButton
    Left = 120
    Top = 264
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 797
    Height = 97
    Align = alTop
    DataSource = DS_roles
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ROLE'
        Title.Caption = #1056#1086#1083#1100
        Visible = True
      end>
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 97
    Width = 797
    Height = 321
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1NUM: TcxGridDBColumn
        DataBinding.FieldName = 'NUM'
        Width = 20
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 134
      end
      object cxGrid1DBTableView1TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'TYPE'
        Width = 63
      end
      object cxGrid1DBTableView1VALUE: TcxGridDBColumn
        DataBinding.FieldName = 'VALUE'
        Width = 134
      end
      object cxGrid1DBTableView1DISPLAY_VALUE: TcxGridDBColumn
        DataBinding.FieldName = 'DISPLAY_VALUE'
        Width = 134
      end
      object cxGrid1DBTableView1ISDEFAULT: TcxGridDBColumn
        DataBinding.FieldName = 'ISDEFAULT'
        Width = 20
      end
      object cxGrid1DBTableView1ISSES_MODIFIABLE: TcxGridDBColumn
        DataBinding.FieldName = 'ISSES_MODIFIABLE'
        Width = 20
      end
      object cxGrid1DBTableView1ISSYS_MODIFIABLE: TcxGridDBColumn
        DataBinding.FieldName = 'ISSYS_MODIFIABLE'
        Width = 20
      end
      object cxGrid1DBTableView1ISINSTANCE_MODIFIABLE: TcxGridDBColumn
        DataBinding.FieldName = 'ISINSTANCE_MODIFIABLE'
        Width = 20
      end
      object cxGrid1DBTableView1ISMODIFIED: TcxGridDBColumn
        DataBinding.FieldName = 'ISMODIFIED'
        Width = 20
      end
      object cxGrid1DBTableView1ISADJUSTED: TcxGridDBColumn
        DataBinding.FieldName = 'ISADJUSTED'
        Width = 20
      end
      object cxGrid1DBTableView1ISDEPRECATED: TcxGridDBColumn
        DataBinding.FieldName = 'ISDEPRECATED'
        Width = 20
      end
      object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 66
      end
      object cxGrid1DBTableView1UPDATE_COMMENT: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_COMMENT'
        Width = 67
      end
      object cxGrid1DBTableView1HASH: TcxGridDBColumn
        DataBinding.FieldName = 'HASH'
        Width = 20
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_roles: TOracleDataSet
    SQL.Strings = (
      'select role from sys.session_roles '
      'where role not in ('#39'CONNECT'#39','#39'RESOURCE'#39')')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {040000000100000004000000524F4C45010000000000}
    Session = DataModule1.OracleSession1
  end
  object DS_roles: TDataSource
    DataSet = OD_roles
    Left = 32
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select * from v$parameter order by name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000010000000030000004E554D010000000000040000004E414D45010000
      00000004000000545950450100000000000500000056414C5545010000000000
      0D000000444953504C41595F56414C5545010000000000090000004953444546
      41554C540100000000001000000049535345535F4D4F4449464941424C450100
      000000001000000049535359535F4D4F4449464941424C450100000000001500
      00004953494E5354414E43455F4D4F4449464941424C450100000000000A0000
      0049534D4F4449464945440100000000000A000000495341444A555354454401
      00000000000C0000004953444550524543415445440100000000000B00000044
      45534352495054494F4E0100000000000E0000005550444154455F434F4D4D45
      4E54010000000000040000004841534801000000000007000000495342415349
      43010000000000}
    Left = 40
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 88
    Top = 224
  end
end
