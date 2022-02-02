object Form_saldo: TForm_saldo
  Left = 1454
  Top = 213
  Width = 485
  Height = 485
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1072#1083#1100#1076#1086' '#1087#1086' '#1051'/'#1057
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 386
    Width = 469
    Height = 60
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      469
      60)
    object Button3: TButton
      Left = 238
      Top = 20
      Width = 30
      Height = 30
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1076#1083#1103' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1087#1086' Esc'
      TabOrder = 0
      Visible = False
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 362
      Top = 20
      Width = 92
      Height = 30
      Hint = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1080#1089#1093#1086#1076#1103#1097#1077#1077' '#1089#1072#1083#1100#1076#1086
      Anchors = [akRight, akBottom]
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 20
      Width = 139
      Height = 21
      Caption = #1047#1072#1082#1088#1077#1087#1080#1090#1100' '#1086#1082#1085#1086
      TabOrder = 2
      OnClick = CheckBox1Click
    end
  end
  object Panel1: TPanel
    Left = 167
    Top = 118
    Width = 228
    Height = 51
    Caption = #1042#1099#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1088#1072#1089#1095#1105#1090'...'
    TabOrder = 1
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 469
    Height = 386
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1057#1072#1083#1100#1076#1086
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 461
        Height = 355
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = DS_sal
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = #1054#1073#1098#1077#1084' 0.00'
              Kind = skSum
            end
            item
              Format = #1048#1079#1084#1077#1085#1077#1085#1080#1103' 0.00'
              Kind = skSum
            end
            item
              Format = #1058#1072#1088#1080#1092' 0.00'
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Format = #1048#1090#1086#1075#1086' 0.00'
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Format = #1048#1090#1086#1075#1086' 0.00'
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1SUMMA
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1SUMMA2
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridDBTableView1USL: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1091#1089#1083'.'
            DataBinding.FieldName = 'USL'
            Width = 34
          end
          object cxGridDBTableView1NM: TcxGridDBColumn
            Caption = #1059#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'NM'
            Width = 111
          end
          object cxGridDBTableView1ORG: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1086#1088#1075'.'
            DataBinding.FieldName = 'ORG'
            Width = 43
          end
          object cxGridDBTableView1NAME_ORG: TcxGridDBColumn
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'NAME_ORG'
            Width = 114
          end
          object cxGridDBTableView1SUMMA: TcxGridDBColumn
            Caption = #1042#1093'.'#1089#1072#1083#1100#1076#1086
            DataBinding.FieldName = 'SUMMA'
            Width = 71
          end
          object cxGridDBTableView1SUMMA2: TcxGridDBColumn
            Caption = #1048#1089#1093'.'#1089#1072#1083#1100#1076#1086
            DataBinding.FieldName = 'SUMMA2'
            Width = 74
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1072#1083#1100#1076#1086'-'#1087#1077#1088#1080#1086#1076
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 461
        Height = 355
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = DS_deb_usl
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = #1054#1073#1098#1077#1084' 0.00'
              Kind = skSum
            end
            item
              Format = #1048#1079#1084#1077#1085#1077#1085#1080#1103' 0.00'
              Kind = skSum
            end
            item
              Format = #1058#1072#1088#1080#1092' 0.00'
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Format = #1048#1090#1086#1075#1086' 0.00'
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Format = #1048#1090#1086#1075#1086' 0.00'
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
          OptionsBehavior.CellHints = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridDBTableView2MG: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'MG'
            Width = 59
          end
          object cxGridDBTableView2USL: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1091#1089#1083'.'
            DataBinding.FieldName = 'USL'
            Width = 38
          end
          object cxGridDBTableView2NM: TcxGridDBColumn
            Caption = #1059#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'NM'
            Width = 59
          end
          object cxGridDBTableView2ORG: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1086#1088#1075'.'
            DataBinding.FieldName = 'ORG'
            Width = 37
          end
          object cxGridDBTableView2NAME_ORG: TcxGridDBColumn
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'NAME_ORG'
            Width = 107
          end
          object cxGridDBTableView2SUMMA: TcxGridDBColumn
            Caption = #1042#1093'.'#1089#1072#1083#1100#1076#1086
            DataBinding.FieldName = 'SUMMA'
            Width = 68
          end
          object cxGridDBTableView2SUMMA2: TcxGridDBColumn
            Caption = #1048#1089#1093'.'#1089#1072#1083#1100#1076#1086
            DataBinding.FieldName = 'SUMMA2'
            Width = 79
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object OD_sal: TOracleDataSet
    SQL.Strings = (
      
        'select coalesce(t.usl,t2.usl) as usl, coalesce(t.nm,t2.nm) as nm' +
        ', '
      
        'coalesce(t.org,t2.org) as org, coalesce(t.name_org,t2.name_org) ' +
        'as name_org, '
      
        't.summa, /*t2.usl as usl2, t2.nm as nm2, t2.org as org2, t2.name' +
        '_org as name_org2, */t2.summa as summa2 from '
      
        '(select u.usl, o.id as org, trim(u.nm) as nm,trim(o.name) as nam' +
        'e_org, s.summa'
      
        ' from scott.saldo_usl s, scott.usl u, scott.t_org o where s.lsk=' +
        ':lsk and s.mg=:mg and s.usl=u.usl'
      ' and s.org=o.id) t'
      'full outer join '
      
        '(select u.usl, o.id as org, trim(u.nm) as nm,trim(o.name) as nam' +
        'e_org, s.summa'
      
        ' from scott.saldo_usl s, scott.usl u, scott.t_org o where s.lsk=' +
        ':lsk and '
      
        ' s.mg=to_char(add_months(to_date(:mg||'#39'01'#39','#39'YYYYMMDD'#39'),1),'#39'YYYYM' +
        'M'#39') and s.usl=u.usl'
      ' and s.org=o.id) t2'
      ' on t.usl=t2.usl and t.org=t2.org'
      ' order by t.nm, t2.nm, t.name_org, t2.name_org'
      ' '
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000030000003A4D470500000007000000323030383036000000
      0000040000003A4C534B050000000900000020202020202020200000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000060000000300000055534C010000000000020000004E4D0100000000
      000500000053554D4D41010000000000030000004F5247010000000000080000
      004E414D455F4F52470100000000000600000053554D4D4132010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    Active = True
    AfterOpen = OD_salAfterOpen
    AfterRefresh = OD_salAfterRefresh
    Left = 128
    Top = 240
  end
  object DS_sal: TDataSource
    DataSet = OD_sal
    Left = 159
    Top = 240
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Timer1Timer
    Left = 256
    Top = 312
  end
  object OD_deb_usl: TOracleDataSet
    SQL.Strings = (
      
        'select substr(coalesce(t.mg,t2.mg),5,2)||'#39'.'#39'||substr(coalesce(t.' +
        'mg,t2.mg),1,4) as mg, coalesce(t.usl,t2.usl) as usl, coalesce(t.' +
        'nm,t2.nm) as nm, '
      
        'coalesce(t.org,t2.org) as org, coalesce(t.name_org,t2.name_org) ' +
        'as name_org, '
      't.summa, t2.summa as summa2 from '
      
        '(select s.mg, u.usl, o.id as org, trim(u.nm) as nm,trim(o.name) ' +
        'as name_org, s.summa'
      
        ' from scott.c_deb_usl s, scott.usl u, scott.t_org o where s.lsk=' +
        ':lsk and s.period=to_char(add_months(to_date(:mg||'#39'01'#39','#39'YYYYMMDD' +
        #39'),-1),'#39'YYYYMM'#39') and s.usl=u.usl'
      ' and s.org=o.id) t'
      'full outer join '
      
        '(select s.mg, u.usl, o.id as org, trim(u.nm) as nm,trim(o.name) ' +
        'as name_org, s.summa'
      
        ' from scott.c_deb_usl s, scott.usl u, scott.t_org o where s.lsk=' +
        ':lsk and '
      ' s.period=:mg and s.usl=u.usl'
      ' and s.org=o.id) t2'
      ' on t.usl=t2.usl and t.org=t2.org'
      ' and t.mg=t2.mg'
      ' order by t.mg, t2.mg, t.nm, t2.nm, t.name_org, t2.name_org'
      ' '
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000030000003A4D470500000007000000323030383036000000
      0000040000003A4C534B050000000900000020202020202020200000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000070000000300000055534C010000000000020000004E4D0100000000
      000500000053554D4D41010000000000030000004F5247010000000000080000
      004E414D455F4F52470100000000000600000053554D4D413201000000000002
      0000004D47010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    Active = True
    AfterOpen = OD_salAfterOpen
    AfterRefresh = OD_salAfterRefresh
    Left = 128
    Top = 288
  end
  object DS_deb_usl: TDataSource
    DataSet = OD_deb_usl
    Left = 159
    Top = 288
  end
end
