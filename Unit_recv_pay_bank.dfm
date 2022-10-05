object Form_recv_pay_bank: TForm_recv_pay_bank
  Left = 1209
  Top = 277
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1055#1088#1080#1077#1084' '#1086#1087#1083#1072#1090#1099' '#1080#1079' '#1074#1085#1077#1096#1085#1080#1093' '#1080#1089#1090#1086#1095#1085#1080#1082#1086#1074
  ClientHeight = 646
  ClientWidth = 851
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 597
    Width = 851
    Height = 49
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      851
      49)
    object Button2: TButton
      Left = 660
      Top = 16
      Width = 89
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1055#1088#1080#1085#1103#1090#1100' '#1086#1087#1083#1072#1090#1091
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 764
      Top = 16
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 16
      Width = 76
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1072#1082#1077#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 117
      Top = 88
      Width = 40
      Height = 13
      Caption = #1057#1091#1084#1084#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 125
      Top = 112
      Width = 31
      Height = 13
      Caption = #1055#1077#1085#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 69
      Top = 40
      Width = 87
      Height = 13
      Caption = #8470' '#1080#1085#1082#1072#1089#1089#1072#1094#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 64
      Width = 146
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#8470' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 159
      Top = 8
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 159
      Top = 80
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 159
      Top = 104
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Button1: TButton
      Left = 293
      Top = 8
      Width = 123
      Height = 25
      Caption = 'txt '#1092#1072#1081#1083', '#1057#1073#1077#1088', '#1087#1088#1086#1095#1080#1077
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 293
      Top = 40
      Width = 123
      Height = 25
      Caption = 'dbf '#1092#1072#1081#1083', '#1055#1086#1095#1090#1072
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 293
      Top = 72
      Width = 123
      Height = 25
      Caption = 'dbf '#1092#1072#1081#1083', '#1057#1073#1077#1088#1073#1072#1085#1082
      TabOrder = 4
      OnClick = Button5Click
    end
    object Edit4: TEdit
      Left = 159
      Top = 56
      Width = 121
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
    object Button6: TButton
      Left = 421
      Top = 8
      Width = 123
      Height = 25
      Caption = 'txt '#1092#1072#1081#1083', '#1057#1073#1077#1088'-2'
      TabOrder = 7
      OnClick = Button6Click
    end
    object cxNumInk: TcxMaskEdit
      Left = 160
      Top = 30
      Hint = #1053#1086#1084#1077#1088' '#1087#1088#1080#1089#1074#1086#1080#1090#1089#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080', '#1087#1088#1080' '#1085#1077#1079#1072#1087#1086#1083#1085#1077#1085#1085#1086#1084' '#1087#1086#1083#1077'!'
      ParentFont = False
      ParentShowHint = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d{0,15}'
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 57
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 129
    Width = 384
    Height = 468
    Align = alClient
    Caption = #1057#1087#1080#1089#1086#1082' '#1087#1083#1072#1090#1077#1078#1077#1081', '#1085#1077' '#1087#1088#1080#1085#1103#1090#1099#1093' '#1082' '#1086#1088#1072#1073#1086#1090#1082#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 2
      Top = 15
      Width = 380
      Height = 451
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.DataSource = DS_data
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1DTEK: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DTEK'
        end
        object cxGridDBTableView1LSK: TcxGridDBColumn
          Caption = #1051#1080#1094'.'#1089#1095#1077#1090
          DataBinding.FieldName = 'LSK'
        end
        object cxGridDBTableView1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
        end
        object cxGridDBTableView1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
        end
        object cxGridDBTableView1DOPL: TcxGridDBColumn
          Caption = #1055#1077#1088#1080#1086#1076
          DataBinding.FieldName = 'DOPL'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 384
    Top = 129
    Width = 467
    Height = 468
    Align = alRight
    Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1093' '#1088#1077#1077#1089#1090#1088#1086#1074':'
    TabOrder = 2
    object OracleNavigator1: TOracleNavigator
      Left = 4
      Top = 298
      Width = 125
      Height = 25
      DataSource = DS_reg
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 463
      Height = 451
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu2
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = DS_reg
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1SUMMA_ITG
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1SUMMA
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1PENYA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object cxGrid1DBTableView1DAT_INK: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1080#1085#1082'.'
          DataBinding.FieldName = 'DAT_INK'
          Width = 86
        end
        object cxGrid1DBTableView1NINK: TcxGridDBColumn
          Caption = #8470' '#1080#1085#1082'.'
          DataBinding.FieldName = 'NINK'
          Width = 54
        end
        object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUMMA'
          Width = 54
        end
        object cxGrid1DBTableView1PENYA: TcxGridDBColumn
          Caption = #1055#1077#1085#1103
          DataBinding.FieldName = 'PENYA'
          Width = 52
        end
        object cxGrid1DBTableView1SUMMA_ITG: TcxGridDBColumn
          Caption = #1048#1090#1086#1075#1086
          DataBinding.FieldName = 'SUMMA_ITG'
          Width = 61
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'CNT'
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1080#1085#1103#1090#1086
          DataBinding.FieldName = 'CNT_DIST'
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #1048#1090#1086#1075#1086' '#1087#1088#1080#1085#1103#1090#1086
          DataBinding.FieldName = 'SUMMA_DIST'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object OpenDialog1: TOpenDialog
    InitialDir = 'c:\temp'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofNoNetworkButton, ofEnableSizing]
    Left = 280
    Top = 8
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin '
      ''
      'scott.c_get_pay.cur_payment_bank(id_ => :id_,'
      '                             prep_refcursor => :prep_refcursor);'
      ''
      'end;')
    Optimize = False
    Variables.Data = {
      0400000002000000080000003A00490044005F00030000000400000002000000
      000000001E0000003A0050005200450050005F00520045004600430055005200
      53004F005200740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000009000000080000004E004B004F004D000100000000000A0000004E00
      4B00560049005400010000000000080000004400540045004B00010000000000
      060000004C0053004B000100000000000800000043004F004400450001000000
      00000A000000530055004D004D0041000100000000000800000044004F005000
      4C000100000000000400000044004E00010000000000080000004C0053004B00
      3200010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 216
    Top = 8
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 248
    Top = 8
  end
  object OD_reg: TOracleDataSet
    SQL.Strings = (
      
        'select nvl(a.nkom, b.nkom) as nkom, nvl(a.nink,b.nink) as nink, ' +
        'nvl(a.dat_ink, b.dat_ink) as dat_ink, '
      
        'a.summa, a.penya, a.summa_itg, b.summa as summa_dist, a.cnt, b.c' +
        'nt as cnt_dist from '
      
        '(select t.nkom, t.nink, t.dat_ink, count(*) as cnt, sum(t.summa)' +
        ' as summa, sum(t.penya) as penya, '
      ' nvl(sum(t.summa),0)+nvl(sum(t.penya),0) as summa_itg'
      ' from scott.c_kwtp_mg t'
      ' where t.nkom=scott.init.get_nkom'
      ' group by t.nkom, t.nink, t.dat_ink) a'
      
        ' full join (select t.nkom, t.nink, t.dat_ink, count(distinct t.k' +
        'wtp_id) as cnt, sum(summa) as summa from scott.kwtp_day t '
      '            where t.nkom=scott.init.get_nkom'
      '            group by t.nkom, t.nink, t.dat_ink) b'
      ' on a.nkom=b.nkom and a.nink=b.nink'
      ' order by a.dat_ink, a.nink'
      ''
      ''
      '/*'
      
        'select a.nkom, a.nink, a.dat_ink, a.summa, a.penya, a.summa_itg,' +
        ' b.summa as summa_dist, a.cnt, b.cnt as cnt_dist from '
      
        '(select t.nkom, t.nink, t.dat_ink, count(*) as cnt, sum(t.summa)' +
        ' as summa, sum(t.penya) as penya, '
      ' nvl(sum(t.summa),0)+nvl(sum(t.penya),0) as summa_itg'
      ' from scott.c_kwtp_mg t'
      ' where t.nkom=scott.init.get_nkom'
      ' group by t.nkom, t.nink, t.dat_ink) a'
      
        ' left join (select t.nkom, t.nink, count(distinct t.kwtp_id) as ' +
        'cnt, sum(summa) as summa from scott.kwtp_day t '
      '            group by t.nkom, t.nink) b'
      ' on a.nkom=b.nkom and a.nink=b.nink'
      ' order by a.dat_ink, a.nink'
      '*/'
      '/*'
      ''
      
        'select t.nink, t.dat_ink, sum(t.summa) as summa, sum(t.penya) as' +
        ' penya, '
      
        ' nvl(sum(t.summa),0)+nvl(sum(t.penya),0) as summa_itg, count(*) ' +
        'as cnt, a.summa as summa_dist, a.cnt as cnt_dist'
      
        ' from scott.c_kwtp_mg t left join (select t.kwtp_id, count(*) as' +
        ' cnt, sum(summa) as summa from scott.kwtp_day t group by t.kwtp_' +
        'id) a '
      ' on t.id=a.kwtp_id'
      ' where t.nkom=scott.init.get_nkom'
      ' group by t.nink, t.dat_ink'
      ' order by t.dat_ink'
      '*/')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000009000000080000004E0049004E004B000100000000000E0000004400
      410054005F0049004E004B000100000000000A000000530055004D004D004100
      0100000000000A000000500045004E0059004100010000000000120000005300
      55004D004D0041005F00490054004700010000000000080000004E004B004F00
      4D0001000000000014000000530055004D004D0041005F004400490053005400
      0100000000000600000043004E0054000100000000001000000043004E005400
      5F004400490053005400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    BeforeRefresh = OD_regBeforeRefresh
    AfterRefresh = OD_regAfterRefresh
    Left = 408
    Top = 184
  end
  object DS_reg: TDataSource
    DataSet = OD_reg
    Left = 440
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 225
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1083#1103' '#1087#1086#1074#1090'.'#1079#1072#1075#1088#1091#1079#1082#1080
      OnClick = N1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 600
    Top = 225
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1082#1077#1090
      OnClick = N2Click
    end
  end
end
