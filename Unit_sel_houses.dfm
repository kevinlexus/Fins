object Form_sel_houses: TForm_sel_houses
  Left = 608
  Top = 105
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1084#1086#1074' '#1076#1083#1103' '#1086#1090#1095#1077#1090#1072
  ClientHeight = 444
  ClientWidth = 419
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
  object Label1: TLabel
    Left = 3
    Top = 16
    Width = 29
    Height = 13
    Caption = #1046#1069#1054':'
  end
  object Label2: TLabel
    Left = 78
    Top = 16
    Width = 17
    Height = 13
    Caption = #1059#1083':'
  end
  object Label3: TLabel
    Left = 286
    Top = 16
    Width = 26
    Height = 13
    Caption = #1044#1086#1084':'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 408
    Width = 176
    Height = 33
    DataSource = DS_list_choice
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
    TabStop = True
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 40
    Width = 417
    Height = 361
    DataSource = DS_list_choice
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyUp = DBGridEh1KeyUp
    Columns = <
      item
        EditButtons = <>
        FieldName = 'REU'
        Footers = <>
        ReadOnly = True
        Title.Caption = #8470' '#1046#1069#1054
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'UCH'
        Footers = <>
        Title.Caption = #1059#1095'.'
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1059#1083#1080#1094#1072
        Width = 228
      end
      item
        EditButtons = <>
        FieldName = 'ND'
        Footers = <>
        ReadOnly = True
        Title.Caption = #8470' '#1076#1086#1084#1072
        Width = 47
      end
      item
        Checkboxes = False
        DblClickNextVal = True
        EditButtons = <>
        FieldName = 'SEL'
        Footers = <>
        ImageList = ImageList1
        KeyList.Strings = (
          '0'
          '1')
        ReadOnly = True
        Title.Caption = #1042#1099#1073#1088#1072#1085'?'
        Width = 49
      end>
  end
  object Button1: TButton
    Left = 342
    Top = 408
    Width = 75
    Height = 33
    Cancel = True
    Caption = #1054#1082
    TabOrder = 8
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 408
    Width = 41
    Height = 33
    Hint = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BitBtn1Click
    Glyph.Data = {
      6A030000424D6A030000000000002A0100002800000018000000180000000100
      08000000000040020000E50E0000E50E00003D0000003D00000000000000FFFF
      FF005A526300635A6B00FF00FF004A424A00635A6300736B73007B737B008C84
      8C0052424A0084737B00847373006B6363007B737300E7DED6006B635A008C84
      7B0063635A006B6B63005A6352009CA5940094DE8C0063A563004A524A005A63
      5A006B736B00737B73008C948C002184290039B552006BAD84005A6363006B73
      7300848C8C00636B7300525263005A5A630063636B0073737B00ADADB500DEDE
      DE00D6D6D600CECECE00C6C6C600BDBDBD00B5B5B500ADADAD00A5A5A5009C9C
      9C00949494008C8C8C00848484007B7B7B00737373006B6B6B00636363005A5A
      5A00525252004A4A4A0042424200040404040404040404040404040404040404
      0404040404040404040404040404040404040404040404040404040404040404
      0404040434323738393939383735323034040404040404040404343831363938
      36332F2E2D2D3033343434040404040404043B37293438383532302D2B2A2C2D
      2F312E040404040404043B37293338383632302E2B2A2C2E2F312E0404040404
      04043C372A3438383633302E2C2A2C2E2F312E040404040404043B3729343838
      3532302E2B2A2C2E30322E040404040404043B372C36393A393939381F1D1D1F
      31312E040404040404043B39303639393633302E17161E1D34342F0404040404
      04043C372A3438383633302E17161E1D2F312E0404040404040405130F091206
      0B1C302E17161E1D2F312E040404040404043C212A0919260E33302E17161E1D
      2F312E040404040404043C232909201D1D1D1D1D1D161E1D1D1D1D1D1F040404
      04040A0D2B0C24171E1E1E1E1E1E1E1E1E1E1E1E1D04040404040A0D30361417
      1616161616161E16161616161D04040404040A0D0F09121D1717171717161E1D
      1D1D1D1D1F04040404040A0D0F0919123622312E17161E1D30322F0404040404
      04040A0D0F0925121A22312F17161E1D30322F040404040404040A0D30361003
      1A22322F17161E1D30332F040404040404043C26301B023A3806383817161E1D
      34342F04040404040404181A28333215302F30301F17171F3335310404040404
      0404040411083607271A36363636353534040404040404040404040404040404
      0404040404040404040404040404}
  end
  object BitBtn2: TBitBtn
    Left = 217
    Top = 408
    Width = 41
    Height = 33
    Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = BitBtn2Click
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000D30E0000D30E00000001000000010000424242004A42
      4A0052424A004A4A4A004A524A00525252005A6352005A5A5A005A635A006363
      5A006B635A00525263005A5263005A5A6300635A63005A636300636363006B63
      63006B6B6300635A6B0063636B006B6B6B006B736B00636B7300736B73006B73
      73007373730084737300737B730073737B007B737B0084737B007B7B7B008C84
      7B00848484008C848C00848C8C008C8C8C008C948C00949494009CA594009C9C
      9C000021A500A5A5A500ADADAD00ADADB500B5B5B500BDBDBD006B84C600C6C6
      C600CECECE00D6D6D600E7DED600DEDEDE000029E700526BF700638CF7009494
      F700FF00FF009CB5FF009CBDFF00B5C6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A3A3A3A3A3A
      3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A
      3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A22271510070707101520272B223A3A3A
      3A3A3A3A3A3A2210291A07101A252C2E2F2F2B252222223A3A3A3A3A3A3A0315
      3522101020272B2F3233312F2C292E3A3A3A3A3A3A3A0315352510101A272B2E
      3233312E2C292E3A3A3A3A3A3A3A0015332210101A252B2E3133312E2C292E3A
      3A3A3A3A3A3A03153522101020272B2E3233312E2B272E3A3A3A3A3A3A3A0315
      311A0705070707101520252729292E3A3A3A3A3A3A3A03072B1A07071A252B2E
      2F2F2B2522222C3A3A3A3A3A3A3A0015332210101A252B2E3233312E2C292E3A
      3A3A3A3A3A3A01123423090E1F262B2E3233312E2C292E3A3A3A3A3A3A3A0019
      33230814302A2A2A2A2A2A2A2A2A2A2A2A303A3A3A3A001735230F102A393636
      3636363636363636362A3A3A3A3A0211321B0B072A3D3C3C3B3B3B3838383837
      372A3A3A3A3A02112B1A0610302A2A2A2A2A2A2A2A2A2A2A2A303A3A3A3A0211
      342309111A252B2C3132312E2B272C3A3A3A3A3A3A3A0211342308091A24292E
      31322F2C2B272C3A3A3A3A3A3A3A021134230D091624292C31322F2C2B272C3A
      3A3A3A3A3A3A02112B1A0A131624272C2F322F2B2B252C3A3A3A3A3A3A3A0014
      2B1C0C05100E10101520202222222C3A3A3A3A3A3A3A04162D2527282B2C2B2B
      2C2C2B292520293A3A3A3A3A3A3A3A3A211E1A181D161A1A1A1A2020223A3A3A
      3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A}
  end
  object Edit1: TEdit
    Left = 35
    Top = 8
    Width = 41
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 102
    Top = 8
    Width = 177
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
  end
  object Edit3: TEdit
    Left = 318
    Top = 8
    Width = 57
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object BitBtn3: TBitBtn
    Left = 377
    Top = 3
    Width = 41
    Height = 33
    Hint = #1054#1095#1080#1089#1090#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BitBtn3Click
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000FE0E0000FE0E000000010000000100009C5A2900B573
      2900BD7B4A00DE9C7300E7A57300394A9400949494004A6B9C00E7CEB5007B94
      C600F7E7D600ADCEE700E7E7E700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D0D0D0D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00000000000000000000000000
      0D0D0D0D0D0D0D0D0D0D0D000801010101010101010A0001000D0D0D0D0D0D0D
      0D0D0D000802020202020202020A000101000D0D0D0D0D0D0D0D0D0008020202
      02020202020A00010101000D0D0D0D0D0D0D0D000608030303030303030A0600
      010101050D0D0D0D0D0D0D0D000808080808080A0A0C080001010107050D0D0D
      0D0D0D0D0D00040404040404040404040001010907050D0D0D0D0D0D0D0D0004
      0404040404040404040001090907050D0D0D0D0D0D0D0D000404040404040404
      04040007090907050D0D0D0D0D0D0D0D00040404040404040404040507090907
      050D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B05070909050D0D0D0D0D0D0D
      0D0D050B0B0B0B0B0B0B0B0B0B050709050D0D0D0D0D0D0D0D0D0D050B0B0B0B
      0B0B0B0B0B0B0507050D0D0D0D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B05
      050D0D0D0D0D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B050D0D0D0D0D0D0D
      0D0D0D0D0D0D070505050505050505070D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
  end
  object OD_list_choice: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.list_choice(:clr_, :psaldo_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000002000000110000003A5053414C444F5F524546435552534F52740000
      000000000000000000050000003A434C525F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000003000000524555010000000000020000004E440100000000
      000300000053454C010000000000040000004E414D4501000000000003000000
      554348010000000000}
    LockingMode = lmNone
    UpdatingTable = 'scott.list_choices'
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    Active = True
    Left = 24
    Top = 160
  end
  object DS_list_choice: TDataSource
    DataSet = OD_list_choice
    Left = 56
    Top = 160
  end
  object ImageList1: TImageList
    Left = 88
    Top = 160
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000042424A003139390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029394A00000810000008100010183100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010183100080818000808180010213100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018395200215A840018395A0010315200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000317BB500319CBD00296B8C003184C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042ADEF0039A5D60039B5E70042C6F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000527B9C0042ADEF004AB5E7004ACEEF0042C6F700527B9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004AADE70063CEF7006BD6F7006BCEEF0063D6F70052BDEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000949C9C0063D6F7007BE7FF009CEFFF009CEFFF007BE7FF006BD6F700949C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063B5
      DE0052ADE700A5F7FF00C6F7FF00B5F7FF00C6F7FF00B5F7FF0094F7FF005AC6
      EF009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094B5
      D60063CEF700B5F7FF00C6F7FF00BDF7FF00ADF7FF00B5F7FF009CF7FF0063E7
      FF0084949C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007BB5
      D60063DEFF00A5F7FF00B5F7FF00DEFFFF00DEFFFF00B5F7FF009CF7FF0063E7
      FF0084A5BD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008CBD
      DE005AD6F7008CF7FF00ADF7FF00B5F7FF00B5F7FF00ADF7FF008CF7FF005AD6
      F700A5A5AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063B5DE0063EFFF0073F7FF0084F7FF0084F7FF0073F7FF0063EFFF0094B5
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052CEF70063E7FF006BF7FF006BF7FF0063E7FF0052CEF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084B5DE008CBDDE0094B5BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FE7F000000000000FC3F000000000000
      FC3F000000000000FC3F000000000000FC3F000000000000FC3F000000000000
      F81F000000000000F81F000000000000F00F000000000000E007000000000000
      E007000000000000E007000000000000E007000000000000F00F000000000000
      F81F000000000000FE3F00000000000000000000000000000000000000000000
      000000000000}
  end
end
