object Form_house_new_vvod: TForm_house_new_vvod
  Left = 678
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1074#1074#1086#1076#1072'/'#1087#1086#1076#1098#1077#1079#1076#1072
  ClientHeight = 153
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 48
    Width = 43
    Height = 13
    Caption = #1059#1089#1083#1091#1075#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 10
    Width = 18
    Height = 13
    Caption = #1091#1083'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 203
    Top = 10
    Width = 12
    Height = 13
    Caption = #1076'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 95
    Top = 48
    Width = 13
    Height = 13
    Caption = #8470
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 104
    Width = 378
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 208
      Top = 16
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 296
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cxrdgrp1: TcxRadioGroup
    Left = 8
    Top = 32
    Caption = #1058#1080#1087
    Properties.Items = <
      item
        Caption = #1042#1074#1086#1076
      end
      item
        Caption = #1055#1086#1076#1098#1077#1079#1076
      end>
    ItemIndex = 0
    TabOrder = 1
    OnClick = cxrdgrp1Click
    Height = 73
    Width = 81
  end
  object cbbStreet: TcxLookupComboBox
    Left = 24
    Top = 7
    Properties.GridMode = True
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_streets
    Properties.OnChange = cbbStreetPropertiesChange
    TabOrder = 2
    OnKeyPress = cbbStreetKeyPress
    Width = 177
  end
  object cbbNd: TcxLookupComboBox
    Left = 217
    Top = 7
    Properties.GridMode = True
    Properties.KeyFieldNames = 'ND_ID'
    Properties.ListColumns = <
      item
        FieldName = 'ND'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_houses
    TabOrder = 3
    OnKeyPress = cbbNdKeyPress
    Width = 152
  end
  object cbbUsl: TcxLookupComboBox
    Left = 230
    Top = 43
    Properties.GridMode = True
    Properties.KeyFieldNames = 'USL'
    Properties.ListColumns = <
      item
        FieldName = 'NM'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_c_vvod_type
    TabOrder = 4
    OnKeyPress = cbbNdKeyPress
    Width = 138
  end
  object cxEntry: TcxTextEdit
    Left = 112
    Top = 43
    TabOrder = 5
    Text = 'cxEntry'
    Width = 39
  end
  object OD_c_vvod_usl: TOracleDataSet
    SQL.Strings = (
      'select t.usl, t.usl||'#39'-'#39'||t.nm as nm from scott.usl t'
      ' where t.have_vvod=1'
      'order by t.npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000020000000300000055534C010000000000020000004E4D0100000000
      00}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    Left = 264
    Top = 72
    object OD_c_vvod_uslNM: TStringField
      DisplayWidth = 30
      FieldName = 'NM'
      Size = 35
    end
    object OD_c_vvod_uslUSL: TStringField
      DisplayWidth = 3
      FieldName = 'USL'
      Required = True
      Visible = False
      Size = 3
    end
  end
  object DS_c_vvod_type: TDataSource
    DataSet = OD_c_vvod_usl
    Left = 296
    Top = 72
  end
  object OD_houses: TOracleDataSet
    SQL.Strings = (
      
        'select distinct a.reu, LTRIM(k.nd,'#39'0'#39')||'#39' '#1046#1069#1054'-'#39'||s.name_reu as n' +
        'd, '
      
        ' LTRIM(k.nd,'#39'0'#39') as nd2, k.nd as nd_id, k.id as house_id, nvl(k.' +
        'psch,0) as psch'
      'from scott.kart a, scott.c_houses k, scott.s_reu_trest s'
      'where  k.kul=:id and a.reu=s.reu and a.house_id=k.id '
      'order by k.nd, nvl(k.psch,0)')
    Optimize = False
    Variables.Data = {
      0300000001000000030000003A49440500000005000000303137350000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000006000000020000004E44010000000000050000004E445F4944010000
      00000008000000484F5553455F49440100000000000300000052455501000000
      0000030000004E44320100000000000400000050534348010000000000}
    Master = OD_streets
    MasterFields = 'ID'
    DetailFields = 'ID'
    Session = DataModule1.OracleSession1
    Detachable = True
    Left = 200
    Top = 72
  end
  object OD_streets: TOracleDataSet
    SQL.Strings = (
      'select id,name, name as street from scott.spul'
      'order by name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000003000000020000004944010000000000040000004E414D4501000000
      000006000000535452454554010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 128
    Top = 72
  end
  object DS_houses: TDataSource
    DataSet = OD_houses
    Left = 232
    Top = 72
  end
  object DS_streets: TDataSource
    DataSet = OD_streets
    Left = 160
    Top = 72
  end
  object ImageList1: TImageList
    Height = 10
    Width = 10
    Left = 328
    Top = 72
    Bitmap = {
      494C01010200040004000A000A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000280000000A00000001002000000000004006
      000000000000000000000000000000000000000000000000000000000000E0F1
      D900C1E4B400C1E4B400E2F2DB00000000000000000000000000000000000000
      000000000000F8F8F100F2F2E400F2F2E400F9F9F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5FBF30098D181006BBE
      4B0077C65B0077C65B0077C65B009FD58B00F7FCF5000000000000000000FDFD
      FB00E8E8D100DEDEBE00E2E2C600E2E2C600E2E2C600EAEAD500FEFEFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094CE7B0067BC460077C6
      5B0092D87F00A5E5990092D87F0077C65B009DD488000000000000000000E6E6
      CE00DDDDBC00E2E2C600EBEBD800F2F2E500EBEBD800E2E2C600EAEAD4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCEFD40058B2320067BC460077C6
      5B00A5E59900CCFFCC00A5E5990077C65B0067BC4600DFF1D800F7F7EF00D8D8
      B200DDDDBC00E2E2C600F2F2E50000000000F2F2E500E2E2C600DDDDBC00F8F8
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6DCA40058B2320067BC460077C6
      5B0092D87F00A5E5990092D87F0077C65B0067BC4600BCE0AC00EEEEDC00D8D8
      B200DDDDBC00E2E2C600EBEBD800F2F2E500EBEBD800E2E2C600DDDDBC00F0F0
      E000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4DBA20054AF2D0060B73C006BBE
      4B0077C65B0077C65B0077C65B006BBE4B0060B73C00BADFAA00EDEDDB00D7D7
      AF00DBDBB700DEDEBE00E2E2C600E2E2C600E2E2C600DEDEBE00DBDBB700EFEF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAEDD10049A81E0058B2320060B7
      3C0067BC460067BC460067BC460060B73C0058B23200DCEFD400F6F6ED00D3D3
      A800D8D8B200DBDBB700DDDDBC00DDDDBC00DDDDBC00DBDBB700D8D8B200F7F7
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000085C4680049A81E0054AF
      2D0058B2320058B2320058B2320054AF2D008AC76E000000000000000000E2E2
      C400D3D3A800D7D7AF00D8D8B200D8D8B200D8D8B200D7D7AF00E3E3C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4FAF10082C2640045A5
      190049A81E0049A81E0049A81E0087C56A00F5FAF2000000000000000000FDFD
      FA00E0E0C200D2D2A500D3D3A800D3D3A800D3D3A800E2E2C500FDFDFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8EC
      CE00AFD89B00AFD89B00D9ECCF00000000000000000000000000000000000000
      000000000000F6F6EC00EBEBD800EBEBD800F6F6EC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000280000000A0000000100010000000000500000000000000000000000
      000000000000000000000000FFFFFF00E1F87000000000008060100000000000
      8060100000000000000100000000000000000000000000000000000000000000
      000000000000000080601000000000008060100000000000E1F8700000000000
      00000000000000000000000000000000000000000000}
  end
end
