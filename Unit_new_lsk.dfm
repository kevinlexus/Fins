object Form_new_lsk: TForm_new_lsk
  Left = 1236
  Top = 187
  VertScrollBar.Visible = False
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
  ClientHeight = 416
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 481
    Height = 353
    Align = alTop
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1085#1086#1074#1086#1075#1086' '#1083#1080#1094#1077#1074#1086#1075#1086' '#1089#1095#1077#1090#1072
    TabOrder = 0
    object Label1: TLabel
      Left = 164
      Top = 33
      Width = 23
      Height = 13
      Caption = #1058#1080#1087
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 34
      Top = 93
      Width = 18
      Height = 13
      Caption = #1059#1050
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 64
      Width = 32
      Height = 13
      Caption = #8470' '#1050#1074
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 33
      Width = 42
      Height = 13
      Caption = #8470' '#1083#1080#1094'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbb2: TcxLookupComboBox
      Left = 192
      Top = 26
      Properties.KeyFieldNames = 'CD'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_lsk_tp
      Properties.OnCloseUp = cbb2PropertiesCloseUp
      TabOrder = 1
      Width = 169
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 56
      Top = 87
      Hint = 
        #1042#1085#1080#1084#1072#1085#1080#1077'! '#1045#1089#1083#1080' '#1079#1072#1087#1086#1083#1085#1077#1085#1086', '#1090#1086' '#1073#1091#1076#1077#1090' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086' '#1074' '#1085#1086#1074#1099#1093' '#1083#1080#1094'.'#1089#1095#1077#1090#1072 +
        #1093'! '#1045#1089#1083#1080' '#1085#1077#1090', '#1090#1086' '#1074#1086#1079#1084#1105#1090#1089#1103' '#1080#1079' '#1083#1080#1094'.'#1089#1095#1077#1090#1086#1074' '#1080#1089#1090#1086#1095#1085#1080#1082#1072'!'
      ParentShowHint = False
      Properties.KeyFieldNames = 'REU'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_reu
      ShowHint = True
      TabOrder = 3
      Width = 265
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 112
      Width = 465
      Height = 153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #1053#1086#1074#1099#1081' '#1083#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090' '#1090#1086#1075#1086' '#1078#1077' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072', '#1090#1086#1075#1086' '#1078#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1103
        #1053#1086#1074#1099#1081' '#1092#1080#1085#1072#1085#1089#1086#1074#1099#1081' '#1083#1080#1094'.'#1089#1095#1077#1090' ('#1055#1088#1080' '#1088#1072#1079#1076#1077#1083#1077#1085#1080#1080' '#1076#1086#1083#1075#1086#1074')'
        #1053#1086#1074#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077' ('#1060#1080#1079#1080#1095#1077#1089#1082#1080' '#1086#1090#1076#1077#1083#1100#1085#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077')'
        
          #1053#1086#1074#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077' ('#1060#1080#1079#1080#1095#1077#1089#1082#1080' '#1086#1090#1076#1077#1083#1100#1085#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077' - c'#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074#1089#1077 +
          ' '#1089#1091#1073#1089#1095#1077#1090#1072')'
        
          #1053#1086#1074#1099#1081' '#1092#1080#1085#1072#1085#1089#1086#1074#1099#1081' '#1083#1080#1094'.'#1089#1095#1077#1090' ('#1055#1088#1080' '#1088#1072#1079#1076#1077#1083#1077#1085#1080#1080' '#1076#1086#1083#1075#1086#1074' - '#1089#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074 +
          #1089#1077' '#1089#1091#1073#1089#1095#1077#1090#1072')')
      ParentFont = False
      TabOrder = 4
      OnClick = RadioGroup1Click
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 272
      Width = 313
      Height = 17
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1091#1089#1083#1091#1075#1080' '#1080#1079' '#1083#1080#1094#1077#1074#1086#1075#1086'-'#1080#1089#1090#1086#1095#1085#1080#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 296
      Width = 265
      Height = 17
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1091#1089#1083#1091#1075#1080' '#1080#1079' '#1083#1080#1094#1077#1074#1086#1075#1086'-'#1080#1089#1090#1086#1095#1085#1080#1082#1072
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 56
      Top = 54
      Enabled = False
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '.?.?.?.?.?.?.?'
      Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 89
    end
    object cxMaskEdit2: TcxMaskEdit
      Left = 56
      Top = 22
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d{8}'
      Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 89
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 320
      Width = 265
      Height = 17
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1083#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090' - '#1080#1089#1090#1086#1095#1085#1080#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object CheckBox4: TCheckBox
      Left = 448
      Top = 320
      Width = 25
      Height = 17
      TabOrder = 8
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 367
    Width = 481
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Button2: TButton
      Left = 160
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 238
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Hint = #1055#1086#1076#1086#1073#1088#1072#1090#1100' '#1083#1080#1094'.'#1089#1095#1077#1090' '#1087#1086' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1085#1086#1084#1091
      Caption = #1053#1072#1081#1090#1080
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button3Click
    end
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
    Left = 16
    Top = 72
  end
  object DS_lsk_tp: TDataSource
    DataSet = OD_lsk_tp
    Left = 56
    Top = 72
  end
  object OD_reu: TOracleDataSet
    SQL.Strings = (
      ''
      'select t.reu, t.reu||'#39' '#39'||t.name as name'
      ' from scott.t_org t where t.reu is not null'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000060000005200
      45005500010000000000}
    Session = DataModule1.OracleSession1
    Left = 88
    Top = 72
  end
  object DS_reu: TDataSource
    DataSet = OD_reu
    Left = 120
    Top = 72
  end
end
