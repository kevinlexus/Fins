object Form_status: TForm_status
  Left = 356
  Top = 208
  Cursor = crHourGlass
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093'...'
  ClientHeight = 73
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 249
    Height = 73
    Align = alCustom
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object cxProgressBar1: TcxProgressBar
      Left = 64
      Top = 24
      TabOrder = 0
      Width = 121
    end
  end
end
