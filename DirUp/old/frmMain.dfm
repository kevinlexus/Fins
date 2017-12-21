object Main: TMain
  Left = 334
  Top = 621
  Width = 868
  Height = 378
  Caption = 'Main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 416
    Top = 288
    Width = 75
    Height = 25
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 0
    OnClick = btn1Click
  end
  object Memo1: TMemo
    Left = 400
    Top = 16
    Width = 321
    Height = 265
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object OD_du_obj: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from DU_OBJ t')
    Optimize = False
    Session = orclsn1
    Left = 72
    Top = 16
  end
  object orclsn1: TOracleSession
    LogonUsername = 'scott'
    LogonPassword = 'monemyro'
    LogonDatabase = 'XE'
    Left = 16
    Top = 16
  end
end
