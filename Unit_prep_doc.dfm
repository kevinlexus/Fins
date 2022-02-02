object Form_prep_doc: TForm_prep_doc
  Left = 516
  Top = 354
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1077#1090#1072
  ClientHeight = 289
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 240
    Width = 397
    Height = 49
    Align = alBottom
    TabOrder = 0
    object Button3: TButton
      Left = 182
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1082
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 270
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cxLabel1: TcxLabel
    Left = 56
    Top = 56
    Caption = 
      #1055#1088#1086#1089#1100#1073#1072' '#1086#1073#1088#1072#1090#1080#1090#1100#1089#1103' '#1082' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1091', '#1077#1089#1083#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074#1086#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100 +
      #1089#1103' '#1076#1072#1085#1085#1086#1081' '#1092#1086#1088#1084#1086#1081
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 280
  end
  object DS_spr_params: TDataSource
    DataSet = Uni_spr_params
    Left = 89
    Top = 104
  end
  object Uni_spr_params: TUniQuery
    UpdatingTable = 'scott.spr_par_ses'
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select p.id, t.name as gr_name, p.name as parname, p.cdtp,'
      'case when p.cdtp = 0 then to_char(p.parn1)'
      '     when p.cdtp = 1 then p.parvc1'
      '     when p.cdtp = 2 then to_char(p.pardt1,'#39'DD.MM.YYYY'#39')'
      '     when p.cdtp = 3 then decode(p.parn1,0,'#39#1053#1077#1090#39','#39#1044#1072#39')'
      '     when p.cdtp = 4 then a.name'
      '     when p.cdtp = 6 then b.name'
      '     end as val, p.parn1,'
      ' p.parvc1, p.pardt1, p.rowid'
      'from '
      'scott.spr_par_ses p,'
      'scott.repxpar r,'
      'scott.spr_par_ses t, '
      'scott.reports s,'
      '(select c.fk_par, max(c.name) as name'
      ' from scott.list_c c'
      ' where c.sel=1 and'
      ' c.fk_ses=USERENV('#39'sessionid'#39')'
      ' group by c.fk_par'
      ') a,'
      '(select c.fk_par, max(c.name) as name'
      ' from scott.list_c c'
      ' where c.fk_ses=USERENV('#39'sessionid'#39')'
      ' group by c.fk_par'
      ') b'
      'where p.parent_id=t.id(+) and'
      ' p.id=a.fk_par(+) and '
      ' p.id=b.fk_par(+) and '
      ' p.fk_ses=t.fk_ses(+) and'
      ' p.cdtp is not null and'
      ' p.fk_ses=USERENV('#39'sessionid'#39') and '
      ' p.id=r.fk_par and'
      ' r.fk_rep=s.id'
      ' and s.cd=:cd_'
      ' order by p.npp'
      '')
    Active = True
    Left = 48
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'cd_'
        ParamType = ptInput
        Value = nil
      end>
  end
end
