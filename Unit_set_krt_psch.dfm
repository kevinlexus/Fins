object Form_set_krt_psch: TForm_set_krt_psch
  Left = 387
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1089#1090#1072#1090#1091#1089#1072' '#1089#1095#1077#1090#1072
  ClientHeight = 131
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 115
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1089' '#1076#1072#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 56
    Width = 41
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 82
    Width = 315
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button3: TButton
      Left = 142
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      ModalResult = 1
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 230
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object cxDateEdit1: TcxDateEdit
    Left = 152
    Top = 24
    TabOrder = 1
    Width = 121
  end
  object cbbStatus: TcxLookupComboBox
    Left = 152
    Top = 56
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListSource = DS_psch1
    TabOrder = 2
    Width = 121
  end
  object OD_psch1: TOracleDataSet
    SQL.Strings = (
      'select * from ('
      'select 0 as id, '#39#1053#1086#1088#1084#1072#1090#1080#1074#39'  as name from dual'
      'union all'
      'select 1 as id, '#39#1057#1095'. '#1061'.'#1042'. '#1080' '#1043'.'#1042'.'#39'  as name from dual'
      'union all'
      'select 2 as id, '#39#1057#1095'. '#1061'.'#1042'.'#39'  as name from dual'
      'union all'
      'select 3 as id, '#39#1057#1095'. '#1043'.'#1042'.'#39'  as name from dual'
      'union all'
      'select 8 as id, '#39#1055#1088#1086#1096#1083'.'#39'  as name from dual'
      'union all'
      'select 9 as id, '#39#1047#1072#1082#1088#1099#1090#39'  as name from dual'
      
        ') t, scott.params p where t.id <> :id_ and (t.id <> 8 and :var_ ' +
        '=1 or :var_ =0)'
      'and (p.org_var=1 and t.id in (0,9) --'#1076#1083#1103' '#1101'+'
      'or p.org_var=0)')
    Optimize = False
    Variables.Data = {
      0300000002000000040000003A49445F03000000000000000000000005000000
      3A5641525F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    object StringField2: TStringField
      DisplayWidth = 15
      FieldName = 'NAME'
      Size = 15
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Visible = False
    end
  end
  object DS_psch1: TDataSource
    DataSet = OD_psch1
    Left = 40
  end
end
