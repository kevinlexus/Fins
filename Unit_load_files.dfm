object Form_load_files: TForm_load_files
  Left = 1585
  Top = 228
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1092#1072#1081#1083#1086#1074' '#1074' '#1089#1080#1089#1090#1077#1084#1091
  ClientHeight = 407
  ClientWidth = 456
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
  object Label1: TLabel
    Left = 2
    Top = 56
    Width = 64
    Height = 13
    Caption = #1058#1080#1087' '#1092#1072#1081#1083#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 50
    Top = 104
    Width = 18
    Height = 13
    Caption = #1059#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 362
    Width = 456
    Height = 45
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      456
      45)
    object Button2: TButton
      Left = 228
      Top = 12
      Width = 105
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 340
      Top = 12
      Width = 105
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 456
    Height = 41
    Align = alTop
    Lines.Strings = (
      #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091', '#1085#1072' '#1089#1077#1088#1074#1077#1088#1077': ')
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 72
    Top = 72
    Width = 201
    Height = 17
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1088#1077#1076'.'#1087#1086#1082#1072#1079#1072#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object cxCheckComboBox1: TcxCheckComboBox
    Left = 72
    Top = 96
    BeepOnEnter = False
    Properties.EditValueFormat = cvfStatesString
    Properties.Items = <>
    TabOrder = 3
    Width = 377
  end
  object Panel1: TPanel
    Left = 0
    Top = 128
    Width = 449
    Height = 233
    TabOrder = 4
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 447
      Height = 231
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DS_docxpar
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Width = 20
        end
        object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
          Caption = #1057#1086#1079#1076#1072#1085#1086
          DataBinding.FieldName = 'DT_CRT'
          Width = 61
        end
        object cxGrid1DBTableView1USER_NAME: TcxGridDBColumn
          Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
          DataBinding.FieldName = 'USER_NAME'
          Width = 67
        end
        object cxGrid1DBTableView1COMM: TcxGridDBColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          DataBinding.FieldName = 'COMM'
          Width = 152
        end
        object cxGrid1DBTableView1IS_SET_PREV_VAL: TcxGridDBColumn
          Caption = #1059#1089#1090'.'#1087#1088#1077#1076'.'#1087#1086#1082#1072#1079#1072#1085#1080#1103'?'
          DataBinding.FieldName = 'IS_SET_PREV_VAL'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 78
        end
        object cxGrid1DBTableView1V: TcxGridDBColumn
          Caption = #1044#1077#1081#1089#1090#1074#1091#1077#1090'?'
          DataBinding.FieldName = 'V'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 67
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object imgSel: TcxImageComboBox
    Left = 72
    Top = 48
    Properties.Items = <
      item
        Description = #1057#1091#1073#1089#1080#1076#1080#1103' '#1076#1083#1103' '#1080#1085#1092'.'
        ImageIndex = 0
        Value = 0
      end
      item
        Description = #1047#1072#1075#1088#1091#1079#1082#1072' '#1087#1086#1082#1072#1079#1072#1085#1080#1081' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
        Value = 1
      end
      item
        Description = #1042#1099#1075#1088#1091#1079#1082#1072' '#1087#1086#1082#1072#1079#1072#1085#1080#1081' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
        Value = 2
      end>
    Properties.OnCloseUp = cxImageComboBox1PropertiesCloseUp
    TabOrder = 5
    Width = 377
  end
  object OpenDialog1: TOpenDialog
    InitialDir = 'c:\temp'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 144
    Top = 8
  end
  object OD_uk: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.name, 1 as sel from scott.t_org t'
      'where t.reu is not null'
      
        'and exists (select s.* from scott.C_USERS_PERM s join scott.u_li' +
        'st u on s.fk_perm_tp=u.id join scott.t_user e on e.cd=user and s' +
        '.user_id=e.id'
      '                   and u.cd='#39#1076#1086#1089#1090#1091#1087' '#1082' '#1086#1090#1095#1105#1090#1072#1084#39
      '                   where s.fk_reu=t.reu)'
      'order by t.reu')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000300000006000000520045005500010000000000080000004E004100
      4D00450001000000000006000000530045004C00010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 176
    Top = 8
  end
  object DS_uk: TDataSource
    DataSet = OD_uk
    Left = 208
    Top = 8
  end
  object OD_docxpar: TOracleDataSet
    SQL.Strings = (
      'select t.*, u.id||'#39'-'#39'||u.name as user_name '
      
        'from scott.t_doc t join scott.params p on t.mg=p.period join sco' +
        'tt.t_user u on t.fk_user=u.id'
      'order by t.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000A00000004000000490044000100000000000C000000440054005F00
      4300520054000100000000000C000000440054005F0055005000440001000000
      000004000000430044000100000000000E00000046004B005F00550053004500
      52000100000000000800000043004F004D004D000100000000001E0000004900
      53005F005300450054005F0050005200450056005F00560041004C0001000000
      0000040000004D0047000100000000001200000055005300450052005F004E00
      41004D004500010000000000020000005600010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    AfterScroll = OD_docxparAfterScroll
    Left = 248
    Top = 8
  end
  object DS_docxpar: TDataSource
    DataSet = OD_docxpar
    Left = 280
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 48
    Top = 160
    object N1: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1088#1077#1077#1089#1090#1088
      OnClick = N1Click
    end
  end
end
