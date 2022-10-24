object Form_lk_acc: TForm_lk_acc
  Left = 354
  Top = 275
  BorderIcons = [biSystemMenu]
  Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1076#1086#1089#1090#1091#1087#1072' '#1074' '#1083#1080#1095#1085#1099#1081' '#1082#1072#1073#1080#1085#1077#1090
  ClientHeight = 296
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 437
    Height = 39
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      437
      39)
    object Label1: TLabel
      Left = 8
      Top = 44
      Width = 122
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100' '#1091#1078#1077' '#1086#1087#1088#1077#1076#1077#1083#1077#1085'!'
    end
    object Button3: TButton
      Left = 352
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 115
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 264
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 129
      Top = 8
      Width = 115
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1044#1086#1089#1090#1091#1087' Telegram'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 437
    Height = 257
    Align = alClient
    Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1083#1080#1095#1085#1086#1075#1086' '#1082#1072#1073#1080#1085#1077#1090#1072
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 19
      Width = 200
      Height = 13
      Caption = #1042#1085#1080#1084#1072#1085#1080#1077'! '#1055#1072#1088#1086#1083#1100' '#1091#1078#1077' '#1073#1099#1083' '#1086#1087#1088#1077#1076#1077#1083#1077#1085'!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 40
      Width = 433
      Height = 215
      Align = alBottom
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.DataSource = DS_objxpar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1NAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
        end
        object cxGrid1DBTableView1VAL: TcxGridDBColumn
          DataBinding.FieldName = 'VAL'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41193.690603900500000000
    ReportOptions.LastChange = 41194.478327719910000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Top = 160
  end
  object OD_pass: TOracleDataSet
    SQL.Strings = (
      
        'select t2.s1, t.pass from scott.t_objxpar t, scott.t_objxpar t2 ' +
        'where '
      
        'exists (select * from scott.u_list u, scott.u_listtp tp where u.' +
        'cd='#39'pass'#39
      ' and tp.cd='#39#1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1083#1080#1094'.'#1089#1095#1077#1090#1072#39' and tp.id=u.fk_listtp'
      ' and t.fk_list=u.id)'
      
        'and exists (select * from scott.u_list u, scott.u_listtp tp wher' +
        'e u.cd='#39'login'#39
      ' and tp.cd='#39#1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1083#1080#1094'.'#1089#1095#1077#1090#1072#39' and tp.id=u.fk_listtp'
      ' and t2.fk_list=u.id)'
      'and t.fk_k_lsk=:k_lsk_id'
      'and t2.fk_k_lsk=:k_lsk_id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A004B005F004C0053004B005F00490044000300
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000005000410053005300010000000000040000005300
      3100010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'K_LSK_ID'
    DetailFields = 'K_LSK_ID'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterScroll = OD_passAfterScroll
    Left = 32
    Top = 160
  end
  object OD_rnd: TOracleDataSet
    SQL.Strings = (
      
        'select t.cd, round(dbms_random.value(9999999,99999999)) as rnd_v' +
        'al'
      ' from scott.t_org t, scott.t_org_tp tp where tp.cd='#39#1056#1050#1062#39
      'and t.fk_orgtp=tp.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000052004E0044005F00560041004C00010000000000
      0400000043004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterScroll = OD_passAfterScroll
    Left = 32
    Top = 208
  end
  object frxDB_rnd: TfrxDBDataset
    UserName = 'frxDB_rnd'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CD_ORG=CD_ORG'
      'RND_VAL=RND_VAL')
    DataSet = OD_rnd
    BCDToCurrency = False
    Left = 64
    Top = 208
  end
  object frxDB_pass: TfrxDBDataset
    UserName = 'frxDB_pass'
    CloseDataSource = False
    FieldAliases.Strings = (
      'S1=S1'
      'PASS=PASS')
    DataSet = OD_pass
    BCDToCurrency = False
    Left = 64
    Top = 160
  end
  object OD_objxpar: TOracleDataSet
    SQL.Strings = (
      
        'select x.id, u.name, decode(u.val_tp,'#39'NM'#39', to_char(x.n1), '#39'ST'#39', ' +
        'x.s1, '#39'DT'#39', to_char(x.d1,'#39'DD.MM.YYYY'#39'), null) as val, u.val_tp, ' +
        'x.s1, x.n1, x.d1,'
      ' x.rowid'
      ' from scott.t_objxpar x, scott.u_list u,  scott.u_listtp tp'
      'where u.fk_listtp=tp.id'
      'and u.id=x.fk_list'
      'and tp.cd='#39#1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1083#1080#1094'.'#1089#1095#1077#1090#1072#39
      'and x.fk_k_lsk=:k_lsk_id'
      'and u.cd in ('#39'email_lk'#39','#39#1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103#39','#39'TelegramId'#39')'
      'order by u.npp ')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A004B005F004C0053004B005F00490044000300
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000000400000049004400010000000000080000004E0041004D00
      450001000000000006000000560041004C000100000000000400000053003100
      010000000000040000004E0031000100000000000C000000560041004C005F00
      540050000100000000000400000044003100010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'K_LSK_ID'
    DetailFields = 'K_LSK_ID'
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterEdit = OD_objxparAfterEdit
    Left = 32
    Top = 112
  end
  object DS_objxpar: TDataSource
    DataSet = OD_objxpar
    Left = 64
    Top = 112
  end
end
