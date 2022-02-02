object Form_alert_exit: TForm_alert_exit
  Left = 261
  Top = 673
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077
  ClientHeight = 186
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 48
    Top = 8
    Width = 195
    Height = 20
    Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088' '#1089#1080#1089#1090#1077#1084#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 32
    Width = 273
    Height = 121
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 208
    Top = 160
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 216
    Top = 128
  end
end
