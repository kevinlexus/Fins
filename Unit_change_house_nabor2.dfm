object Form_change_house_nabor2: TForm_change_house_nabor2
  Left = 1099
  Top = 194
  Align = alCustom
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  ClientHeight = 105
  ClientWidth = 663
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 56
    Width = 663
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 478
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 566
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 24
      Width = 153
      Height = 17
      Caption = #1090#1086#1083#1100#1082#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080' '#1091#1089#1083#1091#1075
      TabOrder = 2
      OnClick = CheckBox1Click
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 57
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 0
      Top = 8
      Width = 43
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 216
      Top = 8
      Width = 27
      Height = 13
      Caption = #1054#1088#1075'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 408
      Top = 8
      Width = 41
      Height = 13
      Caption = #1050#1086#1101#1092#1092
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 532
      Top = 8
      Width = 37
      Height = 13
      Caption = #1053#1086#1088#1084'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 2
      Top = 31
      Width = 44
      Height = 13
      Caption = #1058#1080#1087'.'#1089#1095'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 213
      Top = 32
      Width = 44
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 349
      Top = 32
      Width = 65
      Height = 13
      Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbb2: TcxLookupComboBox
      Left = 48
      Top = 26
      Properties.KeyFieldNames = 'CD'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_lsk_tp
      TabOrder = 2
      Visible = False
      Width = 161
    end
    object cxMaskEdit3: TcxMaskEdit
      Left = 451
      Top = 2
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d{0,6}|(\d{0,6}\.\d{1,6})'
      Properties.ValidateOnEnter = False
      Properties.ValidationOptions = [evoShowErrorIcon]
      TabOrder = 0
      Width = 73
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 576
      Top = 3
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d{0,6}|(\d{0,6}\.\d{1,6})'
      TabOrder = 1
      Width = 73
    end
    object cxDateEdit1: TcxDateEdit
      Left = 264
      Top = 28
      Properties.InputKind = ikMask
      TabOrder = 3
      Width = 81
    end
    object cxDateEdit2: TcxDateEdit
      Left = 416
      Top = 28
      Properties.InputKind = ikMask
      TabOrder = 4
      Width = 89
    end
    object cbbUsl: TcxLookupComboBox
      Left = 49
      Top = 2
      Enabled = False
      Properties.GridMode = True
      Properties.KeyFieldNames = 'USL'
      Properties.ListColumns = <
        item
          FieldName = 'NM'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_usl
      Properties.OnCloseUp = cbbUslPropertiesCloseUp
      TabOrder = 5
      Width = 160
    end
    object cbbOrg: TcxLookupComboBox
      Left = 244
      Top = 4
      Enabled = False
      Properties.GridMode = True
      Properties.KeyFieldNames = 'KOD'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_sprorg
      TabOrder = 6
      Width = 160
    end
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 40
    Top = 120
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select u.usl, u.usl||'#39'  '#39'||u.nm as nm, u.sptarn from scott.usl u'
      'order by u.usl')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004E004D0001000000000006000000550053004C00
      0100000000000C000000530050005400410052004E00010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 120
  end
  object DS_sprorg: TDataSource
    DataSet = OD_sprorg
    Left = 40
    Top = 152
  end
  object OD_sprorg: TOracleDataSet
    SQL.Strings = (
      
        'select t.id as kod, t.id||'#39'  '#39'||t.name as name, tp.name as tp_or' +
        'g '
      'from scott.t_org t, scott.t_org_tp tp'
      'where tp.id=t.fk_orgtp and '
      '(tp.cd='#39#1055#1086#1089#1090#1072#1074#1097#1080#1082#39' and :var_=0 or :var_=1)'
      'order by t.id')
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A005600410052005F0003000000040000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000003000000060000004B004F004400010000000000080000004E004100
      4D0045000100000000000C000000540050005F004F0052004700010000000000}
    Session = DataModule1.OracleSession1
    Left = 8
    Top = 152
  end
  object OD_lsk_tp: TOracleDataSet
    SQL.Strings = (
      'select * from scott.v_lsk_tp')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000004000000040000004900440001000000000004000000430044000100
      00000000080000004E0041004D004500010000000000060000004E0050005000
      010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 32
    Top = 64
  end
  object DS_lsk_tp: TDataSource
    DataSet = OD_lsk_tp
    Left = 80
    Top = 64
  end
end
