object Form_find_adr2: TForm_find_adr2
  Left = 293
  Top = 673
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = #1055#1086#1080#1089#1082
  ClientHeight = 228
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object Button1: TButton
    Left = 633
    Top = 96
    Width = 72
    Height = 33
    Caption = #1048#1089#1082#1072#1090#1100
    ModalResult = 1
    TabOrder = 2
    OnClick = Button1Click
  end
  object RadioButton1: TRadioButton
    Left = 616
    Top = 48
    Width = 17
    Height = 17
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 616
    Top = 144
    Width = 17
    Height = 17
    TabOrder = 1
    OnClick = RadioButton2Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 120
    Width = 601
    Height = 97
    TabOrder = 3
    OnClick = Panel1Click
    object cxGroupBox2: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1055#1086' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1091
      Enabled = False
      StyleDisabled.BorderColor = clBtnShadow
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clBtnFace
      StyleDisabled.TextColor = clBtnShadow
      TabOrder = 0
      Height = 81
      Width = 585
      object Label1: TLabel
        Left = 5
        Top = 25
        Width = 61
        Height = 16
        Caption = 'ID '#1076#1086#1084#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 165
        Top = 25
        Width = 106
        Height = 16
        Caption = 'ID '#1087#1086#1084#1077#1097#1077#1085#1080#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 373
        Top = 25
        Width = 87
        Height = 16
        Caption = #1060#1080#1085'.'#1083#1080#1094'.'#1089#1095'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 157
        Top = 57
        Width = 37
        Height = 16
        Caption = #1045#1051#1057':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 9
        Top = 57
        Width = 58
        Height = 16
        Caption = #1051#1080#1094'.'#1089#1095'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 69
        Top = 17
        Width = 73
        Height = 24
        Hint = 'ID '#1076#1086#1084#1072
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = Edit1Change
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 277
        Top = 17
        Width = 73
        Height = 24
        Hint = 'ID '#1076#1086#1084#1072
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnChange = Edit2Change
        OnKeyPress = Edit2KeyPress
      end
      object Edit3: TEdit
        Left = 461
        Top = 17
        Width = 73
        Height = 24
        Hint = 'ID '#1076#1086#1084#1072
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnChange = Edit3Change
        OnKeyPress = Edit3KeyPress
      end
      object Edit4: TEdit
        Left = 197
        Top = 49
        Width = 92
        Height = 24
        Hint = 'ID '#1076#1086#1084#1072
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnChange = Edit4Change
        OnKeyPress = Edit4KeyPress
      end
      object Edit5: TEdit
        Left = 69
        Top = 49
        Width = 76
        Height = 24
        Hint = 'ID '#1076#1086#1084#1072
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnChange = Edit5Change
        OnKeyPress = Edit5KeyPress
      end
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 601
    Height = 105
    TabOrder = 4
    OnClick = Panel2Click
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1055#1086' '#1072#1076#1088#1077#1089#1091
      PanelStyle.Active = True
      StyleDisabled.BorderColor = clBtnShadow
      StyleDisabled.BorderStyle = ebsUltraFlat
      StyleDisabled.Color = clBtnFace
      StyleDisabled.TextColor = clBtnShadow
      StyleDisabled.TextStyle = []
      TabOrder = 0
      Height = 89
      Width = 593
      object Label4: TLabel
        Left = 244
        Top = 29
        Width = 108
        Height = 13
        Caption = #1060#1080#1083#1100#1090#1088' '#1074' '#1087#1086#1080#1089#1082#1077':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 5
        Top = 58
        Width = 21
        Height = 22
        Hint = #1042#1072#1088#1080#1072#1085#1090' '#1087#1086#1080#1089#1082#1072' '#1091#1083#1080#1094#1099
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object lkpUk: TcxLookupComboBox
        Left = 32
        Top = 24
        Hint = #1059#1050
        ParentShowHint = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'REU'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_t_org
        Properties.OnChange = cxLookupComboBox4PropertiesChange
        ShowHint = True
        TabOrder = 4
        OnKeyPress = lkpUkKeyPress
        Width = 201
      end
      object chk1: TCheckBox
        Left = 356
        Top = 26
        Width = 125
        Height = 21
        Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1095#1077#1090#1072
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 5
        OnClick = chk1Click
      end
      object chk2: TCheckBox
        Left = 484
        Top = 26
        Width = 101
        Height = 21
        Caption = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1077
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 6
        OnClick = chk2Click
      end
      object lkpKw: TcxLookupComboBox
        Left = 480
        Top = 56
        Hint = #1050#1074#1072#1088#1090#1080#1088#1072
        ParentShowHint = False
        Properties.DropDownAutoSize = True
        Properties.DropDownSizeable = True
        Properties.GridMode = True
        Properties.KeyFieldNames = 'KW_ID'
        Properties.ListColumns = <
          item
            FieldName = 'KW'
          end
          item
            FieldName = 'FIO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_kw
        Properties.ReadOnly = True
        ShowHint = True
        TabOrder = 2
        OnKeyPress = lkpKwKeyPress
        Width = 105
      end
      object lkpHouse: TcxLookupComboBox
        Left = 272
        Top = 56
        Hint = #1044#1086#1084
        ParentShowHint = False
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ND_ID'
        Properties.ListColumns = <
          item
            FieldName = 'ND'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_houses
        Properties.ReadOnly = True
        Properties.OnEditValueChanged = lkpHousePropertiesEditValueChanged
        ShowHint = True
        TabOrder = 1
        OnKeyPress = lkpHouseKeyPress
        Width = 201
      end
      object lkpStreet: TcxLookupComboBox
        Left = 32
        Top = 56
        Hint = #1059#1083#1080#1094#1072
        ParentShowHint = False
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsEditList
        Properties.DropDownSizeable = True
        Properties.IncrementalFiltering = False
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_streets
        Properties.OnChange = lkpStreetPropertiesChange
        Properties.OnCloseUp = lkpStreetPropertiesCloseUp
        Properties.OnEditValueChanged = lkpStreetPropertiesEditValueChanged
        ShowHint = True
        TabOrder = 0
        OnExit = lkpStreetExit
        OnKeyPress = lkpStreetKeyPress
        Width = 233
      end
    end
  end
  object cxLabel1: TcxLabel
    Left = 248
    Top = 232
    Caption = 'cxLabel1'
  end
  object OD_streets: TOracleDataSet
    SQL.Strings = (
      'select s.id, nvl(p.find_street,0) as find_street, '
      ' case when nvl(p.find_street,0)=1 and :var = 0 then '
      '   ot.name_short||'#39'. '#39'||o.name||'#39', '#39'||initcap(s.name)'
      '      when nvl(p.find_street,0)=0 and :var = 0 then '
      
        '   ltrim(s.id, '#39'0'#39')||'#39' '#39'||ot.name_short||'#39'. '#39'||o.name||'#39', '#39'||ini' +
        'tcap(s.name)'
      '      when :var = 1 then '
      '   o.name||'#39', '#39'||initcap(s.name) '
      '      when :var = 2 then '
      
        '   ltrim(s.id, '#39'0'#39')||'#39' '#39'||ot.name_short||'#39'. '#39'||o.name||'#39', '#39'||ini' +
        'tcap(s.name)'
      ' end as name,'
      ' ot.name_short||'#39'. '#39'||o.name||'#39', '#39'||initcap(s.name) as street '
      ' from scott.spul s '
      'join scott.params p on 1=1'
      'join scott.t_org o on s.fk_settlement=o.id'
      'join scott.t_org_tp ot on o.fk_orgtp=ot.id'
      ' where '
      
        ' (:flt_reu_ is not null and exists (select * from scott.kart k, ' +
        'scott.c_houses c where c.kul=s.id and k.house_id=c.id'
      ' and k.reu=:flt_reu_) or :flt_reu_ is null)'
      'order by name ')
    Optimize = False
    Variables.Data = {
      0400000002000000080000003A00560041005200030000000000000000000000
      120000003A0046004C0054005F005200450055005F0005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000000400000049004400010000000000080000004E0041004D00
      45000100000000000C0000005300540052004500450054000100000000001600
      0000460049004E0044005F00530054005200450045005400010000000000}
    Master = OD_t_org
    MasterFields = 'reu'
    DetailFields = 'flt_reu_'
    Session = DataModule1.OracleSession1
    Left = 8
    Top = 240
    object OD_streetsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 4
    end
    object OD_streetsNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object OD_streetsSTREET: TStringField
      FieldName = 'STREET'
      Size = 25
    end
    object OD_streetsFIND_STREET: TFloatField
      FieldName = 'FIND_STREET'
    end
  end
  object DS_streets: TDataSource
    DataSet = OD_streets
    Left = 40
    Top = 240
  end
  object OD_houses: TOracleDataSet
    SQL.Strings = (
      
        'select distinct ltrim(k.nd, '#39'0'#39') as nd, k.kul, ltrim(k.nd, '#39'0'#39') ' +
        'as nd2, k.nd as nd_id, decode(a.psch,8,1, 9,1, 0) as psch'
      '  from scott.c_houses k'
      '   left join scott.kart a on a.house_id = k.id'
      ' where '
      '  k.kul = :kul and (nvl(:p_var2,0)=0 or a.psch not in (8,9))'
      
        '  and (:flt_reu_ is not null and a.reu = :flt_reu_ or :flt_reu_ ' +
        'is null)'
      
        ' order by scott.utils.f_ord_digit(k.nd), coalesce(scott.utils.f_' +
        'ord3(k.nd),null,'#39'0'#39',scott.utils.f_ord3(k.nd)), decode(a.psch,8,1' +
        ', 9,1, 0)')
    Optimize = False
    Variables.Data = {
      0400000003000000120000003A0046004C0054005F005200450055005F000500
      000000000000000000000E0000003A0050005F00560041005200320003000000
      0000000000000000080000003A004B0055004C00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000006000000040000004E0044000100000000000A0000004E0044005F00
      49004400010000000000060000004E0044003200010000000000080000005000
      5300430048000100000000000600000052004500550001000000000006000000
      4B0055004C00010000000000}
    Session = DataModule1.OracleSession1
    Detachable = True
    Left = 80
    Top = 240
    object OD_housesND: TStringField
      DisplayWidth = 35
      FieldName = 'ND'
      Size = 35
    end
    object OD_housesPSCH: TFloatField
      DisplayWidth = 10
      FieldName = 'PSCH'
    end
    object OD_housesND2: TStringField
      DisplayWidth = 6
      FieldName = 'ND2'
      Visible = False
      Size = 6
    end
    object OD_housesND_ID: TStringField
      DisplayWidth = 6
      FieldName = 'ND_ID'
      Required = True
      Visible = False
      Size = 6
    end
    object OD_housesKUL: TStringField
      FieldName = 'KUL'
      Required = True
      Size = 4
    end
  end
  object DS_houses: TDataSource
    DataSet = OD_houses
    Left = 112
    Top = 240
  end
  object OD_kw: TOracleDataSet
    SQL.Strings = (
      
        'select LTRIM(k.kw,'#39'0'#39')||'#39' '#39'||decode(tp.cd, '#39'LSK_TP_MAIN'#39', '#39#39', '#39#1076 +
        #1086#1087'.'#39') as kw, k.lsk, k.kw as kw_id, k.fio'
      ' from scott.kart k, scott.v_lsk_tp tp'
      'where  k.kul=:kul and k.nd=:nd and k.fk_tp=tp.id'
      'and (nvl(:p_var,0)=0 or tp.cd='#39'LSK_TP_MAIN'#39')'
      'and (nvl(:p_var2,0)=0 or k.psch not in (8,9))'
      
        'order by scott.utils.f_ord_digit(k.kw), coalesce(scott.utils.f_o' +
        'rd3(k.kw),null,'#39'0'#39',scott.utils.f_ord3(k.kw)), tp.npp')
    Optimize = False
    Variables.Data = {
      04000000040000000C0000003A0050005F005600410052000300000000000000
      000000000E0000003A0050005F00560041005200320003000000000000000000
      0000080000003A004B0055004C00050000000000000000000000060000003A00
      4E004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000004000000040000004B0057000100000000000A0000004B0057005F00
      4900440001000000000006000000460049004F00010000000000060000004C00
      53004B00010000000000}
    Master = OD_houses
    MasterFields = 'kul;nd_id'
    DetailFields = 'kul;nd'
    Session = DataModule1.OracleSession1
    Left = 152
    Top = 240
    object OD_kwKW: TStringField
      DisplayWidth = 7
      FieldName = 'KW'
      Size = 12
    end
    object OD_kwFIO: TStringField
      DisplayWidth = 25
      FieldName = 'FIO'
      Size = 50
    end
    object OD_kwLSK: TStringField
      DisplayWidth = 8
      FieldName = 'LSK'
      Required = True
      Visible = False
      Size = 8
    end
    object OD_kwKW_ID: TStringField
      FieldName = 'KW_ID'
      Visible = False
      Size = 7
    end
  end
  object DS_kw: TDataSource
    DataSet = OD_kw
    Left = 184
    Top = 240
  end
  object OD_t_org: TOracleDataSet
    SQL.Strings = (
      'select 0 as ord, -1 as id, null as reu, '#39#1042#1089#1077#39' name  from dual'
      'union all '
      'select 1 as ord, t.id, t.reu, t.reu||'#39'-'#39'||t.name as name'
      '  from scott.t_org t'
      'where t.reu is not null'
      'order by ord, name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000040000000400000049004400010000000000080000004E0041004D00
      4500010000000000060000004F00520044000100000000000600000052004500
      5500010000000000}
    Session = DataModule1.OracleSession1
    Left = 8
    Top = 272
  end
  object DS_t_org: TDataSource
    DataSet = OD_t_org
    Left = 40
    Top = 272
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = Edit1
        Properties.Strings = (
          'Text')
      end
      item
        Component = Edit2
        Properties.Strings = (
          'Text')
      end
      item
        Component = Edit3
        Properties.Strings = (
          'Text')
      end
      item
        Component = Edit4
        Properties.Strings = (
          'Text')
      end
      item
        Component = Edit5
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'frmListKartStore'
    StorageType = stRegistry
    Left = 80
    Top = 272
  end
  object cxPropertiesStore2: TcxPropertiesStore
    Components = <
      item
        Component = Edit1
        Properties.Strings = (
          'Text')
      end
      item
        Component = Edit2
        Properties.Strings = (
          'Text')
      end
      item
        Component = Edit3
        Properties.Strings = (
          'Text')
      end
      item
        Component = Edit4
        Properties.Strings = (
          'Text')
      end
      item
        Component = Edit5
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'cxPropertiesStore2'
    StorageType = stRegistry
    Left = 640
    Top = 8
  end
end
