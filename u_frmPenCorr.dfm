object frmPenCorr: TfrmPenCorr
  Left = 417
  Top = 436
  Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072' '#1087#1077#1085#1080
  ClientHeight = 489
  ClientWidth = 638
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
    Width = 638
    Height = 489
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DS_data
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PENYA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.DeletingConfirmation = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        Caption = #1059#1050
        DataBinding.FieldName = 'REU'
        Options.Editing = False
        Width = 20
      end
      object cxGrid1DBTableView1STREET_NAME: TcxGridDBColumn
        Caption = #1059#1083#1080#1094#1072
        DataBinding.FieldName = 'STREET_NAME'
        Options.Editing = False
        Width = 85
      end
      object cxGrid1DBTableView1ND: TcxGridDBColumn
        Caption = #1044#1086#1084
        DataBinding.FieldName = 'ND'
        Options.Editing = False
        Width = 22
      end
      object cxGrid1DBTableView1KW: TcxGridDBColumn
        Caption = #1050#1074'.'
        DataBinding.FieldName = 'KW'
        Options.Editing = False
        Width = 26
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        DataBinding.FieldName = 'LSK'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.BeepOnError = True
        Properties.EditMask = '00000000;0;_'
        Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon]
        Properties.OnValidate = cxGrid1DBTableView1LSKPropertiesValidate
        MinWidth = 60
        Width = 60
      end
      object cxGrid1DBTableView1PENYA: TcxGridDBColumn
        DataBinding.FieldName = 'PENYA'
        Width = 49
      end
      object cxGrid1DBTableView1DOPL: TcxGridDBColumn
        DataBinding.FieldName = 'DOPL'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '0000-00;0;_'
        Properties.OnValidate = cxGrid1DBTableView1DOPLPropertiesValidate
        MinWidth = 50
        Width = 50
      end
      object cxGrid1DBTableView1USL: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1091#1089#1083'.'
        DataBinding.FieldName = 'USL'
        Width = 48
      end
      object cxGrid1DBTableView1ORG: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1086#1088#1075'.'
        DataBinding.FieldName = 'ORG'
      end
      object cxGrid1DBTableView1DTEK: TcxGridDBColumn
        DataBinding.FieldName = 'DTEK'
        Width = 67
      end
      object cxGrid1DBTableView1TS: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
        DataBinding.FieldName = 'TS'
        Options.Editing = False
        Width = 64
      end
      object cxGrid1DBTableView1USER_NAME: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'USER_NAME'
        Options.Editing = False
        Width = 116
      end
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Width = 29
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      
        'select t.*, r.name as user_name, k.reu, p.name as street_name, l' +
        'trim(k.nd,'#39'0'#39') as nd, ltrim(k.kw,'#39'0'#39') as kw, t.rowid '
      'from scott.c_pen_corr t join scott.t_user r'
      'on t.fk_user=r.id'
      'join scott.kart k on t.lsk=k.lsk '
      'join scott.spul p on k.kul=p.id'
      'where coalesce(:k_lsk_id,k.k_lsk_id)=k.k_lsk_id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A004B005F004C0053004B005F00490044000300
      00000000000000000000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.QBEFieldDefs = {
      05000000100000000400000049004400010000000000060000004C0053004B00
      0100000000000A000000500045004E0059004100010000000000080000004400
      4F0050004C00010000000000080000004400540045004B000100000000000400
      0000540053000100000000000E00000046004B005F0055005300450052000100
      000000001200000055005300450052005F004E0041004D004500010000000000
      0600000052004500550001000000000016000000530054005200450045005400
      5F004E0041004D004500010000000000040000004E0044000100000000000400
      00004B0057000100000000000C00000046004B005F0044004F00430001000000
      000006000000550053004C00010000000000060000004F005200470001000000
      000006000000560041005200010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 208
    object OD_dataID: TFloatField
      FieldName = 'ID'
    end
    object OD_dataLSK: TStringField
      DisplayLabel = #1051#1080#1094'.'#1089#1095#1077#1090
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_dataPENYA: TFloatField
      DisplayLabel = #1055#1077#1085#1103
      FieldName = 'PENYA'
      Required = True
    end
    object OD_dataDOPL: TStringField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      FieldName = 'DOPL'
      Required = True
      Size = 6
    end
    object OD_dataDTEK: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DTEK'
      Required = True
    end
    object OD_dataTS: TDateTimeField
      FieldName = 'TS'
    end
    object OD_dataFK_USER: TFloatField
      FieldName = 'FK_USER'
    end
    object OD_dataUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 32
    end
    object OD_dataREU: TStringField
      FieldName = 'REU'
      Size = 3
    end
    object OD_dataSTREET_NAME: TStringField
      FieldName = 'STREET_NAME'
      Size = 25
    end
    object OD_dataND: TStringField
      FieldName = 'ND'
      Size = 6
    end
    object OD_dataKW: TStringField
      FieldName = 'KW'
      Size = 7
    end
    object OD_dataUSL: TStringField
      FieldName = 'USL'
      Size = 3
    end
    object OD_dataORG: TFloatField
      FieldName = 'ORG'
    end
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 48
    Top = 208
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'StoreFrmPenCorr'
    StorageType = stRegistry
    Left = 16
    Top = 96
  end
end
