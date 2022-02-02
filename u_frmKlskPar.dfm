object frmKlskPar: TfrmKlskPar
  Left = 947
  Top = 968
  Width = 527
  Height = 349
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
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
    Top = 0
    Width = 511
    Height = 310
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_objxpar
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ULIST: TcxGridDBColumn
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088
        DataBinding.FieldName = 'FK_LIST'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_u_list
        Width = 128
      end
      object cxGrid1DBTableView1VAL: TcxGridDBColumn
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'VAL'
        Options.Editing = False
        Width = 95
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        Caption = #1057#1086#1079#1076#1072#1085#1086
        DataBinding.FieldName = 'DT_CRT'
        Width = 77
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1086
        DataBinding.FieldName = 'DT_UPD'
        Width = 97
      end
      object cxGrid1DBTableView1USER_NAME: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'USER_NAME'
        Width = 112
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_objxpar: TOracleDataSet
    SQL.Strings = (
      'select x.id, x.fk_list, '
      
        'decode(u.val_tp,'#39'NM'#39', to_char(x.n1), '#39'ST'#39', x.s1, '#39'DT'#39', to_char(x' +
        '.d1,'#39'DD.MM.YYYY'#39'), '#39'BL'#39', decode(x.n1,1,'#39#1044#1072#39',0,'#39#1053#1077#1090#39', null) , nul' +
        'l) as val, '
      'u.val_tp, '
      
        'x.s1, x.n1, x.d1, x.fk_k_lsk, x.dt_crt, x.dt_upd, u2.name as use' +
        'r_name, x.rowid'
      ' from scott.t_objxpar x join scott.u_list u on u.id=x.fk_list'
      
        ' join scott.u_listtp tp on u.fk_listtp=tp.id and tp.cd='#39#1055#1072#1088#1072#1084#1077#1090#1088 +
        #1099' '#1083#1080#1094'.'#1089#1095#1077#1090#1072#39
      ' left join scott.t_user u2 on x.fk_user=u2.id'
      'where '
      'x.fk_k_lsk=:k_lsk_id'
      'order by u.name')
    Optimize = False
    Variables.Data = {
      0300000001000000090000003A4B5F4C534B5F49440300000000000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      040000000B0000000200000049440100000000000300000056414C0100000000
      00020000005331010000000000020000004E310100000000000600000056414C
      5F545001000000000002000000443101000000000007000000464B5F4C495354
      01000000000008000000464B5F4B5F4C534B0100000000000600000044545F43
      52540100000000000600000044545F5550440100000000000900000055534552
      5F4E414D45010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    OnNewRecord = OD_objxparNewRecord
    Left = 112
    Top = 96
    object OD_objxparID: TFloatField
      FieldName = 'ID'
    end
    object OD_objxparFK_LIST: TFloatField
      FieldName = 'FK_LIST'
      Required = True
    end
    object OD_objxparVAL: TStringField
      FieldName = 'VAL'
      Size = 255
    end
    object OD_objxparVAL_TP: TStringField
      FieldName = 'VAL_TP'
      Size = 3
    end
    object OD_objxparS1: TStringField
      FieldName = 'S1'
      Size = 255
    end
    object OD_objxparN1: TFloatField
      FieldName = 'N1'
    end
    object OD_objxparD1: TDateTimeField
      FieldName = 'D1'
    end
    object OD_objxparFK_K_LSK: TFloatField
      FieldName = 'FK_K_LSK'
    end
    object OD_objxparDT_CRT: TDateTimeField
      FieldName = 'DT_CRT'
      ReadOnly = True
    end
    object OD_objxparDT_UPD: TDateTimeField
      FieldName = 'DT_UPD'
      ReadOnly = True
    end
    object OD_objxparUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      ReadOnly = True
      Size = 32
    end
  end
  object DS_objxpar: TDataSource
    DataSet = OD_objxpar
    Left = 136
    Top = 96
  end
  object OD_u_list: TOracleDataSet
    SQL.Strings = (
      
        'select u.* from scott.u_list u join scott.u_listtp tp on u.fk_li' +
        'sttp=tp.id'
      'where tp.cd='#39#1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1083#1080#1094'.'#1089#1095#1077#1090#1072#39
      'order by u.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000200000049440100000000000600000056414C5F54500100
      00000000020000004344010000000000040000004E414D450100000000000200
      00004E4D01000000000009000000464B5F4C4953545450010000000000030000
      004E505001000000000007000000464B5F554E49540100000000000700000053
      514C544558540100000000000D000000464B5F4558535F555F4C495354010000
      000000}
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 112
    Top = 144
  end
  object DS_u_list: TDataSource
    DataSet = OD_u_list
    Left = 136
    Top = 144
  end
end
