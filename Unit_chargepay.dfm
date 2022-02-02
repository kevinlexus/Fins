object Form_chargepay: TForm_chargepay
  Left = 471
  Top = 216
  Width = 835
  Height = 482
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1087#1086' '#1083#1080#1094#1077#1074#1086#1084#1091' '#1089#1095#1077#1090#1091
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 819
    Height = 383
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1044#1074#1080#1078#1077#1085#1080#1077
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 811
        Height = 352
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = pm1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_chargepay
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1CHARGE
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1PAYMENT
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1DOLG_PEN
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1PENYA_IN
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1PENYA_CURR
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1PENYA
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1DAYS
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1ITOG
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1SAL
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1Column1
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1MG: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'MG'
            MinWidth = 55
            Width = 55
          end
          object cxGrid1DBTableView1CHARGE: TcxGridDBColumn
            Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086','#1074' '#1090'.'#1095'.'#1080#1079#1084#1077#1085#1077#1085#1080#1103
            DataBinding.FieldName = 'CHARGE'
            Width = 59
          end
          object cxGrid1DBTableView1PAYMENT: TcxGridDBColumn
            Caption = #1054#1087#1083#1072#1095#1077#1085#1086
            DataBinding.FieldName = 'PAYMENT'
            Width = 59
          end
          object cxGrid1DBTableView1DOLG_PEN: TcxGridDBColumn
            Caption = #1044#1086#1083#1075
            DataBinding.FieldName = 'DOLG_PEN'
            Width = 58
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #1055#1077#1085#1103
            DataBinding.FieldName = 'PENYA'
            HeaderHint = #1053#1072#1095#1080#1089#1083#1077#1085#1085#1072#1103' '#1087#1077#1085#1103
            Width = 56
          end
          object cxGrid1DBTableView1ITOG: TcxGridDBColumn
            Caption = #1048#1090#1086#1075#1086
            DataBinding.FieldName = 'ITOG'
            HeaderHint = #1048#1090#1086#1075#1086', '#1074' '#1090'.'#1095'. '#1087#1077#1085#1103
            Width = 59
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            BestFitMaxWidth = 20
            Width = 20
          end
          object cxGrid1DBTableView1PENYA_IN: TcxGridDBColumn
            Caption = #1055#1077#1085#1103' '#1074#1093'.'
            DataBinding.FieldName = 'PENYA_IN'
            HeaderHint = #1042#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1087#1077#1085#1077
            Width = 59
          end
          object cxGrid1DBTableView1PENYA_CURR: TcxGridDBColumn
            Caption = #1055#1077#1085#1103' '#1090#1077#1082'.'
            DataBinding.FieldName = 'PENYA_CURR'
            HeaderHint = #1053#1072#1095#1080#1089#1083#1077#1085#1085#1072#1103' '#1087#1077#1085#1103' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1087#1077#1088#1080#1086#1076#1077
            Width = 58
          end
          object cxGrid1DBTableView1PENYA_CORR: TcxGridDBColumn
            Caption = #1055#1077#1085#1103' '#1082#1086#1088#1088'.'
            DataBinding.FieldName = 'PENYA_CORR'
            HeaderHint = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' '#1087#1077#1085#1080' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1087#1077#1088#1080#1086#1076#1077
            Width = 58
          end
          object cxGrid1DBTableView1PENYA_PAY: TcxGridDBColumn
            Caption = #1055#1077#1085#1103' '#1086#1087#1083'.'
            DataBinding.FieldName = 'PENYA_PAY'
            HeaderHint = #1054#1087#1083#1072#1095#1077#1085#1085#1072#1103' '#1087#1077#1085#1103' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1087#1077#1088#1080#1086#1076#1077
            Width = 57
          end
          object cxGrid1DBTableView1PENYA: TcxGridDBColumn
            Caption = #1055#1077#1085#1103' '#1080#1089#1093'.'
            DataBinding.FieldName = 'PENYA'
            HeaderHint = #1048#1089#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1087#1077#1085#1077
            Width = 59
          end
          object cxGrid1DBTableView1DAYS: TcxGridDBColumn
            Caption = #1044#1085#1077#1081' '#1076#1086#1083#1075'.'
            DataBinding.FieldName = 'DAYS'
            HeaderHint = #1042#1089#1077#1075#1086' '#1076#1085#1077#1081' '#1079#1072#1076#1086#1083#1078#1085#1086#1089#1090#1080
            Width = 57
          end
          object cxGrid1DBTableView1PENYA_CURR_DAYS: TcxGridDBColumn
            Caption = #1055#1077#1085#1103' '#1090#1077#1082'.'#1076#1085
            DataBinding.FieldName = 'PENYA_CURR_DAYS'
            HeaderHint = #1044#1085#1077#1081' '#1079#1072#1076#1086#1083#1078#1085#1086#1089#1090#1080' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1087#1077#1088#1080#1086#1076#1077
            Width = 59
          end
          object cxGrid1DBTableView1SAL: TcxGridDBColumn
            Caption = #1042#1093'.'#1089#1072#1083#1100#1076#1086
            DataBinding.FieldName = 'SAL'
            Width = 58
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103'2'
      ImageIndex = 4
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 811
        Height = 352
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = pm1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_chargepay6
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
            end
            item
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1MG3: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'MG3'
            Width = 55
          end
          object cxGridDBTableView1TP_NAME: TcxGridDBColumn
            Caption = #1058#1080#1087
            DataBinding.FieldName = 'TP_NAME'
            Width = 65
          end
          object cxGridDBTableView1DTEK: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DTEK'
            Width = 114
          end
          object cxGridDBTableView1NKVIT: TcxGridDBColumn
            Caption = #8470' '#1050#1074#1080#1090
            DataBinding.FieldName = 'NKVIT'
            Width = 92
          end
          object cxGridDBTableView1SUMMA: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'SUMMA'
            Width = 95
          end
          object cxGridDBTableView1PN: TcxGridDBColumn
            Caption = #1055#1077#1085#1103
            DataBinding.FieldName = 'PN'
            Width = 95
          end
          object cxGridDBTableView1MG1: TcxGridDBColumn
            Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'MG1'
            Width = 66
          end
          object cxGridDBTableView1OPER_NAME: TcxGridDBColumn
            Caption = #1054#1087#1077#1088#1072#1094#1080#1103
            DataBinding.FieldName = 'OPER_NAME'
            Width = 227
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 383
    Width = 819
    Height = 60
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      819
      60)
    object Label1: TLabel
      Left = 272
      Top = 24
      Width = 63
      Height = 16
      Caption = #1055#1077#1088#1080#1086#1076': '#1089
    end
    object Label2: TLabel
      Left = 440
      Top = 24
      Width = 16
      Height = 16
      Caption = #1087#1086
    end
    object CheckBox1: TCheckBox
      Left = 9
      Top = 34
      Width = 228
      Height = 21
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1077#1088#1080#1086#1076#1099' '#1087#1083#1072#1090#1077#1078#1077#1081
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
      Visible = False
    end
    object CheckBox2: TCheckBox
      Left = 10
      Top = 12
      Width = 139
      Height = 21
      Caption = #1047#1072#1082#1088#1077#1087#1080#1090#1100' '#1086#1082#1085#1086
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 339
      Top = 16
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'MG1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_mg1
      Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
      TabOrder = 4
      Width = 99
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 464
      Top = 16
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'MG1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_mg1
      Properties.OnCloseUp = cxLookupComboBox2PropertiesCloseUp
      TabOrder = 5
      Width = 105
    end
    object Button2: TButton
      Left = 726
      Top = 24
      Width = 27
      Height = 21
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1076#1083#1103' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1087#1086' Esc'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 681
      Top = 20
      Width = 119
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel1: TPanel
    Left = 328
    Top = 217
    Width = 156
    Height = 50
    Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'...'
    TabOrder = 2
    Visible = False
  end
  object OD_chargepay: TOracleDataSet
    SQL.Strings = (
      'select b.summa as charge, c.summa as payment,'
      '       nvl(b.summa, 0) - nvl(c.summa, 0) as dolg, '
      '       d.penya as penya,'
      '       d2.penya as penya_in,'
      '       d3.penya as penya_curr,'
      '       d5.penya_corr as penya_corr,'
      '       d4.penya as penya_pay,'
      '       d3.days as penya_curr_days,'
      '       nvl(d.dolg_pen, 0) + nvl(d.penya, 0) as itog,'
      '       substr(a.mg, 5, 2) || '#39'.'#39' || substr(a.mg, 1, 4) as mg, '
      '       a.mg as mg2, '
      '       d.days,'
      '       d.dolg_pen,'
      
        '       sum(nvl(b.summa, 0) - nvl(c.summa, 0)) over(order by a.mg' +
        ') as prev_sum,'
      '       e.summa as sal'
      '  from scott.long_table a'
      
        '  left join (select mg, sum(summa) as summa from scott.c_chargep' +
        'ay2 where (select period from scott.params) between mgFrom and m' +
        'gTo'
      '                and lsk = :lsk'
      '                and type = 0'
      '              group by mg) b'
      '    on a.mg = b.mg'
      
        '  left join (select mg, sum(summa) as summa from scott.c_chargep' +
        'ay2 where (select period from scott.params) between mgFrom and m' +
        'gTo'
      '                and lsk = :lsk'
      '                and type = 1'
      '              group by mg) c'
      '    on a.mg = c.mg'
      '  left join (select t.mg, sum(t.summa) as summa'
      '               from scott.saldo_usl t'
      '              where --'#1074#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086
      '              lsk = :lsk'
      '              group by mg) e'
      '    on a.mg = e.mg'
      
        '  left join (select summa as dolg_pen, penya, days, mg1 from sco' +
        'tt.c_penya  --'#1080#1089#1093'.'#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1087#1077#1085#1077
      '              where lsk = :lsk) d'
      '    on a.mg = d.mg1'
      '  left join (select penya, mg1'
      
        '               from scott.a_penya c where lsk = :lsk and c.mg=(s' +
        'elect scott.utils.add_months_pr(m.period,-1) from scott.v_params' +
        ' m)  --'#1074#1093'.'#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1087#1077#1085#1077
      '              ) d2'
      '    on a.mg = d2.mg1'
      
        '  left join (select round(sum(penya),2) as penya,sum(c.curdays) ' +
        'as days, mg1 from scott.c_pen_cur c  --'#1090#1077#1082#1091#1097#1072#1103' '#1087#1077#1085#1103
      '              where lsk = :lsk'
      '              and c.penya > 0'
      '              group by mg1'
      '              ) d3'
      '    on a.mg = d3.mg1'
      
        '  left join (select round(sum(c.penya),2) as penya, c.dopl from ' +
        'scott.c_kwtp_mg c  --'#1086#1087#1083#1072#1090#1072' '#1087#1077#1085#1080
      
        '              where lsk = :lsk and c.dtek <= scott.init.get_date' +
        ' --'#1074#1072#1078#1085#1086' '#1090#1072#1082' '#1076#1072#1090#1099' '#1073#1088#1072#1090#1100'!'
      '--              and c.dtek <= scott.init.get_dt_end'
      '              group by c.dopl'
      '              ) d4'
      '    on a.mg = d4.dopl'
      
        '  left join (select sum(c.penya) as penya_corr, c.dopl from scot' +
        't.c_pen_corr c  --'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080' '#1087#1077#1085#1080
      '              where c.lsk = :lsk'
      
        '              and c.penya <> 0 --'#1087#1086#1095#1077#1084#1091' '#1090#1086' '#1073#1099#1083#1086' >0 - '#1080#1089#1087#1088#1072#1074#1080#1083' '#1088#1077 +
        #1076'.30.05.2017'
      '              group by c.dopl'
      '              ) d5'
      '    on a.mg = d5.dopl'
      ' where a.mg between :mg1 and :mg2 and'
      ''
      ' (nvl(b.summa, 0) <> 0 or '
      '       nvl(c.summa, 0) <> 0 or'
      '       nvl(e.summa, 0) <> 0 or'
      '       nvl(d.penya, 0) <> 0 or'
      '       nvl(d.dolg_pen, 0) <> 0 or'
      '       nvl(d2.penya, 0) <> 0 or'
      '       nvl(d3.penya, 0) <> 0'
      '       )'
      ' order by a.mg'
      ' ')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A4C534B05000000090000002020202020202020
      0000000000040000003A4D4731050000000000000000000000040000003A4D47
      32050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001000000006000000434841524745010000000000070000005041594D
      454E5401000000000004000000444F4C470100000000000500000050454E5941
      010000000000020000004D470100000000000400000044415953010000000000
      08000000505245565F53554D01000000000008000000444F4C475F50454E0100
      000000000400000049544F470100000000000300000053414C01000000000008
      00000050454E59415F494E0100000000000A00000050454E59415F4355525201
      00000000000900000050454E59415F5041590100000000000F00000050454E59
      415F435552525F444159530100000000000A00000050454E59415F434F525201
      0000000000030000004D4732010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    Session = DataModule1.OracleSession1
    Left = 88
    Top = 248
  end
  object DS_chargepay: TDataSource
    DataSet = OD_chargepay
    Left = 152
    Top = 152
  end
  object OD_chargepay2: TOracleDataSet
    SQL.Strings = (
      ''
      
        '/* '#1053#1077#1083#1100#1079#1103' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' oper '#1074' c_kwtp '#1090#1072#1082' '#1082#1072#1082' '#1087#1086#1083#1077' '#1084#1086#1078#1077#1090' '#1073#1099#1090#1100' = n' +
        'ull */'
      
        'select mg1, mg, to_number(decode(lag(mg1,1,null) over (order by ' +
        'mg1), mg1, null, chrg)) as '
      
        'chrg, to_number(decode(lag(mg1,1,null) over (order by mg1), mg1,' +
        ' null, chng)) as'
      'chng, dtek, pay, pay_pen, comp_name, oper_name, pay_id'
      ' from ('
      
        'select m.id as pay_id, k.mg as mg1, substr(k.mg,5,2)||'#39'.'#39'||subst' +
        'r(k.mg,1,4) as mg, '
      ' nvl(b.summa,0)+'
      ' nvl(c.summa,0)'
      ' as chrg,'
      ' nvl(c.summa,0) as chng,'
      ' to_char(m.dtek, '#39'DD.MM.YY'#39') as dtek, m.comp_name, m.oper_name,'
      ' m.pay, m.pay_pen '
      ' from scott.long_table k, '
      
        ' (select t.id, t.dtek, t.mg, o.name as comp_name, t.oper||'#39'-'#39'||p' +
        '.naim as oper_name,'
      '  t.summa as pay, '
      '  t.penya as pay_pen '
      
        '   from scott.a_kwtp t, scott.c_comps c, scott.t_org o, scott.op' +
        'er p, scott.params m'
      
        '     where t.nkom=c.nkom and c.fk_org=o.id and t.oper=p.oper(+) ' +
        'and t.mg < m.period and '
      '      t.lsk=:lsk'
      '  union all'
      
        'select t.id, t.dtek, m.period as mg, o.name as comp_name, t.oper' +
        '||'#39'-'#39'||p.naim as oper_name,'
      '  t.summa as pay, '
      '  t.penya as pay_pen '
      
        '   from scott.c_kwtp t, scott.c_comps c, scott.t_org o, scott.op' +
        'er p, scott.params m'
      
        '     where t.nkom=c.nkom and c.fk_org=o.id and t.oper=p.oper(+) ' +
        'and '
      '      t.lsk=:lsk'
      '    ) m,'
      '(select sum(summa) as summa, mg '
      ' from scott.arch_charges a'
      ' where a.usl_id<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      ' group by mg'
      ') b,'
      '(select sum(summa) as summa, mgchange from scott.a_change a'
      '  where a.usl<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      '  group by mgchange) c    '
      'where k.mg=m.mg(+) and k.mg=b.mg(+) and k.mg=c.mgchange(+)'
      ' and k.mg between :mg1 and :mg2'
      ') a where nvl(a.chrg,0) <> 0 or nvl(a.chng,0) <> 0 '
      ' or nvl(a.pay,0) <> 0 or nvl(a.pay_pen,0) <> 0'
      'order by mg1, dtek, pay_id'
      ' '
      '')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A4C534B05000000090000002020202020202020
      0000000000040000003A4D4731050000000000000000000000040000003A4D47
      32050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A000000020000004D47010000000000030000004D47310100000000
      0004000000434852470100000000000400000043484E47010000000000040000
      004454454B01000000000003000000504159010000000000070000005041595F
      50454E01000000000009000000434F4D505F4E414D4501000000000009000000
      4F5045525F4E414D45010000000000060000005041595F4944010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    Session = DataModule1.OracleSession1
    Left = 120
    Top = 248
  end
  object DS_chargepay2: TDataSource
    DataSet = OD_chargepay2
    Left = 120
    Top = 152
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CHARGE=CHARGE'
      'PAYMENT=PAYMENT'
      'DOLG=DOLG'
      'PENYA=PENYA'
      'MG=MG'
      'DAYS=DAYS'
      'DOLG_PEN=DOLG_PEN'
      'PREV_SUM=PREV_SUM')
    DataSource = DS_chargepay
    BCDToCurrency = False
    Left = 24
    Top = 216
  end
  object OD_chargepay3: TOracleDataSet
    SQL.Strings = (
      'select a.lsk2, substr(a.mg,5,2)||'#39'.'#39'||substr(a.mg,1,4) as mg, '
      ' u.usl||'#39' '#39'||u.nm as usl_name, a.sum_chrg, a.sum_chng, a.sum_pay'
      'from scott.kart k, '
      'scott.a_ext_chargepay a, scott.usl u'
      'where k.lsk=:lsk and k.kul=:kul and k.nd=:nd and k.kw=:kw and'
      'a.usl=u.usl and'
      'k.kul=a.kul(+) and k.nd=a.nd(+) and k.kw=a.kw(+) '
      'and a.mg between :mg1 and :mg2'
      'order by a.mg, a.usl, a.lsk2')
    Optimize = False
    Variables.Data = {
      0300000006000000040000003A4B554C05000000050000003030323300000000
      00030000003A4E440500000007000000303035312FE00000000000030000003A
      4B570500000008000000303030303030320000000000040000003A4C534B0500
      00000900000030313030303030320000000000040000003A4D47310500000000
      00000000000000040000003A4D4732050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000006000000020000004D470100000000000800000055534C5F4E414D45
      0100000000000800000053554D5F43484E470100000000000800000053554D5F
      434852470100000000000700000053554D5F504159010000000000040000004C
      534B32010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk;kul;nd;kw'
    Session = DataModule1.OracleSession1
    Left = 56
    Top = 280
  end
  object DS_chargepay3: TDataSource
    DataSet = OD_chargepay3
    Left = 88
    Top = 152
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK2=LSK2'
      'MG=MG'
      'USL_NAME=USL_NAME'
      'SUM_CHRG=SUM_CHRG'
      'SUM_CHNG=SUM_CHNG'
      'SUM_PAY=SUM_PAY')
    DataSource = DS_chargepay3
    BCDToCurrency = False
    Left = 56
    Top = 216
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DS_chargepay2
    BCDToCurrency = False
    Left = 56
    Top = 184
  end
  object OD_chargepay4: TOracleDataSet
    SQL.Strings = (
      
        'select p.naim as oper_name, t.summa,t.penya,substr(t.dopl,5,2)||' +
        #39'.'#39'||substr(t.dopl,1,4) as dopl'
      ' from scott.a_kwtp_mg t,scott.oper p'
      ' where t.c_kwtp_id=:pay_id'
      ' and t.oper=p.oper(+)'
      'and t.mg between :mg1 and :mg2')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A5041595F494403000000000000000000000004
      0000003A4D4731050000000000000000000000040000003A4D47320500000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000004000000444F504C0100000000000500000053554D4D4101
      00000000000500000050454E5941010000000000090000004F5045525F4E414D
      45010000000000}
    Master = OD_chargepay2
    MasterFields = 'pay_id'
    DetailFields = 'pay_id'
    Session = DataModule1.OracleSession1
    Left = 88
    Top = 280
  end
  object DS_chargepay4: TDataSource
    DataSet = OD_chargepay4
    Left = 24
    Top = 152
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SUMMA=SUMMA'
      'PENYA=PENYA'
      'DOPL=DOPL')
    DataSource = DS_chargepay4
    BCDToCurrency = False
    Left = 152
    Top = 184
  end
  object OD_chargepay5: TOracleDataSet
    SQL.Strings = (
      
        'select mg1, mg, dtek, to_number(decode(lag(mg1,1,null) over (ord' +
        'er by mg1), mg1, null, chrg)) as '
      
        'chrg, to_number(decode(lag(mg1,1,null) over (order by mg1), mg1,' +
        ' null, chng)) as'
      'chng, summa as pay, pn as pay_pen, oper_name, dopl'
      ' from ('
      
        'select k.mg as mg1, d.dtek, d.oper_name, substr(d.dopl,5,2)||'#39'.'#39 +
        '||substr(d.dopl,1,4) as dopl,'
      ' substr(k.mg,5,2)||'#39'.'#39'||substr(k.mg,1,4) as mg, '
      ' nvl(b.summa,0)+nvl(c.summa,0) as chrg,'
      ' nvl(c.summa,0) as chng,'
      ' nvl(d.summa,0) as summa,'
      ' nvl(d.pn,0) as pn'
      ' from scott.long_table k,'
      '(select sum(summa) as summa, mg '
      ' from scott.arch_charges a'
      ' where a.usl_id<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      ' group by mg'
      ') b,'
      '(select sum(summa) as summa, mgchange from scott.a_change a'
      '  where a.usl<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      '  group by mgchange) c,'
      
        '(select a.dtek, a.dopl, o.naim as oper_name, a.summa as summa, a' +
        '.penya as pn, mg '
      'from scott.a_kwtp_mg a, scott.oper o'
      '  where a.lsk=:lsk and a.oper=o.oper'
      '  ) d'
      'where k.mg=b.mg(+) and k.mg=c.mgchange(+) and k.mg=d.mg(+)'
      'and k.mg between :mg1 and :mg2'
      ') a where nvl(a.chrg,0) <> 0 or nvl(a.chng,0) <> 0'
      'or nvl(a.summa,0) <> 0 or nvl(a.pn,0) <> 0'
      'order by mg1, dtek, dopl'
      ' '
      '')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A4C534B05000000090000003031303030303032
      0000000000040000003A4D4731050000000000000000000000040000003A4D47
      32050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000009000000020000004D47010000000000030000004D47310100000000
      00040000004454454B0100000000000400000043485247010000000000040000
      0043484E47010000000000090000004F5045525F4E414D450100000000000400
      0000444F504C0100000000000300000050415901000000000007000000504159
      5F50454E010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    Session = DataModule1.OracleSession1
    Left = 24
    Top = 280
  end
  object DS_chargepay5: TDataSource
    DataSet = OD_chargepay5
    Left = 56
    Top = 152
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MG1=MG1'
      'MG=MG'
      'DTEK=DTEK'
      'CHRG=CHRG'
      'CHNG=CHNG'
      'PAY=PAY'
      'PAY_PEN=PAY_PEN'
      'OPER_NAME=OPER_NAME'
      'DOPL=DOPL')
    DataSource = DS_chargepay5
    BCDToCurrency = False
    Left = 120
    Top = 184
  end
  object OD_chargepay6: TOracleDataSet
    SQL.Strings = (
      'select * from ('
      
        'select tp, tp_name, nkvit, dtek, mg1, oper_name, sum(summa) as s' +
        'umma, sum(pn) as pn, mg, mg3, dopl from '
      
        '(select 2 as tp, '#39#1054#1087#1083#1072#1095#1077#1085#1086#39' as tp_name, a.nkvit, a.dtek, substr(' +
        'a.dopl,5,2)||'#39'.'#39'||substr(a.dopl,1,4) as mg1, '
      'o.naim as oper_name, a.summa as summa, a.penya as pn, a.mg,'
      'substr(a.mg,5,2)||'#39'.'#39'||substr(a.mg,1,4) as mg3, a.dopl'
      'from scott.a_kwtp_mg a, scott.oper o'
      '  where a.lsk=:lsk and a.oper=o.oper'
      '  and a.mg between :mg1 and :mg2'
      'union all'
      
        'select 2 as tp, '#39#1054#1087#1083#1072#1095#1077#1085#1086#39' as tp_name, null as nkvit, a.dat as d' +
        'tek, substr(a.dopl,5,2)||'#39'.'#39'||substr(a.dopl,1,4) as mg1, '
      'o.naim as oper_name, a.summa as summa, null as pn, a.mg,'
      'substr(a.mg,5,2)||'#39'.'#39'||substr(a.mg,1,4) as mg3, a.dopl'
      'from scott.t_corrects_payments a, scott.oper o'
      '  where a.lsk=:lsk and o.oper='#39'99'#39
      '  and a.mg between :mg1 and :mg2'
      ')'
      'group by tp, tp_name, nkvit, dtek, mg1, oper_name, mg, mg3, dopl'
      'union all'
      
        'select 1 as tp, '#39#1048#1079#1084#1077#1085#1077#1085#1080#1103#39' as tp_name, null as nkvit, a.dtek as' +
        ' dat, substr(a.mgchange,5,2)||'#39'.'#39'||substr(a.mgchange,1,4) as mg1' +
        ', '
      ' null as oper_name,'
      
        ' sum(summa) as summa, null as pn, a.mg, substr(a.mg,5,2)||'#39'.'#39'||s' +
        'ubstr(a.mg,1,4) as mg3, a.mg as dopl'
      '  from scott.a_change a'
      '  where a.usl<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      '  and a.mg between :mg1 and :mg2'
      '  group by a.dtek, a.mgchange, a.mg'
      'union all'
      
        'select 0 as tp, '#39#1053#1072#1095#1080#1089#1083#1077#1085#1086' '#1074' '#1090'.'#1095'.'#1080#1079#1084'.'#39' as tp_name, null as nkvit' +
        ', null as dat, null as mg1, null as oper_name, '
      
        ' sum(summa) as summa, null as pn, mg, substr(mg,5,2)||'#39'.'#39'||subst' +
        'r(mg,1,4) as mg3, null as dopl'
      'from '
      '(select summa, a.mg'
      ' from scott.arch_charges a'
      ' where a.usl_id<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      '  and a.mg between :mg1 and :mg2'
      ' union all      '
      ' select summa, a.mg'
      '  from scott.a_change a'
      '  where a.usl<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      '  and a.mg between :mg1 and :mg2'
      '      )'
      ' group by mg'
      ''
      ') t'
      'order by t.mg, t.tp, t.dtek, t.dopl')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A4C534B05000000090000002020202020202020
      0000000000040000003A4D4731050000000000000000000000040000003A4D47
      32050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000B000000020000004D47010000000000030000004D47310100000000
      00040000004454454B010000000000090000004F5045525F4E414D4501000000
      00000200000054500100000000000500000053554D4D41010000000000020000
      00504E010000000000030000004D47330100000000000700000054505F4E414D
      45010000000000050000004E4B56495401000000000004000000444F504C0100
      00000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    Session = DataModule1.OracleSession1
    Active = True
    Left = 152
    Top = 248
  end
  object DS_chargepay6: TDataSource
    DataSet = OD_chargepay6
    Left = 24
    Top = 184
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TP=TP'
      'TP_NAME=TP_NAME'
      'NKVIT=NKVIT'
      'DTEK=DTEK'
      'MG1=MG1'
      'OPER_NAME=OPER_NAME'
      'SUMMA=SUMMA'
      'PN=PN'
      'MG=MG'
      'MG3=MG3')
    DataSource = DS_chargepay6
    BCDToCurrency = False
    Left = 88
    Top = 184
  end
  object frxrprt_e: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40100.574150914400000000
    ReportOptions.LastChange = 41899.668259108800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 120
    Top = 328
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#8221#1056#1030#1056#1105#1056#182#1056#181#1056#1029#1056#1105#1056#181' '#1057#1027#1057#1026#1056#181#1056#1169#1057#1027#1057#8218#1056#1030' '#1056#1111#1056#1109' '#1056#187#1056#1105#1057#8224#1056#181#1056#1030#1056#1109#1056#1112#1057#1107' '#1057#1027#1057#8225#1056#181#1057#8218#1057#1107 +
              ' [lsk_], [adr_]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 86.929190000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 78.000000000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1057#8225#1056#1105#1057#1027#1056#187#1056#181#1056#1029#1056#1109
            #1056#1030' '#1057#8218'.'#1057#8225'. '#1056#1105#1056#183#1056#1112#1056#181#1056#1029#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 142.252010000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#187#1056#176#1057#8225#1056#181#1056#1029#1056#1109)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 220.252010000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1056#1110)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 5.858070000000000000
          Width = 56.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#181#1057#1026#1056#1105#1056#1109#1056#1169)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 23.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'CHARGE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."CHARGE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 138.472480000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'PAYMENT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PAYMENT"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 216.472480000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'DOLG'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."DOLG"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 5.858070000000000000
          Width = 56.000000000000000000
          Height = 18.897650000000000000
          DataField = 'MG'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."MG"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 74.220470000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."CHARGE">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 138.472480000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."PAYMENT">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 216.472480000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."DOLG">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 56.000000000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 229.858380000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8 = (
            #1056#160#1056#176#1057#1027#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#176#1056#1029#1056#1109': [Now]')
          ParentFont = False
        end
      end
    end
  end
  object OD_chargepay7: TOracleDataSet
    SQL.Strings = (
      
        'select mg1, mg, to_number(decode(lag(mg1,1,null) over (order by ' +
        'mg1), mg1, null, chrg)) as '
      
        'chrg, to_number(decode(lag(mg1,1,null) over (order by mg1), mg1,' +
        ' null, chng)) as'
      'chng, dtek, pay, pay_pen, comp_name, oper_name, pay_id'
      ' from ('
      
        'select null as pay_id, '#39'000000'#39' as mg1, '#39#1055#1088#1077#1076#1099#1076#1091#1097'.'#1087#1077#1088#1080#1086#1076#39' as mg,' +
        ' '
      ' sum(nvl(b.summa,0)+'
      ' nvl(c.summa,0)) as chrg,'
      ' sum(nvl(c.summa,0)) as chng,'
      ' null as dtek, null as comp_name, null as oper_name,'
      ' sum(m.pay) as pay, sum(m.pay_pen) as pay_pen'
      ' from scott.long_table k, '
      
        ' (select t.id, t.dtek, t.mg, o.name as comp_name, t.oper||'#39'-'#39'||p' +
        '.naim as oper_name,'
      '  t.summa as pay, '
      '  t.penya as pay_pen '
      
        '   from scott.a_kwtp t, scott.c_comps c, scott.t_org o, scott.op' +
        'er p, scott.params m'
      
        '     where t.nkom=c.nkom and c.fk_org=o.id and t.oper=p.oper(+) ' +
        'and t.mg < m.period and '
      '      t.lsk=:lsk'
      '  union all'
      
        'select t.id, t.dtek, m.period as mg, o.name as comp_name, t.oper' +
        '||'#39'-'#39'||p.naim as oper_name,'
      '  t.summa as pay, '
      '  t.penya as pay_pen '
      
        '   from scott.c_kwtp t, scott.c_comps c, scott.t_org o, scott.op' +
        'er p, scott.params m'
      
        '     where t.nkom=c.nkom and c.fk_org=o.id and t.oper=p.oper(+) ' +
        'and '
      '      t.lsk=:lsk'
      '    ) m,'
      '(select sum(summa) as summa, mg '
      ' from scott.arch_charges a'
      ' where a.usl_id<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      ' group by mg'
      ') b,'
      '(select sum(summa) as summa, mgchange from scott.a_change a'
      '  where a.usl<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      '  group by mgchange) c, params p    '
      'where k.mg=m.mg(+) and k.mg=b.mg(+) and k.mg=c.mgchange(+)'
      'and k.mg < utils.add_months_pr(p.period,-12)'
      'and k.mg between :mg1 and :mg2'
      'union all'
      
        'select m.id as pay_id, k.mg as mg1, substr(k.mg,5,2)||'#39'.'#39'||subst' +
        'r(k.mg,1,4) as mg, '
      ' nvl(b.summa,0)+'
      ' nvl(c.summa,0)'
      ' as chrg,'
      ' nvl(c.summa,0) as chng,'
      ' to_char(m.dtek, '#39'DD.MM.YY'#39') as dtek, m.comp_name, m.oper_name,'
      ' m.pay, m.pay_pen '
      ' from scott.long_table k, '
      
        ' (select t.id, t.dtek, t.mg, o.name as comp_name, t.oper||'#39'-'#39'||p' +
        '.naim as oper_name,'
      '  t.summa as pay, '
      '  t.penya as pay_pen '
      
        '   from scott.a_kwtp t, scott.c_comps c, scott.t_org o, scott.op' +
        'er p, scott.params m'
      
        '     where t.nkom=c.nkom and c.fk_org=o.id and t.oper=p.oper(+) ' +
        'and t.mg < m.period and '
      '      t.lsk=:lsk'
      '  union all'
      
        'select t.id, t.dtek, m.period as mg, o.name as comp_name, t.oper' +
        '||'#39'-'#39'||p.naim as oper_name,'
      '  t.summa as pay, '
      '  t.penya as pay_pen '
      
        '   from scott.c_kwtp t, scott.c_comps c, scott.t_org o, scott.op' +
        'er p, scott.params m'
      
        '     where t.nkom=c.nkom and c.fk_org=o.id and t.oper=p.oper(+) ' +
        'and '
      '      t.lsk=:lsk'
      '    ) m,'
      '(select sum(summa) as summa, mg '
      ' from scott.arch_charges a'
      ' where a.usl_id<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      ' group by mg'
      ') b,'
      '(select sum(summa) as summa, mgchange from scott.a_change a'
      '  where a.usl<>'#39'024'#39' and'
      '      a.lsk=:lsk'
      '  group by mgchange) c, scott.params p    '
      'where k.mg=m.mg(+) and k.mg=b.mg(+) and k.mg=c.mgchange(+)'
      'and k.mg>=utils.add_months_pr(p.period,-12)'
      'and k.mg between :mg1 and :mg2'
      ''
      ''
      ') a where nvl(a.chrg,0) <> 0 or nvl(a.chng,0) <> 0 '
      ' or nvl(a.pay,0) <> 0 or nvl(a.pay_pen,0) <> 0'
      'order by mg1, dtek, pay_id'
      ' '
      '')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A4C534B05000000090000002020202020202020
      0000000000040000003A4D4731050000000000000000000000040000003A4D47
      32050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A000000020000004D47010000000000030000004D47310100000000
      0004000000434852470100000000000400000043484E47010000000000040000
      004454454B01000000000003000000504159010000000000070000005041595F
      50454E01000000000009000000434F4D505F4E414D4501000000000009000000
      4F5045525F4E414D45010000000000060000005041595F4944010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    Session = DataModule1.OracleSession1
    Left = 24
    Top = 328
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CHARGE=CHARGE'
      'PAYMENT=PAYMENT'
      'DOLG=DOLG'
      'PENYA=PENYA'
      'MG=MG'
      'DAYS=DAYS'
      'DOLG_PEN=DOLG_PEN'
      'PREV_SUM=PREV_SUM')
    DataSource = DS_chargepay7
    BCDToCurrency = False
    Left = 88
    Top = 328
  end
  object DS_chargepay7: TDataSource
    DataSet = OD_chargepay7
    Left = 56
    Top = 328
  end
  object pm1: TPopupMenu
    Left = 172
    Top = 331
    object N1: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1074#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1087#1077#1085#1077' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1087#1077#1088#1080#1086#1076#1091
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1074#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1087#1077#1085#1077' '#1087#1086' '#1042#1057#1045#1052' '#1087#1077#1088#1080#1086#1076#1072#1084
      OnClick = N3Click
    end
    object N2: TMenuItem
      Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1042#1057#1025' '#1074#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086' '#1087#1086' '#1087#1077#1085#1077' '#1085#1072' '#1076#1088#1091#1075#1086#1081' '#1089#1095#1077#1090
      OnClick = N2Click
    end
  end
  object OD_mg: TOracleDataSet
    SQL.Strings = (
      'select mg, substr(mg,5,2)||'#39'.'#39'||substr(mg,1,4) as mg1 '
      'from scott.long_table t, scott.params p '
      'where t.mg<=p.period'
      'order by mg desc'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 252
    Top = 283
  end
  object DS_mg1: TDataSource
    DataSet = OD_mg
    Left = 248
    Top = 320
  end
  object frxReport1: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43053.817160879630000000
    ReportOptions.LastChange = 43053.817160879630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 244
    Top = 99
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
    end
  end
end
