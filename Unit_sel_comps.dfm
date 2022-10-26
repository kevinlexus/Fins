object Form_sel_comps: TForm_sel_comps
  Left = 1205
  Top = 358
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
  ClientHeight = 400
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Button1: TButton
    Left = 59
    Top = 364
    Width = 92
    Height = 31
    Caption = #1054#1082
    TabOrder = 2
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 246
    Width = 286
    Height = 51
    Align = alTop
    Caption = #1058#1077#1082#1091#1097#1072#1103' '#1076#1072#1090#1072
    TabOrder = 0
    object cxdtdt1: TcxDateEdit
      Left = 80
      Top = 16
      TabOrder = 0
      Width = 121
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 297
    Width = 286
    Height = 50
    Align = alTop
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    TabOrder = 1
    object cxtxtUser: TcxTextEdit
      Left = 16
      Top = 16
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 257
    end
  end
  object Button2: TButton
    Left = 158
    Top = 364
    Width = 92
    Height = 31
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button2Click
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 286
    Height = 246
    Align = alTop
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_sel_comps
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NKOM: TcxGridDBColumn
        Caption = #8470' '#1082#1086#1084#1087'.'
        DataBinding.FieldName = 'NKOM'
        Width = 50
      end
      object cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'COMP_NAME'
        Width = 118
      end
      object cxGrid1DBTableView1PERIOD: TcxGridDBColumn
        Caption = #1055#1077#1088#1080#1086#1076
        DataBinding.FieldName = 'PERIOD'
        Width = 62
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DS_sel_comps: TDataSource
    DataSet = OD_sel_comps
    Left = 88
    Top = 112
  end
  object OD_sel_comps: TOracleDataSet
    SQL.Strings = (
      'select t.*, o.name as comp_name, t.period'
      
        '  from scott.c_comps t, scott.t_user u, scott.c_users_perm m, sc' +
        'ott.t_org o,'
      '    scott.u_list l'
      ' where u.id = m.user_id'
      '   and m.fk_comp = t.nkom'
      '   and u.cd = user'
      '   and t.fk_org = o.id'
      '   and l.cd='#39#1076#1086#1089#1090#1091#1087' '#1082' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072#1084#39
      '   and m.fk_perm_tp=l.id'
      ' order by t.nkom'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000009000000080000004E004B004F004D00010000000000080000004E00
      49004E004B000100000000000A0000004E004B00560049005400010000000000
      04000000430044000100000000000E00000046004B005F004F00500045005200
      0100000000000C00000046004B005F004F005200470001000000000012000000
      43004F004D0050005F004E0041004D0045000100000000000C00000050004500
      520049004F0044000100000000001000000050004500520049004F0044005F00
      3100010000000000}
    ReadOnly = True
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterScroll = OD_sel_compsAfterScroll
    Left = 56
    Top = 112
  end
end
