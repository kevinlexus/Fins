object Form_spr_rep: TForm_spr_rep
  Left = 421
  Top = 226
  Width = 1210
  Height = 718
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1090#1095#1077#1090#1086#1074
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1194
    Height = 679
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_spr
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NP: TcxGridDBColumn
        DataBinding.FieldName = 'NP'
      end
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 49
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 273
      end
      object cxGrid1DBTableView1MAXLEVEL: TcxGridDBColumn
        DataBinding.FieldName = 'MAXLEVEL'
      end
      object cxGrid1DBTableView1FK_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'FK_TYPE'
      end
      object cxGrid1DBTableView1EXPAND_ROW: TcxGridDBColumn
        DataBinding.FieldName = 'EXPAND_ROW'
      end
      object cxGrid1DBTableView1EXPAND_COL: TcxGridDBColumn
        DataBinding.FieldName = 'EXPAND_COL'
      end
      object cxGrid1DBTableView1CAN_DETAIL: TcxGridDBColumn
        DataBinding.FieldName = 'CAN_DETAIL'
      end
      object cxGrid1DBTableView1SHOW_SEL_ORG: TcxGridDBColumn
        DataBinding.FieldName = 'SHOW_SEL_ORG'
      end
      object cxGrid1DBTableView1SHOW_SEL_OPER: TcxGridDBColumn
        DataBinding.FieldName = 'SHOW_SEL_OPER'
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 72
      end
      object cxGrid1DBTableView1SEL_MANY: TcxGridDBColumn
        DataBinding.FieldName = 'SEL_MANY'
      end
      object cxGrid1DBTableView1HAVE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'HAVE_DATE'
      end
      object cxGrid1DBTableView1FNAME: TcxGridDBColumn
        DataBinding.FieldName = 'FNAME'
        Width = 110
      end
      object cxGrid1DBTableView1ISCNT: TcxGridDBColumn
        DataBinding.FieldName = 'ISCNT'
      end
      object cxGrid1DBTableView1ISSUM: TcxGridDBColumn
        DataBinding.FieldName = 'ISSUM'
      end
      object cxGrid1DBTableView1FLDSUM: TcxGridDBColumn
        DataBinding.FieldName = 'FLDSUM'
        Width = 113
      end
      object cxGrid1DBTableView1ISHEAD: TcxGridDBColumn
        DataBinding.FieldName = 'ISHEAD'
      end
      object cxGrid1DBTableView1SHOW_PAYCHK: TcxGridDBColumn
        DataBinding.FieldName = 'SHOW_PAYCHK'
      end
      object cxGrid1DBTableView1SHOW_DEB: TcxGridDBColumn
        DataBinding.FieldName = 'SHOW_DEB'
      end
      object cxGrid1DBTableView1FRX_FNAME: TcxGridDBColumn
        DataBinding.FieldName = 'FRX_FNAME'
        Width = 174
      end
      object cxGrid1DBTableView1ISOEM: TcxGridDBColumn
        DataBinding.FieldName = 'ISOEM'
      end
      object cxGrid1DBTableView1FRM_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'FRM_NAME'
        Width = 127
      end
      object cxGrid1DBTableView1SHOW_TOTAL_ROW: TcxGridDBColumn
        DataBinding.FieldName = 'SHOW_TOTAL_ROW'
      end
      object cxGrid1DBTableView1SHOW_TOTAL_COL: TcxGridDBColumn
        DataBinding.FieldName = 'SHOW_TOTAL_COL'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_spr: TOracleDataSet
    SQL.Strings = (
      'select null as np, t.*, t.rowid from scott.reports t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000019000000020000004944010000000000040000004E414D4501000000
      0000020000004344010000000000080000004D41584C4556454C010000000000
      07000000464B5F545950450100000000000A000000455850414E445F524F5701
      00000000000A000000455850414E445F434F4C0100000000000A00000043414E
      5F44455441494C0100000000000C00000053484F575F53454C5F4F5247010000
      0000000D00000053484F575F53454C5F4F504552010000000000080000005345
      4C5F4D414E5901000000000009000000484156455F4441544501000000000005
      000000464E414D45010000000000050000004953434E54010000000000050000
      00495353554D01000000000006000000464C4453554D01000000000006000000
      4953484541440100000000000B00000053484F575F50415943484B0100000000
      000800000053484F575F444542010000000000020000004E5001000000000009
      0000004652585F464E414D450100000000000500000049534F454D0100000000
      000800000046524D5F4E414D450100000000000E00000053484F575F544F5441
      4C5F524F570100000000000E00000053484F575F544F54414C5F434F4C010000
      000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate]
    Session = DataModule1.OracleSession1
    Active = True
    Left = 72
    Top = 88
  end
  object DS_spr: TDataSource
    DataSet = OD_spr
    Left = 112
    Top = 88
  end
end
