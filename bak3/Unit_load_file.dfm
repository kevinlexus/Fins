object Form_load_file: TForm_load_file
  Left = 205
  Top = 577
  Width = 273
  Height = 278
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1092#1072#1081#1083#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 184
    Top = 216
    Width = 75
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'DBF '#1092#1072#1081#1083#1099' (*.dbf)|*.dbf'
  end
  object Loader: TOracleDirectPathLoader
    Session = DataModule1.OracleSession1
    BufferSize = 512000
    LogMode = lmNoLogging
    Left = 32
  end
end
