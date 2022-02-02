object Form_admin: TForm_admin
  Left = 655
  Top = 174
  Width = 653
  Height = 501
  Caption = #1040#1076#1084#1080#1085
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 432
    Top = 392
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = Button2Click
  end
  object cxpgcntrl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 637
    Height = 462
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 458
    ClientRectLeft = 4
    ClientRectRight = 633
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1051#1086#1075#1080#1085
      ImageIndex = 0
      object lbl3: TLabel
        Left = 8
        Top = 72
        Width = 18
        Height = 13
        Caption = 'DB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 8
        Top = 48
        Width = 28
        Height = 13
        Caption = 'Pass'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 8
        Top = 24
        Width = 27
        Height = 13
        Caption = 'User'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 176
        Top = 72
        Width = 42
        Height = 13
        Caption = 'Decript'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mmo1: TMemo
        Left = 8
        Top = 96
        Width = 353
        Height = 161
        TabOrder = 0
      end
      object edt2: TEdit
        Left = 48
        Top = 65
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edt1: TEdit
        Left = 48
        Top = 41
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edt3: TEdit
        Left = 48
        Top = 17
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object pnl2: TPanel
        Left = 0
        Top = 393
        Width = 629
        Height = 41
        Align = alBottom
        TabOrder = 4
        DesignSize = (
          629
          41)
        object btn1: TButton
          Left = 538
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #1064#1080#1092#1088'.'
          TabOrder = 0
          OnClick = btn1Click
        end
      end
      object Edit1: TEdit
        Left = 224
        Top = 65
        Width = 121
        Height = 21
        TabOrder = 5
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1057#1077#1089#1089#1080#1080
      ImageIndex = 1
      object grp1: TGroupBox
        Left = 0
        Top = 232
        Width = 629
        Height = 202
        Align = alBottom
        Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1080':'
        TabOrder = 0
        object cxGrid2: TcxGrid
          Left = 2
          Top = 15
          Width = 625
          Height = 185
          Align = alClient
          PopupMenu = pm2
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = DS_sess2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1SID: TcxGridDBColumn
              DataBinding.FieldName = 'SID'
            end
            object cxGridDBTableView1NAME: TcxGridDBColumn
              Caption = #1041#1083#1086#1082#1080#1088#1091#1102#1097#1080#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
              DataBinding.FieldName = 'NAME'
            end
            object cxGridDBTableView1SERIAL: TcxGridDBColumn
              DataBinding.FieldName = 'SERIAL#'
            end
            object cxGridDBTableView1BLOCKING_STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'BLOCKING_STATUS'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object grp2: TGroupBox
        Left = 0
        Top = 0
        Width = 629
        Height = 232
        Align = alClient
        Caption = #1042#1089#1077' '#1089#1077#1089#1089#1080#1080':'
        TabOrder = 1
        object cxGrid1: TcxGrid
          Left = 2
          Top = 15
          Width = 625
          Height = 215
          Align = alClient
          PopupMenu = pm1
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = DS_sess
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1SID: TcxGridDBColumn
              DataBinding.FieldName = 'SID'
            end
            object cxGrid1DBTableView1SERIAL: TcxGridDBColumn
              DataBinding.FieldName = 'SERIAL#'
            end
            object cxGrid1DBTableView1NAME: TcxGridDBColumn
              DataBinding.FieldName = 'NAME'
              Width = 95
            end
            object cxGrid1DBTableView1USERNAME: TcxGridDBColumn
              DataBinding.FieldName = 'USERNAME'
              Width = 131
            end
            object cxGrid1DBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
            end
            object cxGrid1DBTableView1OSUSER: TcxGridDBColumn
              DataBinding.FieldName = 'OSUSER'
              Width = 116
            end
            object cxGrid1DBTableView1MACHINE: TcxGridDBColumn
              DataBinding.FieldName = 'MACHINE'
            end
            object cxGrid1DBTableView1PROGRAM: TcxGridDBColumn
              DataBinding.FieldName = 'PROGRAM'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object OD_sess: TOracleDataSet
    SQL.Strings = (
      'select t.*, u.name from v$session t, scott.t_user u'
      'where username=u.cd(+)'
      'order by u.cd')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000004D000000050000005341444452010000000000030000005349440100
      000000000700000053455249414C230100000000000600000041554453494401
      0000000000050000005041444452010000000000050000005553455223010000
      00000008000000555345524E414D4501000000000007000000434F4D4D414E44
      010000000000070000004F574E45524944010000000000050000005441444452
      010000000000080000004C4F434B574149540100000000000600000053544154
      5553010000000000060000005345525645520100000000000700000053434845
      4D41230100000000000A000000534348454D414E414D45010000000000060000
      004F53555345520100000000000700000050524F434553530100000000000700
      00004D414348494E45010000000000080000005445524D494E414C0100000000
      000700000050524F4752414D0100000000000400000054595045010000000000
      0B00000053514C5F414444524553530100000000000E00000053514C5F484153
      485F56414C55450100000000000600000053514C5F4944010000000000100000
      0053514C5F4348494C445F4E554D4245520100000000000D000000505245565F
      53514C5F414444520100000000000F000000505245565F484153485F56414C55
      450100000000000B000000505245565F53514C5F494401000000000011000000
      505245565F4348494C445F4E554D424552010000000000060000004D4F44554C
      450100000000000B0000004D4F44554C455F4841534801000000000006000000
      414354494F4E0100000000000B000000414354494F4E5F484153480100000000
      000B000000434C49454E545F494E464F0100000000001400000046495845445F
      5441424C455F53455155454E43450100000000000D000000524F575F57414954
      5F4F424A230100000000000E000000524F575F574149545F46494C4523010000
      0000000F000000524F575F574149545F424C4F434B230100000000000D000000
      524F575F574149545F524F57230100000000000A0000004C4F474F4E5F54494D
      450100000000000C0000004C4153545F43414C4C5F45540100000000000C0000
      0050444D4C5F454E41424C45440100000000000D0000004641494C4F5645525F
      545950450100000000000F0000004641494C4F5645525F4D4554484F44010000
      0000000B0000004641494C45445F4F564552010000000000170000005245534F
      555243455F434F4E53554D45525F47524F55500100000000000B00000050444D
      4C5F5354415455530100000000000B0000005044444C5F535441545553010000
      0000000900000050515F5354415455530100000000001600000043555252454E
      545F51554555455F4455524154494F4E01000000000011000000434C49454E54
      5F4944454E54494649455201000000000017000000424C4F434B494E475F5345
      5353494F4E5F53544154555301000000000011000000424C4F434B494E475F49
      4E5354414E434501000000000010000000424C4F434B494E475F53455353494F
      4E0100000000000400000053455123010000000000060000004556454E542301
      0000000000050000004556454E54010000000000060000005031544558540100
      0000000002000000503101000000000005000000503152415701000000000006
      0000005032544558540100000000000200000050320100000000000500000050
      3252415701000000000006000000503354455854010000000000020000005033
      0100000000000500000050335241570100000000000D000000574149545F434C
      4153535F49440100000000000B000000574149545F434C415353230100000000
      000A000000574149545F434C41535301000000000009000000574149545F5449
      4D450100000000000F0000005345434F4E44535F494E5F574149540100000000
      000500000053544154450100000000000C000000534552564943455F4E414D45
      0100000000000900000053514C5F54524143450100000000000F00000053514C
      5F54524143455F57414954530100000000000F00000053514C5F54524143455F
      42494E4453010000000000040000004E414D45010000000000}
    Session = DataModule1.OracleSession1
    Left = 28
    Top = 48
  end
  object DS_sess: TDataSource
    DataSet = OD_sess
    Left = 76
    Top = 48
  end
  object OD_sess2: TOracleDataSet
    SQL.Strings = (
      'select s1.sid, s1.serial#, u.name, '
      
        '       s1.username || '#39'@'#39' || s1.machine || '#39' ( SID='#39' || s1.sid |' +
        '|'
      
        '       '#39' ) is blocking '#39' || s2.username || '#39'@'#39' || s2.machine || ' +
        #39' ( SID='#39' ||'
      '       s2.sid || '#39' ) '#39' AS blocking_status'
      
        '  from sys.v_$lock l1, sys.v_$session s1, sys.v_$lock l2, sys.v_' +
        '$session s2, scott.t_user u'
      ' where s1.sid = l1.sid'
      '   and s2.sid = l2.sid'
      '   and l1.BLOCK = 1'
      '   and l2.request > 0'
      '   and l1.id1 = l2.id1'
      '   and l2.id2 = l2.id2'
      '   and s1.username=u.cd(+)'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000040000000F000000424C4F434B494E475F5354415455530100000000
      00030000005349440100000000000700000053455249414C2301000000000004
      0000004E414D45010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 36
    Top = 152
  end
  object DS_sess2: TDataSource
    DataSet = OD_sess2
    Left = 76
    Top = 96
  end
  object pm1: TPopupMenu
    Left = 252
    Top = 136
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1077#1089#1089#1080#1102
      OnClick = N1Click
    end
  end
  object pm2: TPopupMenu
    Left = 252
    Top = 313
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1077#1089#1089#1080#1102
      OnClick = N2Click
    end
  end
end
