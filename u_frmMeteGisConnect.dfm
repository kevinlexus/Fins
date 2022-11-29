object frmMeteGisConnect: TfrmMeteGisConnect
  Left = 1341
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1080#1074#1103#1079#1082#1072' '#1089#1095#1077#1090#1095#1080#1082#1072' '#1082' '#1043#1048#1057' '#1046#1050#1061
  ClientHeight = 381
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid4: TcxGrid
    Left = 0
    Top = 0
    Width = 467
    Height = 340
    Align = alClient
    TabOrder = 0
    object cxGridDBTableView3: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <
        item
          Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077
          ImageIndex = 1
        end>
      Navigator.Buttons.Images = Form_Main.ImageListTiny
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DS_eolink_meter
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.NavigatorHints = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGridDBTableView3NAME: TcxGridDBColumn
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1095#1077#1090#1095#1080#1082#1072
        DataBinding.FieldName = 'NAME'
        Width = 399
      end
      object cxGridDBTableView3EOLINK_ID: TcxGridDBColumn
        DataBinding.FieldName = 'EOLINK_ID'
        Width = 27
      end
      object cxGridDBTableView3FK_KLSK_OBJ: TcxGridDBColumn
        DataBinding.FieldName = 'FK_KLSK_OBJ'
        Width = 27
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = cxGridDBTableView3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 340
    Width = 467
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      467
      41)
    object Button1: TButton
      Left = 168
      Top = 2
      Width = 93
      Height = 31
      Anchors = [akRight, akBottom]
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 363
      Top = 2
      Width = 92
      Height = 31
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
    object Button3: TButton
      Left = 265
      Top = 2
      Width = 93
      Height = 31
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1074#1103#1079#1072#1090#1100
      ModalResult = 4
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object OD_eolink_meter: TOracleDataSet
    SQL.Strings = (
      
        'select e.id as eolink_id, e.fk_klsk_obj, wm_concat(u.name_short|' +
        '|'#39': '#39'||coalesce(x.s1,to_char(x.n1),to_char(x.d1,'#39'DD.MM.YYYY'#39'))) ' +
        'as name'
      ' from exs.eolink e join exs.eolxpar x on e.id=x.fk_eolink'
      
        ' join (select * from oralv.u_hfpar r order by r.npp) u on x.fk_p' +
        'ar=u.id '
      ' join exs.eolink k on e.parent_id=k.id -- '#1087#1086#1084#1077#1097#1077#1085#1080#1077
      ' where e.usl=:usl and k.fk_klsk_obj=:fk_klsk_premise'
      ' and u.cd not in ('#39#1043#1048#1057' '#1046#1050#1061'.'#1055#1088#1080#1079#1085#1072#1082'_'#1055#1059'_'#1050#1056#39')'
      ' group by e.id, e.fk_klsk_obj')
    Optimize = False
    Variables.Data = {
      0400000002000000080000003A00550053004C00050000000000000000000000
      200000003A0046004B005F004B004C0053004B005F005000520045004D004900
      53004500030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000001600000046004B005F004B004C0053004B005F004F004200
      4A00010000000000080000004E0041004D004500010000000000120000004500
      4F004C0049004E004B005F0049004400010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 12
    Top = 8
  end
  object DS_eolink_meter: TDataSource
    DataSet = OD_eolink_meter
    Left = 52
    Top = 8
  end
end
