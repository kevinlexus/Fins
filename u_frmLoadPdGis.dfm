object frmLoadPdGis: TfrmLoadPdGis
  Left = 0
  Top = 0
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1087#1083#1072#1090#1077#1078#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1074' '#1043#1048#1057' '#1046#1050#1061
  ClientHeight = 752
  ClientWidth = 1073
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
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1073
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1073
      41)
    object Label1: TLabel
      Left = 777
      Top = 14
      Width = 42
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076':'
    end
    object Button1: TButton
      Left = 960
      Top = 10
      Width = 87
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1055#1044
      TabOrder = 0
      OnClick = Button1Click
    end
    object cbbMg: TcxLookupComboBox
      Left = 825
      Top = 11
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'MG'
      Properties.ListColumns = <
        item
          FieldName = 'MG1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_mg
      Properties.OnCloseUp = cbbMgPropertiesCloseUp
      TabOrder = 1
      Width = 121
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 1073
    Height = 711
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_pdoc
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 41
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'CD'
        Width = 125
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        Caption = #1059#1085#1080#1082'.'#1085#1086#1084#1077#1088' '#1043#1048#1057
        DataBinding.FieldName = 'UNIQNUM'
        Width = 114
      end
      object cxGrid1DBTableView1UK: TcxGridDBColumn
        Caption = #1059#1050
        DataBinding.FieldName = 'UK'
        Width = 101
      end
      object cxGrid1DBTableView1STREET: TcxGridDBColumn
        Caption = #1059#1083#1080#1094#1072
        DataBinding.FieldName = 'STREET'
        Width = 98
      end
      object cxGrid1DBTableView1ND: TcxGridDBColumn
        Caption = #8470' '#1076#1086#1084#1072
        DataBinding.FieldName = 'ND'
        Width = 99
      end
      object cxGrid1DBTableView1KW: TcxGridDBColumn
        Caption = #8470' '#1082#1074
        DataBinding.FieldName = 'KW'
        Width = 99
      end
      object cxGrid1DBTableView1ENTRY: TcxGridDBColumn
        Caption = #1055#1086#1076#1098#1077#1079#1076
        DataBinding.FieldName = 'ENTRY'
        Width = 98
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        Caption = #1051#1080#1094'.'#1089#1095'.'
        DataBinding.FieldName = 'LSK'
        Width = 99
      end
      object cxGrid1DBTableView1DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DT'
        Width = 98
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Width = 99
      end
      object cxGrid1DBTableView1RESULT: TcxGridDBColumn
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        DataBinding.FieldName = 'RESULT'
        Width = 150
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_mg: TOracleDataSet
    SQL.Strings = (
      'select distinct *'#11
      
        'from (select mg, substr(mg, 1, 4) || '#39'-'#39' || substr(mg, 5, 2) as ' +
        'mg1'#11
      '      from scott.period_reports p'#11
      '      where p.id = 51'#11
      '      union all'#11
      
        '      select to_char(sysdate, '#39'YYYYMM'#39') as mg, to_char(sysdate, ' +
        #39'YYYY-MM'#39') as mg1'#11
      '      from dual)'#11
      'order by mg desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = DataModule1.OracleSession1
    object OD_mgMG: TStringField
      FieldName = 'MG'
      Size = 6
    end
    object OD_mgMG1: TStringField
      FieldName = 'MG1'
      Size = 7
    end
  end
  object DS_mg: TDataSource
    DataSet = OD_mg
    Left = 32
  end
  object OD_Pdoc: TOracleDataSet
    SQL.Strings = (
      'select t.*, e.lsk, o.name as uk, s.name as street, '
      
        ' ltrim(coalesce(h.nd, k.nd),'#39'0'#39') as nd, -- '#1083#1080#1073#1086' '#1084#1082#1076' '#1076#1086#1084', '#1083#1080#1073#1086' '#1095#1072 +
        #1089#1090#1085#1099#1081' '#1076#1086#1084
      ' p.entry, ltrim(k.kw,'#39'0'#39') as kw, t.rowid'
      ' from EXS.PDOC t'
      ' join bs.addr_tp tp on tp.cd='#39#1051#1057#39
      ' join bs.addr_tp tp2 on tp2.cd='#39#1055#1086#1076#1098#1077#1079#1076#39
      ' join bs.addr_tp tp3 on tp3.cd='#39#1044#1086#1084#39
      
        ' join EXS.EOLINK e on t.fk_eolink=e.id and e.fk_objtp=tp.id -- '#1083 +
        #1080#1094'.'#1089#1095#1077#1090
      
        ' join EXS.EOLINK k on e.parent_id=k.id --and k.fk_objtp=tp4.id -' +
        '- '#1087#1086#1084#1077#1097#1077#1085#1080#1077' '#1080#1083#1080' '#1095#1072#1089#1090#1085#1099#1081' '#1076#1086#1084
      
        ' left join EXS.EOLINK p on k.parent_id=p.id and p.fk_objtp=tp2.i' +
        'd -- '#1087#1086#1076#1098#1077#1079#1076
      
        ' left join EXS.EOLINK h on p.parent_id=h.id and h.fk_objtp=tp3.i' +
        'd -- '#1076#1086#1084
      
        ' left join EXS.EOLINK h2 on k.parent_id=h2.id and h2.fk_objtp=tp' +
        '3.id -- '#1076#1086#1084', '#1077#1089#1083#1080' '#1082#1074#1072#1088#1090#1080#1088#1072' '#1085#1077' '#1074#1093#1086#1076#1080#1090' '#1074' '#1087#1086#1076#1098#1077#1079#1076
      
        ' left join EXS.EOLINK h3 on k.id=h3.id and h3.fk_objtp=tp3.id --' +
        ' '#1095#1072#1089#1090#1085#1099#1081' '#1076#1086#1084
      ' join scott.spul s on k.kul=s.id -- '#1091#1083#1080#1094#1072
      ' left join EXS.EOLINK uk on e.fk_uk=uk.id -- '#1059#1050
      ' join scott.t_org o on uk.reu=o.reu -- '#1059#1050
      'where t.dt = last_day(to_date(:mg||'#39'01'#39','#39'YYYYMMDD'#39'))'
      'order by t.id desc')
    Optimize = False
    Variables.Data = {
      0400000001000000060000003A004D0047000500000007000000393939393939
      0000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000018000000040000004900440001000000000008000000470055004900
      440001000000000004000000430044000100000000000E00000055004E004900
      51004E0055004D000100000000000C000000440054005F004300520054000100
      000000000C000000440054005F00550050004400010000000000120000004600
      4B005F0045004F004C0049004E004B000100000000000C000000520045005300
      55004C0054000100000000000A00000054004700550049004400010000000000
      0C00000053005400410054005500530001000000000002000000560001000000
      0000040000004400540001000000000006000000450052005200010000000000
      060000004C0053004B000100000000000400000055004B000100000000000C00
      0000530054005200450045005400010000000000040000004E00440001000000
      00000A00000045004E00540052005900010000000000040000004B0057000100
      000000000800000043004F004D004D0001000000000010000000530055004D00
      4D0041005F0049004E0001000000000010000000500045004E00590041005F00
      49004E0001000000000012000000530055004D004D0041005F004F0055005400
      01000000000012000000500045004E00590041005F004F005500540001000000
      0000}
    ReadOnly = True
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 152
    object OD_PdocID: TFloatField
      FieldName = 'ID'
      Origin = 't.id'
    end
    object OD_PdocGUID: TStringField
      FieldName = 'GUID'
      Origin = 't.guid'
      Size = 36
    end
    object OD_PdocCD: TStringField
      FieldName = 'CD'
      Origin = 't.cd'
      Size = 128
    end
    object OD_PdocUNIQNUM: TStringField
      FieldName = 'UNIQNUM'
      Origin = 't.UNIQNUM'
      Size = 255
    end
    object OD_PdocFK_EOLINK: TFloatField
      FieldName = 'FK_EOLINK'
      Origin = 't.FK_EOLINK'
      Required = True
    end
    object OD_PdocTGUID: TStringField
      FieldName = 'TGUID'
      Origin = 't.tguid'
      Size = 36
    end
    object OD_PdocSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 't.status'
      Required = True
    end
    object OD_PdocV: TFloatField
      FieldName = 'V'
      Origin = 't.v'
      Required = True
    end
    object OD_PdocDT: TDateTimeField
      FieldName = 'DT'
      Origin = 't.dt'
    end
    object OD_PdocERR: TFloatField
      FieldName = 'ERR'
      Origin = 't.err'
    end
    object OD_PdocDT_CRT: TDateTimeField
      FieldName = 'DT_CRT'
      Origin = 't.dt_crt'
    end
    object OD_PdocDT_UPD: TDateTimeField
      FieldName = 'DT_UPD'
      Origin = 't.dt_upd'
    end
    object OD_PdocRESULT: TStringField
      FieldName = 'RESULT'
      Origin = 't.result'
      Size = 1024
    end
    object OD_PdocLSK: TStringField
      FieldName = 'LSK'
      Origin = 'e.lsk'
      Size = 8
    end
    object OD_PdocUK: TStringField
      FieldName = 'UK'
      Origin = 'o.name'
      Required = True
      Size = 64
    end
    object OD_PdocSTREET: TStringField
      FieldName = 'STREET'
      Origin = 's.name'
      Size = 25
    end
    object OD_PdocND: TStringField
      FieldName = 'ND'
      Origin = 'h.nd'
      Size = 6
    end
    object OD_PdocENTRY: TFloatField
      FieldName = 'ENTRY'
      Origin = 'p.entry'
    end
    object OD_PdocKW: TStringField
      FieldName = 'KW'
      Origin = 'k.kw'
      Size = 64
    end
    object OD_PdocCOMM: TStringField
      FieldName = 'COMM'
      Origin = 't.comm'
      Size = 1024
    end
    object OD_PdocSUMMA_IN: TFloatField
      FieldName = 'SUMMA_IN'
    end
    object OD_PdocPENYA_IN: TFloatField
      FieldName = 'PENYA_IN'
    end
    object OD_PdocSUMMA_OUT: TFloatField
      FieldName = 'SUMMA_OUT'
    end
    object OD_PdocPENYA_OUT: TFloatField
      FieldName = 'PENYA_OUT'
    end
  end
  object DS_pdoc: TDataSource
    DataSet = OD_Pdoc
    Left = 72
    Top = 152
  end
end
