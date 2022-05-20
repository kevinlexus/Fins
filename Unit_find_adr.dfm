object Form_find_adr: TForm_find_adr
  Left = 1089
  Top = 203
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1072#1076#1088#1077#1089#1091
  ClientHeight = 79
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Button1: TButton
    Left = 585
    Top = 39
    Width = 72
    Height = 26
    Caption = #1054#1082
    ModalResult = 1
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 660
    Top = 39
    Width = 69
    Height = 26
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 5
    Top = 42
    Width = 21
    Height = 22
    Hint = #1042#1072#1088#1080#1072#1085#1090' '#1087#1086#1080#1089#1082#1072' '#1091#1083#1080#1094#1099
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object chk1: TCheckBox
    Left = 236
    Top = 10
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
    TabOrder = 3
    OnClick = chk1Click
  end
  object chk2: TCheckBox
    Left = 364
    Top = 10
    Width = 125
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
    TabOrder = 4
    OnClick = chk2Click
  end
  object cbbUk: TcxLookupComboBox
    Left = 24
    Top = 7
    Properties.KeyFieldNames = 'REU'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_t_org
    Properties.OnChange = cbbStreetPropertiesChange
    TabOrder = 5
    OnKeyPress = cbbUkKeyPress
    Width = 201
  end
  object cbbStreet: TcxLookupComboBox
    Left = 24
    Top = 39
    Properties.GridMode = True
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_streets
    Properties.OnChange = cxLookupComboBox1PropertiesChange
    TabOrder = 6
    Width = 201
  end
  object cbbNd: TcxLookupComboBox
    Left = 232
    Top = 39
    Properties.GridMode = True
    Properties.KeyFieldNames = 'ND'
    Properties.ListColumns = <
      item
        FieldName = 'ND_ID'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_houses
    TabOrder = 7
    OnKeyPress = cbbNdKeyPress
    Width = 217
  end
  object cbbKw: TcxLookupComboBox
    Left = 456
    Top = 39
    Properties.GridMode = True
    Properties.KeyFieldNames = 'KW_ID'
    Properties.ListColumns = <
      item
        FieldName = 'KW'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_kw
    TabOrder = 8
    OnKeyPress = cbbKwKeyPress
    Width = 113
  end
  object OD_streets: TOracleDataSet
    SQL.Strings = (
      'select s.id, nvl(p.find_street,0) as find_street, '
      ' case when nvl(p.find_street,0)=1 and :var = 0 then '
      '   s.name '
      '      when nvl(p.find_street,0)=0 and :var = 0 then '
      '   ltrim(s.id, '#39'0'#39')||'#39' '#39'||s.name'
      '      when :var = 1 then '
      '   s.name '
      '      when :var = 2 then '
      '   ltrim(s.id, '#39'0'#39')||'#39' '#39'||s.name'
      ' end as name,'
      ' s.name as street '
      ' from scott.spul s, scott.params p'
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
    Left = 24
    Top = 64
    object OD_streetsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 4
    end
    object OD_streetsNAME: TStringField
      FieldName = 'NAME'
      Size = 25
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
    Left = 56
    Top = 64
  end
  object OD_houses: TOracleDataSet
    SQL.Strings = (
      
        'select distinct a.reu, ltrim(k.nd, '#39'0'#39') || '#39' '#1046#1069#1054'-'#39' || s.name_reu' +
        ' as nd,'
      
        '                ltrim(k.nd, '#39'0'#39') as nd2, k.nd as nd_id, k.id as ' +
        'house_id,'
      '                decode(a.psch,8,1, 9,1, 0) as psch'
      '  from scott.c_houses k'
      '   left join scott.kart a on a.house_id = k.id'
      '   left join scott.s_reu_trest s on a.reu = s.reu'
      ' where '
      '  k.kul = :id and (nvl(:p_var2,0)=0 or a.psch not in (8,9))'
      
        '  and (:flt_reu_ is not null and a.reu = :flt_reu_ or :flt_reu_ ' +
        'is null)'
      
        ' order by scott.utils.f_ord_digit(k.nd), coalesce(scott.utils.f_' +
        'ord3(k.nd),null,'#39'0'#39',scott.utils.f_ord3(k.nd)), decode(a.psch,8,1' +
        ', 9,1, 0)')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000005000000303031200000
      000000120000003A0046004C0054005F005200450055005F0005000000000000
      00000000000E0000003A0050005F005600410052003200030000000000000000
      000000}
    QBEDefinition.QBEFieldDefs = {
      0500000006000000040000004E0044000100000000000A0000004E0044005F00
      490044000100000000001000000048004F005500530045005F00490044000100
      00000000060000004E0044003200010000000000080000005000530043004800
      01000000000006000000520045005500010000000000}
    Master = OD_streets
    MasterFields = 'ID'
    DetailFields = 'ID'
    Session = DataModule1.OracleSession1
    Detachable = True
    Left = 96
    Top = 64
    object OD_housesND: TStringField
      DisplayWidth = 35
      FieldName = 'ND'
      Size = 35
    end
    object OD_housesPSCH: TFloatField
      DisplayWidth = 10
      FieldName = 'PSCH'
    end
    object OD_housesREU: TStringField
      DisplayWidth = 3
      FieldName = 'REU'
      Required = True
      Visible = False
      Size = 3
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
    object OD_housesHOUSE_ID: TFloatField
      DisplayWidth = 10
      FieldName = 'HOUSE_ID'
      Required = True
      Visible = False
    end
  end
  object DS_houses: TDataSource
    DataSet = OD_houses
    Left = 128
    Top = 64
  end
  object OD_kw: TOracleDataSet
    SQL.Strings = (
      
        'select LTRIM(k.kw,'#39'0'#39')||'#39' '#39'||decode(tp.cd, '#39'LSK_TP_MAIN'#39', '#39#39', '#39#1076 +
        #1086#1087'.'#39') as kw, k.lsk, k.kw as kw_id, k.fio'
      ' from scott.kart k, scott.v_lsk_tp tp'
      'where  k.house_id=:house_id and k.fk_tp=tp.id'
      'and (nvl(:p_var,0)=0 or tp.cd='#39'LSK_TP_MAIN'#39')'
      'and (nvl(:p_var2,0)=0 or k.psch not in (8,9))'
      
        'order by scott.utils.f_ord_digit(k.kw), coalesce(scott.utils.f_o' +
        'rd3(k.kw),null,'#39'0'#39',scott.utils.f_ord3(k.kw)), tp.npp')
    Optimize = False
    Variables.Data = {
      0400000003000000120000003A0048004F005500530045005F00490044000300
      000000000000000000000C0000003A0050005F00560041005200030000000000
      0000000000000E0000003A0050005F0056004100520032000300000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      0500000004000000040000004B0057000100000000000A0000004B0057005F00
      4900440001000000000006000000460049004F00010000000000060000004C00
      53004B00010000000000}
    Master = OD_houses
    MasterFields = 'house_id'
    DetailFields = 'house_id'
    Session = DataModule1.OracleSession1
    Left = 168
    Top = 64
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
    Left = 200
    Top = 64
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
    Left = 24
    Top = 96
  end
  object DS_t_org: TDataSource
    DataSet = OD_t_org
    Left = 56
    Top = 96
  end
end
