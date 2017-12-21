object SelFiles: TSelFiles
  Left = 832
  Top = 223
  Width = 441
  Height = 446
  Caption = 'SelFiles'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lst1: TcxShellListView
    Left = 0
    Top = 0
    Width = 425
    Height = 367
    Align = alClient
    DragDropSettings.AllowDragObjects = False
    MultiSelect = True
    Root.BrowseFolder = bfCustomPath
    TabOrder = 0
    ViewStyle = vsReport
  end
  object pnl1: TPanel
    Left = 0
    Top = 367
    Width = 425
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btn1: TButton
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = btn2Click
    end
  end
end
