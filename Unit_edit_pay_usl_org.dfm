object Form_edit_pay_usl_org: TForm_edit_pay_usl_org
  Left = 1450
  Top = 223
  Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1086#1087#1083#1072#1090#1099
  ClientHeight = 412
  ClientWidth = 480
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 363
    Width = 480
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 310
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 398
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 480
    Height = 363
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_kwtp_day
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1SUMMA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMMA
        end>
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
          Column = cxGrid1DBTableView1SUMMA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsData.DeletingConfirmation = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1FK_DISTR: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1088#1072#1089#1087#1088'.'
        DataBinding.FieldName = 'FK_DISTR'
        Options.Editing = False
        Width = 50
      end
      object cxGrid1DBTableView1PRIZNAK: TcxGridDBColumn
        Caption = #1042#1080#1076
        DataBinding.FieldName = 'PRIZNAK'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #1054#1087#1083#1072#1090#1072
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #1055#1077#1085#1103
            Value = 0
          end>
        Options.Editing = False
        Width = 61
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\-?\d{1,10}\.?\d{0,2}'
        Width = 63
      end
      object cxGrid1DBTableView1USL: TcxGridDBColumn
        DataBinding.FieldName = 'USL'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'USL'
        Properties.ListColumns = <
          item
            FieldName = 'NM'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_usl
        Width = 161
      end
      object cxGrid1DBTableView1ORG: TcxGridDBColumn
        DataBinding.FieldName = 'ORG'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_t_org
        Width = 131
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_kwtp_day: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.kwtp_day t'
      'where t.kwtp_id=:p_id'
      '--and t.priznak=1 --'#1090#1086#1083#1100#1082#1086' '#1086#1087#1083#1072#1090#1072' ('#1089#1076#1077#1083#1072#1083' '#1077#1097#1077' '#1080' '#1087#1077#1085#1102')'
      'order by t.priznak desc, t.usl')
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A0050005F004900440003000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      050000000F0000000E0000004B005700540050005F0049004400010000000000
      0A000000530055004D004D004100010000000000060000004C0053004B000100
      00000000080000004F005000450052000100000000000800000044004F005000
      4C00010000000000080000004E004B004F004D00010000000000080000004E00
      49004E004B000100000000000E0000004400410054005F0049004E004B000100
      000000000E0000005000520049005A004E0041004B0001000000000006000000
      550053004C00010000000000060000004F005200470001000000000010000000
      46004B005F004400490053005400520001000000000012000000530055004D00
      5F00440049005300540052000100000000000400000049004400010000000000
      080000004400540045004B00010000000000}
    Master = Form_month_payments.OD_c_kwtp_mg
    QueryAllRecords = False
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterOpen = OD_kwtp_dayAfterOpen
    AfterInsert = OD_kwtp_dayAfterInsert
    AfterEdit = OD_kwtp_dayAfterEdit
    Left = 176
    Top = 240
    object OD_kwtp_dayKWTP_ID: TFloatField
      FieldName = 'KWTP_ID'
    end
    object OD_kwtp_daySUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
    end
    object OD_kwtp_dayLSK: TStringField
      FieldName = 'LSK'
      Size = 8
    end
    object OD_kwtp_dayOPER: TStringField
      DisplayWidth = 3
      FieldName = 'OPER'
      Size = 3
    end
    object OD_kwtp_dayDOPL: TStringField
      FieldName = 'DOPL'
      Size = 6
    end
    object OD_kwtp_dayNKOM: TStringField
      FieldName = 'NKOM'
      Size = 3
    end
    object OD_kwtp_dayNINK: TFloatField
      FieldName = 'NINK'
    end
    object OD_kwtp_dayDAT_INK: TDateTimeField
      FieldName = 'DAT_INK'
    end
    object OD_kwtp_dayPRIZNAK: TIntegerField
      DefaultExpression = '0'
      FieldName = 'PRIZNAK'
    end
    object OD_kwtp_dayUSL: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      FieldName = 'USL'
      Size = 3
    end
    object OD_kwtp_dayORG: TFloatField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      FieldName = 'ORG'
    end
    object OD_kwtp_dayFK_DISTR: TFloatField
      FieldName = 'FK_DISTR'
      ReadOnly = True
    end
    object OD_kwtp_dayDTEK: TDateTimeField
      FieldName = 'DTEK'
    end
  end
  object DS_kwtp_day: TDataSource
    DataSet = OD_kwtp_day
    Left = 208
    Top = 240
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select to_char(t.usl)||'#39' '#39'||t.nm as nm, t.usl'
      ' from scott.usl t'
      'order by t.npp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004E004D0001000000000006000000550053004C00
      010000000000}
    QueryAllRecords = False
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 56
    Top = 208
  end
  object OD_t_org: TOracleDataSet
    SQL.Strings = (
      'select to_char(t.id)||'#39' '#39'||t.name as name, t.id'
      'from scott.t_org t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    QueryAllRecords = False
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 56
    Top = 256
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 88
    Top = 208
  end
  object DS_t_org: TDataSource
    DataSet = OD_t_org
    Left = 88
    Top = 256
  end
end
