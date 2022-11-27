object Form_list_kart: TForm_list_kart
  Left = 1218
  Top = 358
  Caption = #1050#1072#1088#1090#1086#1095#1082#1080
  ClientHeight = 594
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 792
    Top = 51
    Width = 185
    Height = 318
    Color = clInactiveCaption
    Lines.Strings = (
      #1042#1085#1080#1084#1072#1085#1080#1077'!'
      #1085#1072' '#1076#1072#1085#1085#1086#1081' '#1092#1086#1088#1084#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1072' '
      #1089#1074#1103#1079#1100
      'wwDBLookupCombo '#1089#1086#1074#1084#1077#1089#1090#1085#1086' '#1089' '
      'wwDBGRid, (DEB_ORG)'
      #1090#1072#1082' '#1082#1072#1082' '#1101#1090#1086' '#1090#1088#1077#1073#1091#1077#1090' '#1082#1086#1084#1087#1072#1085#1080#1103' '
      #1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082' '#1079#1076#1077#1089#1100':'
      'http://codenewsfast.com/cnf/thread'
      '/1483946696/waThreadBookmark.1'
      '548'
      '941'
      '('#1085#1077' '#1075#1072#1088#1072#1085#1090#1080#1088#1091#1077#1090#1089#1103' '#1087#1088#1072#1074#1080#1083#1100#1085#1086#1089#1090#1100' '
      #1088#1072#1073#1086#1090#1099', '#1085#1072' '#1092#1086#1088#1084#1077' Form_list_kart '
      #1082#1072#1078#1077#1090#1089#1103
      #1074#1086#1079#1085#1080#1082#1072#1083#1080' '#1087#1088#1086#1073#1083#1077#1084#1099')'
      'P.S. '#1041#1099#1083' '#1086#1090#1084#1077#1085#1077#1085' '#1076#1072#1085#1085#1099#1081' '
      #1092#1091#1085#1082#1094#1080#1086#1085#1072#1083' '#1074' '#1089#1074#1103#1079#1080' '#1089' '
      #1085#1077#1085#1091#1078#1085#1086#1089#1090#1100#1102','
      #1085#1086' '#1076#1083#1103' '#1087#1088#1080#1084#1077#1088#1072' - '#1086#1089#1090#1072#1074#1083#1077#1085)
    TabOrder = 0
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 553
    Width = 1028
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Panel2: TPanel
      Left = 599
      Top = 1
      Width = 428
      Height = 39
      Align = alRight
      TabOrder = 0
      DesignSize = (
        428
        39)
      object Button1: TButton
        Left = 347
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #1047#1072#1082#1088#1099#1090#1100
        TabOrder = 0
        OnClick = Button1Click
      end
      object CheckBox1: TCheckBox
        Left = 157
        Top = 11
        Width = 73
        Height = 17
        Hint = #1047#1072#1082#1088#1077#1087#1080#1090#1100' '#1089#1090#1086#1083#1073#1094#1099
        Caption = #1047#1072#1082#1088#1077#1087#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object chk1: TCheckBox
        Left = 80
        Top = 11
        Width = 76
        Height = 17
        Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
        Caption = #1054#1089#1085#1086#1074#1085#1099#1077
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 2
        OnClick = chk1Click
      end
      object CheckBox3: TCheckBox
        Left = 237
        Top = 11
        Width = 100
        Height = 17
        Hint = #1057#1095#1077#1090#1095#1080#1082#1080' '#1080' '#1079#1072#1076#1086#1083#1078#1085#1080#1082#1080
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = CheckBox3Click
      end
      object chk2: TCheckBox
        Left = 9
        Top = 11
        Width = 72
        Height = 17
        Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1082#1088#1099#1090#1099#1077' '#1083#1080#1094'.'#1089#1095#1077#1090#1072
        Caption = #1047#1072#1082#1088#1099#1090#1099#1077
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = chk2Click
      end
    end
    object Panel3: TPanel
      Left = 256
      Top = 1
      Width = 343
      Height = 39
      Align = alRight
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 256
      Height = 39
      Align = alLeft
      TabOrder = 2
      object SpeedButton4: TSpeedButton
        Left = 119
        Top = 5
        Width = 25
        Height = 25
        Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1072#1076#1088#1077#1089#1091
        Glyph.Data = {
          0E060000424D0E06000000000000360000002800000016000000160000000100
          180000000000D8050000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEB7B7B7B7B7B7FFFF
          FFB5B5B59C9D9DA0A3A39297973C4F913D4F8DA1A2A4A2A4A4A1A3A30000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5D6F6F6F4A
          4A4AFFFFFFC3C7C7BDC0C0BFC2C4B7BABC315EA82F559EC4C6C5BFC4C3C0C6C7
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5D
          686868494949FFFFFFCED1D4AEBFD4B1C1D8D0D3DB4D6694475C8AD3D6DDB3C3
          DAAFBFD30000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF535353464646383838FFFFFFD2D6D7EFEDF0ABBCC7CFD2D8959FB75E6C95AC
          BBC88FA1B6D4DAE50000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF5A5A5A555555424242FFFFFFD4D6D9DDE2EAA1B3C1CBD3DA2F5792
          2E5397ACB8C68199B2CAD5D90000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF5C5C5C545454434343FFFFFF494A53CBD4DBD0D9DFCED8
          E0D3DEE2D5DCE1CFD8E0CFD9DFCBD5D90000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF5555555252523F3F3FFFFFFFFFFFFF4F535AC7
          D2D8D3DCE3C3CCDA9CAFC6D1D8DBC6D1D82E2F370000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555556D6D6D434444FFFFFFFFFFFF
          FFFFFF32343BC7D4D98EA2B68CA2B5C5CDD34E4D55FFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D8D7A7A7A7E7D7DFFFF
          FFFFFFFFFFFFFFFFFFFF5D636BCDD8DDC9D5DB484B54FFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C6878684B9
          B7B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5F6B3F414AFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBABA979295
          938A8D928E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E4E5ADA9AC9493
          8F7485746F8B707C917BA1A29F999497A8A7A6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEA9A981
          887E427643267E271C821F247F26417A428E9B8C948E8FC1BFC0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CDCE
          918E8A447C442B8F2A409C4171AA72439D422891293477359599929D999BFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB0ACAD76847138913A2A952C58A559F0EDF163A9632B952C3290325E7A5D9B
          9497D9D9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9C96996781621F8B2180B683CDD9CFE6ECE7CCDACE8CBA8C2A922A
          446F41968E91DBDBD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFA39EA26A7F652A9B2F6CBC71ADD1B0ECEDEBB0D3B374BC
          7830A5354C75499B9195E3E4E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC3C0C282877D579F5B51C45C50B659D7E3D957
          B85D4DC2575AAE5F698066B0AAADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E3E3A4A1A1687B678AB68FA0D5A3
          A1D1A69ED4A296C6996D916D8E8D8CD3D3D4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCAC9A5A1A28484
          819A9C98ACB2AAA4A9A38B9286908E8DB6B4B6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
          D7D7B7B6B49C9B989D9A9A9693939E9C9AC1BFC0FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE3E3E3C6C5C5BBBCBCB4B3B3D5D4D4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton4Click
      end
      object SpeedButton3: TSpeedButton
        Left = 145
        Top = 5
        Width = 25
        Height = 25
        Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1060'.'#1048'.'#1054'. '#1082#1074#1072#1088#1090#1080#1088#1086#1089#1098#1077#1084#1097#1080#1082#1072', '#1087#1088#1086#1078#1080#1074#1072#1102#1097#1077#1075#1086
        Glyph.Data = {
          0E060000424D0E06000000000000360000002800000016000000160000000100
          180000000000D8050000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEB7B7B7B7B7B7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5D6F6F6F4A
          4A4AC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000E3E3FF5050FF9C9CFF0000FF0000FF8D8DFF5050FFEBEBFFFFFFFF0000FF
          0000FF41415DC6C6C60000FF0000FFFFFFFFFFFFFFA9A9FF0000FF0000FFA9A9
          FFFFFFFF00007D7DFF0000FFDCDCFF0000FF0000FFDCDCFF0000FF8D8DFFFFFF
          FF0000FF0000FF1F1F91CCCCCC0000FF0000FFFFFFFFA9A9FF0000FFD2D2FFD2
          D2FF0000FFA9A9FF00000000FF0000FFFFFFFF0000FF0000FFFFFFFF0000FF00
          00FFFFFFFF0000FF0000FF252597B4B4CF0000FF0000FFFFFFFF0000FF0000FF
          FFFFFFFFFFFF0000FF0000FF00000000FF0000FFFFFFFF0000FF0000FFFFFFFF
          0000FF0000FFFFFFFF0000FF0000FF3C3C576E6EE00000FF0000FFFFFFFF0000
          FF0000FFFFFFFFFFFFFF0000FF0000FF00008D8DFF0000FFDCDCFF0000FF0000
          FFDCDCFF0000FF7D7DFFFFFFFF0000FF0000FF3F3F3F7171E20000FF0000FFFF
          FFFFA9A9FF0000FFD2D2FFD2D2FF0000FFA9A9FF0000EBEBFF5050FF8D8DFF00
          00FF0000FF9C9CFF5050FFE3E3FFFFFFFF0000FF0000FF434444B2B2CD0000FF
          0000FFFFFFFFFFFFFFA9A9FF0000FF0000FFA9A9FFFFFFFF0000FFFFFFFFFFFF
          FFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF8D8D8D7A7A7A7E7D7DE3E3
          E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C6878684B9
          B7B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBABA979295
          938A8D928E8F989597BDBDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E4E5ADA9AC9493
          8F7485746F8B707C917BA1A29F999497A8A7A6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEA9A981
          887E427643267E271C821F247F26417A428E9B8C948E8FC1BFC0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CDCE
          918E8A447C442B8F2A409C4171AA72439D422891293477359599929D999BFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB0ACAD76847138913A2A952C58A559F0EDF163A9632B952C3290325E7A5D9B
          9497D9D9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9C96996781621F8B2180B683CDD9CFE6ECE7CCDACE8CBA8C2A922A
          446F41968E91DBDBD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFA39EA26A7F652A9B2F6CBC71ADD1B0ECEDEBB0D3B374BC
          7830A5354C75499B9195E3E4E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC3C0C282877D579F5B51C45C50B659D7E3D957
          B85D4DC2575AAE5F698066B0AAADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E3E3A4A1A1687B678AB68FA0D5A3
          A1D1A69ED4A296C6996D916D8E8D8CD3D3D4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCAC9A5A1A28484
          819A9C98ACB2AAA4A9A38B9286908E8DB6B4B6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
          D7D7B7B6B49C9B989D9A9A9693939E9C9AC1BFC0FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE3E3E3C6C5C5BBBCBCB4B3B3D5D4D4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
      object SpeedButton2: TSpeedButton
        Left = 170
        Top = 5
        Width = 25
        Height = 25
        Hint = #1057#1085#1103#1090#1100' '#1092#1080#1083#1100#1090#1088
        Glyph.Data = {
          0E060000424D0E06000000000000360000002800000016000000160000000100
          180000000000D8050000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0AFAFAFCECE
          CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A15050505C
          5C5C737373FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2
          4D4D4D585858707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFA0A0A03636363B3B3B707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA3A3A3414141494949747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFA4A4A4424242494949737373FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A03D3D3D454545707070FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9B9B4C4C4C5858586C6C6CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCD707071757273AEAD
          AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99979691
          8F8EE1E0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D69A9897
          83807D82807E898889A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBDBD9490
          908F8B8BA6A2A2AEABABA4A2A29796968A8888E3E3E3FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D18D
          8B89A29F9FD2D2D2E9EAEAEBEAEADADAD9BCBBBB98969591918FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9A97969F9D9BE7E7E6F3F3F3EDECECEDEDEDF1F1F1EAE9E9B1B0B08A8888C7C6
          C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD9D9D9848281C6C5C4F1F1F1E8E7E7EAEAEAEBEBEBE8E8E8F2F2F2CAC8C889
          8686AFABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB9B9BA828180CFCECDF2F2F2EDEDEDEFEFEFEFEFEFEDEDEDF1F1F1
          DAD9D9858282B0ACABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC8C8C881807FC1C0BFF1F2F2EAEAEAEDEDEDEDEDEDEBEB
          EBF0F1F0D2D2D1807D7DBBB7B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9392919F9E9EEAEBEBEEEDEEE9E9E9EA
          EAEAEBEBEBF0F0F0B0AFAE868382DCDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBAB9878685A7A7A7E6E7E7
          EFF0F0EEEFEFE8E8E8C3C5C48E8B8BA8A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEABAB8B88
          88888988A9AAA8B0AEAD9D9B9B8C8B89919090E0DFDFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC6C3C3A19D9C989493969291908D8CACA9A9E0E0E0FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFCCCCCBBCBCBBB0B1B0BABAB9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object BitBtn1: TBitBtn
        Left = 195
        Top = 5
        Width = 25
        Height = 25
        Hint = #1040#1091#1076#1080#1090' '#1089#1086#1073#1099#1090#1080#1081
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 221
        Top = 5
        Width = 25
        Height = 25
        Hint = #1057#1095#1077#1090#1095#1080#1082#1080
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object cxMRUEdit1: TcxMRUEdit
        Left = 8
        Top = 8
        RepositoryItem = Form_Main.cxEditRepository1MRUItem1
        Properties.ButtonGlyph.SourceDPI = 96
        Properties.ButtonGlyph.Data = {
          424DC60700000000000036000000280000001600000016000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDEFFB7B7
          B7FFB7B7B7FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005D5D5DFF6F6F6FFF4A4A4AFFC4C4
          C4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF005D5D5DFF686868FF494949FFC6C6C6FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00535353FF464646FF383838FFCCCCCCFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A5AFF5555
          55FF424242FFCACACAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5C5CFF545454FF434343FFC8C8
          C8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00555555FF525252FF3F3F3FFFCCCCCCFFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00555555FF6D6D6DFF434444FFC7C7C7FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8DFF7A7A
          7AFF7E7D7DFFE3E3E3FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8C8C6FF878684FFB9B7B6FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00BBBABAFF979295FF938A8DFF928E8FFF989597FFBDBDBEFFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E4E5FFADA9ACFF9493
          8FFF748574FF6F8B70FF7C917BFFA1A29FFF999497FFA8A7A6FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00AEA9A9FF81887EFF427643FF267E27FF1C82
          1FFF247F26FF417A42FF8E9B8CFF948E8FFFC1BFC0FFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D1CDCEFF918E8AFF447C44FF2B8F2AFF409C41FF71AA72FF439D42FF2891
          29FF347735FF959992FF9D999BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0ACADFF7684
          71FF38913AFF2A952CFF58A559FFF0EDF1FF63A963FF2B952CFF329032FF5E7A
          5DFF9B9497FFD9D9D8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9699FF678162FF1F8B21FF80B6
          83FFCDD9CFFFE6ECE7FFCCDACEFF8CBA8CFF2A922AFF446F41FF968E91FFDBDB
          D9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00A39EA2FF6A7F65FF2A9B2FFF6CBC71FFADD1B0FFECED
          EBFFB0D3B3FF74BC78FF30A535FF4C7549FF9B9195FFE3E4E1FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C3C0C2FF82877DFF579F5BFF51C45CFF50B659FFD7E3D9FF57B85DFF4DC2
          57FF5AAE5FFF698066FFB0AAADFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E3E3FFA4A1
          A1FF687B67FF8AB68FFFA0D5A3FFA1D1A6FF9ED4A2FF96C699FF6D916DFF8E8D
          8CFFD3D3D4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCAC9FFA5A1A2FF8484
          81FF9A9C98FFACB2AAFFA4A9A3FF8B9286FF908E8DFFB6B4B6FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7D7D7FFB7B6B4FF9C9B98FF9D9A
          9AFF969393FF9E9C9AFFC1BFC0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E3E3E3FFC6C5C5FFBBBCBCFFB4B3B3FFD5D4
          D4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00}
        Properties.ClearKey = 46
        Properties.ImmediateDropDownWhenActivated = True
        Properties.EditMask = '00000000;1;_'
        Properties.ShowEllipsis = False
        TabOrder = 2
        Text = '        '
        OnDblClick = cxMRUEdit1DblClick
        OnKeyPress = cxMRUEdit1KeyPress
        Width = 105
      end
    end
  end
  object Panel5: TPanel
    Left = 597
    Top = 0
    Width = 431
    Height = 553
    Align = alRight
    TabOrder = 2
    Visible = False
    object cxmskdtEL: TcxMaskEdit
      Left = 280
      Top = 27
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\-?\d{1,6}(.\d{0,5})'
      TabOrder = 0
      OnKeyPress = cxmskdtELKeyPress
      Width = 81
    end
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 429
      Height = 551
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 547
      ClientRectLeft = 4
      ClientRectRight = 425
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = #1057#1095#1077#1090#1095#1080#1082#1080
        ImageIndex = 0
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 421
          Height = 72
          Align = alTop
          Caption = #1058#1077#1082#1091#1097#1080#1081' '#1086#1073#1098#1077#1084
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object cxLabel4: TcxLabel
            Left = 6
            Top = 28
            Caption = ' '#1061'.'#1042'.'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel5: TcxLabel
            Left = 128
            Top = 28
            Caption = #1043'.'#1042'.'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel6: TcxLabel
            Left = 248
            Top = 28
            Caption = #1069#1083'.'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxmskdtHW: TcxMaskEdit
            Left = 40
            Top = 27
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
            Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
            TabOrder = 3
            OnKeyDown = cxmskdtHWKeyDown
            OnKeyPress = cxmskdtHWKeyPress
            Width = 73
          end
          object cxmskdtGW: TcxMaskEdit
            Left = 160
            Top = 27
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
            Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
            TabOrder = 4
            OnKeyPress = cxmskdtGWKeyPress
            Width = 81
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 72
          Width = 421
          Height = 72
          Align = alTop
          Caption = #1053#1086#1074#1099#1081' '#1086#1073#1098#1077#1084'. '#1041#1091#1076#1077#1090' '#1076#1086#1073#1072#1074#1083#1077#1085' '#1082' '#1090#1077#1082#1091#1097#1077#1084#1091'!!!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object cxLabel1: TcxLabel
            Left = 6
            Top = 28
            Caption = ' '#1061'.'#1042'.'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel2: TcxLabel
            Left = 128
            Top = 28
            Caption = #1043'.'#1042'.'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button2: TButton
            Left = 376
            Top = 24
            Width = 33
            Height = 25
            Caption = #1054#1082
            TabOrder = 2
            OnClick = Button2Click
          end
          object cxLabel3: TcxLabel
            Left = 248
            Top = 28
            Caption = #1069#1083'.'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxmskdtHW_VOL: TcxMaskEdit
            Left = 40
            Top = 27
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
            Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
            TabOrder = 4
            OnKeyDown = cxmskdtHW_VOLKeyDown
            OnKeyPress = cxmskdtHW_VOLKeyPress
            Width = 73
          end
          object cxmskdtGW_VOL: TcxMaskEdit
            Left = 160
            Top = 27
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
            Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
            TabOrder = 5
            OnKeyPress = cxmskdtGW_VOLKeyPress
            Width = 81
          end
          object cxmskdtEL_VOL: TcxMaskEdit
            Left = 280
            Top = 27
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '\-?\d{1,6}\.?\d{0,5}'
            Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
            TabOrder = 6
            OnKeyPress = cxmskdtEL_VOLKeyPress
            Width = 81
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #1047#1072#1076#1086#1083#1078#1085#1080#1082#1080
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 421
          Height = 233
          Align = alTop
          TabOrder = 0
          Visible = False
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DS_deb_kart_pr
            DataController.KeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1FIO: TcxGridDBColumn
              Caption = #1060'.'#1048'.'#1054'.'
              DataBinding.FieldName = 'FIO'
              Width = 99
            end
            object cxGrid1DBTableView1DEB_ORG_NAME: TcxGridDBColumn
              Caption = #1054#1088#1075'. '#1079#1072#1076#1086#1083#1078#1085#1080#1082#1072
              DataBinding.FieldName = 'DEB_ORG_NAME'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object cxgrdListKart: TcxGrid
    Left = 0
    Top = 0
    Width = 597
    Height = 553
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object cxgrdListKartDBBandedTableView1: TcxGridDBBandedTableView
      OnDblClick = cxgrdListKartDBBandedTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnCustomDrawCell = cxgrdListKartDBBandedTableView1CustomDrawCell
      OnFocusedItemChanged = cxgrdListKartDBBandedTableView1FocusedItemChanged
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DS_list_kart
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.CopyRecordsToClipboard = False
      OptionsBehavior.CopyPreviewToClipboard = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Styles.Inactive = cxStyle2
      Bands = <
        item
        end
        item
        end>
      object cxgrdListKartDBBandedTableView1NAME_REU: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME_REU'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1LSK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LSK'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1KUL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KUL'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1N_ND: TcxGridDBBandedColumn
        DataBinding.FieldName = 'N_ND'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1N_KW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'N_KW'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1ENTR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTR'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1N_STATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'N_STATUS'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1FIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIO'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1ET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ET'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1KPR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPR'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1KPR_OT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPR_OT'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1KPR_WR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPR_WR'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1KPR_WRP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPR_WRP'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1OPL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPL'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1K_LSK_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'K_LSK_ID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1FK_KLSK_PREMISE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FK_KLSK_PREMISE'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1HOUSE_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HOUSE_ID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1MHW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MHW'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1MGW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MGW'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1MEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MEL'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1DEB_ORG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEB_ORG'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1EL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EL1'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1PSCH_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PSCH_NAME'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1MG1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MG1'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1MG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MG2'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1KRAN1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KRAN1'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1TEXT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TEXT'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1PARENT_LSK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARENT_LSK'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1DT_CR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DT_CR'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1FK_KLSK_OBJ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FK_KLSK_OBJ'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1LSK_TP_CD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LSK_TP_CD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrdListKartDBBandedTableView1PSCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PSCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxgrdListKartLevel2: TcxGridLevel
      GridView = cxgrdListKartDBBandedTableView1
    end
  end
  object OD_list_kart: TOracleDataSet
    SQL.Strings = (
      'select '
      'null as btn, k.rowid, k.elsk,'
      'k.dt_cr,'
      
        'r.reu||'#39'-'#39'||r.name_reu as name_reu, k.reu, k.k_lsk_id, k.c_lsk_i' +
        'd, k.lsk, k.lsk_ext, k.kul, o.name||'#39', '#39'||initcap(s.name) as nam' +
        'e, ltrim(k.nd,'#39'0'#39') as n_nd, ltrim(k.kw,'#39'0'#39') as n_kw,'
      'k.nd,k.kw, k.kfg,'
      
        'k.fio, k.k_im, k.k_ot, k.k_fam,k.psch, k.mgw,k.mhw, k.mel, k.pgw' +
        ', k.phw, k.pel, k.pot, k.mot,'
      
        'k.et, k.kpr, k.kpr_ot, k.kpr_wr, k.kpr_wrp, k.kpr_own, k.ki, k.o' +
        'pl, k.ppl, k.komn, k.status, k.fk_deb_org,'
      't.name as n_status, k.fk_distr,'
      
        'k.eksub1, k.eksub2, k.sgku, k.doppl, k.subs_cor, k.subs_cur, k.k' +
        'ran1,'
      'k.el, k.el1, case when k.subs_cur = 1 or  nvl(k.subs_cor,0) <>0 '
      'then 1 else 0 end as subs_val, '
      
        'scott.init.get_nkom as nkom, k.sub_data, decode(k.psch, 0, '#39#1053#1086#1088#1084 +
        #39','
      
        '1,'#39#1061'.'#1042'. '#1080' '#1043'.'#1042'.'#39', 2, '#39#1061'.'#1042'.'#39', 3, '#39#1043'.'#1042'.'#39') as psch_name, k.sch_el, k' +
        '.house_id,'
      'k.kan_sch, k.dog_num, k.schel_dt, k.psch_dt, '
      'k.text,k.memo,k.schel_end,  k.polis, k.law_doc, k.law_doc_dt, '
      'k.prvt_doc, k.prvt_doc_dt, k.fk_pasp_org, k.cpn, k.pn_dt,'
      
        'decode(mg1, '#39'000000'#39', '#39'...'#39', substr(mg1,1,4)||'#39'-'#39'||substr(mg1,5,' +
        '2))  as mg1,'
      
        'decode(mg2, '#39'999999'#39', '#39'...'#39', substr(mg2,1,4)||'#39'-'#39'||substr(mg2,5,' +
        '2))  as mg2,'
      
        's.name || '#39', '#39' || nvl(ltrim(k.nd, '#39'0'#39'), '#39'0'#39') || '#39'-'#39' ||nvl(ltrim(' +
        'k.kw, '#39'0'#39'), '#39'0'#39') as adr, u.name as lsk_tp, u.cd as lsk_tp_cd, k.' +
        'sel1, k.entr,'
      'k.parent_lsk, k.fk_klsk_obj, k.fk_klsk_premise, k.divided'
      'from scott.kart k '
      'join scott.spul s on k.kul=s.id'
      'join scott.t_org o on s.fk_settlement=o.id'
      'join scott.status t on k.status=t.id'
      'join scott.s_reu_trest r on k.reu=r.reu'
      'join scott.detail d on k.lsk=d.lsk'
      'left join scott.u_list u on k.fk_tp=u.id'
      'where nvl(:flt_reu_,k.reu)=k.reu'
      'and nvl(:flt_kul_,k.kul)=k.kul'
      'and nvl(:flt_nd_,k.nd)=k.nd'
      'and nvl(:flt_kw_,k.kw)=k.kw'
      
        'and decode(:flt_single_house_, -1, k.house_id, :flt_single_house' +
        '_)=k.house_id'
      
        'and decode(:flt_k_lsk_id_, -1, k.k_lsk_id, :flt_k_lsk_id_)=k.k_l' +
        'sk_id'
      
        'and decode(:flt_klsk_premise, -1, k.fk_klsk_premise, :flt_klsk_p' +
        'remise)=k.fk_klsk_premise'
      'and decode(:var3_, 0, u.cd, 1, '#39'LSK_TP_MAIN'#39')=u.cd'
      ''
      ':substExp1'
      ':substExp2'
      ':substExp3'
      ':substExp4'
      ':substExp5'
      'order by d.ord1'
      '/* '#1088#1077#1076'.'#1079#1072#1082#1086#1084#1084#1077#1085#1090#1080#1088#1086#1074#1072#1083' 30.09.20 :substExp4 */')
    Optimize = False
    Variables.Data = {
      040000000D000000120000003A0046004C0054005F005200450055005F000500
      00000000000000000000120000003A0046004C0054005F004B0055004C005F00
      050000000000000000000000100000003A0046004C0054005F004B0057005F00
      050000000000000000000000100000003A0046004C0054005F004E0044005F00
      0500000000000000000000001C0000003A0046004C0054005F004B005F004C00
      53004B005F00490044005F000300000000000000000000000C0000003A005600
      4100520033005F0003000000040000000100000000000000140000003A005300
      5500420053005400450058005000310001000000000000000000000014000000
      3A00530055004200530054004500580050003200010000000000000000000000
      140000003A005300550042005300540045005800500033000100000000000000
      00000000240000003A0046004C0054005F00530049004E0047004C0045005F00
      48004F005500530045005F00030000000000000000000000220000003A004600
      4C0054005F004B004C0053004B005F005000520045004D004900530045000300
      00000000000000000000140000003A0053005500420053005400450058005000
      3400010000000000000000000000140000003A00530055004200530054004500
      580050003500010000000000000000000000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.AllowOperators = True
    QBEDefinition.QBEFieldDefs = {
      0500000054000000060000004C0053004B00010100000000060000004B005500
      4C00000000000000040000004E004400000000000000040000004B0057000000
      0000000006000000460049004F00010100000000060000004B00500052000100
      000000000C0000004B00500052005F00570052000100000000000C0000004B00
      500052005F004F005400010000000000060000004F0050004C00010000000000
      0C0000005300540041005400550053000000000000000C00000045004B005300
      5500420031000100000000000C00000045004B00530055004200320001000000
      00000A0000004B00520041004E00310001000000000008000000530047004B00
      55000100000000000A00000044004F00500050004C0001000000000010000000
      53005500420053005F0043004F00520001000000000010000000530055004200
      53005F004300550052000100000000001000000053005500420053005F005600
      41004C00010000000000080000004E004B004F004D0001000000000004000000
      450054000100000000000400000045004C000100000000000600000045004C00
      3100010000000000080000005000530043004800010000000000060000004D00
      47005700010000000000060000004D0048005700010000000000060000005000
      50004C00010000000000080000004B004F004D004E0001000000000010000000
      4E005F00530054004100540055005300010100000000080000004E005F004E00
      4400010100000000080000004E005F004B005700010100000000040000004B00
      4900010000000000100000005300550042005F00440041005400410001000000
      00001200000050005300430048005F004E0041004D0045000100000000001000
      000043005F004C0053004B005F0049004400010000000000060000004D004700
      3100010000000000060000004D00470032000100000000001000000048004F00
      5500530045005F00490044000100000000000E0000004B0041004E005F005300
      43004800010000000000100000004B005F004C0053004B005F00490044000100
      00000000060000004D0045004C00010000000000060000005000470057000100
      000000000600000050004800570001000000000006000000500045004C000100
      000000000E00000044004F0047005F004E0055004D0001000000000010000000
      53004300480045004C005F004400540001000000000008000000540045005800
      54000100000000001200000053004300480045004C005F0045004E0044000100
      0000000006000000520045005500010000000000060000004B00460047000100
      000000001400000046004B005F004400450042005F004F005200470001000000
      00000A00000050004F004C00490053000100000000000C000000530043004800
      5F0045004C00010000000000080000004B005F0049004D000100000000000800
      00004B005F004F0054000100000000000A0000004B005F00460041004D000100
      00000000080000004D0045004D004F000100000000001000000046004B005F00
      440049005300540052000100000000000E0000004C00410057005F0044004F00
      43000100000000001600000046004B005F0050004100530050005F004F005200
      47000100000000000E00000050005300430048005F0044005400010000000000
      140000004C00410057005F0044004F0043005F00440054000100000000001000
      000050005200560054005F0044004F0043000100000000001600000050005200
      560054005F0044004F0043005F00440054000100000000000600000043005000
      4E000100000000000E0000004B00500052005F00570052005000010000000000
      0A00000050004E005F004400540001000000000006000000420054004E000100
      00000000060000004100440052000100000000000E0000004C0053004B005F00
      4500580054000100000000000C0000004C0053004B005F005400500001000000
      0000120000004C0053004B005F00540050005F00430044000100000000001000
      00004E0041004D0045005F005200450055000100000000000800000053004500
      4C0031000100000000000800000045004E005400520001000000000006000000
      50004F005400010000000000060000004D004F00540001000000000008000000
      45004C0053004B000100000000001400000050004100520045004E0054005F00
      4C0053004B000100000000001600000046004B005F004B004C0053004B005F00
      4F0042004A000100000000000A000000440054005F0043005200010000000000
      0E0000004B00500052005F004F0057004E000100000000001E00000046004B00
      5F004B004C0053004B005F005000520045004D00490053004500010000000000
      0E0000004400490056004900440045004400010000000000080000004E004100
      4D004500010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate, roAllFields]
    AfterRefreshRecord = OD_list_kartAfterRefreshRecord
    UpdatingTable = 'scott.kart'
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterOpen = OD_list_kartAfterOpen
    BeforeInsert = OD_list_kartBeforeInsert
    BeforeScroll = OD_list_kartBeforeScroll
    AfterScroll = OD_list_kartAfterScroll
    OnEditError = OD_list_kartEditError
    Left = 8
    Top = 160
    object OD_list_kartBTN: TStringField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'BTN'
      Size = 1
    end
    object fk: TStringField
      DisplayLabel = #1054#1088#1075'.'
      DisplayWidth = 8
      FieldKind = fkInternalCalc
      FieldName = 'NAME_REU'
      ReadOnly = True
      Size = 35
    end
    object OD_list_kartLSK: TStringField
      DisplayLabel = #1051'/C'
      DisplayWidth = 8
      FieldName = 'LSK'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object LK: TStringField
      DisplayLabel = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
      DisplayWidth = 10
      FieldName = 'DOG_NUM'
      Size = 35
    end
    object OD_list_kartKUL: TStringField
      DisplayLabel = #1050#1086#1076' '#1091#1083'.'
      DisplayWidth = 6
      FieldName = 'KUL'
      Size = 4
    end
    object OD_list_kartNAME: TStringField
      DisplayLabel = #1059#1083#1080#1094#1072
      DisplayWidth = 19
      FieldKind = fkInternalCalc
      FieldName = 'NAME'
      ReadOnly = True
      Size = 25
    end
    object OD_list_kartN_ND: TStringField
      DisplayLabel = #1044#1086#1084
      DisplayWidth = 6
      FieldName = 'N_ND'
      ReadOnly = True
      Size = 6
    end
    object OD_list_kartN_KW: TStringField
      DisplayLabel = #1050#1074'.'
      DisplayWidth = 7
      FieldName = 'N_KW'
      ReadOnly = True
      Size = 7
    end
    object OD_list_kartENTR: TFloatField
      DisplayLabel = #1055#1086#1076#1098#1077#1079#1076
      DisplayWidth = 8
      FieldName = 'ENTR'
    end
    object OD_list_kartN_STATUS: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      DisplayWidth = 8
      FieldKind = fkInternalCalc
      FieldName = 'N_STATUS'
      ReadOnly = True
      Size = 25
    end
    object OD_list_kartFIO: TStringField
      DisplayLabel = #1060'.'#1048'.'#1054'.'
      DisplayWidth = 16
      FieldName = 'FIO'
      Size = 50
    end
    object OD_list_kartET: TIntegerField
      DisplayLabel = #1069#1090#1072#1078
      DisplayWidth = 5
      FieldName = 'ET'
    end
    object OD_list_kartKPR: TIntegerField
      DisplayLabel = #1055#1088#1086#1078#1080#1074'.'
      DisplayWidth = 7
      FieldName = 'KPR'
      ReadOnly = True
      Required = True
    end
    object OD_list_kartKPR_OT: TIntegerField
      DisplayLabel = #1054#1090#1089#1091#1090'.'
      DisplayWidth = 6
      FieldName = 'KPR_OT'
      ReadOnly = True
      Required = True
    end
    object OD_list_kartKPR_WR: TIntegerField
      DisplayLabel = #1042#1088'.'#1079#1072#1088#1077#1075'.'
      DisplayWidth = 8
      FieldName = 'KPR_WR'
      ReadOnly = True
      Required = True
    end
    object OD_list_kartKPR_WRP: TFloatField
      DisplayLabel = #1042#1088'.'#1087#1088#1086#1078'.'
      DisplayWidth = 8
      FieldName = 'KPR_WRP'
      ReadOnly = True
    end
    object OD_list_kartOPL: TFloatField
      DisplayLabel = #1054#1073#1097'.'#1087#1083'.'
      DisplayWidth = 7
      FieldName = 'OPL'
    end
    object OD_list_kartK_LSK_ID: TFloatField
      DisplayLabel = 'KLSK '#1060#1080#1085'.'#1083#1080#1094'.'#1089#1095'.'
      DisplayWidth = 13
      FieldName = 'K_LSK_ID'
      ReadOnly = True
    end
    object OD_list_kartFK_KLSK_PREMISE: TFloatField
      DisplayLabel = 'KLSK '#1055#1086#1084#1077#1097'.'
      DisplayWidth = 10
      FieldName = 'FK_KLSK_PREMISE'
      ReadOnly = True
    end
    object OD_list_kartHOUSE_ID: TFloatField
      DisplayLabel = 'HOUSE_ID '#1044#1086#1084#1072
      DisplayWidth = 14
      FieldName = 'HOUSE_ID'
      ReadOnly = True
      Required = True
    end
    object OD_list_kartMHW: TFloatField
      DisplayLabel = #1050#1091#1073'.'#1061'.'#1042'.'
      DisplayWidth = 8
      FieldName = 'MHW'
    end
    object OD_list_kartMGW: TFloatField
      DisplayLabel = #1050#1091#1073'.'#1043'.'#1042'.'
      DisplayWidth = 8
      FieldName = 'MGW'
    end
    object OD_list_kartMEL: TFloatField
      DisplayLabel = #1050#1074#1090'.'#1069#1083'.'#1101#1085'.'
      DisplayWidth = 11
      FieldName = 'MEL'
    end
    object OD_list_kartDEB_ORG: TStringField
      DisplayLabel = #1054#1088#1075'.'#1079#1072#1076#1086#1083#1078#1085'.'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'DEB_ORG'
      LookupDataSet = OD_debits_org
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'FK_DEB_ORG'
      Lookup = True
    end
    object OD_list_kartSUB_DATA: TDateTimeField
      DisplayLabel = #1054#1082#1086#1085#1095'.'#1089#1091#1073
      DisplayWidth = 10
      FieldName = 'SUB_DATA'
    end
    object OD_list_kartEL1: TFloatField
      DisplayLabel = #1069#1083'.'#1101#1085'.'
      DisplayWidth = 9
      FieldName = 'EL1'
      currency = True
    end
    object OD_list_kartKI: TIntegerField
      DisplayLabel = #1051#1100#1075#1086#1090#1085#1080#1082#1086#1074
      DisplayWidth = 10
      FieldName = 'KI'
    end
    object OD_list_kartPSCH_NAME: TStringField
      DisplayLabel = #1057#1095#1077#1090#1095#1080#1082
      DisplayWidth = 9
      FieldName = 'PSCH_NAME'
      Size = 11
    end
    object OD_list_kartMG1: TStringField
      DisplayLabel = #1057
      DisplayWidth = 7
      FieldKind = fkInternalCalc
      FieldName = 'MG1'
      Required = True
      Size = 7
    end
    object OD_list_kartMG2: TStringField
      DisplayLabel = #1087#1086
      DisplayWidth = 7
      FieldKind = fkInternalCalc
      FieldName = 'MG2'
      Required = True
      Size = 7
    end
    object OD_list_kartKRAN1: TIntegerField
      DisplayLabel = #1057#1080#1089#1090'.'#1086#1090#1086#1087'.'
      DisplayWidth = 8
      FieldName = 'KRAN1'
    end
    object OD_list_kartTEXT: TStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DisplayWidth = 35
      FieldName = 'TEXT'
      Size = 35
    end
    object OD_list_kartSEL1: TFloatField
      DisplayWidth = 10
      FieldName = 'SEL1'
    end
    object OD_list_kartPARENT_LSK: TStringField
      DisplayLabel = #1056#1086#1076#1080#1090'.'#1083#1080#1094'.'#1089#1095#1077#1090
      DisplayWidth = 12
      FieldName = 'PARENT_LSK'
      Size = 8
    end
    object OD_list_kartDT_CR: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
      DisplayWidth = 18
      FieldName = 'DT_CR'
      Required = True
    end
    object OD_list_kartFK_KLSK_OBJ: TFloatField
      DisplayLabel = 'KLSK '#1051#1080#1094'.'#1089#1095'.'
      DisplayWidth = 11
      FieldName = 'FK_KLSK_OBJ'
      ReadOnly = True
    end
    object OD_list_kartDIVIDED: TFloatField
      DisplayWidth = 10
      FieldName = 'DIVIDED'
      Required = True
    end
    object OD_list_kartLSK_TP_CD: TStringField
      DisplayWidth = 32
      FieldName = 'LSK_TP_CD'
      Required = True
      Visible = False
      Size = 32
    end
    object OD_list_kartLSK_TP: TStringField
      DisplayLabel = #1058#1080#1087
      DisplayWidth = 15
      FieldName = 'LSK_TP'
      Required = True
      Visible = False
      Size = 96
    end
    object OD_list_kartLSK_EXT: TStringField
      DisplayWidth = 8
      FieldName = 'LSK_EXT'
      Visible = False
      Size = 8
    end
    object OD_list_kartELSK: TStringField
      DisplayWidth = 10
      FieldName = 'ELSK'
      Visible = False
      Size = 255
    end
    object OD_list_kartSUBS_COR: TFloatField
      DisplayLabel = #1057#1091#1073#1089'.'#1082#1086#1088#1088'.'
      DisplayWidth = 9
      FieldName = 'SUBS_COR'
      Visible = False
    end
    object OD_list_kartSUBS_CUR: TFloatField
      DisplayLabel = #1053#1072#1095'.'#1089#1091#1073#1089'.'
      DisplayWidth = 8
      FieldName = 'SUBS_CUR'
      Visible = False
    end
    object OD_list_kartEL: TFloatField
      DisplayLabel = #1069#1083'.'#1101#1085'. '#1089#1091#1073#1089'.'
      DisplayWidth = 10
      FieldName = 'EL'
      Visible = False
      currency = True
    end
    object OD_list_kartKAN_SCH: TFloatField
      DisplayLabel = #1059#1095#1080#1090'.'#1050#1072#1085'.'#1057#1095'.'
      DisplayWidth = 10
      FieldName = 'KAN_SCH'
      Visible = False
    end
    object OD_list_kartPSCH_DT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PSCH_DT'
      Visible = False
    end
    object k_l: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PN_DT'
      Visible = False
    end
    object OD_list_kartSGKU: TFloatField
      DisplayLabel = #1057#1046#1050#1059
      DisplayWidth = 5
      FieldName = 'SGKU'
      Visible = False
    end
    object OD_list_kartEKSUB1: TFloatField
      DisplayLabel = #1057#1086#1074'.'#1076#1086#1093'.'
      DisplayWidth = 7
      FieldName = 'EKSUB1'
      Visible = False
    end
    object OD_list_kartEKSUB2: TFloatField
      DisplayLabel = #1044#1091#1096'.'#1076#1086#1093'.'
      DisplayWidth = 7
      FieldName = 'EKSUB2'
      Visible = False
    end
    object OD_list_kartDOPPL: TFloatField
      DisplayLabel = #1059#1074#1077#1083'.'#1088#1077#1075'.'#1089#1090
      DisplayWidth = 10
      FieldName = 'DOPPL'
      Visible = False
    end
    object OD_list_kartFK_DEB_ORG: TFloatField
      DisplayLabel = #1054#1088#1075'. '#1079#1072#1076#1086#1083#1078#1085#1080#1082#1072
      DisplayWidth = 10
      FieldName = 'FK_DEB_ORG'
      Visible = False
    end
    object OD_list_kartPSCH: TIntegerField
      DisplayLabel = #1057#1095#1077#1090#1095#1080#1082
      DisplayWidth = 10
      FieldName = 'PSCH'
      Visible = False
    end
    object OD_list_kartSUBS_VAL: TFloatField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'SUBS_VAL'
      ReadOnly = True
      Visible = False
    end
    object OD_list_kartKW: TStringField
      DisplayWidth = 7
      FieldName = 'KW'
      Visible = False
      Size = 7
    end
    object OD_list_kartSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      DisplayWidth = 10
      FieldName = 'STATUS'
      Visible = False
    end
    object OD_list_kartND: TStringField
      DisplayWidth = 6
      FieldName = 'ND'
      Visible = False
      Size = 6
    end
    object OD_list_kartNKOM: TStringField
      DisplayWidth = 4000
      FieldName = 'NKOM'
      ReadOnly = True
      Visible = False
      Size = 4000
    end
    object OD_list_kartPPL: TFloatField
      DisplayLabel = #1055#1086#1083#1077#1079#1085'. '#1087#1083#1086#1097'.'
      FieldName = 'PPL'
      Visible = False
    end
    object OD_list_kartKOMN: TIntegerField
      DisplayLabel = #1050#1086#1084#1085#1072#1090
      FieldName = 'KOMN'
      Visible = False
    end
    object OD_list_kartC_LSK_ID: TFloatField
      FieldName = 'C_LSK_ID'
      Visible = False
    end
    object OD_list_kartPGW: TFloatField
      FieldName = 'PGW'
      Visible = False
    end
    object OD_list_kartPHW: TFloatField
      FieldName = 'PHW'
      Visible = False
    end
    object OD_list_kartPEL: TFloatField
      FieldName = 'PEL'
      Visible = False
    end
    object OD_list_kartSCHEL_DT: TDateTimeField
      FieldName = 'SCHEL_DT'
      Visible = False
    end
    object OD_list_kartSCHEL_END: TDateTimeField
      FieldName = 'SCHEL_END'
      Visible = False
    end
    object OD_list_kartREU: TStringField
      DisplayWidth = 3
      FieldName = 'REU'
      Visible = False
      Size = 3
    end
    object OD_list_kartKFG: TIntegerField
      FieldName = 'KFG'
      Visible = False
    end
    object us: TStringField
      FieldName = 'POLIS'
      Visible = False
      Size = 8
    end
    object OD_list_kartSCH_EL: TIntegerField
      FieldName = 'SCH_EL'
      Visible = False
    end
    object OD_list_kartK_IM: TStringField
      FieldName = 'K_IM'
      Visible = False
      Size = 15
    end
    object OD_list_kartK_OT: TStringField
      FieldName = 'K_OT'
      Visible = False
      Size = 15
    end
    object OD_list_kartK_FAM: TStringField
      FieldName = 'K_FAM'
      Visible = False
      Size = 25
    end
    object OD_list_kartMEMO: TStringField
      FieldName = 'MEMO'
      Visible = False
      Size = 50
    end
    object OD_list_kartFK_DISTR: TFloatField
      FieldName = 'FK_DISTR'
      Visible = False
    end
    object OD_list_kartLAW_DOC: TStringField
      FieldName = 'LAW_DOC'
      Visible = False
      Size = 50
    end
    object OD_list_kartFK_PASP_ORG: TFloatField
      FieldName = 'FK_PASP_ORG'
      Visible = False
    end
    object OD_list_kartLAW_DOC_DT: TDateTimeField
      FieldName = 'LAW_DOC_DT'
      Visible = False
    end
    object OD_list_kartPRVT_DOC: TStringField
      FieldName = 'PRVT_DOC'
      Visible = False
      Size = 50
    end
    object OD_list_kartPRVT_DOC_DT: TDateTimeField
      FieldName = 'PRVT_DOC_DT'
      Visible = False
    end
    object OD_list_kartCPN: TFloatField
      FieldName = 'CPN'
      Visible = False
    end
    object OD_list_kartADR: TStringField
      DisplayWidth = 41
      FieldName = 'ADR'
      Visible = False
      Size = 41
    end
    object OD_list_kartPOT: TFloatField
      FieldName = 'POT'
      Visible = False
    end
    object OD_list_kartMOT: TFloatField
      FieldName = 'MOT'
      Visible = False
    end
    object OD_list_kartKPR_OWN: TFloatField
      FieldName = 'KPR_OWN'
      Visible = False
    end
  end
  object DS_list_kart: TDataSource
    DataSet = OD_list_kart
    Left = 40
    Top = 160
  end
  object OD_debits_org: TOracleDataSet
    SQL.Strings = (
      'select * from scott.t_org t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000040000000040000004900440001000000000004000000430044000100
      000000001000000046004B005F004F0052004700540050000100000000000800
      00004E0041004D004500010000000000060000004E0050005000010000000000
      0200000056000100000000001200000050004100520045004E0054005F004900
      4400010000000000060000005200450055000100000000000A00000054005200
      4500530054000100000000000600000055004300480001000000000006000000
      4100440052000100000000000600000049004E004E000100000000000E000000
      4D0041004E004100470045005200010000000000060000004200550048000100
      000000001A00000052004100530043004800450054005F005300430048004500
      54000100000000000E0000004B005F0053004300480045005400010000000000
      120000004B004F0044005F004F004B004F004E00480001000000000010000000
      4B004F0044005F004F00470052004E0001000000000006000000420049004B00
      0100000000000A000000500048004F004E004500010000000000060000004B00
      5000500001000000000008000000420041004E004B000100000000000C000000
      490044005F00450058005000010000000000120000004100440052005F005200
      45004300490050000100000000001C00000041005500540048004F0052004900
      5A00450044005F004400490052000100000000001C0000004100550054004800
      4F00520049005A00450044005F00420055004800010000000000180000004100
      5500540048005F004400490052005F0044004F00430001000000000018000000
      41005500540048005F004200550048005F0044004F0043000100000000000800
      00004F004B0050004F000100000000000C0000005600450052005F0043004400
      01000000000012000000460055004C004C005F004E0041004D00450001000000
      00000C000000500048004F004E00450032000100000000001400000050004100
      520045004E0054005F004900440032000100000000000E00000046004B005F00
      4F005200470032000100000000000E000000420041004E004B005F0043004400
      0100000000000E0000004100440052005F005700570057000100000000000A00
      000045004D00410049004C000100000000001200000048004500410044005F00
      4E0041004D0045000100000000001C0000005200410053004300480045005400
      5F005300430048004500540032000100000000001200000050004F0053005400
      5F0049004E00440058000100000000001600000052005F005300430048005F00
      410044004400490054000100000000001600000046004B005F00420049004C00
      4C005F005600410052000100000000000C00000041004F004700550049004400
      0100000000000A0000004F004B0054004D004F00010000000000100000004300
      4F00440045005F004400450042000100000000001200000044004F004C004700
      5F004E0041004D00450001000000000014000000420041004E004B005F004600
      4E0041004D004500010000000000060000004700520050000100000000001200
      000052005F005300430048005F00470049005300010000000000160000004400
      4900530054005F005000410059005F0054005000010000000000100000004100
      440052005F0043004100530048000100000000000C000000490053005F005200
      53004F000100000000001E000000490053005F00450058004300480041004E00
      470045005F00470049005300010000000000140000004F00520047005F005400
      50005F004700490053000100000000000E0000004700520050005F0044004500
      42000100000000001E000000490053005F00450058004300480041004E004700
      45005F0045005800540001000000000020000000530045005200560049004300
      45005F004E0041004D0045005F004700490053000100000000002C0000005500
      53004C005F0046004F0052005F004300520045004100540045005F0045005800
      54005F004C0053004B0001000000000032000000490053005F00430052004500
      4100540045005F004500580054005F004C0053004B005F0049004E005F004B00
      410052005400010000000000220000004500580054005F004C0053004B005F00
      46004F0052004D00410054005F00540050000100000000002A00000045005800
      54005F004C0053004B005F004C004F00410044005F00530041004C0044004F00
      5F0054005000010000000000200000004500580054005F004C0053004B005F00
      4C004F00410044005F005000410059000100000000002A000000450058005400
      5F004C0053004B005F005000410059005F0046004F0052004D00410054005F00
      54005000010000000000240000005600410052005F004400450042005F005000
      45004E005F00500044005F00470049005300010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 240
    Top = 320
    object OD_debits_orgNAME: TStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      DisplayWidth = 64
      FieldName = 'NAME'
      Required = True
      Size = 64
    end
    object OD_debits_orgID: TFloatField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object DS_debits_org: TDataSource
    DataSet = OD_debits_org
    Left = 272
    Top = 320
  end
  object OD_rep1: TOracleDataSet
    SQL.Strings = (
      'select k.*, '
      
        'initcap(s.name)||'#39', '#39'||NVL(LTRIM(k.nd,'#39'0'#39'),'#39'0'#39')||'#39'-'#39'||NVL(LTRIM(' +
        'k.kw,'#39'0'#39'),'#39'0'#39') as adr,'
      'ltrim(k.nd,'#39'0'#39') as n_nd, ltrim(k.kw,'#39'0'#39') as n_kw,'
      
        's.name as street_name, r.name as distr_name, t.name as status_na' +
        'me, o.name as name_reu,'
      
        ' o2.name as town_name, scott.init.get_fio as fio_pasp, o3.name a' +
        's name_rkc,'
      ' decode(t.cd, '#39'MUN'#39','#39#1053#1072#1085#1080#1084#1072#1090#1077#1083#1100#39','#39#1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#39') as pers_tp'
      
        ' from scott.kart k, scott.spul s, scott.u_list r, scott.status t' +
        ', scott.t_org o, '
      
        ' scott.t_org o2, scott.t_org_tp tp, scott.t_org o3, scott.t_org_' +
        'tp tp3'
      
        'where k.kul=s.id and k.fk_distr=r.id(+) and k.lsk=:lsk and k.sta' +
        'tus=t.id(+)'
      'and k.reu=o.reu and tp.cd='#39#1043#1086#1088#1086#1076#39' and tp.id=o2.fk_orgtp'
      'and tp3.id=o3.fk_orgtp and tp3.cd='#39#1056#1050#1062#39)
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00050000000900000020202020
      202020200000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000065000000060000004C0053004B00010000000000060000004B005500
      4C00010000000000040000004E004400010000000000040000004B0057000100
      0000000006000000460049004F00010000000000060000004B00500052000100
      000000000C0000004B00500052005F00570052000100000000000C0000004B00
      500052005F004F0054000100000000000E0000004B00500052005F0043004500
      4D000100000000000A0000004B00500052005F00530001000000000006000000
      4F0050004C0001000000000006000000500050004C000100000000000A000000
      50004C0044004F005000010000000000040000004B0049000100000000000800
      000050005300430048000100000000000E00000050005300430048005F004400
      54000100000000000C0000005300540041005400550053000100000000000600
      00004B00570054000100000000000A0000004C004F00440050004C0001000000
      00000A000000420045004B0050004C000100000000000A000000420041004C00
      50004C00010000000000080000004B004F004D004E0001000000000004000000
      45005400010000000000060000004B0046004700010000000000080000004B00
      46004F0054000100000000000600000050004800570001000000000006000000
      4D00480057000100000000000600000050004700570001000000000006000000
      4D004700570001000000000006000000500045004C0001000000000006000000
      4D0045004C00010000000000100000005300550042005F004E00410043004800
      0100000000001000000053005500420053004900440049004900010000000000
      100000005300550042005F0044004100540041000100000000000A0000005000
      4F004C00490053000100000000000C0000005300430048005F0045004C000100
      0000000006000000520045005500010000000000080000005400450058005400
      0100000000001000000053004300480045004C005F0044005400010000000000
      0C00000045004B0053005500420031000100000000000C00000045004B005300
      550042003200010000000000080000004B00520041004E000100000000000A00
      00004B00520041004E0031000100000000000400000045004C00010000000000
      0600000045004C00310001000000000008000000530047004B00550001000000
      00000A00000044004F00500050004C0001000000000010000000530055004200
      53005F0043004F0052000100000000001000000048004F005500530045005F00
      490044000100000000001000000043005F004C0053004B005F00490044000100
      00000000060000004D0047003100010000000000060000004D00470032000100
      000000000E0000004B0041004E005F0053004300480001000000000010000000
      53005500420053005F0049004E0046000100000000000800000046004C004100
      47000100000000000A00000046004C0041004700310001000000000010000000
      4B005F004C0053004B005F00490044000100000000000E00000044004F004700
      5F004E0055004D000100000000001200000053004300480045004C005F004500
      4E0044000100000000001400000046004B005F004400450042005F004F005200
      47000100000000001000000053005500420053005F0043005500520001000000
      00000A0000004B005F00460041004D00010000000000080000004B005F004900
      4D00010000000000080000004B005F004F005400010000000000080000004D00
      45004D004F000100000000001000000046004B005F0044004900530054005200
      0100000000000E0000004C00410057005F0044004F0043000100000000001600
      00005300540052004500450054005F004E0041004D0045000100000000001400
      0000440049005300540052005F004E0041004D00450001000000000008000000
      4E005F004E004400010000000000080000004E005F004B005700010000000000
      160000005300540041005400550053005F004E0041004D004500010000000000
      1600000046004B005F0050004100530050005F004F0052004700010000000000
      100000004E0041004D0045005F005200450055000100000000000C0000004600
      4B005F004500520052000100000000001200000054004F0057004E005F004E00
      41004D004500010000000000140000004C00410057005F0044004F0043005F00
      440054000100000000001000000050005200560054005F0044004F0043000100
      000000001600000050005200560054005F0044004F0043005F00440054000100
      000000000600000041004400520001000000000010000000460049004F005F00
      5000410053005000010000000000100000004E0041004D0045005F0052004B00
      430001000000000006000000430050004E000100000000000E0000004B005000
      52005F005700520050000100000000000A00000050004E005F00440054000100
      000000000E0000004C0053004B005F004500580054000100000000000A000000
      46004B005F00540050000100000000000E00000050004500520053005F005400
      500001000000000008000000530045004C0031000100000000000E0000005600
      56004F0044005F004F0054000100000000000800000045004E00540052000100
      000000000600000050004F005400010000000000060000004D004F0054000100
      000000000800000045004C0053004B0001000000000014000000500041005200
      45004E0054005F004C0053004B000100000000001600000046004B005F004B00
      4C0053004B005F004F0042004A000100000000000A000000440054005F004300
      52000100000000001A00000046004100430054005F004D004500540045005200
      5F00540050000100000000000E0000004B00500052005F004F0057004E000100
      000000001E00000046004B005F004B004C0053004B005F005000520045004D00
      4900530045000100000000000E00000044004900560049004400450044000100
      00000000}
    Master = OD_list_kart
    MasterFields = 'lsk'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 344
    Top = 160
  end
  object DS_rep1: TDataSource
    DataSet = OD_rep1
    Left = 376
    Top = 160
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'kart'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK=LSK'
      'KUL=KUL'
      'ND=ND'
      'KW=KW'
      'FIO=FIO'
      'KPR=KPR'
      'KPR_WR=KPR_WR'
      'KPR_OT=KPR_OT'
      'KPR_CEM=KPR_CEM'
      'KPR_S=KPR_S'
      'OPL=OPL'
      'PPL=PPL'
      'PLDOP=PLDOP'
      'KI=KI'
      'PSCH=PSCH'
      'PSCH_DT=PSCH_DT'
      'STATUS=STATUS'
      'KWT=KWT'
      'LODPL=LODPL'
      'BEKPL=BEKPL'
      'BALPL=BALPL'
      'KOMN=KOMN'
      'ET=ET'
      'KFG=KFG'
      'KFOT=KFOT'
      'PHW=PHW'
      'MHW=MHW'
      'PGW=PGW'
      'MGW=MGW'
      'PEL=PEL'
      'MEL=MEL'
      'SUB_NACH=SUB_NACH'
      'SUBSIDII=SUBSIDII'
      'SUB_DATA=SUB_DATA'
      'POLIS=POLIS'
      'SCH_EL=SCH_EL'
      'REU=REU'
      'TEXT=TEXT'
      'SCHEL_DT=SCHEL_DT'
      'EKSUB1=EKSUB1'
      'EKSUB2=EKSUB2'
      'KRAN=KRAN'
      'KRAN1=KRAN1'
      'EL=EL'
      'EL1=EL1'
      'SGKU=SGKU'
      'DOPPL=DOPPL'
      'SUBS_COR=SUBS_COR'
      'HOUSE_ID=HOUSE_ID'
      'C_LSK_ID=C_LSK_ID'
      'MG1=MG1'
      'MG2=MG2'
      'KAN_SCH=KAN_SCH'
      'SUBS_INF=SUBS_INF'
      'K_LSK_ID=K_LSK_ID'
      'DOG_NUM=DOG_NUM'
      'SCHEL_END=SCHEL_END'
      'FK_DEB_ORG=FK_DEB_ORG'
      'SUBS_CUR=SUBS_CUR'
      'K_FAM=K_FAM'
      'K_IM=K_IM'
      'K_OT=K_OT'
      'MEMO=MEMO'
      'FK_DISTR=FK_DISTR'
      'LAW_DOC=LAW_DOC'
      'FK_PASP_ORG=FK_PASP_ORG'
      'FLAG=FLAG'
      'FLAG1=FLAG1'
      'FK_ERR=FK_ERR'
      'LAW_DOC_DT=LAW_DOC_DT'
      'PRVT_DOC=PRVT_DOC'
      'PRVT_DOC_DT=PRVT_DOC_DT'
      'CPN=CPN'
      'KPR_WRP=KPR_WRP'
      'PN_DT=PN_DT'
      'LSK_EXT=LSK_EXT'
      'FK_TP=FK_TP'
      'ADR=ADR'
      'N_ND=N_ND'
      'N_KW=N_KW'
      'STREET_NAME=STREET_NAME'
      'DISTR_NAME=DISTR_NAME'
      'STATUS_NAME=STATUS_NAME'
      'NAME_REU=NAME_REU'
      'TOWN_NAME=TOWN_NAME'
      'FIO_PASP=FIO_PASP'
      'NAME_RKC=NAME_RKC'
      'PERS_TP=PERS_TP')
    DataSet = OD_rep1
    BCDToCurrency = False
    Left = 408
    Top = 162
  end
  object frxReport_base: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40260.593878344900000000
    ReportOptions.LastChange = 42297.581953807900000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 440
    Top = 162
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'c_kart_pr'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RN=RN'
      'ID=ID'
      'LSK=LSK'
      'FIO=FIO'
      'STATUS=STATUS'
      'DAT_ROG=DAT_ROG'
      'POL=POL'
      'DOK=DOK'
      'DOK_C=DOK_C'
      'DOK_N=DOK_N'
      'DOK_D=DOK_D'
      'DOK_V=DOK_V'
      'DAT_PROP=DAT_PROP'
      'DAT_UB=DAT_UB'
      'RELAT_ID=RELAT_ID'
      'OLD_ID=OLD_ID'
      'STATUS_DAT=STATUS_DAT'
      'STATUS_CHNG=STATUS_CHNG'
      'K_FAM=K_FAM'
      'K_IM=K_IM'
      'K_OT=K_OT'
      'FK_DOC_TP=FK_DOC_TP'
      'FK_NAC=FK_NAC'
      'B_PLACE=B_PLACE'
      'FK_FRM_CNTR=FK_FRM_CNTR'
      'FK_FRM_REGN=FK_FRM_REGN'
      'FK_FRM_DISTR=FK_FRM_DISTR'
      'FRM_TOWN=FRM_TOWN'
      'FRM_DAT=FRM_DAT'
      'FK_FRM_KUL=FK_FRM_KUL'
      'FRM_ND=FRM_ND'
      'FRM_KW=FRM_KW'
      'W_PLACE=W_PLACE'
      'FK_UB=FK_UB'
      'FK_TO_CNTR=FK_TO_CNTR'
      'FK_TO_REGN=FK_TO_REGN'
      'FK_TO_DISTR=FK_TO_DISTR'
      'TO_TOWN=TO_TOWN'
      'FK_TO_KUL=FK_TO_KUL'
      'TO_ND=TO_ND'
      'TO_KW=TO_KW'
      'FK_CITIZ=FK_CITIZ'
      'FK_MILIT=FK_MILIT'
      'FK_MILIT_REGN=FK_MILIT_REGN'
      'STATUS_DATB=STATUS_DATB'
      'FK_DEB_ORG=FK_DEB_ORG'
      'PRIV_PROC=PRIV_PROC'
      'DT1=DT1'
      'DT2=DT2'
      'STATUS_NAME=STATUS_NAME'
      'RELAT_NAME=RELAT_NAME'
      'UB_NAME=UB_NAME')
    DataSet = OD_rep2
    BCDToCurrency = False
    Left = 408
    Top = 194
  end
  object DS_rep2: TDataSource
    DataSet = OD_rep2
    Left = 376
    Top = 192
  end
  object OD_rep2: TOracleDataSet
    SQL.Strings = (
      
        'select rownum as rn, t.*, to_char(t.dat_prop,'#39'DD.MM.YYYY'#39') as dt' +
        '1,'
      
        'to_char(t.dat_ub,'#39'DD.MM.YYYY'#39') as dt2, p.name as status_name, r.' +
        'name as relat_name, u.name as ub_name'
      
        ' from scott.c_kart_pr t, scott.c_status_pr p, scott.relations r,' +
        ' scott.u_list u'
      
        ' where t.lsk = :lsk and t.status=p.id(+) and t.relat_id=r.id(+) ' +
        'and t.fk_ub=u.id(+)'
      
        ' and t.status not in (6,7) --'#1082#1088#1086#1084#1077' '#1074#1088#1077#1084#1077#1085#1085#1086' '#1087#1088#1086#1078#1080#1074' '#1080' '#1073#1077#1079' '#1088#1077#1075#1080#1089#1090#1088 +
        #1072#1094#1080#1080
      'order by t.id'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00610000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000003B0000000400000049004400010000000000060000004C0053004B00
      01000000000006000000460049004F000100000000000C000000530054004100
      5400550053000100000000000E0000004400410054005F0052004F0047000100
      000000000600000050004F004C000100000000000600000044004F004B000100
      000000000A00000044004F004B005F0043000100000000000A00000044004F00
      4B005F004E000100000000000A00000044004F004B005F004400010000000000
      0A00000044004F004B005F005600010000000000100000004400410054005F00
      500052004F0050000100000000000C0000004400410054005F00550042000100
      0000000010000000520045004C00410054005F00490044000100000000000C00
      00004F004C0044005F0049004400010000000000140000005300540041005400
      550053005F004400410054000100000000001600000053005400410054005500
      53005F00430048004E0047000100000000000A0000004B005F00460041004D00
      010000000000080000004B005F0049004D00010000000000080000004B005F00
      4F0054000100000000001200000046004B005F0044004F0043005F0054005000
      0100000000000C00000046004B005F004E00410043000100000000000E000000
      42005F0050004C004100430045000100000000001600000046004B005F004600
      52004D005F0043004E00540052000100000000001600000046004B005F004600
      52004D005F005200450047004E000100000000001800000046004B005F004600
      52004D005F004400490053005400520001000000000010000000460052004D00
      5F0054004F0057004E000100000000000E000000460052004D005F0044004100
      54000100000000000C000000460052004D005F004E0044000100000000000C00
      0000460052004D005F004B0057000100000000000E00000057005F0050004C00
      4100430045000100000000000400000052004E00010000000000160000005300
      540041005400550053005F004E0041004D004500010000000000140000005200
      45004C00410054005F004E0041004D0045000100000000000A00000046004B00
      5F00550042000100000000000E000000550042005F004E0041004D0045000100
      000000001400000046004B005F00460052004D005F004B0055004C0001000000
      00001400000046004B005F0054004F005F0043004E0054005200010000000000
      1400000046004B005F0054004F005F005200450047004E000100000000001600
      000046004B005F0054004F005F00440049005300540052000100000000000E00
      000054004F005F0054004F0057004E000100000000001200000046004B005F00
      54004F005F004B0055004C000100000000000A00000054004F005F004E004400
      0100000000000A00000054004F005F004B005700010000000000100000004600
      4B005F0043004900540049005A000100000000001000000046004B005F004D00
      49004C00490054000100000000001A00000046004B005F004D0049004C004900
      54005F005200450047004E000100000000001600000053005400410054005500
      53005F0044004100540042000100000000000600000044005400310001000000
      0000060000004400540032000100000000001400000046004B005F0044004500
      42005F004F00520047000100000000001200000050005200490056005F005000
      52004F0043000100000000000800000041004300500054000100000000001200
      000044004F004B005F0053004E0049004C005300010000000000240000005500
      530045005F004700490053005F004400490056004900440045005F0045004C00
      53000100000000000E00000044004F004B005F00440049005600010000000000
      0E00000044004F004B005F0049004E004E000100000000001600000044004F00
      4B005F00440045004100540048005F0043000100000000001600000044004F00
      4B005F00440045004100540048005F004E00010000000000}
    Master = OD_list_kart
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 344
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 200
    object N3: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1086#1084#1072
      OnClick = N3Click
    end
    object N1: TMenuItem
      Caption = #1042#1074#1086#1076#1099' '#1087#1086' '#1076#1086#1084#1091
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1074#1086#1076' '#1086#1073#1098#1077#1084#1086#1074' '#1087#1086' '#1083'/'#1089
      OnClick = N2Click
    end
    object KLSKHOUSEID1: TMenuItem
      Caption = #1047#1072#1084#1077#1085#1072' KLSK '#1080' HOUSE_ID'
      Enabled = False
      OnClick = KLSKHOUSEID1Click
    end
    object N4: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1092#1080#1085'.'#1083#1080#1094'.'#1089#1095#1077#1090#1072
      OnClick = N4Click
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'rep_par'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NAME=NAME')
    DataSet = OD_rep3
    BCDToCurrency = False
    Left = 408
    Top = 226
  end
  object DS_rep3: TDataSource
    DataSet = OD_rep3
    Left = 376
    Top = 224
  end
  object OD_rep3: TOracleDataSet
    SQL.Strings = (
      'select t.name from scott.list_c t'
      'where exists'
      '(select * from scott.spr_params r where r.id=t.fk_par'
      'and r.cd='#39'REP_PREP_FIO'#39')'
      'and t.fk_ses=USERENV('#39'sessionid'#39')'
      'order by t.id desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {0500000001000000080000004E0041004D004500010000000000}
    CommitOnPost = False
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 344
    Top = 224
  end
  object OD_deb_kart_pr: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.lsk, t.fio, t.fk_deb_org, t.rowid from scott.c_ka' +
        'rt_pr t'
      'where t.lsk=:p_lsk and '
      't.status<>4')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0050005F004C0053004B000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      050000000400000006000000460049004F000100000000001400000046004B00
      5F004400450042005F004F0052004700010000000000060000004C0053004B00
      0100000000000400000049004400010000000000}
    QueryAllRecords = False
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    Active = True
    Left = 344
    Top = 320
    object OD_deb_kart_prID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_deb_kart_prLSK: TStringField
      FieldName = 'LSK'
      Size = 8
    end
    object OD_deb_kart_prFIO: TStringField
      FieldName = 'FIO'
      Size = 55
    end
    object OD_deb_kart_prFK_DEB_ORG: TFloatField
      FieldName = 'FK_DEB_ORG'
    end
    object OD_deb_kart_prDEB_ORG_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'DEB_ORG_NAME'
      LookupDataSet = OD_debits_org
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'FK_DEB_ORG'
      Lookup = True
    end
  end
  object DS_deb_kart_pr: TDataSource
    DataSet = OD_deb_kart_pr
    Left = 376
    Top = 320
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'frmListKartStore'
    StorageType = stRegistry
    Left = 104
    Top = 168
  end
  object OD_rep_lsk: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.rep_lsk.rep(p_rep_cd => :p_rep_cd,'
      '              p_lsk => :p_lsk,'
      '              p_mg1 => :p_mg1,'
      '              p_mg2 => :p_mg2,'
      '              prep_refcursor => :prep_refcursor);'
      'end;')
    Optimize = False
    Variables.Data = {
      04000000050000001E0000003A0050005200450050005F005200450046004300
      5500520053004F005200740000000000000000000000120000003A0050005F00
      5200450050005F00430044000500000003000000393300000000000C0000003A
      0050005F004D00470031000500000000000000000000000C0000003A0050005F
      004D00470032000500000000000000000000000C0000003A0050005F004C0053
      004B00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000000E0000004300550052004400410059005300010000000000
      0A000000500045004E00590041000100000000000C000000500045004E005900
      4100520001000000000010000000500041005200540052004100540045000100
      0000000008000000520041005400450001000000000006000000440054003100
      01000000000006000000440054003200010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 344
    Top = 104
  end
  object frxdbdtstDBD_rep_lsk: TfrxDBDataset
    UserName = 'rep_lsk'
    CloseDataSource = False
    DataSet = OD_rep_lsk
    BCDToCurrency = False
    Left = 376
    Top = 106
  end
  object OD_check_conn_gis: TOracleDataSet
    Optimize = False
    Session = DataModule1.OracleSession1
    Left = 977
    Top = 344
  end
  object OD_kart_detail: TOracleDataSet
    SQL.Strings = (
      'select d.*, d.rowid from scott.kart_detail d where lsk = :lsk')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004C0053004B00610000000000000000000000}
    OracleDictionary.UseMessageTable = True
    QBEDefinition.AllowOperators = True
    QBEDefinition.QBEFieldDefs = {
      0500000008000000060000004C0053004B000101000000000400000049004400
      010000000000080000004F005200440031000100000000001600000043004100
      440041005300540052005F004E0055004D000100000000000E00000049005300
      5F004D00410049004E0001000000000024000000490053005F004D0041004900
      4E005F0049004E005F005000520045004D004900530045000100000000000E00
      0000500052004E005F004E0055004D000100000000001E000000490053005F00
      4D00410049004E005F0049004E005F004B004C0053004B00010000000000}
    Master = OD_list_kart
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate, roAllFields]
    CommitOnPost = False
    CachedUpdates = True
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 152
    Top = 160
  end
  object DS_kart_detail: TDataSource
    DataSet = OD_kart_detail
    Left = 192
    Top = 160
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 16
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
end
