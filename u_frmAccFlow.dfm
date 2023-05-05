object frmAccFlow: TfrmAccFlow
  Left = 394
  Top = 225
  Caption = #1054#1073#1086#1088#1086#1090#1099' '#1087#1086' '#1083#1080#1094#1077#1074#1086#1084#1091' '#1089#1095#1077#1090#1091
  ClientHeight = 305
  ClientWidth = 922
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 922
    Height = 272
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_data
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'CHANGES'
          Column = cxGrid1DBTableView1CHANGES
        end
        item
          Kind = skSum
          FieldName = 'CHANGES2'
          Column = cxGrid1DBTableView1CHANGES2
        end
        item
          Kind = skSum
          FieldName = 'CHANGES3'
          Column = cxGrid1DBTableView1CHANGES3
        end
        item
          Kind = skSum
          FieldName = 'CHARGES'
          Column = cxGrid1DBTableView1CHARGES
        end
        item
          Kind = skSum
          FieldName = 'INDEBET'
          Column = cxGrid1DBTableView1INDEBET
        end
        item
          Kind = skSum
          FieldName = 'INKREDIT'
          Column = cxGrid1DBTableView1INKREDIT
        end
        item
          Kind = skSum
          FieldName = 'OUTDEBET'
          Column = cxGrid1DBTableView1OUTDEBET
        end
        item
          Kind = skSum
          FieldName = 'OUTKREDIT'
          Column = cxGrid1DBTableView1OUTKREDIT
        end
        item
          Kind = skSum
          FieldName = 'PAY_CORR'
          Column = cxGrid1DBTableView1PAY_CORR
        end
        item
          Kind = skSum
          FieldName = 'PAYMENT'
          Column = cxGrid1DBTableView1PAYMENT
        end
        item
          Kind = skSum
          FieldName = 'PCUR'
          Column = cxGrid1DBTableView1PCUR
        end
        item
          Kind = skSum
          FieldName = 'PINSAL'
          Column = cxGrid1DBTableView1PINSAL
        end
        item
          Kind = skSum
          FieldName = 'PN'
          Column = cxGrid1DBTableView1PN
        end
        item
          Kind = skSum
          FieldName = 'POUTSAL'
          Column = cxGrid1DBTableView1POUTSAL
        end
        item
          Kind = skSum
          FieldName = 'PENYA_CORR'
          Column = cxGrid1DBTableView1PENYA_CORR
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1USL_NAME: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'USL_NAME'
        Width = 60
      end
      object cxGrid1DBTableView1ORG_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORG_NAME'
        Width = 40
      end
      object cxGrid1DBTableView1INDEBET: TcxGridDBColumn
        Caption = #1042#1093'.'#1076#1077#1073#1077#1090
        DataBinding.FieldName = 'INDEBET'
        Width = 48
      end
      object cxGrid1DBTableView1INKREDIT: TcxGridDBColumn
        Caption = #1042#1093'.'#1082#1088#1077#1076#1080#1090
        DataBinding.FieldName = 'INKREDIT'
        Width = 49
      end
      object cxGrid1DBTableView1CHARGES: TcxGridDBColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
        DataBinding.FieldName = 'CHARGES'
        Width = 51
      end
      object cxGrid1DBTableView1CHANGES: TcxGridDBColumn
        Caption = #1057#1082#1080#1076#1082#1080
        DataBinding.FieldName = 'CHANGES'
        Width = 48
      end
      object cxGrid1DBTableView1CHANGES2: TcxGridDBColumn
        Caption = #1044#1086#1073#1086#1088#1099', '#1074#1086#1079#1074#1088'.'
        DataBinding.FieldName = 'CHANGES2'
      end
      object cxGrid1DBTableView1CHANGES3: TcxGridDBColumn
        Caption = #1050#1086#1088#1088'.'#1087#1077#1088#1077#1088#1072#1089#1095'.'
        DataBinding.FieldName = 'CHANGES3'
      end
      object cxGrid1DBTableView1PAYMENT: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'PAYMENT'
        Width = 50
      end
      object cxGrid1DBTableView1PAY_CORR: TcxGridDBColumn
        Caption = #1050#1086#1088#1088'.'#1086#1087#1083#1072#1090'.'
        DataBinding.FieldName = 'PAY_CORR'
      end
      object cxGrid1DBTableView1OUTDEBET: TcxGridDBColumn
        Caption = #1048#1089#1093'.'#1076#1077#1073#1077#1090
        DataBinding.FieldName = 'OUTDEBET'
        Width = 48
      end
      object cxGrid1DBTableView1OUTKREDIT: TcxGridDBColumn
        Caption = #1048#1089#1093'.'#1082#1088#1077#1076#1080#1090
        DataBinding.FieldName = 'OUTKREDIT'
        Width = 50
      end
      object cxGrid1DBTableView1PINSAL: TcxGridDBColumn
        Caption = #1042#1093'.'#1087#1077#1085#1080
        DataBinding.FieldName = 'PINSAL'
        Width = 50
      end
      object cxGrid1DBTableView1PCUR: TcxGridDBColumn
        Caption = #1053#1072#1095'.'#1087#1077#1085#1080
        DataBinding.FieldName = 'PCUR'
        Width = 49
      end
      object cxGrid1DBTableView1PENYA_CORR: TcxGridDBColumn
        Caption = #1042' '#1090'.'#1095'. '#1082#1086#1088#1088'.'#1087#1077#1085#1080
        DataBinding.FieldName = 'PENYA_CORR'
      end
      object cxGrid1DBTableView1PN: TcxGridDBColumn
        Caption = #1054#1087#1083#1072#1090#1072' '#1087#1077#1085#1080
        DataBinding.FieldName = 'PN'
        Width = 49
      end
      object cxGrid1DBTableView1POUTSAL: TcxGridDBColumn
        Caption = #1048#1089#1093'.'#1087#1077#1085#1080
        DataBinding.FieldName = 'POUTSAL'
        Width = 50
      end
      object cxGrid1DBTableView1PERIOD: TcxGridDBColumn
        Caption = #1055#1077#1088#1080#1086#1076
        DataBinding.FieldName = 'PERIOD'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxTabControl1: TcxTabControl
    Left = 0
    Top = 0
    Width = 922
    Height = 33
    Align = alTop
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    DesignSize = (
      922
      33)
    ClientRectBottom = 29
    ClientRectLeft = 4
    ClientRectRight = 918
    ClientRectTop = 4
    object Label1: TLabel
      Left = 681
      Top = 16
      Width = 7
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1057
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 795
      Top = 16
      Width = 14
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1087#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 9
      Width = 520
      Height = 13
      Caption = 
        #1044#1083#1103' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103' '#1086#1073#1086#1088#1086#1090#1085#1086#1081' '#1074#1077#1076#1086#1084#1086#1089#1090#1080' '#1079#1072' '#1090#1077#1082#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076' '#1085#1091#1078#1085#1086' '#1074#1099#1087#1086#1083 +
        #1085#1080#1090#1100' '#1080#1090#1086#1075#1086#1074#1086#1077' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 693
      Top = 8
      Anchors = [akTop, akRight]
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'PERIOD'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_mg1
      Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
      TabOrder = 0
      Width = 97
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 814
      Top = 8
      Anchors = [akTop, akRight]
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'PERIOD'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_mg2
      Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
      TabOrder = 1
      Width = 97
    end
  end
  object pnl1: TPanel
    Left = 392
    Top = 104
    Width = 161
    Height = 41
    Caption = #1047#1072#1075#1088#1091#1078#1072#1077#1090#1089#1103'...'
    TabOrder = 2
    Visible = False
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.rep_lsk.rep(p_rep_cd => '#39'95'#39','
      '              p_lsk => :p_lsk,'
      '              p_mg1 => :p_mg1,'
      '              p_mg2 => :p_mg2,'
      '              prep_refcursor => :prep_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      04000000040000000C0000003A0050005F004C0053004B000500000009000000
      202020202020202000000000000C0000003A0050005F004D0047003100050000
      0000000000000000000C0000003A0050005F004D004700320005000000000000
      00000000001E0000003A0050005200450050005F005200450046004300550052
      0053004F005200740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001500000010000000550053004C005F004E0041004D00450001000000
      0000100000004F00520047005F004E0041004D0045000100000000000C000000
      50004500520049004F0044000100000000000E00000049004E00440045004200
      450054000100000000001000000049004E004B00520045004400490054000100
      000000000E00000043004800410052004700450053000100000000000E000000
      4300480041004E004700450053000100000000000E0000005000410059004D00
      45004E0054000100000000000400000050004E00010000000000100000004F00
      5500540044004500420045005400010000000000120000004F00550054004B00
      520045004400490054000100000000000A000000500052004900560053000100
      0000000014000000500052004900560053005F00430049005400590001000000
      00000E000000430048005F00460055004C004C00010000000000100000004300
      480041004E0047004500530032000100000000000E00000050004F0055005400
      530041004C00010000000000100000004300480041004E004700450053003300
      0100000000000C000000500049004E00530041004C0001000000000008000000
      5000430055005200010000000000100000005000410059005F0043004F005200
      520001000000000014000000500045004E00590041005F0043004F0052005200
      010000000000}
    Master = Form_list_kart.OD_list_kart
    MasterFields = 'lsk'
    DetailFields = 'p_lsk'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 48
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 64
    Top = 48
  end
  object OD_mg1: TOracleDataSet
    SQL.Strings = (
      'select t.mg, substr(t.mg,5,2)||'#39'.'#39'||substr(t.mg,1,4) as period '
      'from scott.period_reports t where t.id=1 '
      'order by t.mg')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D0047000100000000000C000000500045005200
      49004F004400010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 24
    Top = 96
  end
  object DS_mg1: TDataSource
    DataSet = OD_mg1
    Left = 64
    Top = 96
  end
  object OD_mg2: TOracleDataSet
    SQL.Strings = (
      'select t.mg, substr(t.mg,5,2)||'#39'.'#39'||substr(t.mg,1,4) as period '
      'from scott.period_reports t where t.id=1 '
      'order by t.mg')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D0047000100000000000C000000500045005200
      49004F004400010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 24
    Top = 144
  end
  object DS_mg2: TDataSource
    DataSet = OD_mg2
    Left = 64
    Top = 144
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'xls'
    Left = 120
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 120
    object Excel2: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074' Excel'
      OnClick = Excel2Click
    end
  end
end
