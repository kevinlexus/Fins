object frmLoadFias: TfrmLoadFias
  Left = 265
  Top = 395
  Caption = #1052#1072#1089#1090#1077#1088' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1060#1048#1040#1057
  ClientHeight = 564
  ClientWidth = 765
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
  object dxwzrdcntrl1: TdxWizardControl
    Left = 0
    Top = 0
    Width = 765
    Height = 564
    Buttons.Back.Caption = #1053#1072#1079#1072#1076
    Buttons.Cancel.Caption = #1054#1090#1084#1077#1085#1072
    Buttons.CustomButtons.Buttons = <>
    Buttons.Finish.Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100
    Buttons.Next.Caption = #1044#1072#1083#1077#1077
    Header.AssignedValues = [wchvDescriptionVisibility]
    Header.DescriptionVisibility = wcevDefault
    OptionsViewStyleAero.Title.Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1099#1077' '#1092#1072#1081#1083#1099' '
    OnButtonClick = dxwzrdcntrl1ButtonClick
    OnPageChanging = dxwzrdcntrl1PageChanging
    object dxwzrdcntrlpg1: TdxWizardControlPage
      Header.AssignedValues = [wchvDescriptionFont, wchvDescriptionVisibility, wchvDescriptionOffset]
      Header.DescriptionFont.Charset = DEFAULT_CHARSET
      Header.DescriptionFont.Color = clDefault
      Header.DescriptionFont.Height = -11
      Header.DescriptionFont.Name = 'Tahoma'
      Header.DescriptionFont.Style = []
      Header.DescriptionOffset = 0
      Header.DescriptionVisibility = wcevDefault
      Header.Description = #1054#1090#1084#1077#1090#1080#1090#1100' '#1095#1077#1082#1073#1086#1082#1089', '#1077#1089#1083#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1086#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      Header.Title = #1064#1072#1075' 1. '#1054#1095#1080#1089#1090#1080#1090#1100', '#1077#1089#1083#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 743
        Height = 428
        Align = alClient
        TabOrder = 0
        object chk2: TCheckBox
          Left = 8
          Top = 8
          Width = 161
          Height = 33
          Hint = 
            #1042#1085#1080#1084#1072#1085#1080#1077'! '#1055#1086#1083#1085#1086#1089#1090#1100#1102' '#1086#1095#1080#1097#1072#1102#1090#1089#1103' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1081', '#1077#1089#1083#1080' '#1086#1085#1080 +
            ' '#1073#1099#1083#1080' '#1079#1072#1087#1086#1083#1085#1077#1085#1099'!!!'
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1080#1081
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          WordWrap = True
          OnClick = chk2Click
        end
        object Memo1: TMemo
          Left = 152
          Top = 24
          Width = 489
          Height = 353
          Lines.Strings = (
            
              #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1083#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1072', '#1082#1072#1082' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1084', '#1082#1086#1090#1086#1088#1086#1075#1086' '#1076#1086' '#1101#1090#1086#1075#1086' '#1085 +
              #1077' '#1073#1099#1083#1086' '#1074' '#1060#1048#1040#1057':'
            ''
            '1. '#1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1091#1089#1090#1091#1102' '#1079#1072#1087#1080#1089#1100' '#1074' FIAS_HOUSE'
            '2. '#1054#1090#1082#1088#1099#1090#1100' '#1089#1072#1081#1090' fias.nalog.ru'
            '3. '#1053#1072#1081#1090#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1099#1081' '#1076#1086#1084
            
              '4. '#1055#1086#1083#1091#1095#1080#1090#1100' '#1085#1091#1078#1085#1099#1081' AOGUID '#1091#1083#1080#1094#1099', '#1090'.'#1077'. '#1059#1085#1080#1082#1072#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1072#1076#1088#1077#1089#1086#1086#1073#1088 +
              #1072#1079#1091#1102#1097#1077#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1074' '
            #1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1084' '#1072#1076#1088#1077#1089#1085#1086#1084' '#1088#1077#1077#1089#1090#1088#1077' '
            '5. '#1055#1086#1083#1091#1095#1080#1090#1100' '#1085#1091#1078#1085#1099#1081' GUID '#1076#1086#1084#1072
            
              '6. '#1055#1088#1086#1087#1080#1089#1072#1090#1100' '#1074'  FIAS_HOUSE '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1087#1086#1083#1103' AOGUID, HOUSEGUI' +
              'D, HOUSENUM, '
            'BUILDNUM ('#1045#1089#1083#1080' '#1085#1072#1076#1086'), '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086' STARTDATE, ENDDATE'
            '7. '#1057#1086#1074#1084#1077#1089#1090#1080#1090#1100' '#1091#1083#1080#1094#1091' '#1080' '#1076#1086#1084', '#1074' '#1076#1072#1085#1085#1086#1084' '#1084#1072#1089#1090#1077#1088#1077
            '')
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object dxwzrdcntrlpg3: TdxWizardControlPage
      Header.Description = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1085#1072#1081#1090#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1091#1083#1080#1094
      Header.Title = #1055#1088#1086#1074#1077#1088#1082#1072' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103' '#1091#1083#1080#1094
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 743
        Height = 428
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnMouseWheel = cxGrid1DBTableView1MouseWheel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_prep_street
          DataController.KeyFieldNames = 'AOGUID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1OFFNAME: TcxGridDBColumn
            Caption = #1059#1083#1080#1094#1072', '#1060#1048#1040#1057
            DataBinding.FieldName = 'OFFNAME'
            Options.Editing = False
            Width = 198
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #1059#1083#1080#1094#1072', '#1056#1050#1062
            DataBinding.FieldName = 'KUL'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DataModule1.DS_spul
            Width = 145
          end
          object cxGrid1DBTableView1KUL: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1091#1083', '#1056#1050#1062
            DataBinding.FieldName = 'KUL'
            Options.Editing = False
            Width = 102
          end
          object cxGrid1DBTableView1AOGUID: TcxGridDBColumn
            Caption = #1059#1085#1080#1082#1072#1083#1100#1085#1099#1081' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
            DataBinding.FieldName = 'AOGUID'
            Width = 198
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object dxwzrdcntrlpg4: TdxWizardControlPage
      Header.AssignedValues = [wchvDescriptionFont, wchvDescriptionVisibility]
      Header.DescriptionFont.Charset = DEFAULT_CHARSET
      Header.DescriptionFont.Color = clDefault
      Header.DescriptionFont.Height = -11
      Header.DescriptionFont.Name = 'Tahoma'
      Header.DescriptionFont.Style = []
      Header.DescriptionVisibility = wcevDefault
      Header.Description = 
        #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1085#1072#1081#1090#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1076#1086#1084#1086#1074', '#1077#1089#1083#1080' '#1076#1086#1084' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077' '#1060#1048#1040#1057 +
        ' '#1087#1086#1074#1090#1086#1088#1103#1077#1090#1089#1103', '#1077#1075#1086' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1085#1072#1081#1090#1080' '#1085#1072' '#1089#1072#1081#1090#1077' fias.nalog.ru'#13#10#1080' '#1091#1089#1090 +
        #1072#1085#1086#1074#1080#1090#1100' '#1087#1086' '#1082#1086#1076#1091' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103' "'#1059#1085#1080#1082#1072#1083#1100#1085#1099#1081' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088'". '#13#10#1045#1089#1083#1080' ' +
        #1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1075#1086' '#1076#1086#1084#1072' '#1085#1077' '#1085#1072#1081#1076#1077#1085#1086', '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1091' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1076#1086#1073#1072#1074#1080#1090#1100 +
        ' '#1089#1090#1088#1086#1082#1091' '#1074' '#13#10#1090#1072#1073#1083#1080#1094#1091' scott.fias_house '#1089' '#1087#1086#1083#1091#1095#1077#1085#1085#1099#1084' HOUSEGUID '#1089' fi' +
        'as.nalog.ru, '#1089' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1080#1084' AOGUID '#1091#1083#1080#1094#1099'.'
      Header.Title = #1055#1088#1086#1074#1077#1088#1082#1072' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1076#1086#1084#1086#1074
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 743
        Height = 428
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          OnMouseWheel = cxGridDBTableView1MouseWheel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_prep_house
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1NAME: TcxGridDBColumn
            Caption = #1059#1083#1080#1094#1072
            DataBinding.FieldName = 'NAME'
            Options.Editing = False
            Width = 153
          end
          object cxGridDBTableView1HOUSENUM: TcxGridDBColumn
            Caption = #1044#1086#1084', '#1060#1048#1040#1057
            DataBinding.FieldName = 'HOUSENUM'
            Options.Editing = False
            Width = 72
          end
          object cxGridDBTableView1FullNdName: TcxGridDBColumn
            Caption = #1044#1086#1084', '#1056#1050#1062
            DataBinding.FieldName = 'FK_HOUSE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ClearKey = 46
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'FULL_ND_NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_lkp_house
            Width = 305
          end
          object cxGridDBTableView1HOUSEGUID: TcxGridDBColumn
            Caption = #1059#1085#1080#1082#1072#1083#1100#1085#1099#1081' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
            DataBinding.FieldName = 'HOUSEGUID'
            Width = 194
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object dxwzrdcntrlpg6: TdxWizardControlPage
      Header.Description = 
        #1060#1072#1081#1083' '#1086#1073#1084#1077#1085#1072' '#1084#1086#1078#1085#1086' '#1074#1099#1075#1088#1091#1079#1080#1090#1100' '#1074' '#1087#1091#1085#1082#1090#1077' '#1056#1072#1073#1086#1095#1077#1077' '#1084#1077#1089#1090#1086' -> '#1054#1090#1095#1077#1090#1099'->'#1055#1077 +
        #1088#1080#1086#1076#1080#1095#1077#1089#1082#1072#1103'->'#1074#1099#1075#1088#1091#1079#1082#1072' '#1074' '#1043#1048#1057' '#1046#1050#1061
      Header.Title = #1042#1099#1087#1086#1083#1085#1077#1085#1086'! '#1052#1086#1078#1085#1086' '#1074#1099#1075#1088#1091#1078#1072#1090#1100' '#1092#1072#1081#1083' '#1086#1073#1084#1077#1085#1072' '#1076#1083#1103' '#1043#1048#1057' '#1046#1050#1061
      object mmo2: TMemo
        Left = 0
        Top = 0
        Width = 743
        Height = 428
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 288
    Top = 265
    Width = 129
    Height = 48
    Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'...'
    TabOrder = 1
    Visible = False
  end
  object OD_prep_street: TOracleDataSet
    SQL.Strings = (
      'select t.*, a.offname, t.rowid from scott.prep_street_fias t'
      'join scott.fias_addr a on upper(t.aoguid)=upper(a.aoguid)'
      'order by a.offname')
    ReadBuffer = 5000
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000060000004B0055004C000100000000000C00000041004F00
      47005500490044000100000000000E0000004F00460046004E0041004D004500
      010000000000}
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 32
    Top = 208
  end
  object DS_prep_street: TDataSource
    DataSet = OD_prep_street
    Left = 88
    Top = 208
  end
  object OD_prep_house: TOracleDataSet
    SQL.Strings = (
      
        'select s.name, b.housenum, t.fk_house, t.houseguid, t.kul, b.hou' +
        'seguid, t.rowid'
      '  from scott.prep_house_fias t'
      '  join scott.spul s on t.kul=s.id'
      
        '  join scott.fias_house b on upper(t.houseguid)=upper(b.housegui' +
        'd) and '
      '   scott.init.get_dt_end between b.startdate and b.enddate'
      'order by s.name, scott.utils.f_ord_digit(b.housenum), b.buildnum'
      ''
      '/*'
      
        'select s.name, t.ext_ndom, t.ext_nkorp, t.nd , ltrim(t.nd,'#39'0'#39') a' +
        's nd_name, r.kul, t.rowid'
      '  from scott.prep_house_fias t'
      '  join scott.prep_street_fias r'
      '    on t.ext_nylic = r.ext_nylic'
      '  join scott.spul s'
      '    on r.kul = s.id'
      
        ' order by decode(t.nd, null, -1, 0), t.ext_nylic, t.ext_ndom, t.' +
        'ext_nkorp'
      '*/')
    ReadBuffer = 5000
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000006000000080000004E0041004D004500010000000000060000004B00
      55004C000100000000001000000048004F005500530045004E0055004D000100
      000000001000000046004B005F0048004F005500530045000100000000001200
      000048004F005500530045004700550049004400010000000000160000004800
      4F0055005300450047005500490044005F003100010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterUpdate, roAllFields]
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    AfterScroll = OD_prep_houseAfterScroll
    Left = 32
    Top = 256
  end
  object DS_prep_house: TDataSource
    DataSet = OD_prep_house
    Left = 88
    Top = 256
  end
  object OD_lkp_house: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, ltrim(t.nd,'#39'0'#39') as nd, o.name||'#39', '#39'||s.name||'#39', '#39'||' +
        'ltrim(t.nd,'#39'0'#39') as full_nd_name from scott.c_houses t join scott' +
        '.spul s on t.kul=s.id join scott.t_org o on s.fk_settlement=o.id'
      
        'where exists (select * from scott.kart k where k.house_id=t.id a' +
        'nd k.psch not in (8,9)) --'#1075#1076#1077' '#1077#1089#1090#1100' '#1086#1090#1082#1088#1099#1090#1099#1077' '#1083'.'#1089'.'
      '--and t.kul=:kul'
      '--and t.nd like '#39'%'#39'||:nd||'#39'%'#39'  '
      'order by s.name, t.nd')
    ReadBuffer = 5000
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004E00440001000000000004000000490044000100
      0000000018000000460055004C004C005F004E0044005F004E0041004D004500
      010000000000}
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 32
    Top = 312
  end
  object DS_lkp_house: TDataSource
    DataSet = OD_lkp_house
    Left = 88
    Top = 312
  end
  object OD_file: TOracleDataSet
    SQL.Strings = (
      'select t.* from scott.prep_file t'
      'order by t.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 32
    Top = 360
  end
  object DS_file: TDataSource
    DataSet = OD_file
    Left = 88
    Top = 360
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.c_load_privs.rep(:p_file, :prep_refcursor);'
      'end;')
    ReadBuffer = 1000
    Optimize = False
    Variables.Data = {
      04000000020000001E0000003A0050005200450050005F005200450046004300
      5500520053004F0052007400000000000000000000000E0000003A0050005F00
      460049004C004500030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000069000000080000004F00520047003100010000000000060000005200
      45005500010000000000060000004B0055004C000100000000000E0000005300
      54005F0043004F0044004500010000000000080000004E004100530050000100
      000000000A0000004E0059004C0049004300010000000000080000004E004400
      4F004D000100000000000A0000004E004B004F00520050000100000000000600
      00004E004B0057000100000000000A0000004E004B004F004D004E0001000000
      00000A0000004C004300480045005400010000000000060000004B0050005200
      0100000000000C0000004B00500052005F00570052000100000000000C000000
      4B00500052005F004F005400010000000000060000004F0050004C0001000000
      00000A00000050004C005F004F00540001000000000006000000470055003100
      0100000000000C000000540046005F004E00470031000100000000000E000000
      540046005F0053005600470031000100000000000C000000530055004D005F00
      47003100010000000000060000004700550032000100000000000C0000005400
      46005F004E00470032000100000000000E000000540046005F00530056004700
      32000100000000000C000000530055004D005F00470032000100000000000600
      00004700550033000100000000000C000000540046005F004E00470033000100
      000000000E000000540046005F0053005600470033000100000000000C000000
      530055004D005F00470033000100000000000600000047005500340001000000
      00000C000000540046005F004E00470034000100000000000E00000054004600
      5F0053005600470034000100000000000C000000530055004D005F0047003400
      0100000000000800000047004B00550031000100000000000C0000004C004300
      48004500540031000100000000000C0000004500440049005A004D0031000100
      000000000A000000540046005F004E0031000100000000000C00000054004600
      5F005300560031000100000000000A000000460041004B005400310001000000
      00000A0000004E004F0052004D0031000100000000000C000000530055004D00
      5F00460031000100000000000800000047004B00550032000100000000000C00
      00004C00430048004500540032000100000000000C0000004500440049005A00
      4D0032000100000000000A0000004E004F0052004D0032000100000000000A00
      0000540046005F004E0032000100000000000C000000540046005F0053005600
      32000100000000000C000000530055004D005F00460032000100000000000800
      000047004B00550033000100000000000C0000004C0043004800450054003300
      0100000000000E000000450044005F0049005A004D0033000100000000000A00
      0000540046005F004E0033000100000000000C000000540046005F0053005600
      33000100000000000A0000004E004F0052004D0033000100000000000A000000
      460041004B00540033000100000000000C000000530055004D005F0046003300
      0100000000000800000047004B00550034000100000000000C0000004C004300
      48004500540034000100000000000C0000004500440049005A004D0034000100
      000000000A000000540046005F004E0034000100000000000C00000054004600
      5F005300560034000100000000000A0000004E004F0052004D00340001000000
      00000A000000460041004B00540034000100000000000C000000530055004D00
      5F00460034000100000000000800000047004B00550035000100000000000C00
      00004C00430048004500540035000100000000000C0000004500440049005A00
      4D0035000100000000000A000000540046005F004E0035000100000000000C00
      0000540046005F005300560035000100000000000A0000004E004F0052004D00
      35000100000000000C000000530055004D005F00460035000100000000000800
      000047004B00550036000100000000000C0000004C0043004800450054003600
      0100000000000C0000004500440049005A004D0036000100000000000A000000
      540046005F004E0036000100000000000C000000540046005F00530056003600
      0100000000000A0000004E004F0052004D0036000100000000000A0000004600
      41004B00540036000100000000000C000000530055004D005F00460036000100
      000000000800000047004B00550037000100000000000C0000004C0043004800
      4500540037000100000000000C0000004500440049005A004D00370001000000
      00000A000000540046005F004E0037000100000000000C000000540046005F00
      5300560037000100000000000A0000004E004F0052004D003700010000000000
      0C000000530055004D005F00460037000100000000000800000047004B005500
      38000100000000000C0000004C00430048004500540038000100000000000C00
      00004500440049005A004D0038000100000000000A000000460041004B005400
      38000100000000000A000000540046005F004E0038000100000000000C000000
      540046005F005300560038000100000000000A0000004E004F0052004D003800
      0100000000000C000000530055004D005F004600380001000000000008000000
      47004B00550039000100000000000C0000004C00430048004500540039000100
      000000000C0000004500440049005A004D0039000100000000000A0000005400
      46005F004E0039000100000000000C000000540046005F005300560039000100
      000000000A0000004E004F0052004D0039000100000000000C00000053005500
      4D005F00460039000100000000000A00000047004B0055003100300001000000
      00000E0000004C004300480045005400310030000100000000000E0000004500
      440049005A004D00310030000100000000000C000000460041004B0054003100
      30000100000000000E000000530055004D005F00460031003000010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 408
  end
end
