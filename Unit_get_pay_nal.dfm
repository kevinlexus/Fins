object Form_get_pay_nal: TForm_get_pay_nal
  Left = 477
  Top = 288
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1042#1074#1086#1076' '#1086#1087#1083#1072#1090#1099
  ClientHeight = 370
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 21
    Width = 617
    Height = 48
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
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
      Left = 163
      Top = 14
      Width = 29
      Height = 16
      Caption = #1040#1076#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 208
      Top = 11
      Width = 417
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object cxLsk: TcxMaskEdit
      Left = 40
      Top = 12
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d{8}'
      Properties.ValidationOptions = [evoAllowLoseFocus]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnDblClick = cxLskDblClick
      OnKeyPress = cxLskKeyPress
      Width = 112
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 308
    Width = 617
    Height = 42
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      617
      42)
    object Label3: TLabel
      Left = 162
      Top = 16
      Width = 75
      Height = 16
      Caption = #1055#1086#1083#1091#1095#1077#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 352
      Top = 15
      Width = 47
      Height = 16
      Caption = #1057#1076#1072#1095#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 16
      Width = 45
      Height = 16
      Caption = #1048#1090#1086#1075#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 525
      Top = 11
      Width = 80
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1042#1074#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object cxAmount: TcxMaskEdit
      Left = 48
      Top = 11
      ParentFont = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = cxAmountKeyPress
      Width = 110
    end
    object cxSumma: TcxMaskEdit
      Left = 240
      Top = 11
      ParentFont = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnKeyPress = cxSummaKeyPress
      Width = 110
    end
    object cxRemain: TcxMaskEdit
      Left = 402
      Top = 11
      ParentFont = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 111
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 350
    Width = 617
    Height = 20
    Panels = <>
    OnDblClick = StatusBar1DblClick
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 617
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 74
    Caption = 'ToolBar1'
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 3
    object ToolButton3: TToolButton
      Left = 0
      Top = 0
      Caption = 'F10-'#1055#1086#1080#1089#1082
      ImageIndex = 1
    end
    object ToolButton2: TToolButton
      Left = 74
      Top = 0
      Caption = 'F11-'#1047#1072#1076#1086#1083#1078'.'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton1: TToolButton
      Left = 148
      Top = 0
      Caption = 'F12-'#1057#1095#1077#1090#1095#1080#1082#1080
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 69
    Width = 617
    Height = 239
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 211
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          OnKeyDown = cxGridDBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_c_kwtp_temp
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBTableView1OPER: TcxGridDBColumn
            Caption = #1054#1087#1077#1088#1072#1094#1080#1103
            DataBinding.FieldName = 'OPER'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 150
            Properties.GridMode = True
            Properties.KeyFieldNames = 'OPER'
            Properties.ListColumns = <
              item
                FieldName = 'NAIM'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_oper
            Width = 137
          end
          object cxGridDBTableView1SUMMA: TcxGridDBColumn
            DataBinding.FieldName = 'SUMMA'
            Options.Editing = False
            Width = 91
          end
          object cxGridDBTableView1PENYA: TcxGridDBColumn
            Caption = #1055#1077#1085#1103
            DataBinding.FieldName = 'PENYA'
            Options.Editing = False
            Width = 92
          end
          object cxGridDBTableView1ITOG: TcxGridDBColumn
            Caption = #1048#1090#1086#1075#1086
            DataBinding.FieldName = 'ITOG'
            Width = 92
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '2'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 211
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_chargepay
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1SUMMA
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1SUMMA2
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1PENYA
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1PENYA2
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
            DataBinding.FieldName = 'SUMMA'
          end
          object cxGrid1DBTableView1SUMMA2: TcxGridDBColumn
            DataBinding.FieldName = 'SUMMA2'
          end
          object cxGrid1DBTableView1PENYA: TcxGridDBColumn
            DataBinding.FieldName = 'PENYA'
          end
          object cxGrid1DBTableView1PENYA2: TcxGridDBColumn
            DataBinding.FieldName = 'PENYA2'
          end
          object cxGrid1DBTableView1MG: TcxGridDBColumn
            DataBinding.FieldName = 'MG'
          end
          object cxGrid1DBTableView1CHARGE: TcxGridDBColumn
            DataBinding.FieldName = 'CHARGE'
          end
          object cxGrid1DBTableView1PAYMENT: TcxGridDBColumn
            DataBinding.FieldName = 'PAYMENT'
          end
          object cxGrid1DBTableView1SAL: TcxGridDBColumn
            DataBinding.FieldName = 'SAL'
          end
          object cxGrid1DBTableView1ITOG: TcxGridDBColumn
            DataBinding.FieldName = 'ITOG'
          end
          object cxGrid1DBTableView1LSK: TcxGridDBColumn
            DataBinding.FieldName = 'LSK'
          end
          object cxGrid1DBTableView1LSK_TP: TcxGridDBColumn
            DataBinding.FieldName = 'LSK_TP'
          end
          object cxGrid1DBTableView1USL_NAME_SHORT: TcxGridDBColumn
            DataBinding.FieldName = 'USL_NAME_SHORT'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object OD_c_kwtp_temp: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid '
      'from scott.c_kwtp_temp t'
      '')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      05000000060000000A000000530055004D004D0041000100000000000A000000
      500045004E0059004100010000000000080000004F0050004500520001000000
      00000E00000043004E0054005F00530043004800010000000000100000004300
      4E0054005F00530043004800300001000000000008000000490054004F004700
      010000000000}
    MasterFields = 'OPER'
    DetailFields = 'OPER'
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Left = 40
    Top = 152
    object OD_c_kwtp_tempCNT_SCH: TFloatField
      DisplayLabel = #1057#1095#1077#1090#1095#1080#1082' '#1087#1086#1089#1083#1077
      DisplayWidth = 10
      FieldName = 'CNT_SCH'
    end
    object OD_c_kwtp_tempCNT_SCH2: TFloatField
      DisplayLabel = #1057#1095#1077#1090#1095#1080#1082' '#1076#1086
      FieldName = 'CNT_SCH0'
    end
    object OD_c_kwtp_tempSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'SUMMA'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object OD_c_kwtp_tempOPER: TStringField
      DisplayWidth = 7
      FieldName = 'OPER'
      Visible = False
      Size = 3
    end
    object OD_c_kwtp_tempPENYA: TFloatField
      FieldName = 'PENYA'
      Visible = False
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object OD_c_kwtp_tempITOG: TFloatField
      FieldName = 'ITOG'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
  end
  object DS_c_kwtp_temp: TDataSource
    DataSet = OD_c_kwtp_temp
    Left = 72
    Top = 152
  end
  object OD_oper: TOracleDataSet
    SQL.Strings = (
      
        'select t.oper, t.oper||'#39' '#39'||t.naim as naim, t.fk_usl_chk, t.cash' +
        '_oper_tp'
      'from scott.oper t, scott.usl m'
      
        'where t.fk_org=scott.init.get_org_nkom and t.fk_usl_chk=m.usl(+)' +
        ' and'
      '((t.fk_usl is not null '
      ' --'#1077#1089#1090#1100' '#1083#1080' '#1076#1072#1085#1085#1072#1103' '#1091#1089#1083#1091#1075#1072' '#1074#1086#1086#1073#1097#1077' '#1074' '#1083'.'#1089'.'
      ' and exists (select * from scott.nabor n, scott.usl u'
      '    where n.lsk=lpad(:lsk,8,'#39'0'#39')  and n.usl=u.usl and '
      
        '    n.usl=t.fk_usl and decode(u.sptarn, 0, nvl(n.koeff,0), 1, nv' +
        'l(n.norm,0),'
      '     2, nvl(n.koeff,0)*nvl(n.norm,0)) <> 0))'
      'or'
      '(t.fk_usl is null and t.fk_usl_chk is not null and m.cd='#39#1093'.'#1074#1086#1076#1072#39
      ' --'#1077#1089#1090#1100' '#1083#1080' '#1076#1072#1085#1085#1072#1103' '#1091#1089#1083#1091#1075#1072' '#1074#1086#1086#1073#1097#1077' '#1074' '#1083'.'#1089'.'
      
        ' and exists (select * from scott.nabor n, scott.kart k, scott.us' +
        'l u  '
      
        '    where k.lsk=lpad(:lsk,8,'#39'0'#39')  and n.lsk=k.lsk and n.usl=u.us' +
        'l and '
      '    n.usl=t.fk_usl_chk and k.psch in (1,2) and'
      
        '    decode(u.sptarn, 0, nvl(n.koeff,0), 1, nvl(n.norm,0), 2, nvl' +
        '(n.koeff,0)*nvl(n.norm,0)) <> 0'
      '))'
      'or'
      '(t.fk_usl is null and t.fk_usl_chk is not null and m.cd='#39#1075'.'#1074#1086#1076#1072#39
      ' --'#1077#1089#1090#1100' '#1083#1080' '#1076#1072#1085#1085#1072#1103' '#1091#1089#1083#1091#1075#1072' '#1074#1086#1086#1073#1097#1077' '#1074' '#1083'.'#1089'.'
      
        ' and exists (select * from scott.nabor n, scott.kart k, scott.us' +
        'l u  '
      
        '    where k.lsk=lpad(:lsk,8,'#39'0'#39')  and n.lsk=k.lsk and n.usl=u.us' +
        'l and '
      '    n.usl=t.fk_usl_chk and k.psch in (1,3) and'
      
        '    decode(u.sptarn, 0, nvl(n.koeff,0), 1, nvl(n.norm,0), 2, nvl' +
        '(n.koeff,0)*nvl(n.norm,0)) <> 0'
      '))'
      'or'
      
        '(t.fk_usl is null and t.fk_usl_chk is not null and m.cd='#39#1101#1083'.'#1101#1085#1077#1088 +
        #1075'.2'#39
      ' --'#1077#1089#1090#1100' '#1083#1080' '#1076#1072#1085#1085#1072#1103' '#1091#1089#1083#1091#1075#1072' '#1074#1086#1086#1073#1097#1077' '#1074' '#1083'.'#1089'.'
      
        ' and exists (select * from scott.nabor n, scott.kart k, scott.us' +
        'l u  '
      
        '    where k.lsk=lpad(:lsk,8,'#39'0'#39')  and n.lsk=k.lsk and n.usl=u.us' +
        'l and '
      '    n.usl=t.fk_usl_chk and '
      
        '    decode(u.sptarn, 0, nvl(n.koeff,0), 1, nvl(n.norm,0), 2, nvl' +
        '(n.koeff,0)*nvl(n.norm,0)) <> 0'
      '))'
      'or'
      '(t.fk_usl is null and t.fk_usl_chk is null))'
      ' --'#1090#1086#1083#1100#1082#1086' '#1085#1072#1083#1080#1095#1085#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
      ' and substr(t.oigu,2,1)='#39'1'#39
      'union all'
      
        'select t.oper, t.oper||'#39' '#39'||t.naim as naim, t.fk_usl_chk, t.cash' +
        '_oper_tp'
      'from scott.oper t --'#1086#1087#1077#1088#1072#1094#1080#1103' '#1085#1077' '#1087#1088#1080#1089#1074#1086#1077#1085#1085#1072#1103' '#1085#1080#1082#1072#1082#1086#1081' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      'where t.fk_org is null'
      'order by oper')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000004000000080000004F00500045005200010000000000080000004E00
      410049004D000100000000001400000046004B005F00550053004C005F004300
      48004B000100000000001800000043004100530048005F004F00500045005200
      5F0054005000010000000000}
    MasterFields = 'OPER'
    DetailFields = 'OPER'
    Session = DataModule1.OracleSession1
    Left = 112
    Top = 152
    object OD_operNAIM: TStringField
      DisplayWidth = 25
      FieldName = 'NAIM'
      Size = 25
    end
    object OD_operOPER: TStringField
      DisplayWidth = 3
      FieldName = 'OPER'
      Required = True
      Visible = False
      Size = 3
    end
    object OD_operFK_USL_CHK: TStringField
      FieldName = 'FK_USL_CHK'
      Size = 3
    end
    object OD_operCASH_OPER_TP: TFloatField
      FieldName = 'CASH_OPER_TP'
    end
  end
  object DS_oper: TDataSource
    DataSet = OD_oper
    Left = 144
    Top = 152
  end
  object OD_chargepay: TOracleDataSet
    SQL.Strings = (
      'select t.rowid, t.lsk, t.lsk_tp, t.mg, t.charge, t.payment, '
      
        't.summa, t.penya, t.summa2, t.penya2, t.sal, t.itog, t.usl_name_' +
        'short'
      '      from scott.c_kwtp_temp_dolg t'
      '      order by t.mg, t.lsk_tp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000C0000000C0000004300480041005200470045000100000000000E00
      00005000410059004D0045004E005400010000000000040000004D0047000100
      000000000A000000530055004D004D0041000100000000000600000053004100
      4C000100000000000A000000500045004E005900410001000000000008000000
      490054004F004700010000000000060000004C0053004B000100000000000C00
      00004C0053004B005F00540050000100000000001C000000550053004C005F00
      4E0041004D0045005F00530048004F00520054000100000000000C0000005300
      55004D004D00410032000100000000000C000000500045004E00590041003200
      010000000000}
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    BeforeInsert = OD_chargepayBeforeInsert
    BeforePost = OD_chargepayBeforePost
    Left = 40
    Top = 184
    object OD_chargepaySUMMA: TFloatField
      FieldName = 'SUMMA'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object OD_chargepayMG: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'MG'
      ReadOnly = True
      Size = 7
    end
    object OD_chargepayCHARGE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CHARGE'
      ReadOnly = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object OD_chargepayPAYMENT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PAYMENT'
      ReadOnly = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object OD_chargepaySAL: TFloatField
      FieldName = 'SAL'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object OD_chargepayPENYA: TFloatField
      FieldName = 'PENYA'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object OD_chargepayITOG: TFloatField
      FieldName = 'ITOG'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '###########0.00'
    end
    object OD_chargepayLSK: TStringField
      FieldName = 'LSK'
      Size = 8
    end
    object OD_chargepayLSK_TP: TStringField
      FieldName = 'LSK_TP'
      Size = 96
    end
    object OD_chargepayUSL_NAME_SHORT: TStringField
      FieldName = 'USL_NAME_SHORT'
      Size = 50
    end
    object OD_chargepaySUMMA2: TFloatField
      FieldName = 'SUMMA2'
    end
    object OD_chargepayPENYA2: TFloatField
      FieldName = 'PENYA2'
    end
  end
  object DS_chargepay: TDataSource
    DataSet = OD_chargepay
    Left = 72
    Top = 184
  end
  object OD_c_kwtp: TOracleDataSet
    SQL.Strings = (
      
        'select t.lsk, k.k_lsk_id, k.fio, t2.name||'#39', '#39'||s.name||'#39', '#39'||NV' +
        'L(LTRIM(k.nd,'#39'0'#39'),'#39'0'#39')||'#39'-'#39'||NVL(LTRIM(k.kw,'#39'0'#39'),'#39'0'#39') as adr,'
      
        '  scott.utils.get_sum_str_2(nvl(t.summa,0)+nvl(t.penya,0)) as su' +
        'mstr,'
      '  t.summa, t.oper, scott.init.get_fio() as fio_kass, '
      
        't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts, t.id, t.iscorr' +
        'ect, '
      
        'k.phw,k.pgw,k.pel, k.k_fam||'#39' '#39'||substr(k.k_im,1,1)||'#39'. '#39'||subst' +
        'r(k.k_ot,1,1)||'#39'.'#39' as fio_owner,'
      
        'c.name as name_org, c.phone as phone, c.adr as adr_org, c.adr_ca' +
        'sh, '
      
        'c.inn, c.okpo, c.kpp, c2.name as name_org2, c2.inn as inn2, c2.p' +
        'hone as phone2, decode(tp2.cd,'#39'LSK_TP_MAIN'#39', 1, '#39'LSK_TP_ADDIT'#39', ' +
        '2) as dep,'
      'm.cash_num'
      
        'from scott.c_kwtp t, scott.kart k, scott.spul s, scott.t_org c, ' +
        'scott.t_org c2, scott.t_org t2, scott.t_org_tp tp, scott.v_lsk_t' +
        'p tp2, scott.c_comps m'
      
        'where t.id=:id and t.lsk=k.lsk and k.kul=s.id and c.id=scott.ini' +
        't.get_org_nkom and m.nkom=scott.init.get_nkom'
      '--and k.reu=c2.reu '#1088#1077#1076'.15.04.2021 '#1087#1086' '#1087#1088#1086#1089#1100#1073#1077' '#1055#1086#1083#1099#1089'.'
      'and c2.reu=scott.utils_ext.get_main_reu(k.lsk)'
      'and t2.fk_orgtp=tp.id and tp.cd='#39#1043#1086#1088#1086#1076#39
      'and k.fk_tp=tp2.id(+)'
      'order by t.nkvit')
    Optimize = False
    Variables.Data = {
      0400000001000000060000003A0049004400030000000400000053CE00000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0500000020000000060000004C0053004B000100000000000A00000053005500
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
      50004700570001000000000006000000500045004C0001000000000012000000
      4E0041004D0045005F004F005200470032000100000000000800000049004E00
      4E0032000100000000000C000000500048004F004E0045003200010000000000
      0A000000500048004F004E004500010000000000060000004400450050000100
      0000000012000000460049004F005F004F0057004E0045005200010000000000
      100000004B005F004C0053004B005F0049004400010000000000100000004300
      4100530048005F004E0055004D00010000000000100000004100440052005F00
      4300410053004800010000000000}
    Session = DataModule1.OracleSession1
    Left = 216
    Top = 152
  end
  object DS_c_kwtp: TDataSource
    DataSet = OD_c_kwtp
    Left = 248
    Top = 152
  end
  object OD_c_kwtp_mg: TOracleDataSet
    SQL.Strings = (
      
        'select t.lsk, t.summa, t.penya, nvl(t.summa,0)+nvl(t.penya,0) as' +
        ' summ_itg, t.oper, o.naim, '
      'substr(t.dopl,1,4)||'#39'-'#39'||substr(t.dopl,5,2) as dopl, '
      
        'nvl(to_char(t.cnt_sch0),'#39#39') as cnt_sch0, nvl(to_char(t.cnt_sch),' +
        ' '#39#39') as cnt_sch,'
      't.nink, t.nkom, t.dtek, t.nkvit, t.dat_ink, t.ts'
      '--, o.cash_oper_tp'
      'from '
      'scott.c_kwtp_mg t, scott.oper o'
      'where c_kwtp_id = :c_kwtp_id and t.oper=o.oper'
      'order by t.oper, t.dopl ')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0043005F004B005700540050005F0049004400
      040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000010000000060000004C0053004B000100000000000A00000053005500
      4D004D0041000100000000000A000000500045004E0059004100010000000000
      080000004F005000450052000100000000000800000044004F0050004C000100
      00000000080000004E0049004E004B00010000000000080000004E004B004F00
      4D00010000000000080000004400540045004B000100000000000E0000004400
      410054005F0049004E004B000100000000000A0000004E004B00560049005400
      0100000000000400000054005300010000000000080000004E00410049004D00
      0100000000000E00000043004E0054005F005300430048000100000000001000
      000043004E0054005F0053004300480030000100000000001000000053005500
      4D004D005F004900540047000100000000001800000043004100530048005F00
      4F005000450052005F0054005000010000000000}
    Master = OD_c_kwtp
    MasterFields = 'ID'
    DetailFields = 'C_KWTP_ID'
    Session = DataModule1.OracleSession1
    Left = 280
    Top = 152
    object OD_c_kwtp_mgLSK: TStringField
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_c_kwtp_mgSUMMA: TFloatField
      FieldName = 'SUMMA'
    end
    object OD_c_kwtp_mgPENYA: TFloatField
      FieldName = 'PENYA'
    end
    object OD_c_kwtp_mgSUMM_ITG: TFloatField
      FieldName = 'SUMM_ITG'
    end
    object OD_c_kwtp_mgOPER: TStringField
      FieldName = 'OPER'
      Required = True
      Size = 3
    end
    object OD_c_kwtp_mgNAIM: TStringField
      FieldName = 'NAIM'
      Size = 25
    end
    object OD_c_kwtp_mgDOPL: TStringField
      FieldName = 'DOPL'
      Size = 7
    end
    object OD_c_kwtp_mgCNT_SCH0: TStringField
      FieldName = 'CNT_SCH0'
      Size = 40
    end
    object OD_c_kwtp_mgCNT_SCH: TStringField
      FieldName = 'CNT_SCH'
      Size = 40
    end
    object OD_c_kwtp_mgNINK: TFloatField
      FieldName = 'NINK'
    end
    object OD_c_kwtp_mgNKOM: TStringField
      FieldName = 'NKOM'
      Required = True
      Size = 3
    end
    object OD_c_kwtp_mgDTEK: TDateTimeField
      FieldName = 'DTEK'
      Required = True
    end
    object OD_c_kwtp_mgNKVIT: TFloatField
      FieldName = 'NKVIT'
    end
    object OD_c_kwtp_mgDAT_INK: TDateTimeField
      FieldName = 'DAT_INK'
    end
    object OD_c_kwtp_mgTS: TDateTimeField
      FieldName = 'TS'
    end
  end
  object DS_c_kwtp_mg: TDataSource
    DataSet = OD_c_kwtp_mg
    Left = 312
    Top = 152
  end
  object OD_usl_chk: TOracleDataSet
    SQL.Strings = (
      
        'select r.oper, r.fk_usl_chk, u.cd, r.naim, nvl(r.iscounter,0) as' +
        ' iscounter'
      ' from scott.oper r, scott.usl u where r.fk_usl_chk=u.usl'
      ' and r.oper=:oper')
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A004F0050004500520005000000030000003932
      0000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000005000000080000004F00500045005200010000000000140000004600
      4B005F00550053004C005F00430048004B000100000000000400000043004400
      010000000000120000004900530043004F0055004E0054004500520001000000
      0000080000004E00410049004D00010000000000}
    Session = DataModule1.OracleSession1
    Left = 112
    Top = 184
    object OD_usl_chkOPER: TStringField
      DisplayWidth = 3
      FieldName = 'OPER'
      Required = True
      Size = 3
    end
    object OD_usl_chkFK_USL_CHK: TStringField
      FieldName = 'FK_USL_CHK'
      Size = 3
    end
    object OD_usl_chkCD: TStringField
      FieldName = 'CD'
      Size = 32
    end
    object OD_usl_chkISCOUNTER: TFloatField
      FieldName = 'ISCOUNTER'
    end
    object OD_usl_chkNAIM: TStringField
      FieldName = 'NAIM'
      Size = 25
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 120
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      OnClick = N1Click
    end
  end
  object OD_kwtp_day: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.c_get_pay.get_receipt_detail(p_kwtp_id => :p_kwtp_id,'
      '                               p_rfcur => :p_rfcur);'
      'end;')
    Optimize = False
    Variables.Data = {
      0400000002000000140000003A0050005F004B005700540050005F0049004400
      030000000000000000000000100000003A0050005F0052004600430055005200
      740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000000A000000530055004D004D00410001000000000008000000
      4E0041004D00450001000000000006000000440045005000010000000000}
    Master = OD_c_kwtp
    MasterFields = 'ID'
    DetailFields = 'P_KWTP_ID'
    Session = DataModule1.OracleSession1
    Left = 216
    Top = 200
  end
  object dsDS_kwtp_day: TDataSource
    DataSet = OD_kwtp_day
    Left = 248
    Top = 200
  end
  object OD_meter_vol: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, u.nm2 as name, max(t.n1) as last_num, sum(x.n1) as ' +
        'vol from scott.METER t '
      '       join scott.usl u on t.fk_usl=u.usl'
      '       join scott.u_list s on s.cd='#39'ins_vol_sch'#39
      '       join scott.params p on 1=1'
      
        '       left join scott.t_objxpar x on t.k_lsk_id=x.fk_k_lsk and ' +
        's.id=x.fk_list and x.mg=p.period'
      '       where t.fk_klsk_obj=:p_klsk_id'
      '       group by t.id, u.nm2, u.npp'
      '       order by u.npp')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0050005F004B004C0053004B005F0049004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000004000000080000004E0041004D004500010000000000040000004900
      4400010000000000100000004C004100530054005F004E0055004D0001000000
      00000600000056004F004C00010000000000}
    Master = OD_c_kwtp
    MasterFields = 'K_LSK_ID'
    DetailFields = 'P_KLSK_ID'
    Session = DataModule1.OracleSession1
    Left = 280
    Top = 200
  end
  object dsDS_meter_vol: TDataSource
    DataSet = OD_meter_vol
    Left = 312
    Top = 200
  end
  object OD_get_money_nal2: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  scott.c_get_pay.get_money_nal2(prep_refcursor => :prep_refcurs' +
        'or);'
      'end;')
    Optimize = False
    Variables.Data = {
      04000000010000001E0000003A0050005200450050005F005200450046004300
      5500520053004F005200740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000010000000060000004C0053004B000100000000000A00000053005500
      4D004D0041000100000000000A000000500045004E0059004100010000000000
      080000004F005000450052000100000000000800000044004F0050004C000100
      00000000080000004E0049004E004B00010000000000080000004E004B004F00
      4D00010000000000080000004400540045004B000100000000000E0000004400
      410054005F0049004E004B000100000000000A0000004E004B00560049005400
      0100000000000400000054005300010000000000080000004E00410049004D00
      0100000000000E00000043004E0054005F005300430048000100000000001000
      000043004E0054005F0053004300480030000100000000001000000053005500
      4D004D005F004900540047000100000000001800000043004100530048005F00
      4F005000450052005F0054005000010000000000}
    Session = DataModule1.OracleSession1
    Left = 216
    Top = 96
  end
  object OD_Kart: TOracleDataSet
    SQL.Strings = (
      
        'select k.lsk, k.reu, k.k_lsk_id, k.kul,k.nd,k.kw,k.house_id, nvl' +
        '(trim(t.name_reu)||'#39', '#39'||s.name||'#39', '#39'||ltrim(k.nd,'#39'0'#39')||'#39'-'#39'||ltr' +
        'im(k.kw,'#39'0'#39'),'
      '     '#39#1040#1076#1088#1077#1089' '#1085#1077' '#1085#1072#1081#1076#1077#1085'!'#39') as adr'
      '    from scott.kart k, scott.spul s, scott.s_reu_trest t'
      '      where k.reu=t.reu and k.kul=s.id and'
      '       k.lsk=:lsk')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000003000000060000004C0053004B000100000000000600000041004400
      5200010000000000100000004B005F004C0053004B005F004900440001000000
      0000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 40
    Top = 120
  end
end
