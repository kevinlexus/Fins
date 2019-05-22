object Form2: TForm2
  Left = 672
  Top = 161
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 323
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 264
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select t.rowid, t.*, rownum as rn from scott.r_req_works t'
      'where t.r_req_id = :r_req_id '
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000008000000525F5245515F494401000000000009000000525F
      574F524B5F494401000000000002000000524E010000000000}
    Master = Form_requests.OD_request
    Session = DataModule1.OracleSession1
    Active = True
    Left = 8
    Top = 8
    object OracleDataSet1R_REQ_ID: TFloatField
      FieldName = 'R_REQ_ID'
      Required = True
    end
    object OracleDataSet1R_WORK_ID: TFloatField
      FieldName = 'R_WORK_ID'
      Required = True
    end
    object OracleDataSet1RN: TFloatField
      FieldName = 'RN'
    end
  end
end
