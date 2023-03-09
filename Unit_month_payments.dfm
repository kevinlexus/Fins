object Form_month_payments: TForm_month_payments
  Left = 322
  Top = 268
  Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1079#1072' '#1084#1077#1089#1103#1094
  ClientHeight = 568
  ClientWidth = 836
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox2: TGroupBox
    Left = 0
    Top = 520
    Width = 836
    Height = 48
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      836
      48)
    object Button2: TButton
      Left = 927
      Top = 11
      Width = 92
      Height = 31
      Anchors = []
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 677
      Top = 10
      Width = 149
      Height = 31
      Anchors = [akRight, akBottom]
      Caption = #1044#1091#1073#1083#1080#1082#1072#1090' '#1082#1074#1080#1090#1072#1085#1094#1080#1080
      Enabled = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 532
      Top = 16
      Width = 119
      Height = 21
      Caption = #1042#1089#1077' '#1087#1077#1088#1080#1086#1076#1099
      TabOrder = 2
      OnClick = CheckBox1Click
    end
  end
  object Button4: TButton
    Left = 354
    Top = 295
    Width = 228
    Height = 61
    Caption = #1046#1076#1080#1090#1077'...'
    TabOrder = 0
    Visible = False
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 836
    Height = 520
    Align = alClient
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
      Navigator.Visible = True
      DataController.DataSource = DS_c_kwtp
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
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
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        DataBinding.FieldName = 'LSK'
        Width = 65
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
        Width = 69
      end
      object cxGrid1DBTableView1PENYA: TcxGridDBColumn
        DataBinding.FieldName = 'PENYA'
        Width = 74
      end
      object cxGrid1DBTableView1SUMM_ITG: TcxGridDBColumn
        Caption = #1048#1090#1086#1075#1086
        DataBinding.FieldName = 'SUMM_ITG'
        Width = 73
      end
      object cxGrid1DBTableView1OPER: TcxGridDBColumn
        DataBinding.FieldName = 'OPER'
        Width = 55
      end
      object cxGrid1DBTableView1DOPL: TcxGridDBColumn
        DataBinding.FieldName = 'DOPL'
        Width = 44
      end
      object cxGrid1DBTableView1NINK: TcxGridDBColumn
        DataBinding.FieldName = 'NINK'
        Width = 55
      end
      object cxGrid1DBTableView1NKOM: TcxGridDBColumn
        DataBinding.FieldName = 'NKOM'
        Width = 39
      end
      object cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'COMP_NAME'
        Width = 44
      end
      object cxGrid1DBTableView1DTEK: TcxGridDBColumn
        DataBinding.FieldName = 'DTEK'
        Width = 59
      end
      object cxGrid1DBTableView1NKVIT: TcxGridDBColumn
        DataBinding.FieldName = 'NKVIT'
        Width = 55
      end
      object cxGrid1DBTableView1DAT_INK: TcxGridDBColumn
        DataBinding.FieldName = 'DAT_INK'
        Width = 59
      end
      object cxGrid1DBTableView1TS: TcxGridDBColumn
        DataBinding.FieldName = 'TS'
        Width = 81
      end
      object cxGrid1DBTableView1ISCORRECT: TcxGridDBColumn
        DataBinding.FieldName = 'ISCORRECT'
        Width = 54
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'ID'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      PopupMenu = PopupMenu2
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_c_kwtp_mg
      DataController.DetailKeyFieldNames = 'C_KWTP_ID'
      DataController.KeyFieldNames = 'ID'
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
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView2Column2: TcxGridDBColumn
        DataBinding.FieldName = 'LSK'
        Width = 80
      end
      object cxGrid1DBTableView2OPER: TcxGridDBColumn
        Caption = #1054#1087#1077#1088#1072#1094#1080#1103
        DataBinding.FieldName = 'OPER'
        Width = 80
      end
      object cxGrid1DBTableView2DOPL: TcxGridDBColumn
        DataBinding.FieldName = 'DOPL'
        Width = 80
      end
      object cxGrid1DBTableView2SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
        Width = 80
      end
      object cxGrid1DBTableView2PENYA: TcxGridDBColumn
        DataBinding.FieldName = 'PENYA'
        Width = 80
      end
      object cxGrid1DBTableView2SUMM_ITG: TcxGridDBColumn
        Caption = #1048#1090#1086#1075#1086
        DataBinding.FieldName = 'SUMM_ITG'
        Width = 80
      end
      object cxGrid1DBTableView2Column1: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView2
      end
    end
  end
  object DS_c_kwtp_mg: TDataSource
    DataSet = OD_c_kwtp_mg
    Left = 184
    Top = 464
  end
  object OD_c_kwtp_mg: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.lsk, t.summa, t.penya, t.oper, t.dopl,'
      
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.oper||'#39'-'#39'||p' +
        '.naim as oper_name,'
      'nvl(t.summa,0)+nvl(t.penya,0) as summ_itg, t.c_kwtp_id'
      'from scott.kart k join scott.c_kwtp_mg t  on k.lsk=t.lsk'
      
        '                            left join scott.oper p on t.oper=p.o' +
        'per'
      'where '
      
        '((:var =0) or (:var =1 and  k.k_lsk_id=:k_lsk_id) or (:var =2 an' +
        'd  k.lsk=:lsk) )'
      'order by t.c_kwtp_id, t.dopl')
    Optimize = False
    Variables.Data = {
      0400000003000000080000003A00560041005200030000000000000000000000
      120000003A004B005F004C0053004B005F004900440003000000000000000000
      0000080000003A004C0053004B00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F000000060000004C0053004B000100000000000A00000053005500
      4D004D0041000100000000000A000000500045004E0059004100010000000000
      080000004F005000450052000100000000000800000044004F0050004C000100
      00000000080000004E0049004E004B00010000000000080000004E004B004F00
      4D00010000000000080000004400540045004B000100000000000E0000004400
      410054005F0049004E004B000100000000000A0000004E004B00560049005400
      0100000000000400000054005300010000000000120000004F00500045005200
      5F004E0041004D00450001000000000004000000490044000100000000001000
      0000530055004D004D005F004900540047000100000000001200000043005F00
      4B005700540050005F0049004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 152
    Top = 464
    object OD_c_kwtp_mgLSK: TStringField
      DisplayLabel = #1051'/C'
      DisplayWidth = 8
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_c_kwtp_mgSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'SUMMA'
    end
    object OD_c_kwtp_mgPENYA: TFloatField
      DisplayLabel = #1055#1077#1085#1103
      DisplayWidth = 10
      FieldName = 'PENYA'
    end
    object OD_c_kwtp_mgDOPL: TStringField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 7
      FieldName = 'DOPL'
      Required = True
      Size = 6
    end
    object OD_c_kwtp_mgNINK: TFloatField
      DisplayLabel = #8470' '#1082#1074#1080#1090
      DisplayWidth = 10
      FieldName = 'NINK'
      Visible = False
    end
    object OD_c_kwtp_mgDTEK: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
      DisplayWidth = 9
      FieldName = 'DTEK'
      Required = True
      Visible = False
    end
    object OD_c_kwtp_mgNKVIT: TFloatField
      DisplayLabel = #8470' '#1082#1074#1080#1090
      DisplayWidth = 10
      FieldName = 'NKVIT'
      Visible = False
    end
    object OD_c_kwtp_mgNKOM: TStringField
      DisplayLabel = #8470' '#1082#1086#1084#1087'.'
      DisplayWidth = 3
      FieldName = 'NKOM'
      Required = True
      Visible = False
      Size = 3
    end
    object OD_c_kwtp_mgOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 28
    end
    object OD_c_kwtp_mgID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_c_kwtp_mgOPER: TStringField
      DisplayWidth = 3
      FieldName = 'OPER'
      Required = True
      Size = 3
    end
    object OD_c_kwtp_mgDAT_INK: TDateTimeField
      FieldName = 'DAT_INK'
    end
    object OD_c_kwtp_mgSUMM_ITG: TFloatField
      FieldName = 'SUMM_ITG'
    end
    object OD_c_kwtp_mgC_KWTP_ID: TFloatField
      FieldName = 'C_KWTP_ID'
      Required = True
    end
  end
  object DS_c_kwtp: TDataSource
    DataSet = OD_c_kwtp
    Left = 120
    Top = 464
  end
  object OD_c_kwtp: TOracleDataSet
    SQL.Strings = (
      ''
      
        'select t.lsk, a.summa, a.penya, nvl(t.summa,0)+nvl(t.penya,0) as' +
        ' summ_itg, a.oper, dopl, '
      
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.id, t.iscorr' +
        'ect, c.name as comp_name, a.oper||'#39'-'#39'||p.naim as oper_name,'
      't.num_doc, t.dat_doc, m.cash_num, p.cash_oper_tp, k.k_lsk_id'
      '  from scott.kart k join scott.c_kwtp t on k.lsk=t.lsk'
      
        '                               join scott.c_comps m on t.nkom=m.' +
        'nkom'
      
        '                               join scott.t_org c on m.fk_org=c.' +
        'id'
      
        ' left join (select t.c_kwtp_id, max(t.oper) as oper, sum(t.summa' +
        ') as summa, sum(t.penya) as penya from scott.c_kwtp_mg t'
      '               group by t.c_kwtp_id) a on t.id=a.c_kwtp_id'
      ' left join scott.oper p on a.oper=p.oper'
      'where '
      
        ' ((:var =0) or (:var =1 and  k.k_lsk_id=:k_lsk_id) or (:var =2 a' +
        'nd  k.lsk=:lsk)'
      ')'
      'order by t.ts')
    ReadBuffer = 1000
    Optimize = False
    Variables.Data = {
      0400000003000000080000003A00560041005200030000000000000000000000
      120000003A004B005F004C0053004B005F004900440003000000000000000000
      0000080000003A004C0053004B00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000015000000060000004C0053004B000100000000000A00000053005500
      4D004D0041000100000000000A000000500045004E0059004100010000000000
      080000004F005000450052000100000000000800000044004F0050004C000100
      00000000080000004E0049004E004B00010000000000080000004E004B004F00
      4D00010000000000080000004400540045004B000100000100000E0000004400
      410054005F0049004E004B000100000100000A0000004E004B00560049005400
      0100000000000400000054005300010000010000040000004900440000000000
      0000120000004900530043004F00520052004500430054000000000000001200
      000043004F004D0050005F004E0041004D004500000000000000120000004F00
      5000450052005F004E0041004D0045000000000000000E0000004E0055004D00
      5F0044004F0043000100000000000E0000004400410054005F0044004F004300
      01000000000010000000530055004D004D005F00490054004700010000000000
      1000000043004100530048005F004E0055004D00010000000000180000004300
      4100530048005F004F005000450052005F005400500001000000000010000000
      4B005F004C0053004B005F0049004400010000000000}
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterScroll = OD_c_kwtpAfterScroll
    AfterRefresh = OD_c_kwtpAfterRefresh
    Left = 88
    Top = 464
    object OD_c_kwtpID: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'ID'
      Required = True
    end
    object OD_c_kwtpLSK: TStringField
      DisplayLabel = #1051'/'#1057
      DisplayWidth = 9
      FieldName = 'LSK'
      Origin = 't.lsk'
      Required = True
      Size = 8
    end
    object OD_c_kwtpSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 8
      FieldName = 'SUMMA'
      Origin = 't.summa'
    end
    object OD_c_kwtpPENYA: TFloatField
      DisplayLabel = #1055#1077#1085#1103
      DisplayWidth = 10
      FieldName = 'PENYA'
      Origin = 't.penya'
    end
    object OD_c_kwtpOPER: TStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      DisplayWidth = 10
      FieldName = 'OPER'
      Origin = 't.oper'
      Required = True
      Size = 3
    end
    object OD_c_kwtpDOPL: TStringField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 8
      FieldName = 'DOPL'
      Size = 6
    end
    object OD_c_kwtpNINK: TFloatField
      DisplayLabel = #8470' '#1080#1085#1082
      DisplayWidth = 10
      FieldName = 'NINK'
      Origin = 't.nink'
    end
    object OD_c_kwtpNKOM: TStringField
      DisplayLabel = #8470' '#1082#1086#1084#1087'.'
      DisplayWidth = 7
      FieldName = 'NKOM'
      Origin = 't.nkom'
      Required = True
      Size = 3
    end
    object OD_c_kwtpCOMP_NAME: TStringField
      DisplayLabel = #1048#1089#1090#1086#1095#1085#1080#1082' '#1086#1087#1083#1072#1090#1099
      DisplayWidth = 8
      FieldName = 'COMP_NAME'
      Origin = 'o.name'
      Required = True
      Size = 64
    end
    object OD_c_kwtpDTEK: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
      DisplayWidth = 11
      FieldName = 'DTEK'
      Origin = 't.dtek'
      Required = True
    end
    object OD_c_kwtpNKVIT: TFloatField
      DisplayLabel = #8470' '#1082#1074#1080#1090
      DisplayWidth = 10
      FieldName = 'NKVIT'
      Origin = 't.nkvit'
    end
    object OD_c_kwtpDAT_INK: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1080#1085#1082'.'
      DisplayWidth = 11
      FieldName = 'DAT_INK'
      Origin = 't.dat_ink'
    end
    object OD_c_kwtpTS: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1088#1077#1075'.'
      DisplayWidth = 15
      FieldName = 'TS'
      Origin = 't.ts'
    end
    object OD_c_kwtpISCORRECT: TFloatField
      DisplayLabel = #1050#1086#1088#1088'?'
      DisplayWidth = 10
      FieldName = 'ISCORRECT'
    end
    object OD_c_kwtpOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 25
    end
    object OD_c_kwtpNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 25
    end
    object OD_c_kwtpDAT_DOC: TDateTimeField
      FieldName = 'DAT_DOC'
    end
    object OD_c_kwtpSUMM_ITG: TFloatField
      FieldName = 'SUMM_ITG'
    end
    object OD_c_kwtpCASH_NUM: TFloatField
      FieldName = 'CASH_NUM'
    end
    object OD_c_kwtpCASH_OPER_TP: TFloatField
      FieldName = 'CASH_OPER_TP'
    end
    object OD_c_kwtpK_LSK_ID: TFloatField
      FieldName = 'K_LSK_ID'
      Required = True
    end
  end
  object OD_c_kwtp_chk: TOracleDataSet
    SQL.Strings = (
      
        'select t.lsk, k.fio, s.name||'#39', '#39'||NVL(LTRIM(k.nd,'#39'0'#39'),'#39'0'#39')||'#39'-'#39 +
        '||NVL(LTRIM(k.kw,'#39'0'#39'),'#39'0'#39') as adr,'
      
        '  scott.utils.get_sum_str_2(nvl(t.summa,0)+nvl(t.penya,0)) as su' +
        'mstr,'
      
        '  t.summa, t.oper, scott.init.get_fio() as fio_kass, k.phw,k.pgw' +
        ',k.pel,'
      
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.id, t.iscorr' +
        'ect, '
      #1089'.name as name_org, '#1089'.adr as adr_org, '#1089'.inn, '#1089'.okpo, '#1089'.kpp'
      'from scott.c_kwtp t, scott.kart k, scott.spul s, scott.t_org '#1089
      
        'where t.id=:id and t.lsk=k.lsk and k.kul=s.id and '#1089'.id=scott.ini' +
        't.get_org_nkom'
      'order by t.nkvit')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0049004400030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000017000000060000004C0053004B000100000000000A00000053005500
      4D004D004100010000000000080000004F005000450052000100000000000800
      00004E0049004E004B00010000000000080000004E004B004F004D0001000000
      0000080000004400540045004B000100000000000E0000004400410054005F00
      49004E004B000100000000000A0000004E004B00560049005400010000000000
      0400000054005300010000000000040000004900440001000000000012000000
      4900530043004F00520052004500430054000100000000000600000046004900
      4F00010000000000060000004100440052000100000000000C00000053005500
      4D0053005400520001000000000010000000460049004F005F004B0041005300
      53000100000000000600000049004E004E00010000000000080000004F004B00
      50004F00010000000000100000004E0041004D0045005F004F00520047000100
      000000000E0000004100440052005F004F005200470001000000000006000000
      4B00500050000100000000000600000050004800570001000000000006000000
      50004700570001000000000006000000500045004C00010000000000}
    Master = OD_c_kwtp
    MasterFields = 'id'
    DetailFields = 'id'
    Session = DataModule1.OracleSession1
    Left = 224
    Top = 464
    object StringField1: TStringField
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_c_kwtpFIO: TStringField
      FieldName = 'FIO'
      Size = 50
    end
    object OD_c_kwtpADR: TStringField
      FieldName = 'ADR'
      Size = 41
    end
    object OD_c_kwtpSUMSTR: TStringField
      FieldName = 'SUMSTR'
      Size = 4000
    end
    object FloatField1: TFloatField
      FieldName = 'SUMMA'
    end
    object StringField2: TStringField
      FieldName = 'OPER'
      Required = True
      Size = 2
    end
    object OD_c_kwtpFIO_KASS: TStringField
      FieldName = 'FIO_KASS'
      Size = 4000
    end
    object FloatField2: TFloatField
      FieldName = 'NINK'
    end
    object StringField3: TStringField
      FieldName = 'NKOM'
      Required = True
      Size = 3
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DTEK'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'NKVIT'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DAT_INK'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'TS'
    end
    object FloatField4: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object FloatField5: TFloatField
      FieldName = 'ISCORRECT'
    end
    object OD_c_kwtpNAME_ORG: TStringField
      FieldName = 'NAME_ORG'
      Size = 50
    end
    object OD_c_kwtpADR_ORG: TStringField
      FieldName = 'ADR_ORG'
      Size = 100
    end
    object OD_c_kwtpINN: TStringField
      FieldName = 'INN'
      Size = 12
    end
    object OD_c_kwtpOKPO: TStringField
      FieldName = 'OKPO'
      Size = 8
    end
    object OD_c_kwtpKPP: TStringField
      FieldName = 'KPP'
      Size = 12
    end
    object OD_c_kwtp_chkPHW: TFloatField
      FieldName = 'PHW'
    end
    object OD_c_kwtp_chkPGW: TFloatField
      FieldName = 'PGW'
    end
    object OD_c_kwtp_chkPEL: TFloatField
      FieldName = 'PEL'
    end
  end
  object DS_c_kwtp_chk: TDataSource
    DataSet = OD_c_kwtp_chk
    Left = 256
    Top = 464
  end
  object OD_c_kwtp_mg_chk: TOracleDataSet
    SQL.Strings = (
      'select t.lsk, t.summa, t.penya, t.oper, o.naim, '
      ' substr(t.dopl,5,2)||'#39'.'#39'||substr(t.dopl,1,4) as dopl, '
      
        'nvl(to_char(t.cnt_sch0),'#39#39') as cnt_sch0, nvl(to_char(t.cnt_sch),' +
        ' '#39#39') as cnt_sch,'
      't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts'
      'from '
      'scott.c_kwtp_mg t, scott.oper o'
      'where c_kwtp_id = :c_kwtp_id and t.oper=o.oper'
      'order by t.oper, t.dopl')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0043005F004B005700540050005F0049004400
      040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000E000000060000004C0053004B000100000000000A00000053005500
      4D004D0041000100000000000A000000500045004E0059004100010000000000
      080000004F005000450052000100000000000800000044004F0050004C000100
      00000000080000004E0049004E004B00010000000000080000004E004B004F00
      4D00010000000000080000004400540045004B000100000000000E0000004400
      410054005F0049004E004B000100000000000A0000004E004B00560049005400
      0100000000000400000054005300010000000000080000004E00410049004D00
      0100000000000E00000043004E0054005F005300430048000100000000001000
      000043004E0054005F005300430048003000010000000000}
    Master = OD_c_kwtp_chk
    MasterFields = 'ID'
    DetailFields = 'C_KWTP_ID'
    Session = DataModule1.OracleSession1
    Left = 288
    Top = 464
    object StringField4: TStringField
      DisplayLabel = #1051'/C'
      DisplayWidth = 8
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object FloatField6: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'SUMMA'
    end
    object FloatField7: TFloatField
      DisplayLabel = #1055#1077#1085#1103
      DisplayWidth = 10
      FieldName = 'PENYA'
    end
    object StringField5: TStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      DisplayWidth = 8
      FieldName = 'OPER'
      Required = True
      Size = 3
    end
    object StringField6: TStringField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 7
      FieldName = 'DOPL'
      Required = True
      Size = 7
    end
    object FloatField8: TFloatField
      DisplayLabel = #8470' '#1082#1074#1080#1090
      DisplayWidth = 10
      FieldName = 'NINK'
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 9
      FieldName = 'DTEK'
      Required = True
    end
    object FloatField9: TFloatField
      DisplayLabel = #8470' '#1082#1074#1080#1090
      DisplayWidth = 10
      FieldName = 'NKVIT'
    end
    object StringField7: TStringField
      DisplayLabel = #8470' '#1082#1086#1084#1087'.'
      DisplayWidth = 3
      FieldName = 'NKOM'
      Required = True
      Visible = False
      Size = 3
    end
    object OD_c_kwtp_mgNAIM: TStringField
      FieldName = 'NAIM'
      Size = 17
    end
    object OD_c_kwtp_mgCNT_SCH0: TStringField
      FieldName = 'CNT_SCH0'
      Size = 40
    end
    object OD_c_kwtp_mgCNT_SCH: TStringField
      FieldName = 'CNT_SCH'
      Size = 40
    end
  end
  object DS_c_kwtp_mg_chk: TDataSource
    DataSet = OD_c_kwtp_mg_chk
    Left = 320
    Top = 464
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 96
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1083#1072#1090#1105#1078
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1054#1073#1088#1072#1090#1085#1099#1081' '#1087#1083#1072#1090#1105#1078
      OnClick = N3Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 344
    Top = 152
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1083#1072#1090#1105#1078
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103
      OnClick = N5Click
    end
  end
  object OD_paycheck: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.lsk, t.summa, t.penya, t.oper, t.dopl,'
      
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.oper||'#39'-'#39'||p' +
        '.naim as oper_name,'
      
        'nvl(t.summa,0)+nvl(t.penya,0) as summ_itg, t.c_kwtp_id, decode(t' +
        'p.cd,'#39'LSK_TP_MAIN'#39', 1, '#39'LSK_TP_ADDIT'#39', 2) as dep,'
      'p.cash_oper_tp'
      
        'from scott.c_kwtp_mg t, scott.oper p, scott.kart k, scott.v_lsk_' +
        'tp tp'
      'where '
      't.oper=p.oper and t.c_kwtp_id=:c_kwtp_id and '
      't.lsk=k.lsk and k.fk_tp=tp.id(+)'
      'order by t.dopl')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0043005F004B005700540050005F0049004400
      030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000100000000400000049004400010000000000060000004C0053004B00
      0100000000000A000000530055004D004D0041000100000000000A0000005000
      45004E0059004100010000000000080000004F00500045005200010000000000
      0800000044004F0050004C00010000000000080000004E0049004E004B000100
      00000000080000004E004B004F004D0001000000000008000000440054004500
      4B000100000000000A0000004E004B005600490054000100000000000E000000
      4400410054005F0049004E004B00010000000000040000005400530001000000
      0000120000004F005000450052005F004E0041004D0045000100000000001000
      0000530055004D004D005F004900540047000100000000001200000043005F00
      4B005700540050005F0049004400010000000000040000004300440001000000
      0000}
    Master = OD_c_kwtp
    MasterFields = 'ID'
    DetailFields = 'C_KWTP_ID'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 88
    Top = 408
  end
  object OD_meter: TOracleDataSet
    SQL.Strings = (
      'select distinct t.id,'#11
      #11
      #11
      '                t.npp,'#11
      #11
      #11
      '                u.nm,'#11
      #11
      #11
      '                u.npp as npp_usl,'#11
      #11
      #11
      '                (select sum(x.n1)'#11
      #11
      #11
      '                 from scott.t_objxpar x'#11
      #11
      #11
      
        '                          join scott.u_list s on s.cd = '#39'ins_vol' +
        '_sch'#39#11
      #11
      #11
      '                 where t.k_lsk_id = x.fk_k_lsk'#11
      #11
      #11
      '                   and x.fk_list = s.id'#11
      #11
      #11
      '                   and x.mg = p.period) as vol,'#11
      #11
      #11
      '                (select distinct last_value(x.n1)'#11
      
        '                                            over (order by x.id ' +
        'rows between unbounded preceding and unbounded following)'#11
      #11
      #11
      '                 from scott.t_objxpar x'#11
      #11
      #11
      
        '                          join scott.u_list s on s.cd = '#39'ins_sch' +
        #39#11
      #11
      #11
      '                 where t.k_lsk_id = x.fk_k_lsk'#11
      #11
      #11
      '                   and x.fk_list = s.id'#11
      #11
      #11
      '                   and x.mg <= p.period) as n1,'#11
      #11
      #11
      '                case'#11
      
        '                    when t.dt2 between to_date(p.period || '#39'01'#39',' +
        ' '#39'YYYYMMDD'#39') and add_months(last_day(to_date(p.period || '#39'01'#39', '#39 +
        'YYYYMMDD'#39')), 2)'#11
      '                        then 1'#11
      '                    else 0 end as expired'#11
      #11
      #11
      'from scott.meter t'#11
      #11
      #11
      '         join scott.usl u on t.fk_usl = u.usl'#11
      #11
      #11
      '         join scott.params p on 1 = 1'#11
      #11
      #11
      'where t.fk_klsk_obj = :k_lsk_id'#11
      #11
      #11
      '  and (t.dt2 >='#11
      
        '       last_day(to_date(p.period || '#39'01'#39', '#39'YYYYMMDD'#39')) or -- '#1083#1080#1073 +
        #1086' '#1089#1095'. '#1076#1072#1083#1100#1096#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1077#1090', '#1083#1080#1073#1086' '#1079#1072#1074#1077#1088#1096#1072#1077#1090' '#1088#1072#1073#1086#1090#1091' '#1074' '#1074#1099#1073#1088#1072#1085#1085#1086#1084' '#1087#1077#1088#1080#1086 +
        #1076#1077#11
      #11
      #11
      
        '       t.dt2 between to_date(p.period || '#39'01'#39', '#39'YYYYMMDD'#39') and l' +
        'ast_day(to_date(p.period || '#39'01'#39', '#39'YYYYMMDD'#39')))'#11
      #11
      #11
      'group by t.id, t.npp, u.nm, u.npp, t.k_lsk_id, p.period,'#11
      #11
      '         case'#11
      
        '             when t.dt2 between to_date(p.period || '#39'01'#39', '#39'YYYYM' +
        'MDD'#39') and add_months(last_day(to_date(p.period || '#39'01'#39', '#39'YYYYMMD' +
        'D'#39')), 2)'#11
      '                 then 1'#11
      '             else 0 end'#11
      #11
      #11
      'order by u.npp, t.npp'#11
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A004B005F004C0053004B005F00490044000300
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000007000000040000004E004D00010000000000040000004E0031000100
      000000000400000049004400010000000000060000004E005000500001000000
      00000600000056004F004C000100000000000E00000045005800500049005200
      450044000100000000000E0000004E00500050005F00550053004C0001000000
      0000}
    Master = OD_c_kwtp
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    RefreshOptions = [roAfterUpdate, roAllFields]
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 136
    Top = 406
    object OD_meterID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_meterNPP: TFloatField
      FieldName = 'NPP'
    end
    object OD_meterNM: TStringField
      FieldName = 'NM'
      Size = 35
    end
    object OD_meterN1: TFloatField
      FieldName = 'N1'
    end
    object OD_meterVOL: TFloatField
      FieldName = 'VOL'
    end
    object OD_meterEXPIRED: TFloatField
      FieldName = 'EXPIRED'
    end
  end
  object DS_meter: TDataSource
    DataSet = OD_meter
    Left = 172
    Top = 406
  end
end
