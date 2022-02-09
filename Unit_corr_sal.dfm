object Form_corr_sal: TForm_corr_sal
  Left = 804
  Top = 284
  Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1089#1072#1083#1100#1076#1086' '#1080' '#1086#1087#1083#1072#1090#1099
  ClientHeight = 580
  ClientWidth = 915
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
    Left = 520
    Top = 16
    Width = 83
    Height = 13
    Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 568
    Top = 40
    Width = 81
    Height = 13
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 608
    Top = 16
    Width = 42
    Height = 13
    Caption = #1059#1089#1083#1091#1075#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 74
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 40
    Width = 56
    Height = 13
    Caption = #1059#1050', '#1092#1086#1085#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 16
    Width = 65
    Height = 13
    Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 106
    Width = 915
    Height = 202
    Align = alBottom
    Caption = #1057#1072#1083#1100#1076#1086', '#1074#1099#1073#1077#1088#1080#1090#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102', '#1091#1089#1083#1091#1075#1091
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 911
      Height = 185
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = DS_saldo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NAME_REU: TcxGridDBColumn
          Caption = #1046#1069#1054
          DataBinding.FieldName = 'NAME_REU'
          Width = 88
        end
        object cxGrid1DBTableView1NAME_USL: TcxGridDBColumn
          Caption = #1059#1089#1083#1091#1075#1072
          DataBinding.FieldName = 'NAME_USL'
          Width = 117
        end
        object cxGrid1DBTableView1NAME_ORG: TcxGridDBColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'NAME_ORG'
          Width = 97
        end
        object cxGrid1DBTableView1INDEBET: TcxGridDBColumn
          Caption = #1042#1093'.'#1076#1077#1073#1077#1090
          DataBinding.FieldName = 'INDEBET'
          Width = 77
        end
        object cxGrid1DBTableView1INKREDIT: TcxGridDBColumn
          Caption = #1042#1093'.'#1050#1088#1077#1076#1080#1090
          DataBinding.FieldName = 'INKREDIT'
          Width = 68
        end
        object cxGrid1DBTableView1CHARGES: TcxGridDBColumn
          Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
          DataBinding.FieldName = 'CHARGES'
          Width = 71
        end
        object cxGrid1DBTableView1CHANGES: TcxGridDBColumn
          Caption = #1055#1077#1088#1077#1088#1072#1089#1095'.'
          DataBinding.FieldName = 'CHANGES'
        end
        object cxGrid1DBTableView1PAYMENT: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1072
          DataBinding.FieldName = 'PAYMENT'
          Width = 65
        end
        object cxGrid1DBTableView1PN: TcxGridDBColumn
          Caption = #1055#1086#1089#1090#1091#1087' '#1087#1077#1085#1080
          DataBinding.FieldName = 'PN'
        end
        object cxGrid1DBTableView1OUTDEBET: TcxGridDBColumn
          Caption = #1048#1089#1093'.'#1076#1077#1073#1077#1090
          DataBinding.FieldName = 'OUTDEBET'
          Width = 77
        end
        object cxGrid1DBTableView1OUTKREDIT: TcxGridDBColumn
          Caption = #1048#1089#1093'.'#1082#1088#1077#1076#1080#1090
          DataBinding.FieldName = 'OUTKREDIT'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 32
    Width = 161
    Height = 21
    TabOrder = 0
    Text = #1056#1050#1062
    OnCloseUp = ComboBox2CloseUp
    Items.Strings = (
      #1056#1050#1062
      #1059#1050
      #1044#1086#1084)
  end
  object Edit1: TEdit
    Left = 88
    Top = 80
    Width = 449
    Height = 21
    TabOrder = 1
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 531
    Width = 915
    Height = 49
    Align = alBottom
    TabOrder = 3
    object Button4: TButton
      Left = 782
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 8
    Width = 425
    Height = 21
    TabOrder = 4
    Text = #1057#1072#1083#1100#1076#1086
    OnCloseUp = ComboBox1CloseUp
    Items.Strings = (
      #1057#1072#1083#1100#1076#1086
      #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1081' '#1086#1087#1083#1072#1090#1099
      #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1081' '#1087#1077#1085#1080
      
        #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1089#1072#1083#1100#1076#1086' (1-'#1072#1103' '#1087#1088#1086#1074#1086#1076#1082#1072') - '#1042#1099#1087#1086#1083#1085#1103#1090#1100' '#1087#1086#1089#1083#1077' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' ' +
        #1080#1089#1093'.'#1089#1072#1083#1100#1076#1086'!'
      
        #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1089#1072#1083#1100#1076#1086' '#1087#1086' 003 '#1091#1089#1083' (2-'#1072#1103' '#1087#1088#1086#1074#1086#1076#1082#1072') - '#1042#1099#1087#1086#1083#1085#1103#1090#1100' '#1087#1086#1089#1083#1077' '#1092#1086 +
        #1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1080#1089#1093'.'#1089#1072#1083#1100#1076#1086'!'
      #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1055#1077#1085#1077)
  end
  object Button1: TButton
    Left = 830
    Top = 16
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100'!'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 830
    Top = 56
    Width = 75
    Height = 25
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 308
    Width = 915
    Height = 223
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 195
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = DS_data
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1FK_DOC: TcxGridDBColumn
            Caption = #8470' '#1076#1086#1082'.'
            DataBinding.FieldName = 'FK_DOC'
            Width = 54
          end
          object cxGridDBTableView1DTEK: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DTEK'
            Width = 64
          end
          object cxGridDBTableView1TEXT: TcxGridDBColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'TEXT'
            Width = 280
          end
          object cxGridDBTableView1NAME_REU: TcxGridDBColumn
            Caption = #1059#1050
            DataBinding.FieldName = 'NAME_REU'
            Width = 126
          end
          object cxGridDBTableView1NAME_USL: TcxGridDBColumn
            Caption = #1059#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'NAME_USL'
            Width = 94
          end
          object cxGridDBTableView1NAME_ORG: TcxGridDBColumn
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'NAME_ORG'
            Width = 193
          end
          object cxGridDBTableView1SUMMA: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'SUMMA'
            Width = 94
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object cxCheckComboBox1: TcxCheckComboBox
    Left = 256
    Top = 32
    BeepOnEnter = False
    Properties.EditValueFormat = cvfStatesString
    Properties.Items = <>
    TabOrder = 8
    Width = 161
  end
  object cbbUsl: TcxLookupComboBox
    Left = 657
    Top = 10
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'USL'
    Properties.ListColumns = <
      item
        FieldName = 'NM'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_usl
    TabOrder = 9
    Width = 160
  end
  object cbbOrg: TcxLookupComboBox
    Left = 657
    Top = 37
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'KOD'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_sprorg
    TabOrder = 10
    Width = 160
  end
  object cbbReu: TcxLookupComboBox
    Left = 89
    Top = 56
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'REU'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_reu
    Properties.OnCloseUp = cxReuPropertiesCloseUp
    TabOrder = 11
    Width = 160
  end
  object OD_saldo: TOracleDataSet
    SQL.Strings = (
      
        'select o2.reu||'#39' '#39'||o2.name as name_reu, u.usl, u.usl||'#39'-'#39'||u.nm' +
        ' as name_usl, '
      ' o.id as fk_org, o.id||'#39'-'#39'||o.name as name_org, '
      'sum(t.indebet) as indebet,'
      'sum(t.inkredit) as inkredit, '
      'sum(t.charges) as charges,'
      'sum(t.changes) as changes,'
      'sum(t.payment) as payment,'
      'sum(t.pn) as pn,'
      'sum(t.outdebet) as outdebet,'
      'sum(t.outkredit) as outkredit '
      'from scott.xitog3 t, scott.usl u, scott.params p,'
      'scott.t_org o, scott.t_org o2'
      
        'where t.usl=u.usl and t.org=o.id and t.mg=p.period and t.reu=o2.' +
        'reu'
      'and (:var_=0 or :var_=1 and t.reu=:reu_) '
      
        'group by o2.reu||'#39' '#39'||o2.name, o2.name, u.usl, u.nm, o.id, o.nam' +
        'e'
      'order by o2.name, o.name, u.nm')
    Optimize = False
    Variables.Data = {
      04000000020000000A0000003A005600410052005F0003000000000000000000
      00000A0000003A005200450055005F00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000D00000006000000550053004C00010000000000100000004E004100
      4D0045005F00550053004C00010000000000100000004E0041004D0045005F00
      4F00520047000100000000000E00000049004E00440045004200450054000100
      000000001000000049004E004B00520045004400490054000100000000000C00
      000046004B005F004F0052004700010000000000100000004F00550054004400
      4500420045005400010000000000120000004F00550054004B00520045004400
      490054000100000000000E000000430048004100520047004500530001000000
      00000E0000004300480041004E004700450053000100000000000E0000005000
      410059004D0045004E005400010000000000100000004E0041004D0045005F00
      5200450055000100000000000400000050004E00010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 24
    Top = 224
  end
  object DS_saldo: TDataSource
    DataSet = OD_saldo
    Left = 56
    Top = 224
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select '#39'000'#39' as usl, '#39#1053#1077' '#1084#1077#1085#1103#1090#1100#39' as nm, -1 as npp from dual'
      'union all'
      'select u.usl, u.usl||'#39'-'#39'||u.nm, u.npp'
      ' from scott.usl u'
      'order by npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004E004D0001000000000006000000550053004C00
      010000000000060000004E0050005000010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 120
    Top = 152
  end
  object OD_sprorg: TOracleDataSet
    SQL.Strings = (
      
        'select '#39'000'#39' as kod, '#39#1053#1077' '#1084#1077#1085#1103#1090#1100#39' as name, -1 as npp, null as nam' +
        'e_ord from '
      'dual'
      'union all'
      
        'select to_char(t.id) as kod, t.id||'#39'-'#39'||t.name as name, null as ' +
        'npp, t.name as name_ord'
      'from scott.t_org t, scott.t_org_tp tp'
      'where tp.id=t.fk_orgtp and tp.cd in ('#39#1055#1086#1089#1090#1072#1074#1097#1080#1082#39','#39#1059#1050#39')'
      'order by npp, name_ord')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000004000000060000004B004F004400010000000000080000004E004100
      4D004500010000000000060000004E0050005000010000000000100000004E00
      41004D0045005F004F0052004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 112
    Top = 192
  end
  object OD_reu: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.reu||'#39'-'#39'||t.name as name'
      'from scott.t_org t, scott.t_org_tp tp'
      'where tp.id=t.fk_orgtp and t.reu is not null'
      'order by t.reu')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000060000005200
      45005500010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 120
    Top = 232
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      
        'select d.id as fk_doc, d.dtek, d.text, o2.reu||'#39'-'#39'||o2.name as n' +
        'ame_reu, u.usl||'#39'-'#39'||u.nm as name_usl, '
      ' o.id||'#39'-'#39'||o.name as name_org, '
      'sum(summa) as summa'
      'from scott.c_change_docs d'
      ' left join scott.t_corrects_payments t on  t.fk_doc=d.id'
      ' left join scott.kart k on k.lsk=t.lsk'
      ' left join scott.usl u on t.usl=u.usl'
      ' left join scott.params p on t.mg=p.period'
      ' left join scott.t_org o on t.org=o.id'
      ' left join scott.t_org o2 on k.reu=o2.reu'
      
        'group by d.id, d.text, d.dtek, o2.reu, o2.name, u.usl, u.nm, o.i' +
        'd, o.name'
      'order by d.id, o2.name, u.nm, o.name'
      ''
      
        '/*select t.fk_doc, d.text, o2.reu||'#39'-'#39'||o2.name as name_reu, u.u' +
        'sl||'#39'-'#39'||u.nm as name_usl, '
      ' o.id||'#39'-'#39'||o.name as name_org, '
      'sum(summa) as summa'
      
        'from scott.kart k join scott.t_corrects_payments t on k.lsk=t.ls' +
        'k'
      ' join scott.usl u on t.usl=u.usl'
      ' join scott.params p on t.mg=p.period'
      ' join scott.t_org o on t.org=o.id'
      ' join scott.t_org o2 on k.reu=o2.reu'
      ' join scott.c_change_docs d on t.fk_doc=d.id'
      
        'group by t.fk_doc, d.text, o2.reu, o2.name, u.usl, u.nm, o.id, o' +
        '.name'
      'order by t.fk_doc, o2.name, u.nm, o.name*/'
      ''
      '/*'
      
        'select t.fk_doc, d.text, o2.reu||'#39'-'#39'||o2.name as name_reu, u.usl' +
        '||'#39'-'#39'||u.nm as name_usl, '
      ' o.id||'#39'-'#39'||o.name as name_org, '
      'sum(summa) as summa'
      
        'from scott.kart k, scott.t_corrects_payments t, scott.usl u, sco' +
        'tt.params p,'
      'scott.t_org o, scott.t_org o2, scott.c_change_docs d'
      
        'where k.lsk=t.lsk and t.usl=u.usl and t.org=o.id and t.mg=p.peri' +
        'od and k.reu=o2.reu'
      'and t.fk_doc=d.id'
      
        'group by t.fk_doc, d.text, o2.reu, o2.name, u.usl, u.nm, o.id, o' +
        '.name'
      'order by t.fk_doc, o2.name, u.nm, o.name'
      '*/')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000007000000100000004E0041004D0045005F00550053004C0001000000
      0000100000004E0041004D0045005F004F005200470001000000000010000000
      4E0041004D0045005F005200450055000100000000000A000000530055004D00
      4D0041000100000000000800000054004500580054000100000000000C000000
      46004B005F0044004F004300010000000000080000004400540045004B000100
      00000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 24
    Top = 352
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 56
    Top = 352
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 408
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1086#1074#1086#1076#1082#1091
      OnClick = N1Click
    end
  end
  object DS_reu: TDataSource
    DataSet = OD_reu
    Left = 152
    Top = 234
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 152
    Top = 154
  end
  object DS_sprorg: TDataSource
    DataSet = OD_sprorg
    Left = 152
    Top = 194
  end
end
