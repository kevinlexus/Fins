object Form_print_saldo_houses: TForm_print_saldo_houses
  Left = 1016
  Top = 166
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076'-'#1089#1090#1100' '#1087#1086' '#1076#1086#1084#1072#1084
  ClientHeight = 169
  ClientWidth = 329
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 329
    Height = 113
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1077#1090#1072
    TabOrder = 0
    object Label6: TLabel
      Left = 128
      Top = 56
      Width = 21
      Height = 13
      Caption = '       '
    end
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 87
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1090#1095#1077#1090#1072' '#1057':'
    end
    object Label8: TLabel
      Left = 200
      Top = 24
      Width = 17
      Height = 13
      Caption = #1055#1086':'
    end
    object Label1: TLabel
      Left = 8
      Top = 88
      Width = 39
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1072':'
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 96
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource1
      TabOrder = 0
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 224
      Top = 16
      Width = 99
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource2
      TabOrder = 1
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 168
      Top = 51
      Width = 153
      Height = 21
      Enabled = False
      KeyField = 'KEY'
      ListField = 'REU'
      ListSource = DS_reu
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 52
      Width = 113
      Height = 21
      KeyField = 'MENU_ID'
      ListField = 'NAME'
      ListSource = DS_perm_menu
      TabOrder = 3
      OnCloseUp = DBLookupComboBox1CloseUp
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 84
      Width = 265
      Height = 21
      KeyField = 'USLM'
      ListField = 'NM1'
      ListSource = DS_uslm
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 120
    Width = 329
    Height = 49
    TabOrder = 1
    object Button4: TButton
      Left = 166
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button1: TButton
      Left = 246
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  scott.rep_saldo.report_saldo(:reu_, :trest_, :uslm_,  :mg_, :m' +
        'g1_, :var_, :prep_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000007000000050000003A5245555F050000000300000030310000000000
      070000003A54524553545F050000000000000000000000040000003A4D475F05
      000000070000003230303730370000000000050000003A4D47315F0500000007
      00000032303037303700000000000F0000003A505245505F524546435552534F
      52740000000000000000000000060000003A55534C4D5F050000000000000000
      000000050000003A5641525F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000494E444542455401000000000008000000494E4B
      5245444954010000000000070000004348415247455301000000000007000000
      4348414E474553010000000000070000005041594D454E540100000000000200
      0000504E010000000000080000004F5554444542455401000000000009000000
      4F55544B52454449540100000000000600000053554253494401000000000008
      0000004348414E47455332010000000000060000005052454450520100000000
      000500000050524956530100000000000A00000050524956535F434954590100
      000000000700000043485F46554C4C0100000000000300000041445201000000
      0000}
    Session = DataModule1.OracleSession1
    Left = 40
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 40
    Top = 128
  end
  object OracleDataSet2: TOracleDataSet
    SQL.Strings = (
      
        'select mg,scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(mg' +
        ',1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t where t.id=1'
      'order by mg desc'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 168
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = OracleDataSet2
    Left = 72
    Top = 128
  end
  object OD_reu_trest: TOracleDataSet
    SQL.Strings = (
      'select reu as key, name_reu as reu from scott.s_reu_trest')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000030000004B455901000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 136
    Top = 192
  end
  object DS_reu: TDataSource
    DataSet = OD_reu_trest
    Left = 104
    Top = 128
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 136
    Top = 128
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      
        'select mg,scott.utils.MONTH_NAME1(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t where t.id=1'
      'order by mg desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 104
    Top = 192
  end
  object OD_perm_menu: TOracleDataSet
    SQL.Strings = (
      'select  menu_id, name from scott.v_permissions_menu2 t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D454E555F4944010000000000040000004E414D
      45010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 72
    Top = 192
  end
  object DS_perm_menu: TDataSource
    DataSet = OD_perm_menu
    Left = 8
    Top = 128
  end
  object frxDBData3: TfrxDBDataset
    UserName = 'frxDBData3'
    CloseDataSource = False
    DataSet = OD_data
    BCDToCurrency = False
    Left = 200
    Top = 216
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 232
    Top = 216
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 264
    Top = 216
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38547.570682638900000000
    ReportOptions.LastChange = 40128.383701319440000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 296
    Top = 216
  end
  object OD_uslm: TOracleDataSet
    SQL.Strings = (
      'select * from ('
      'select t.uslm, t.uslm||'#39' '#39'||t.nm1 as nm1 from scott.uslm t'
      'union all'
      'select '#39'000'#39', '#39'000 '#1042#1089#1077#39' from dual)'
      'order by uslm')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000020000000400000055534C4D010000000000030000004E4D31010000
      000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 200
    Top = 192
  end
  object DS_uslm: TDataSource
    DataSet = OD_uslm
    Left = 168
    Top = 128
  end
end
