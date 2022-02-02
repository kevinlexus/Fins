object Form_lk_par: TForm_lk_par
  Left = 948
  Top = 194
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
  ClientHeight = 118
  ClientWidth = 298
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 298
    Height = 77
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 80
        Top = 16
        DataBinding.DataField = 'D1'
        TabOrder = 0
        Width = 121
      end
    end
    object TabSheet2: TTabSheet
      ImageIndex = 1
      object DBEdit1: TDBEdit
        Left = 72
        Top = 24
        Width = 121
        Height = 21
        DataField = 'S1'
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      ImageIndex = 2
      object DBEdit2: TDBEdit
        Left = 72
        Top = 24
        Width = 121
        Height = 21
        DataField = 'N1'
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      ImageIndex = 3
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 88
        Top = 16
        DataBinding.DataField = 'N1'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 77
    Width = 298
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
