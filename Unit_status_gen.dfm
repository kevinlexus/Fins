object Form_status_gen: TForm_status_gen
  Left = 191
  Top = 130
  Cursor = crHourGlass
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 73
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild

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
    object Animate1: TAnimate
      Left = 206
      Top = 24
      Width = 33
      Height = 36
      Align = alCustom
      AutoSize = False
      FileName = 'I:\Fins\fp.avi'
      StopFrame = 41
    end
    object Memo1: TMemo
      Left = 6
      Top = 8
      Width = 185
      Height = 57
      Align = alCustom
      Alignment = taCenter
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        #1046#1076#1080#1090#1077'...')
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
end
