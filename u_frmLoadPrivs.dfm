object frmLoadPrivs: TfrmLoadPrivs
  Left = 797
  Top = 214
  Caption = #1052#1072#1089#1090#1077#1088' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1083#1100#1075#1086#1090#1085#1080#1082#1086#1074
  ClientHeight = 542
  ClientWidth = 664
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
    Width = 664
    Height = 542
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
      Header.Description = 
        #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074#1099#1073#1088#1072#1090#1100' '#1086#1076#1080#1085' '#1080#1083#1080' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1092#1072#1081#1083#1086#1074' '#1089' '#1088#1072#1089#1096#1080#1088#1077#1085#1080#1077#1084' *.DBF' +
        ','#13#10#1052#1086#1078#1085#1086' '#1074#1086#1086#1073#1097#1077' '#1085#1077' '#1074#1099#1073#1080#1088#1072#1090#1100' '#1092#1072#1081#1083#1099', '#1077#1089#1083#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1090#1086#1083#1100#1082#1086' '#1087#1088#1086#1074#1077#1088 +
        #1080#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1081'.'
      Header.Title = #1064#1072#1075' 1. '#1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1099#1077' '#1092#1072#1081#1083#1099' '
      object lst1: TcxShellListView
        Left = 0
        Top = 0
        Width = 481
        Height = 406
        Align = alLeft
        DragDropSettings.AllowDragObjects = False
        MultiSelect = True
        Options.ShowFolders = False
        Options.ShowZipFilesWithFolders = False
        Options.AutoExecute = False
        Options.FileMask = '*.dbf'
        Sorting = True
        TabOrder = 0
        ViewStyle = vsReport
      end
      object pnl1: TPanel
        Left = 481
        Top = 0
        Width = 161
        Height = 406
        Align = alClient
        TabOrder = 1
        object chk2: TCheckBox
          Left = 0
          Top = 8
          Width = 137
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
      end
    end
    object dxwzrdcntrlpg2: TdxWizardControlPage
      Header.Description = #1045#1089#1083#1080' '#1092#1072#1081#1083' '#1085#1077' '#1079#1072#1075#1088#1091#1078#1077#1085', '#1086#1085' '#1085#1077' '#1087#1086#1089#1090#1091#1087#1080#1090' '#1074' '#1086#1073#1088#1072#1073#1086#1090#1082#1091
      Header.Title = #1064#1072#1075' 2. '#1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1079#1072#1075#1088#1091#1079#1082#1091' '#1092#1072#1081#1083#1086#1074
      object mmo1: TMemo
        Left = 0
        Top = 0
        Width = 642
        Height = 406
        Align = alClient
        TabOrder = 0
      end
    end
    object dxwzrdcntrlpg3: TdxWizardControlPage
      Header.Description = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1085#1072#1081#1090#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1091#1083#1080#1094
      Header.Title = #1055#1088#1086#1074#1077#1088#1082#1072' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103' '#1091#1083#1080#1094
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 642
        Height = 406
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_prep_street
          DataController.KeyFieldNames = 'EXT_NYLIC'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1EXT_NYLIC: TcxGridDBColumn
            Caption = #1059#1083#1080#1094#1072', '#1059#1057#1047#1053
            DataBinding.FieldName = 'EXT_NYLIC'
            Options.Editing = False
            Width = 189
          end
          object cxGrid1DBTableView1KUL: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1091#1083#1080#1094#1099', '#1056#1050#1062
            DataBinding.FieldName = 'KUL'
            Width = 84
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
            Width = 379
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object dxwzrdcntrlpg4: TdxWizardControlPage
      Header.Description = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1085#1072#1081#1090#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1076#1086#1084#1086#1074
      Header.Title = #1055#1088#1086#1074#1077#1088#1082#1072' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1076#1086#1084#1086#1074
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 491
        Height = 406
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = DS_prep_house
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1NAME: TcxGridDBColumn
            Caption = #1059#1083#1080#1094#1072
            DataBinding.FieldName = 'NAME'
            Options.Editing = False
          end
          object cxGridDBTableView1EXT_NDOM: TcxGridDBColumn
            Caption = #1044#1086#1084', '#1059#1057#1047#1053
            DataBinding.FieldName = 'EXT_NDOM'
            Options.Editing = False
          end
          object cxGridDBTableView1EXT_NKORP: TcxGridDBColumn
            Caption = #1050#1086#1088#1087', '#1059#1057#1047#1053
            DataBinding.FieldName = 'EXT_NKORP'
            Options.Editing = False
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = #1044#1086#1084', '#1056#1050#1062
            DataBinding.FieldName = 'ND'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ND_ID'
            Properties.ListColumns = <
              item
                FieldName = 'ND'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_lkp_house
            OnGetDisplayText = cxGridDBTableView1Column1GetDisplayText
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'ND_NAME'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object pnl2: TPanel
        Left = 491
        Top = 0
        Width = 151
        Height = 406
        Align = alRight
        TabOrder = 1
        object chk3: TCheckBox
          Left = 8
          Top = 16
          Width = 129
          Height = 33
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1076#1086#1084#1072' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1091#1083#1080#1094#1077
          TabOrder = 0
          WordWrap = True
          OnClick = chk3Click
        end
      end
    end
    object dxwzrdcntrlpg5: TdxWizardControlPage
      Header.Description = #1042#1099#1075#1088#1091#1079#1082#1072' '#1083#1100#1075#1086#1090#1085#1080#1082#1086#1074' '#1074' '#1082#1072#1090#1072#1083#1086#1075' c:\temp\out\'
      Header.Title = #1042#1099#1075#1088#1091#1079#1082#1072' '#1083#1100#1075#1086#1090#1085#1080#1082#1086#1074
      object Panel1: TPanel
        Left = 464
        Top = 0
        Width = 178
        Height = 406
        Align = alRight
        TabOrder = 0
        object lbl1: TLabel
          Left = 8
          Top = 16
          Width = 44
          Height = 13
          Caption = #1055#1077#1088#1080#1086#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 8
          Top = 40
          Width = 48
          Height = 13
          Caption = #1042#1072#1088#1080#1072#1085#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbb1: TcxLookupComboBox
          Left = 64
          Top = 8
          Properties.KeyFieldNames = 'MG'
          Properties.ListColumns = <
            item
              FieldName = 'MG2'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_mg1
          TabOrder = 0
          Width = 105
        end
        object CheckBox1: TCheckBox
          Left = 7
          Top = 84
          Width = 153
          Height = 33
          Hint = 
            #1042#1085#1080#1084#1072#1085#1080#1077'! '#1055#1086#1083#1085#1086#1089#1090#1100#1102' '#1086#1095#1080#1097#1072#1102#1090#1089#1103' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1081', '#1077#1089#1083#1080' '#1086#1085#1080 +
            ' '#1073#1099#1083#1080' '#1079#1072#1087#1086#1083#1085#1077#1085#1099'!!!'
          Caption = #1054#1076#1085#1072' '#1079#1072#1087#1080#1089#1100' '#1085#1072' '#1072#1076#1088#1077#1089
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 1
          WordWrap = True
        end
        object cxImageComboBox1: TcxImageComboBox
          Left = 64
          Top = 32
          EditValue = '0'
          Properties.Items = <
            item
              Description = #1054#1089#1085#1086#1074#1085#1086#1081
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = #1058#1050#1054
              Value = '1'
            end>
          Properties.OnCloseUp = cxImageComboBox1PropertiesCloseUp
          TabOrder = 2
          Width = 105
        end
      end
    end
    object dxwzrdcntrlpg6: TdxWizardControlPage
      Header.Title = #1042#1099#1075#1088#1091#1078#1077#1085#1086'!'
      Header.Description = ''
      object mmo2: TMemo
        Left = 0
        Top = 0
        Width = 642
        Height = 406
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object OD_prep_street: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.prep_street t'
      'order by t.ext_nylic')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000120000004500580054005F004E0059004C00490043000100
      00000000060000004B0055004C00010000000000}
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
      
        'select s.name, t.ext_ndom, t.ext_nkorp, t.nd , ltrim(t.nd,'#39'0'#39') a' +
        's nd_name, r.kul, t.rowid'
      '  from scott.prep_house t'
      '  join scott.prep_street r'
      '    on t.ext_nylic = r.ext_nylic'
      '  join scott.spul s'
      '    on r.kul = s.id'
      
        ' order by decode(t.nd, null, -1, 0), t.ext_nylic, t.ext_ndom, t.' +
        'ext_nkorp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000006000000080000004E0041004D004500010000000000100000004500
      580054005F004E0044004F004D00010000000000120000004500580054005F00
      4E004B004F0052005000010000000000040000004E0044000100000000000600
      00004B0055004C000100000000000E0000004E0044005F004E0041004D004500
      010000000000}
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
      
        'select distinct t.nd as nd_id, ltrim(t.nd,'#39'0'#39') as nd from scott.' +
        'kart t'
      'where t.psch not in (8,9)'
      'and t.kul=:kul'
      'and '
      
        '(case    when :tp=1  and t.nd like '#39'%'#39'||:nd||'#39'%'#39' and :nkorp is n' +
        'ot null and t.nd like '#39'%'#39'||upper(:nkorp)||'#39'%'#39' then 1'
      
        '         when :tp=1 and t.nd like '#39'%'#39'||:nd||'#39'%'#39'  and :nkorp is n' +
        'ull then 1'
      '         when :tp=0  then 1 --'#1073#1077#1079' '#1092#1080#1083#1100#1090#1088#1072' '#1076#1086#1084#1086#1074
      '         else 2 end =1'
      '         '
      ')         '
      'order by t.nd')
    Optimize = False
    Variables.Data = {
      0400000004000000080000003A004B0055004C00050000000000000000000000
      060000003A004E0044000500000000000000000000000C0000003A004E004B00
      4F0052005000050000000000000000000000060000003A005400500003000000
      040000000100000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004E0044000100000000000A0000004E0044005F00
      49004400010000000000}
    QueryAllRecords = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
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
      '  scott.c_load_privs.rep(:p_file, :prep_refcursor, :p_tp);'
      'end;')
    ReadBuffer = 1000
    Optimize = False
    Variables.Data = {
      04000000030000001E0000003A0050005200450050005F005200450046004300
      5500520053004F0052007400000000000000000000000E0000003A0050005F00
      460049004C0045000300000000000000000000000A0000003A0050005F005400
      5000030000000000000000000000}
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
  object OD_mg1: TOracleDataSet
    SQL.Strings = (
      
        'select t.mg, scott.utils.MONTH_NAME1(substr(t.mg,5,2))||'#39' '#39'||sub' +
        'str(mg,1,4)||'#39' '#1075'.'#39' as mg1,'
      
        ' scott.utils.MONTH_NAME(substr(t.mg,5,2))||'#39' '#39'||substr(mg,1,4)||' +
        #39' '#1075'.'#39' as mg2'
      
        'from scott.v_period_reports t, scott.reports r where t.id=r.id a' +
        'nd r.cd='#39'14'#39' and t.mg is not null'
      'order by t.mg desc'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004D004700010000000000060000004D0047003100
      010000000000060000004D0047003200010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 32
    Top = 168
  end
  object DS_mg1: TDataSource
    DataSet = OD_mg1
    Left = 88
    Top = 168
  end
end
