object Form_oracle_load: TForm_oracle_load
  Left = 235
  Top = 551
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1089#1077#1088#1074#1077#1088#1072' Oracle'
  ClientHeight = 134
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
 
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 17
    Height = 13
    Caption = '0 %'
  end
  object Label2: TLabel
    Left = 296
    Top = 32
    Width = 29
    Height = 13
    Caption = '100 %'
  end
  object ProgressBar1: TProgressBar
    Left = 28
    Top = 16
    Width = 265
    Height = 49
    Max = 10
    TabOrder = 0
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 80
    Width = 329
    Height = 49
    TabOrder = 1
    object Button3: TButton
      Left = 246
      Top = 18
      Width = 75
      Height = 23
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
  end
  object OD_params: TOracleDataSet
    SQL.Strings = (
      'select * from sys.v_params')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000C00000005000000504152414D010000000000070000004D45535341
      4745010000000000030000005645520100000000000200000049440100000000
      0006000000504552494F4401000000000007000000504552494F443101000000
      000007000000504552494F4432010000000000090000004D4553535F48494E54
      0100000000000C0000004147454E545F555054494D450100000000000A000000
      4147454E545F54494D4501000000000007000000434E544D4553530100000000
      0007000000504552494F4433010000000000}
    Session = DataModule1.OracleSession1
    Left = 32
  end
end
