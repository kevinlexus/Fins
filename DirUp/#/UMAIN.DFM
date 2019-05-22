object frmMain: TfrmMain
  Left = 327
  Top = 595
  Width = 868
  Height = 378
  Caption = 'frmMain'
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
    Left = 400
    Top = 288
    Width = 75
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
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
  object btn2: TButton
    Left = 488
    Top = 288
    Width = 75
    Height = 25
    Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
    TabOrder = 2
    OnClick = btn2Click
  end
  object OD_du_obj: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from scott.DU_OBJ t')
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
  object OD_upd_obj: TOracleDataSet
    Optimize = False
    Variables.Data = {
      0300000004000000040000003A4F424A71000000000000000000000003000000
      3A4344050000000000000000000000030000003A44540C000000000000000000
      0000030000003A535A030000000000000000000000}
    Session = orclsn1
    Left = 72
    Top = 64
  end
end
