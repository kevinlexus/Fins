object Form_par_edit: TForm_par_edit
  Left = 580
  Top = 200
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
  ClientHeight = 94
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 274
    Height = 94
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1044#1072#1090#1072
      OnShow = TabSheet1Show
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 273
        Height = 17
        Caption = #1060#1086#1088#1084#1072' '#1087#1088#1077#1076#1085#1072#1079#1085#1072#1095#1077#1085#1072' '#1076#1083#1103' '#1089#1086#1074#1084#1077#1089#1090#1085#1086#1075#1086' '#1080#1089#1087#1086#1083#1100#1079'.'
        Color = clRed
        TabOrder = 0
        Visible = False
      end
      object cxdbdtdtD1: TcxDBDateEdit
        Left = 80
        Top = 16
        DataBinding.DataField = 'D1'
        DataBinding.DataSource = DS_value
        TabOrder = 1
        OnKeyPress = cxdbdtdtD1KeyPress
        Width = 121
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1090#1088#1086#1082#1072
      ImageIndex = 1
      OnShow = TabSheet2Show
      object DBEdit1: TDBEdit
        Left = 72
        Top = 24
        Width = 121
        Height = 21
        DataField = 'S1'
        DataSource = DS_value
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1063#1080#1089#1083#1086
      ImageIndex = 2
      OnShow = TabSheet3Show
      object DBEdit2: TDBEdit
        Left = 72
        Top = 24
        Width = 121
        Height = 21
        DataField = 'N1'
        DataSource = DS_value
        TabOrder = 0
        OnKeyPress = DBEdit2KeyPress
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1048#1079' '#1089#1087#1080#1089#1082#1072
      ImageIndex = 3
      OnShow = TabSheet4Show
      object cbb2: TcxLookupComboBox
        Left = 16
        Top = 0
        Properties.KeyFieldNames = 'ID;CD'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DS_list
        Properties.OnChange = cbb2PropertiesChange
        TabOrder = 0
        Width = 241
      end
    end
  end
  object DS_value: TDataSource
    Left = 4
    Top = 56
  end
  object DS_list: TDataSource
    DataSet = Uni_List
    Left = 28
    Top = 40
  end
  object Uni_List: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.c_obj_par.get_list_by_id(p_par_id => :p_par_id,'
      '                           prep_refcursor => :prep_refcursor);'
      'end;')
    Left = 40
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_par_id'
        Value = nil
      end
      item
        DataType = ftCursor
        Name = 'prep_refcursor'
        Value = 'Object'
      end>
  end
end
