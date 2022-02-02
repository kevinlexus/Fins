object Form_get_pay: TForm_get_pay
  Left = 342
  Top = 756
  Caption = #1042#1074#1086#1076' '#1086#1087#1083#1072#1090#1099
  ClientHeight = 504
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
 
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 887
    Height = 60
    Align = alTop
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1074#1074#1086#1076#1072
    TabOrder = 0
    object Label4: TLabel
      Left = 10
      Top = 26
      Width = 102
      Height = 16
      Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 167
      Top = 26
      Width = 74
      Height = 16
      Caption = #1054#1087#1077#1088#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 118
      Top = 20
      Width = 41
      Height = 24
      ReadOnly = True
      TabOrder = 0
      Text = 'Edit1'
    end
    object CheckBox1: TCheckBox
      Left = 463
      Top = 20
      Width = 80
      Height = 21
      Hint = #1058#1086#1083#1100#1082#1086' '#1087#1088#1086#1080#1085#1082#1072#1089#1089#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1083#1072#1090#1077#1078#1080
      Caption = #1048#1085#1082#1072#1089#1089
      TabOrder = 1
      Visible = False
      OnClick = CheckBox1Click
    end
    object chk1: TCheckBox
      Left = 544
      Top = 21
      Width = 65
      Height = 17
      Hint = #1047#1072#1087#1088#1072#1096#1080#1074#1072#1090#1100' '#1072#1076#1088#1077#1089' '#1087#1086#1089#1083#1077' '#1074#1074#1086#1076#1072
      Caption = #1040#1076#1088#1077#1089
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 2
    end
    object cbbOper: TcxLookupComboBox
      Left = 240
      Top = 19
      Properties.GridMode = True
      Properties.KeyFieldNames = 'OPER'
      Properties.ListColumns = <
        item
          FieldName = 'NAIM'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_oper
      TabOrder = 3
      Width = 217
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 347
    Width = 887
    Height = 157
    Align = alBottom
    TabOrder = 1
    object Panel1: TPanel
      Left = 2
      Top = 18
      Width = 721
      Height = 137
      Align = alLeft
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 34
        Width = 26
        Height = 16
        Caption = #1051'/C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 158
        Top = 34
        Width = 49
        Height = 16
        Caption = #1057#1091#1084#1084#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 325
        Top = 34
        Width = 38
        Height = 16
        Caption = #1055#1077#1085#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 474
        Top = 34
        Width = 57
        Height = 16
        Caption = #1055#1077#1088#1080#1086#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 10
        Top = 74
        Width = 29
        Height = 16
        Caption = #1042#1080#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 286
        Top = 74
        Width = 50
        Height = 16
        Caption = #8470' '#1076#1086#1082'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 482
        Top = 74
        Width = 71
        Height = 16
        Caption = #1044#1072#1090#1072' '#1076#1086#1082'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 4
        Top = 98
        Width = 677
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object cxPeriod: TcxLookupComboBox
        Left = 549
        Top = 11
        ParentFont = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'MG'
        Properties.ListColumns = <
          item
            FieldName = 'MG1'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_mg
        Properties.OnChange = cxPeriodPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyPress = cxPeriodKeyPress
        Width = 114
      end
      object cxVar: TcxLookupComboBox
        Left = 45
        Top = 67
        ParentFont = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_typespay
        Properties.OnCloseUp = cxVarPropertiesCloseUp
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 236
      end
      object cxLsk: TcxMaskEdit
        Left = 40
        Top = 20
        ParentFont = False
        Properties.EditMask = '00000000;1;_'
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Text = '        '
        OnDblClick = cxLskDblClick
        OnKeyDown = cxLskKeyDown
        OnKeyPress = cxLskKeyPress
        Width = 112
      end
      object cxSumma: TcxMaskEdit
        Left = 208
        Top = 19
        ParentFont = False
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        OnKeyPress = cxSummaKeyPress
        Width = 114
      end
      object cxPenya: TcxMaskEdit
        Left = 362
        Top = 19
        ParentFont = False
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        OnKeyPress = cxPenyaKeyPress
        Width = 110
      end
      object cxNumDoc: TcxMaskEdit
        Left = 338
        Top = 59
        ParentFont = False
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 135
      end
      object cxDate: TcxDateEdit
        Left = 560
        Top = 64
        TabOrder = 7
        Width = 121
      end
    end
    object Panel2: TPanel
      Left = 725
      Top = 18
      Width = 160
      Height = 137
      Align = alRight
      TabOrder = 1
      DesignSize = (
        160
        137)
      object Button1: TButton
        Left = 24
        Top = 45
        Width = 109
        Height = 40
        Anchors = []
        Caption = #1042#1074#1086#1076
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 60
    Width = 887
    Height = 287
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    object cxGrid1CardView1: TcxGridCardView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CardIndent = 7
    end
    object cxGrid1TableView1: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Enabled = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Enabled = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DS_c_kwtp
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1SUMM_ITG
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMM_ITG
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMMA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PENYA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMM_ITG
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        Caption = #1051#1080#1094'. '#1089#1095#1077#1090
        DataBinding.FieldName = 'LSK'
        Width = 54
      end
      object cxGrid1DBTableView1ADR: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADR'
        Width = 134
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'SUMMA'
        Width = 59
      end
      object cxGrid1DBTableView1PENYA: TcxGridDBColumn
        Caption = #1055#1077#1085#1103
        DataBinding.FieldName = 'PENYA'
        Width = 64
      end
      object cxGrid1DBTableView1SUMM_ITG: TcxGridDBColumn
        Caption = #1048#1090#1086#1075#1086
        DataBinding.FieldName = 'SUMM_ITG'
        Width = 63
      end
      object cxGrid1DBTableView1DOPL: TcxGridDBColumn
        Caption = #1055#1077#1088#1080#1086#1076' '#1086#1087#1083#1072#1090#1099
        DataBinding.FieldName = 'DOPL'
        Width = 64
      end
      object cxGrid1DBTableView1DTEK: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DTEK'
        Width = 67
      end
      object cxGrid1DBTableView1NKVIT: TcxGridDBColumn
        Caption = #8470' '#1082#1074#1080#1090
        DataBinding.FieldName = 'NKVIT'
        Width = 65
      end
      object cxGrid1DBTableView1TS: TcxGridDBColumn
        Caption = #1042#1088#1077#1084#1103
        DataBinding.FieldName = 'TS'
        Width = 93
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DS_c_kwtp_mg
      DataController.DetailKeyFieldNames = 'C_KWTP_ID'
      DataController.KeyFieldNames = 'C_KWTP_ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView2SUMMA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView2PENYA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView2SUMM_ITG
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView2OPER: TcxGridDBColumn
        Caption = #1054#1087#1077#1088#1072#1094#1080#1103
        DataBinding.FieldName = 'OPER'
      end
      object cxGrid1DBTableView2DOPL: TcxGridDBColumn
        Caption = #1055#1077#1088#1080#1086#1076
        DataBinding.FieldName = 'DOPL'
      end
      object cxGrid1DBTableView2SUMMA: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'SUMMA'
      end
      object cxGrid1DBTableView2PENYA: TcxGridDBColumn
        Caption = #1055#1077#1085#1103
        DataBinding.FieldName = 'PENYA'
      end
      object cxGrid1DBTableView2SUMM_ITG: TcxGridDBColumn
        Caption = #1048#1090#1086#1075#1086
        DataBinding.FieldName = 'SUMM_ITG'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView2
      end
    end
  end
  object OD_c_kwtp: TOracleDataSet
    SQL.Strings = (
      'select t.lsk,  '
      
        's.name||'#39', '#39'||NVL(LTRIM(k.nd,'#39'0'#39'),'#39'0'#39')||'#39'-'#39'||NVL(LTRIM(k.kw,'#39'0'#39')' +
        ','#39'0'#39')'
      
        'as adr, a.summa, a.penya, nvl(t.summa,0)+nvl(t.penya,0) as summ_' +
        'itg, t.oper, '
      't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, '
      
        'substr(t.dopl,1,4)||'#39'-'#39'||substr(t.dopl,5,2) as dopl, t.ts, t.id,' +
        ' t.iscorrect '
      
        'from scott.c_kwtp t join scott.kart k on k.lsk=t.lsk and t.oper ' +
        '= :oper and t.nkom=scott.init.get_nkom() and  ((:var =1) or (:va' +
        'r =0 and  t.nink = 0))'
      ' join scott.spul s on k.kul=s.id'
      
        ' left join (select t.c_kwtp_id, sum(t.summa) as summa, sum(t.pen' +
        'ya) as penya from scott.c_kwtp_mg t'
      '               group by t.c_kwtp_id) a on t.id=a.c_kwtp_id'
      'order by t.ts')
    Optimize = False
    Variables.Data = {
      04000000020000000A0000003A004F0050004500520061000000000000000000
      0000080000003A00560041005200030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F000000060000004C0053004B000100000000000A00000053005500
      4D004D0041000100000000000A000000500045004E0059004100010000000000
      080000004F00500045005200010000000000080000004E0049004E004B000100
      00000000080000004E004B004F004D0001000000000008000000440054004500
      4B000100000000000E0000004400410054005F0049004E004B00010000000000
      0A0000004E004B00560049005400010000000000040000005400530001000000
      00000400000049004400010000000000120000004900530043004F0052005200
      4500430054000100000000000600000041004400520001000000000008000000
      44004F0050004C0001000000000010000000530055004D004D005F0049005400
      4700010000000000}
    Master = OD_oper
    MasterFields = 'OPER'
    DetailFields = 'OPER'
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 152
    object OD_c_kwtpLSK: TStringField
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_c_kwtpADR: TStringField
      FieldName = 'ADR'
      Size = 41
    end
    object OD_c_kwtpSUMMA: TFloatField
      FieldName = 'SUMMA'
    end
    object OD_c_kwtpPENYA: TFloatField
      FieldName = 'PENYA'
    end
    object OD_c_kwtpOPER: TStringField
      FieldName = 'OPER'
      Size = 2
    end
    object OD_c_kwtpNINK: TFloatField
      FieldName = 'NINK'
    end
    object OD_c_kwtpNKOM: TStringField
      FieldName = 'NKOM'
      Required = True
      Size = 3
    end
    object OD_c_kwtpDTEK: TDateTimeField
      FieldName = 'DTEK'
      Required = True
    end
    object OD_c_kwtpNKVIT: TFloatField
      FieldName = 'NKVIT'
    end
    object OD_c_kwtpDAT_INK: TDateTimeField
      FieldName = 'DAT_INK'
    end
    object OD_c_kwtpDOPL: TStringField
      FieldName = 'DOPL'
      Size = 7
    end
    object OD_c_kwtpTS: TDateTimeField
      FieldName = 'TS'
    end
    object OD_c_kwtpID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_c_kwtpISCORRECT: TFloatField
      FieldName = 'ISCORRECT'
    end
    object OD_c_kwtpSUMM_ITG: TFloatField
      FieldName = 'SUMM_ITG'
    end
  end
  object DS_c_kwtp: TDataSource
    DataSet = OD_c_kwtp
    Left = 56
    Top = 152
  end
  object OD_oper: TOracleDataSet
    SQL.Strings = (
      'select o.oper, o.oper||'#39' '#39'||o.naim  as naim '
      ' from scott.oper o'
      'where o.fk_org=scott.init.get_org_nkom'
      'union all'
      'select o.oper, o.oper||'#39' '#39'||o.naim  as naim '
      ' from scott.oper o'
      'where o.fk_org is null'
      'order by oper'
      ''
      ''
      '/* '#1085#1077' '#1087#1086#1085#1103#1083' '#1095#1090#1086' '#1101#1090#1086' '#1073#1099#1083#1086
      'select o.oper, o.oper||'#39' '#39'||o.naim  as naim '
      ' from scott.oper o, scott.v_cu_usxrl u'
      'where o.fk_org=u.fk_org'
      
        '--and substr(o.oigu,2,1)='#39'0'#39' --'#1090#1086#1083#1100#1082#1086' '#1073#1077#1079#1085#1072#1083' ('#1085#1077#1083#1100#1079#1103', '#1090'.'#1082'. '#1082#1080#1089#1077#1083 +
        #1100' '#1074#1074#1086#1076#1080#1090' '#1085#1072#1083' '#1079#1076#1077#1089#1100')'
      'order by o.oper'
      '*/')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004F00500045005200010000000000080000004E00
      410049004D00010000000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 152
  end
  object DS_oper: TDataSource
    DataSet = OD_oper
    Left = 168
    Top = 152
  end
  object OD_mg: TOracleDataSet
    SQL.Strings = (
      'select null as mg,  null as mg1  from dual'
      'union all'
      'select to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39') as mg,'
      'to_char(add_months(sysdate, a.rn),'#39'YYYY-MM'#39') as mg1'
      ' from '
      '(select -1 * rownum as rn from all_objects where rownum <300'
      'union all'
      'select rownum-1 as rn from all_objects where rownum <300'
      ') a, scott.params p'
      'where to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39')>=p.period_back'
      'and to_char(add_months(sysdate, a.rn),'#39'YYYYMM'#39')<=p.period_forwrd'
      'order by mg')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 200
    Top = 152
  end
  object DS_mg: TDataSource
    DataSet = OD_mg
    Left = 232
    Top = 152
  end
  object OD_c_kwtp_mg: TOracleDataSet
    SQL.Strings = (
      
        'select t.lsk, t.summa, t.penya, t.oper, substr(t.dopl,1,4)||'#39'-'#39'|' +
        '|substr(t.dopl,5,2) as dopl, '
      
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.c_kwtp_id, t.ts, n' +
        'vl(t.summa,0)+nvl(t.penya,0) as summ_itg'
      'from '
      'scott.c_kwtp_mg t '
      'order by t.c_kwtp_id, t.id--,t.dopl')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000D000000060000004C0053004B000100000000000A00000053005500
      4D004D0041000100000000000A000000500045004E0059004100010000000000
      080000004F005000450052000100000000000800000044004F0050004C000100
      00000000080000004E0049004E004B00010000000000080000004E004B004F00
      4D00010000000000080000004400540045004B000100000000000E0000004400
      410054005F0049004E004B000100000000000A0000004E004B00560049005400
      01000000000004000000540053000100000000001200000043005F004B005700
      540050005F004900440001000000000010000000530055004D004D005F004900
      54004700010000000000}
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 200
  end
  object DS_c_kwtp_mg: TDataSource
    DataSet = OD_c_kwtp_mg
    Left = 56
    Top = 200
  end
  object DS_typespay: TDataSource
    DataSet = OD_typespay
    Left = 296
    Top = 152
  end
  object OD_typespay: TOracleDataSet
    SQL.Strings = (
      'select t.* from scott.spr_typespay t'
      'order by npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000004000000040000004900440001000000000004000000430044000100
      00000000080000004E0041004D004500010000000000060000004E0050005000
      010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 264
    Top = 152
    object OD_typespayID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_typespayCD: TStringField
      FieldName = 'CD'
      Size = 32
    end
    object OD_typespayNAME: TStringField
      FieldName = 'NAME'
      Size = 32
    end
    object OD_typespayNPP: TFloatField
      FieldName = 'NPP'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 200
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1086#1087#1083#1072#1090#1099
      OnClick = N1Click
    end
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <
      item
        Component = chk1
        Properties.Strings = (
          'Action'
          'Alignment'
          'AllowGrayed'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'State'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width'
          'WordWrap')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'frmGetPayStore.ini'
    StorageType = stRegistry
    Left = 16
    Top = 96
  end
  object tmr1: TTimer
    Interval = 1500
    OnTimer = tmr1Timer
    Left = 824
    Top = 16
  end
end
