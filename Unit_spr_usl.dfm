object Form_spr_usl: TForm_spr_usl
  Left = 641
  Top = 230
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1091#1089#1083#1091#1075
  ClientHeight = 517
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 915
    Height = 468
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1059#1089#1083#1091#1075#1080
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 907
        Height = 26
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 11
          Width = 47
          Height = 13
          Caption = #1060#1080#1083#1100#1090#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 54
          Top = 3
          Width = 148
          Height = 21
          TabOrder = 0
          OnChange = Edit1Change
        end
        object CheckBox1: TCheckBox
          Left = 216
          Top = 8
          Width = 161
          Height = 17
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBox1Click
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 26
        Width = 907
        Height = 414
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_usl
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.InvertSelect = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1USLM: TcxGridDBColumn
            DataBinding.FieldName = 'USLM'
          end
          object cxGridDBTableView1USL: TcxGridDBColumn
            DataBinding.FieldName = 'USL'
            Width = 31
          end
          object cxGridDBTableView1NPP: TcxGridDBColumn
            DataBinding.FieldName = 'NPP'
            Width = 33
          end
          object cxGridDBTableView1CD: TcxGridDBColumn
            DataBinding.FieldName = 'CD'
            Width = 83
          end
          object cxGridDBTableView1NM: TcxGridDBColumn
            DataBinding.FieldName = 'NM'
            Width = 160
          end
          object cxGridDBTableView1NM1: TcxGridDBColumn
            DataBinding.FieldName = 'NM1'
            Width = 102
          end
          object cxGridDBTableView1NM2: TcxGridDBColumn
            DataBinding.FieldName = 'NM2'
          end
          object cxGridDBTableView1NM3: TcxGridDBColumn
            DataBinding.FieldName = 'NM3'
          end
          object cxGridDBTableView1USL_P: TcxGridDBColumn
            DataBinding.FieldName = 'USL_P'
          end
          object cxGridDBTableView1USL_ORDER: TcxGridDBColumn
            DataBinding.FieldName = 'USL_ORDER'
            Width = 72
          end
          object cxGridDBTableView1KARTW: TcxGridDBColumn
            DataBinding.FieldName = 'KARTW'
          end
          object cxGridDBTableView1KWNI: TcxGridDBColumn
            DataBinding.FieldName = 'KWNI'
          end
          object cxGridDBTableView1LPW: TcxGridDBColumn
            DataBinding.FieldName = 'LPW'
          end
          object cxGridDBTableView1ED_IZM: TcxGridDBColumn
            DataBinding.FieldName = 'ED_IZM'
          end
          object cxGridDBTableView1SPTARN: TcxGridDBColumn
            DataBinding.FieldName = 'SPTARN'
          end
          object cxGridDBTableView1USL_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'USL_TYPE'
          end
          object cxGridDBTableView1USL_PLR: TcxGridDBColumn
            DataBinding.FieldName = 'USL_PLR'
          end
          object cxGridDBTableView1USL_NORM: TcxGridDBColumn
            DataBinding.FieldName = 'USL_NORM'
          end
          object cxGridDBTableView1TYP_USL: TcxGridDBColumn
            DataBinding.FieldName = 'TYP_USL'
          end
          object cxGridDBTableView1USL_TYPE2: TcxGridDBColumn
            DataBinding.FieldName = 'USL_TYPE2'
          end
          object cxGridDBTableView1USL_SUBS: TcxGridDBColumn
            DataBinding.FieldName = 'USL_SUBS'
          end
          object cxGridDBTableView1FK_CALC_TP: TcxGridDBColumn
            DataBinding.FieldName = 'FK_CALC_TP'
          end
          object cxGridDBTableView1USLG: TcxGridDBColumn
            DataBinding.FieldName = 'USLG'
          end
          object cxGridDBTableView1COUNTER: TcxGridDBColumn
            DataBinding.FieldName = 'COUNTER'
          end
          object cxGridDBTableView1HAVE_VVOD: TcxGridDBColumn
            DataBinding.FieldName = 'HAVE_VVOD'
          end
          object cxGridDBTableView1N_PROGS: TcxGridDBColumn
            DataBinding.FieldName = 'N_PROGS'
          end
          object cxGridDBTableView1FK_USL_PEN: TcxGridDBColumn
            DataBinding.FieldName = 'FK_USL_PEN'
          end
          object cxGridDBTableView1CAN_VV: TcxGridDBColumn
            DataBinding.FieldName = 'CAN_VV'
          end
          object cxGridDBTableView1IS_ITER: TcxGridDBColumn
            DataBinding.FieldName = 'IS_ITER'
          end
          object cxGridDBTableView1MAX_VOL: TcxGridDBColumn
            DataBinding.FieldName = 'MAX_VOL'
          end
          object cxGridDBTableView1FK_USL_CHLD: TcxGridDBColumn
            DataBinding.FieldName = 'FK_USL_CHLD'
          end
          object cxGridDBTableView1FRC_GET_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'FRC_GET_PRICE'
          end
          object cxGridDBTableView1USL_EMPT: TcxGridDBColumn
            DataBinding.FieldName = 'USL_EMPT'
          end
          object cxGridDBTableView1PARENT_USL: TcxGridDBColumn
            DataBinding.FieldName = 'PARENT_USL'
          end
          object cxGridDBTableView1CHRG_ROUND: TcxGridDBColumn
            DataBinding.FieldName = 'CHRG_ROUND'
          end
          object cxGridDBTableView1BILL_BRAKE: TcxGridDBColumn
            DataBinding.FieldName = 'BILL_BRAKE'
          end
          object cxGridDBTableView1IS_SWP_PEN_ORG: TcxGridDBColumn
            DataBinding.FieldName = 'IS_SWP_PEN_ORG'
          end
          object cxGridDBTableView1FOR_ARCH: TcxGridDBColumn
            DataBinding.FieldName = 'FOR_ARCH'
          end
          object cxGridDBTableView1LINKED_USL: TcxGridDBColumn
            DataBinding.FieldName = 'LINKED_USL'
          end
          object cxGridDBTableView1IDS: TcxGridDBColumn
            DataBinding.FieldName = 'IDS'
          end
          object cxGridDBTableView1TP_PEN_DT: TcxGridDBColumn
            DataBinding.FieldName = 'TP_PEN_DT'
          end
          object cxGridDBTableView1TP_PEN_REF: TcxGridDBColumn
            DataBinding.FieldName = 'TP_PEN_REF'
          end
          object cxGridDBTableView1USL_VOL: TcxGridDBColumn
            DataBinding.FieldName = 'USL_VOL'
          end
          object cxGridDBTableView1BILL_COL: TcxGridDBColumn
            DataBinding.FieldName = 'BILL_COL'
          end
          object cxGridDBTableView1BILL_COL2: TcxGridDBColumn
            DataBinding.FieldName = 'BILL_COL2'
          end
          object cxGridDBTableView1NM_SHORT: TcxGridDBColumn
            DataBinding.FieldName = 'NM_SHORT'
          end
          object cxGridDBTableView1USE_VOL_CAN: TcxGridDBColumn
            DataBinding.FieldName = 'USE_VOL_CAN'
          end
          object cxGridDBTableView1HIDE_CHRG: TcxGridDBColumn
            DataBinding.FieldName = 'HIDE_CHRG'
          end
          object cxGridDBTableView1USLM_GROUP1: TcxGridDBColumn
            DataBinding.FieldName = 'USLM_GROUP1'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1059#1089#1083#1091#1075#1080' - '#1089#1095#1077#1090
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 440
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_usl_bills
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Width = 40
          end
          object cxGrid1DBTableView1USL_ID: TcxGridDBColumn
            DataBinding.FieldName = 'USL_ID'
            Width = 50
          end
          object cxGrid1DBTableView1IS_VOL: TcxGridDBColumn
            DataBinding.FieldName = 'IS_VOL'
            Width = 53
          end
          object cxGrid1DBTableView1MG1: TcxGridDBColumn
            DataBinding.FieldName = 'MG1'
            Width = 49
          end
          object cxGrid1DBTableView1MG2: TcxGridDBColumn
            DataBinding.FieldName = 'MG2'
            Width = 49
          end
          object cxGrid1DBTableView1FK_TP: TcxGridDBColumn
            DataBinding.FieldName = 'FK_TP'
            Visible = False
          end
          object cxGrid1DBTableView1FK_BILL_VAR: TcxGridDBColumn
            DataBinding.FieldName = 'FK_BILL_VAR'
            Visible = False
          end
          object cxGrid1DBTableView1FRC_GET_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'FRC_GET_PRICE'
            Visible = False
          end
          object cxGrid1DBTableView1BILL_AGG: TcxGridDBColumn
            DataBinding.FieldName = 'BILL_AGG'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 468
    Width = 915
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 822
      Top = 16
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.usl t'
      ' where (:varflt_=1 and (upper(t.nm) like '#39'%'#39'||upper(:flt_)||'#39'%'#39
      'or upper(t.usl) like '#39'%'#39'||upper(:flt_)||'#39'%'#39
      'or upper(t.cd) like '#39'%'#39'||upper(:flt_)||'#39'%'#39
      ')'
      ' or :varflt_=0)'
      'order by t.npp')
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0056004100520046004C0054005F0003000000
      00000000000000000A0000003A0046004C0054005F0005000000000000000000
      0000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      050000003100000008000000550053004C004D00010000000000060000005500
      53004C000100000000000A0000004B0041005200540057000100000000000800
      00004B0057004E004900010000000000060000004C0050005700010000000000
      0C000000450044005F0049005A004D00010000000000040000004E004D000100
      00000000060000004E004D0031000100000000000A000000550053004C005F00
      50000100000000000C000000530050005400410052004E000100000000001000
      0000550053004C005F0054005900500045000100000000000E00000055005300
      4C005F0050004C00520001000000000010000000550053004C005F004E004F00
      52004D000100000000000E0000005400590050005F00550053004C0001000000
      000012000000550053004C005F004F0052004400450052000100000000001200
      0000550053004C005F0054005900500045003200010000000000100000005500
      53004C005F005300550042005300010000000000060000004E004D0032000100
      00000000060000004E004D003300010000000000040000004300440001000000
      0000060000004E00500050000100000000001400000046004B005F0043004100
      4C0043005F005400500001000000000008000000550053004C00470001000000
      00000E00000043004F0055004E00540045005200010000000000120000004800
      4100560045005F00560056004F0044000100000000000E0000004E005F005000
      52004F00470053000100000000001400000046004B005F00550053004C005F00
      500045004E000100000000000C000000430041004E005F005600560001000000
      00000E000000490053005F0049005400450052000100000000000E0000004D00
      410058005F0056004F004C000100000000001600000046004B005F0055005300
      4C005F00430048004C0044000100000000001A0000004600520043005F004700
      450054005F005000520049004300450001000000000010000000550053004C00
      5F0045004D00500054000100000000001400000050004100520045004E005400
      5F00550053004C000100000000001400000043004800520047005F0052004F00
      55004E00440001000000000014000000420049004C004C005F00420052004100
      4B0045000100000000001C000000490053005F005300570050005F0050004500
      4E005F004F00520047000100000000001000000046004F0052005F0041005200
      43004800010000000000140000004C0049004E004B00450044005F0055005300
      4C00010000000000060000004900440053000100000000001200000054005000
      5F00500045004E005F004400540001000000000014000000540050005F005000
      45004E005F005200450046000100000000000E000000550053004C005F005600
      4F004C0001000000000010000000420049004C004C005F0043004F004C000100
      0000000012000000420049004C004C005F0043004F004C003200010000000000
      100000004E004D005F00530048004F0052005400010000000000160000005500
      530045005F0056004F004C005F00430041004E00010000000000120000004800
      4900440045005F00430048005200470001000000000016000000550053004C00
      4D005F00470052004F00550050003100010000000000}
    ReadOnly = True
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    Active = True
    Left = 64
    Top = 120
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 100
    Top = 120
  end
  object OD_uslm: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.uslm t'
      'order by t.uslm')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      050000000600000008000000550053004C004D00010000000000080000005400
      5900500045000100000000000C000000450044005F0049005A004D0001000000
      0000060000004E004D0031000100000000000E0000004B004F004C005F004C00
      53004B000100000000000E0000004B004F004C005F004B005000520001000000
      0000}
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    Active = True
    Left = 64
    Top = 152
  end
  object DS_uslm: TDataSource
    DataSet = OD_uslm
    Left = 100
    Top = 152
  end
  object OD_usl_bills: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.usl_bills t'
      'order by t.id')
    Optimize = False
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      050000000900000004000000490044000100000000000C000000550053004C00
      5F0049004400010000000000060000004D004700310001000000000006000000
      4D00470032000100000000000C000000490053005F0056004F004C0001000000
      00000A00000046004B005F00540050000100000000001600000046004B005F00
      420049004C004C005F005600410052000100000000001A000000460052004300
      5F004700450054005F0050005200490043004500010000000000100000004200
      49004C004C005F00410047004700010000000000}
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    Active = True
    Left = 64
    Top = 184
  end
  object DS_usl_bills: TDataSource
    DataSet = OD_usl_bills
    Left = 100
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 276
    Top = 256
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1091#1089#1083#1091#1075#1091
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1091
      OnClick = N2Click
    end
  end
  object Timer2: TTimer
    Interval = 300
    OnTimer = Timer2Timer
    Left = 448
    Top = 72
  end
end
