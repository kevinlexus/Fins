object frmOLAP: TfrmOLAP
  Left = 0
  Top = 0
  Caption = 'OLAP'
  ClientHeight = 1059
  ClientWidth = 1455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBPivotGrid1: TcxDBPivotGrid
    Left = 0
    Top = 41
    Width = 1455
    Height = 1018
    Align = alClient
    DataSource = DataSource1
    Groups = <>
    TabOrder = 0
    object cxDBPivotGrid1Field1: TcxDBPivotGridField
      Area = faData
      AreaIndex = 1
      DataBinding.FieldName = 'PAYMENT'
      Visible = True
      UniqueName = 'PAYMENT'
    end
    object cxDBPivotGrid1Field2: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      DataBinding.FieldName = 'NAME'
      Visible = True
      UniqueName = 'NAME'
    end
    object cxDBPivotGrid1Field3: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      DataBinding.FieldName = 'NM'
      Visible = True
      UniqueName = 'NM'
    end
    object cxDBPivotGrid1Field4: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      DataBinding.FieldName = 'CHARGES'
      Visible = True
      UniqueName = 'CHARGES'
    end
    object cxDBPivotGrid1Field5: TcxDBPivotGridField
      AreaIndex = 0
      DataBinding.FieldName = 'MG'
      Visible = True
      UniqueName = 'MG'
    end
    object cxDBPivotGrid1Field6: TcxDBPivotGridField
      AreaIndex = 1
      DataBinding.FieldName = 'LSK'
      Visible = True
      UniqueName = 'LSK'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1455
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 1280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 1136
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Leak'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object UniQuery1: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      
        'select u.nm, o.name, t.* from scott.xitog3_lsk t join scott.t_or' +
        'g o on t.org=o.id join scott.usl u on t.usl=u.usl')
    Left = 56
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 128
    Top = 240
  end
end
