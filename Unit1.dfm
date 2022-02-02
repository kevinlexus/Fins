object Form_print_lg_usl: TForm_print_lg_usl
  Left = 212
  Top = 272
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Оборотная ведомость по услугам'
  ClientHeight = 132
  ClientWidth = 297
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 297
    Height = 81
    Caption = 'Параметры отчета'
    TabOrder = 0
    object Label6: TLabel
      Left = 136
      Top = 56
      Width = 21
      Height = 13
      Caption = '       '
    end
    object Label7: TLabel
      Left = 16
      Top = 24
      Width = 87
      Height = 13
      Caption = 'Период отчета С:'
    end
    object Label8: TLabel
      Left = 192
      Top = 24
      Width = 17
      Height = 13
      Caption = 'По:'
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 112
      Top = 16
      Width = 65
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource1
      TabOrder = 0
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 216
      Top = 16
      Width = 65
      Height = 21
      KeyField = 'MG'
      ListField = 'MG1'
      ListSource = DataSource2
      TabOrder = 1
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 184
      Top = 51
      Width = 97
      Height = 21
      Enabled = False
      KeyField = 'KEY'
      ListField = 'REU'
      ListSource = DS_reu
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 16
      Top = 52
      Width = 113
      Height = 21
      KeyField = 'MENU_ID'
      ListField = 'NAME'
      ListSource = DS_perm_menu
      TabOrder = 3
      OnCloseUp = DBLookupComboBox3CloseUp
      OnKeyUp = DBLookupComboBox3KeyUp
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 83
    Width = 297
    Height = 49
    TabOrder = 1
    object Button4: TButton
      Left = 129
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Просмотр'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button1: TButton
      Left = 214
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Отмена'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object OD_reu_trest: TOracleDataSet
    SQL.Strings = (
      'select reu as key, reu from scott.s_reu_trest')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000002000000030000005245550100000000030000004B45590100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 8
    Top = 8
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      
        '  scott.generator.report_saldo_uslm2(:reu_, :trest_, :mg_, :mg1_' +
        ',  :kul_, :nd_, :psaldo_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000007000000050000003A5245555F050000000300000037330000000000
      070000003A54524553545F050000000000000000000000040000003A4D475F05
      000000070000003230303431310000000000050000003A4D47315F0500000007
      0000003230303431310000000000110000003A5053414C444F5F524546435552
      534F52740000000000000000000000050000003A4B554C5F0500000005000000
      303132390000000000040000003A4E445F050000000700000030303030313500
      00000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      030000000F00000007000000494E4445424554010000000008000000494E4B52
      4544495401000000000700000043484152474553010000000007000000434841
      4E4745530100000000070000005041594D454E54010000000002000000504E01
      00000000080000004F555444454245540100000000090000004F55544B524544
      49540100000000060000005355425349440100000000030000004E4D31010000
      0000040000005459504501000000000600000050524544505201000000000300
      00005245550100000000030000004B554C0100000000020000004E4401000000
      00}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 40
    Top = 8
  end
  object OracleDataSet2: TOracleDataSet
    SQL.Strings = (
      
        'select mg, substr(mg,5,2)||''/''||substr(mg,1,4) as mg1 from scott' +
        '.v_period_reports t where t.id=1'
      'order by mg desc'
      '')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {0300000002000000020000004D470100000000030000004D47310100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 72
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 104
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = OracleDataSet2
    Left = 136
    Top = 8
  end
  object DS_reu: TDataSource
    DataSet = OD_reu_trest
    Left = 168
    Top = 8
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 232
    Top = 8
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      
        'select mg, substr(mg,5,2)||''/''||substr(mg,1,4) as mg1 from scott' +
        '.v_period_reports t where t.id=1'
      'order by mg desc'
      '')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {0300000002000000020000004D470100000000030000004D47310100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 8
    Top = 40
  end
  object OD_perm_menu: TOracleDataSet
    SQL.Strings = (
      'select  menu_id, name from scott.v_permissions_menu2 t')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000002000000070000004D454E555F49440100000000040000004E414D45
      0100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 8
    Top = 72
  end
  object DS_perm_menu: TDataSource
    DataSet = OD_perm_menu
    Left = 8
    Top = 104
  end
  object OD_streets: TOracleDataSet
    SQL.Strings = (
      
        'select distinct s.id, s.name from scott.spul s,scott.v_permissio' +
        'ns_nd v'
      'where v.kul=s.id'
      'order by name')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      03000000020000000200000049440100000000040000004E414D450100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 8
    Top = 168
  end
  object DS_streets: TDataSource
    DataSet = OD_streets
    Left = 72
    Top = 168
  end
  object DS_houses: TDataSource
    Left = 104
    Top = 168
  end
  object prTxReport1: TprTxReport
    ShowProgress = True
    FromPage = 1
    ToPage = 1
    Values = <
      item
        Group = prTxReport1.prGroup_type
        Name = 'prIndebet_type'
        Formula = 'OD_data.INDEBET'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prIndebet_itog'
        Formula = 'OD_data.INDEBET'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prInkredit_type'
        Formula = 'OD_data.INKREDIT'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prInkredit_itog'
        Formula = 'OD_data.INKREDIT'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prCharges_type'
        Formula = 'OD_data.CHARGES'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prCharges_itog'
        Formula = 'OD_data.CHARGES'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prChanges_type'
        Formula = 'OD_data.CHANGES'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prSubsid_type'
        Formula = 'OD_data.SUBSID'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prSubsid_itog'
        Formula = 'OD_data.SUBSID'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prPayment_type'
        Formula = 'OD_data.PAYMENT'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prPayment_itog'
        Formula = 'OD_data.PAYMENT'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prOutdebet_type'
        Formula = 'OD_data.OUTDEBET'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prOutdebet_itog'
        Formula = 'OD_data.OUTDEBET'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prOutkredit_type'
        Formula = 'OD_data.OUTKREDIT'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prOutkredit_itog'
        Formula = 'OD_data.OUTKREDIT'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prPN_type'
        Formula = 'OD_data.PN'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prPN_itog'
        Formula = 'OD_data.PN'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end
      item
        Group = prTxReport1.prGroup_type
        Name = 'prChanges_itog'
        Formula = 'OD_data.CHANGES'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'OD_data'
        ResetDataSetName = 'OD_data'
      end>
    Variables = <>
    PrinterName = '\\FS02\Epson DFX-8000'
    EjectPageAfterPrint = False
    PaperType = ptRulon
    FromLine = 1
    ToLine = 30
    Left = 8
    Top = 136
    SystemInfo = (
      'OS: WIN32_NT 5.0.2195 Service Pack 4'
      ''
      'PageSize: 4096'
      'ActiveProcessorMask: $1000'
      'NumberOfProcessors: 1'
      'ProcessorType: 586'
      ''
      'Compiler version: Delphi7'
      'PReport version: 1.9.9')
    object prTxPage1: TprTxPage
      PageType = tptRoll
      ColNum = 164
      DefTxFontOptionsEx = (
        tfoCondensed)
      object prTxHTitleBand1: TprTxHTitleBand
        Height = 9
        object prTxMemoObj29: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'дата печати: [StartDateTime]')
              DefaultFont = True
            end>
          dRec.Left = 135
          dRec.Top = 0
          dRec.Right = 165
          dRec.Bottom = 1
        end
        object prTxMemoObj18: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  'Групповая оборотная ведомость по услугам за период с [OracleData' +
                  'Set1.MG1] по [OracleDataSet2.MG1] по [OD_data.predpr]')
              DefaultFont = True
            end>
          dRec.Left = 19
          dRec.Top = 3
          dRec.Right = 147
          dRec.Bottom = 4
        end
        object prTxMemoObj51: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'дебет')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 41
          dRec.Top = 7
          dRec.Right = 48
          dRec.Bottom = 8
        end
        object prTxMemoObj52: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'кредит'
                '')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 55
          dRec.Top = 7
          dRec.Right = 63
          dRec.Bottom = 8
        end
        object prTxMemoObj53: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'дебет')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 124
          dRec.Top = 7
          dRec.Right = 134
          dRec.Bottom = 8
        end
        object prTxMemoObj54: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'кредит'
                '')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 140
          dRec.Top = 7
          dRec.Right = 149
          dRec.Bottom = 8
        end
        object prTxMemoObj55: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Входящее сальдо')
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 44
          dRec.Top = 6
          dRec.Right = 62
          dRec.Bottom = 7
        end
        object prTxMemoObj56: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Исходящее сальдо')
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 129
          dRec.Top = 6
          dRec.Right = 147
          dRec.Bottom = 7
        end
        object prTxMemoObj57: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'начисление'
                '')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 67
          dRec.Top = 7
          dRec.Right = 77
          dRec.Bottom = 8
        end
        object prTxMemoObj58: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '(в т.ч. изменения)'
                '')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 79
          dRec.Top = 7
          dRec.Right = 95
          dRec.Bottom = 8
        end
        object prTxMemoObj59: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'субсидии'
                '')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 98
          dRec.Top = 7
          dRec.Right = 107
          dRec.Bottom = 8
        end
        object prTxMemoObj60: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'оплата'
                '')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 112
          dRec.Top = 7
          dRec.Right = 121
          dRec.Bottom = 8
        end
        object prTxMemoObj61: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Пеня')
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = True
            end>
          dRec.Left = 151
          dRec.Top = 7
          dRec.Right = 162
          dRec.Bottom = 8
        end
        object prTxMemoObj62: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '-------------------------')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 0
          dRec.Top = 8
          dRec.Right = 165
          dRec.Bottom = 9
        end
        object prTxMemoObj65: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '-------------------------')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 0
          dRec.Top = 5
          dRec.Right = 165
          dRec.Bottom = 6
        end
        object prTxMemoObj66: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|'
                '|')
              DefaultFont = True
            end>
          dRec.Left = 38
          dRec.Top = 6
          dRec.Right = 40
          dRec.Bottom = 8
        end
        object prTxMemoObj67: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|'
                '|')
              DefaultFont = True
            end>
          dRec.Left = 64
          dRec.Top = 6
          dRec.Right = 66
          dRec.Bottom = 8
        end
        object prTxMemoObj68: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|'
                '|')
              DefaultFont = True
            end>
          dRec.Left = 77
          dRec.Top = 6
          dRec.Right = 79
          dRec.Bottom = 8
        end
        object prTxMemoObj69: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|'
                '|')
              DefaultFont = True
            end>
          dRec.Left = 95
          dRec.Top = 6
          dRec.Right = 97
          dRec.Bottom = 8
        end
        object prTxMemoObj70: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|'
                '|')
              DefaultFont = True
            end>
          dRec.Left = 107
          dRec.Top = 6
          dRec.Right = 109
          dRec.Bottom = 8
        end
        object prTxMemoObj71: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|'
                '|')
              DefaultFont = True
            end>
          dRec.Left = 121
          dRec.Top = 6
          dRec.Right = 123
          dRec.Bottom = 8
        end
        object prTxMemoObj72: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|'
                '|')
              DefaultFont = True
            end>
          dRec.Left = 149
          dRec.Top = 6
          dRec.Right = 151
          dRec.Bottom = 8
        end
        object prTxMemoObj85: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Ora')
              DefaultFont = True
            end>
          dRec.Left = 3
          dRec.Top = 1
          dRec.Right = 13
          dRec.Bottom = 2
        end
      end
      object prTxHDetailBand1: TprTxHDetailBand
        Height = 1
        DataSetName = 'OD_data'
        ColCount = 1
        Groups = (
          'prGroup_type')
        object prTxMemoObj2: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.INKREDIT,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 52
          dRec.Top = 0
          dRec.Right = 66
          dRec.Bottom = 1
        end
        object prTxMemoObj3: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.CHARGES,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 66
          dRec.Top = 0
          dRec.Right = 80
          dRec.Bottom = 1
        end
        object prTxMemoObj4: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.CHANGES,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 80
          dRec.Top = 0
          dRec.Right = 94
          dRec.Bottom = 1
        end
        object prTxMemoObj5: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.PAYMENT,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 108
          dRec.Top = 0
          dRec.Right = 122
          dRec.Bottom = 1
        end
        object prTxMemoObj32: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.SUBSID,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 94
          dRec.Top = 0
          dRec.Right = 108
          dRec.Bottom = 1
        end
        object prTxMemoObj36: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.OUTDEBET,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 122
          dRec.Top = 0
          dRec.Right = 136
          dRec.Bottom = 1
        end
        object prTxMemoObj40: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.OUTKREDIT,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 136
          dRec.Top = 0
          dRec.Right = 150
          dRec.Bottom = 1
        end
        object prTxMemoObj41: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.PN,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 150
          dRec.Top = 0
          dRec.Right = 164
          dRec.Bottom = 1
        end
        object prTxMemoObj6: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_data.NM1]')
              DefaultFont = True
            end>
          dRec.Left = 14
          dRec.Top = 0
          dRec.Right = 38
          dRec.Bottom = 1
        end
        object prTxMemoObj1: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(OD_data.INDEBET,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 38
          dRec.Top = 0
          dRec.Right = 52
          dRec.Bottom = 1
        end
      end
      object prTxHSummaryBand1: TprTxHSummaryBand
        Height = 9
        object prTxMemoObj12: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'ИТОГО по отчету:')
              DefaultFont = True
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 17
          dRec.Bottom = 2
        end
        object prTxMemoObj15: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[Round(prIndebet_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 38
          dRec.Top = 1
          dRec.Right = 52
          dRec.Bottom = 2
        end
        object prTxMemoObj24: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prInkredit_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 52
          dRec.Top = 1
          dRec.Right = 66
          dRec.Bottom = 2
        end
        object prTxMemoObj35: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prSubsid_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 94
          dRec.Top = 1
          dRec.Right = 108
          dRec.Bottom = 2
        end
        object prTxMemoObj39: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prPayment_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 108
          dRec.Top = 1
          dRec.Right = 122
          dRec.Bottom = 2
        end
        object prTxMemoObj44: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prOutdebet_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 122
          dRec.Top = 1
          dRec.Right = 136
          dRec.Bottom = 2
        end
        object prTxMemoObj47: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prOutkredit_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 136
          dRec.Top = 1
          dRec.Right = 150
          dRec.Bottom = 2
        end
        object prTxMemoObj50: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prPN_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 150
          dRec.Top = 1
          dRec.Right = 164
          dRec.Bottom = 2
        end
        object prTxMemoObj27: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prChanges_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 80
          dRec.Top = 1
          dRec.Right = 94
          dRec.Bottom = 2
        end
        object prTxMemoObj31: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prCharges_itog,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 66
          dRec.Top = 1
          dRec.Right = 80
          dRec.Bottom = 2
        end
        object prTxMemoObj37: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog1.summa]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 65
          dRec.Top = 6
          dRec.Right = 79
          dRec.Bottom = 7
        end
        object prTxMemoObj42: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog1.name]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 41
          dRec.Top = 6
          dRec.Right = 64
          dRec.Bottom = 7
        end
        object prTxMemoObj45: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog2.summa]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 65
          dRec.Top = 7
          dRec.Right = 79
          dRec.Bottom = 8
        end
        object prTxMemoObj48: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog2.name]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 41
          dRec.Top = 7
          dRec.Right = 64
          dRec.Bottom = 8
        end
        object prTxMemoObj73: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog3.summa]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 65
          dRec.Top = 8
          dRec.Right = 79
          dRec.Bottom = 9
        end
        object prTxMemoObj74: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog3.name]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 41
          dRec.Top = 8
          dRec.Right = 64
          dRec.Bottom = 9
        end
        object prTxMemoObj75: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog4.summa]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 103
          dRec.Top = 6
          dRec.Right = 117
          dRec.Bottom = 7
        end
        object prTxMemoObj76: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog4.name]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 80
          dRec.Top = 6
          dRec.Right = 101
          dRec.Bottom = 7
        end
        object prTxMemoObj77: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog5.summa]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 103
          dRec.Top = 7
          dRec.Right = 117
          dRec.Bottom = 8
        end
        object prTxMemoObj78: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog5.name]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 80
          dRec.Top = 7
          dRec.Right = 101
          dRec.Bottom = 8
        end
        object prTxMemoObj79: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog6.summa]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 103
          dRec.Top = 8
          dRec.Right = 117
          dRec.Bottom = 9
        end
        object prTxMemoObj80: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog6.name]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 80
          dRec.Top = 8
          dRec.Right = 101
          dRec.Bottom = 9
        end
        object prTxMemoObj81: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Начисление на тек. содержание:')
              DefaultFont = True
            end>
          dRec.Left = 21
          dRec.Top = 4
          dRec.Right = 51
          dRec.Bottom = 5
        end
        object prTxMemoObj82: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'В т.ч.')
              DefaultFont = True
            end>
          dRec.Left = 25
          dRec.Top = 6
          dRec.Right = 32
          dRec.Bottom = 7
        end
        object prTxMemoObj83: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog7.summa]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 55
          dRec.Top = 4
          dRec.Right = 69
          dRec.Bottom = 5
        end
        object prTxMemoObj84: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_itog8.summa]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 103
          dRec.Top = 4
          dRec.Right = 117
          dRec.Bottom = 5
        end
        object prTxMemoObj8: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '-------------------------')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 166
          dRec.Bottom = 1
        end
        object prTxMemoObj9: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Субсидии на текущее содержание:')
              DefaultFont = True
            end>
          dRec.Left = 71
          dRec.Top = 4
          dRec.Right = 102
          dRec.Bottom = 5
        end
      end
      object prTxHGroupHeaderBand2: TprTxHGroupHeaderBand
        Height = 2
        Group = prTxReport1.prGroup_type
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        StartNewPage = False
        ReprintOnEachPage = False
        object prTxMemoObj63: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Услуги:')
              DefaultFont = True
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 8
          dRec.Bottom = 2
        end
        object prTxMemoObj64: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[OD_data.TYPE]')
              DefaultFont = True
            end>
          dRec.Left = 8
          dRec.Top = 1
          dRec.Right = 38
          dRec.Bottom = 2
        end
      end
      object prTxHGroupFooterBand1: TprTxHGroupFooterBand
        Height = 2
        Group = prTxReport1.prGroup_type
        object prTxMemoObj13: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prInkredit_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 52
          dRec.Top = 0
          dRec.Right = 66
          dRec.Bottom = 1
        end
        object prTxMemoObj17: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prChanges_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 80
          dRec.Top = 0
          dRec.Right = 94
          dRec.Bottom = 1
        end
        object prTxMemoObj20: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prSubsid_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 94
          dRec.Top = 0
          dRec.Right = 108
          dRec.Bottom = 1
        end
        object prTxMemoObj21: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prPayment_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 108
          dRec.Top = 0
          dRec.Right = 122
          dRec.Bottom = 1
        end
        object prTxMemoObj25: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prOutdebet_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 122
          dRec.Top = 0
          dRec.Right = 136
          dRec.Bottom = 1
        end
        object prTxMemoObj28: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prOutkredit_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 136
          dRec.Top = 0
          dRec.Right = 150
          dRec.Bottom = 1
        end
        object prTxMemoObj33: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prPN_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 150
          dRec.Top = 0
          dRec.Right = 164
          dRec.Bottom = 1
        end
        object prTxMemoObj16: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prCharges_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 66
          dRec.Top = 0
          dRec.Right = 80
          dRec.Bottom = 1
        end
        object prTxMemoObj11: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[round(prIndebet_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 38
          dRec.Top = 0
          dRec.Right = 52
          dRec.Bottom = 1
        end
        object prTxMemoObj7: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Итого по типу услуг:')
              DefaultFont = True
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 23
          dRec.Bottom = 1
        end
        object prTxMemoObj10: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Свернутое: [round(prIndebet_type,2)+round(prInkredit_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 38
          dRec.Top = 1
          dRec.Right = 66
          dRec.Bottom = 2
        end
        object prTxMemoObj14: TprTxMemoObj
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Свернутое: [round(prOutdebet_type,2)+round(prOutkredit_type,2)]')
              hAlign = prhRight
              DefaultFont = True
            end>
          dRec.Left = 122
          dRec.Top = 1
          dRec.Right = 150
          dRec.Bottom = 2
        end
      end
    end
    object prGroup_type: TprGroup
      Valid = 'OD_data.TYPE'
      DetailBand = prTxReport1.prTxHDetailBand1
    end
  end
  object OD_itog1: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_saldo_org_uslm_itog2 (type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      
        '                                       psaldo_refcursor => :psal' +
        'do_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000110000
      003A5053414C444F5F524546435552534F527400000000000000000000000600
      00003A545950455F0500000002000000300000000000060000003A55534C4B5F
      05000000040000003030330000000000050000003A4B554C5F05000000000000
      0000000000040000003A4E445F050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000011000000030000005245550100000000020000004E44010000000007
      000000494E4445424554010000000008000000494E4B52454449540100000000
      07000000434841524745530100000000070000004348414E4745530100000000
      070000005041594D454E54010000000002000000504E0100000000080000004F
      555444454245540100000000090000004F55544B524544495401000000000300
      00005543480100000000060000005355425349440100000000040000004E414D
      4501000000000500000054524553540100000000030000004E4D310100000000
      04000000545950450100000000060000005354524545540100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 8
    Top = 200
  end
  object OD_itog2: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      
        '                                       psaldo_refcursor => :psal' +
        'do_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000110000
      003A5053414C444F5F524546435552534F527400000000000000000000000600
      00003A545950455F0500000002000000300000000000060000003A55534C4B5F
      05000000040000003030320000000000050000003A4B554C5F05000000000000
      0000000000040000003A4E445F050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000011000000030000005245550100000000020000004E44010000000007
      000000494E4445424554010000000008000000494E4B52454449540100000000
      07000000434841524745530100000000070000004348414E4745530100000000
      070000005041594D454E54010000000002000000504E0100000000080000004F
      555444454245540100000000090000004F55544B524544495401000000000300
      00005543480100000000060000005355425349440100000000040000004E414D
      4501000000000500000054524553540100000000030000004E4D310100000000
      04000000545950450100000000060000005354524545540100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 8
    Top = 224
  end
  object OD_itog3: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      
        '                                       psaldo_refcursor => :psal' +
        'do_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000110000
      003A5053414C444F5F524546435552534F527400000000000000000000000600
      00003A545950455F0500000002000000300000000000060000003A55534C4B5F
      05000000040000003030340000000000050000003A4B554C5F05000000000000
      0000000000040000003A4E445F050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000011000000030000005245550100000000020000004E44010000000007
      000000494E4445424554010000000008000000494E4B52454449540100000000
      07000000434841524745530100000000070000004348414E4745530100000000
      070000005041594D454E54010000000002000000504E0100000000080000004F
      555444454245540100000000090000004F55544B524544495401000000000300
      00005543480100000000060000005355425349440100000000040000004E414D
      4501000000000500000054524553540100000000030000004E4D310100000000
      04000000545950450100000000060000005354524545540100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 8
    Top = 248
  end
  object OD_itog6: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      
        '                                       psaldo_refcursor => :psal' +
        'do_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000110000
      003A5053414C444F5F524546435552534F527400000000000000000000000600
      00003A545950455F0500000002000000310000000000060000003A55534C4B5F
      05000000040000003030340000000000050000003A4B554C5F05000000000000
      0000000000040000003A4E445F050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000011000000030000005245550100000000020000004E44010000000007
      000000494E4445424554010000000008000000494E4B52454449540100000000
      07000000434841524745530100000000070000004348414E4745530100000000
      070000005041594D454E54010000000002000000504E0100000000080000004F
      555444454245540100000000090000004F55544B524544495401000000000300
      00005543480100000000060000005355425349440100000000040000004E414D
      4501000000000500000054524553540100000000030000004E4D310100000000
      04000000545950450100000000060000005354524545540100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 48
    Top = 248
  end
  object OD_itog5: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      
        '                                       psaldo_refcursor => :psal' +
        'do_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000110000
      003A5053414C444F5F524546435552534F527400000000000000000000000600
      00003A545950455F0500000002000000310000000000060000003A55534C4B5F
      05000000040000003030320000000000050000003A4B554C5F05000000000000
      0000000000040000003A4E445F050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000011000000030000005245550100000000020000004E44010000000007
      000000494E4445424554010000000008000000494E4B52454449540100000000
      07000000434841524745530100000000070000004348414E4745530100000000
      070000005041594D454E54010000000002000000504E0100000000080000004F
      555444454245540100000000090000004F55544B524544495401000000000300
      00005543480100000000060000005355425349440100000000040000004E414D
      4501000000000500000054524553540100000000030000004E4D310100000000
      04000000545950450100000000060000005354524545540100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 48
    Top = 224
  end
  object OD_itog4: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      
        '                                       psaldo_refcursor => :psal' +
        'do_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000110000
      003A5053414C444F5F524546435552534F527400000000000000000000000600
      00003A545950455F0500000002000000310000000000060000003A55534C4B5F
      05000000040000003030330000000000050000003A4B554C5F05000000000000
      0000000000040000003A4E445F050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000011000000030000005245550100000000020000004E44010000000007
      000000494E4445424554010000000008000000494E4B52454449540100000000
      07000000434841524745530100000000070000004348414E4745530100000000
      070000005041594D454E54010000000002000000504E0100000000080000004F
      555444454245540100000000090000004F55544B524544495401000000000300
      00005543480100000000060000005355425349440100000000040000004E414D
      4501000000000500000054524553540100000000030000004E4D310100000000
      04000000545950450100000000060000005354524545540100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 48
    Top = 200
  end
  object OD_itog7: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      
        '                                       psaldo_refcursor => :psal' +
        'do_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000110000
      003A5053414C444F5F524546435552534F527400000000000000000000000600
      00003A545950455F0500000002000000300000000000060000003A55534C4B5F
      05000000040000003030310000000000050000003A4B554C5F05000000000000
      0000000000040000003A4E445F050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000003000000040000004E414D4501000000000500000053554D4D410100
      0000000600000053554D4D41320100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 80
    Top = 224
  end
  object OD_itog8: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.generator.report_saldo_org_uslm_itog2(type_ => :type_,'
      '                                       reu_ => :reu_,'
      '                                       trest_ => :trest_,'
      '                                       uslk_ => :uslk_,'
      '                                       mg_ => :mg_,'
      '                                       mg1_ => :mg1_,'
      '                                        kul_ => :kul_,'
      '                                        nd_ => :nd_,'
      
        '                                       psaldo_refcursor => :psal' +
        'do_refcursor);'
      'end;')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000009000000050000003A5245555F050000000000000000000000070000
      003A54524553545F050000000000000000000000040000003A4D475F05000000
      0000000000000000050000003A4D47315F050000000000000000000000110000
      003A5053414C444F5F524546435552534F527400000000000000000000000600
      00003A545950455F0500000002000000310000000000060000003A55534C4B5F
      05000000040000003030310000000000050000003A4B554C5F05000000000000
      0000000000040000003A4E445F050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000011000000030000005245550100000000020000004E44010000000007
      000000494E4445424554010000000008000000494E4B52454449540100000000
      07000000434841524745530100000000070000004348414E4745530100000000
      070000005041594D454E54010000000002000000504E0100000000080000004F
      555444454245540100000000090000004F55544B524544495401000000000300
      00005543480100000000060000005355425349440100000000040000004E414D
      4501000000000500000054524553540100000000030000004E4D310100000000
      04000000545950450100000000060000005354524545540100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 80
    Top = 248
  end
  object frxDBData3: TfrxDBDataset
    UserName = 'frxDBData3'
    CloseDataSource = False
    DataSet = OD_data
    Left = 40
    Top = 120
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\DOCUME~1\LEV~1.ADM\LOCALS~1\Temp\fr9A.tmp'
    EscModel = 1
    GraphicFrames = False
    PageBreaks = False
    SaveToFile = False
    UseIniSettings = True
    Left = 72
    Top = 120
  end
  object frxReport2: TfrxReport
    DotMatrixReport = True
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 38338.635741516200000000
    ReportOptions.LastChange = 38345.611818402780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 120
    Datasets = <
      item
        DataSet = frxDBData3
        DataSetName = 'frxDBData3'
      end
      item
        DataSet = frxDBData_uslk
        DataSetName = 'frxDBData_uslk'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxDMPPage
      PaperWidth = 355.599770341815000000
      PaperHeight = 296.862308276425900000
      PaperSize = 256
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      FontStyle = []
      object GroupHeader1: TfrxGroupHeader
        Height = 34.000000000000000000
        Top = 187.000000000000000000
        Width = 1324.800000000000000000
        Condition = 'frxDBData3."PREDPR"'
        object DMPMemo1: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 393.600000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          FontStyle = [fsxBold, fsxCondensed]
          Memo.Strings = (
            'По: [frxDBData3."PREDPR"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 34.000000000000000000
        Top = 238.000000000000000000
        Width = 1324.800000000000000000
        Condition = 'frxDBData3."TYPE"'
        object DMPMemo2: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'Услуги: [frxDBData3."TYPE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.000000000000000000
        Top = 289.000000000000000000
        Width = 1324.800000000000000000
        DataSet = frxDBData3
        DataSetName = 'frxDBData3'
        RowCount = 0
        object DMPMemo3: TfrxDMPMemoView
          ShiftMode = smDontShift
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '     [frxDBData3."NM1"]')
          ParentFont = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Left = 355.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."INDEBET"]')
          ParentFont = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 460.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."INKREDIT"]')
          ParentFont = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 566.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."CHARGES"]')
          ParentFont = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 672.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."CHANGES"]')
          ParentFont = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 777.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."SUBSID"]')
          ParentFont = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 883.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."PAYMENT"]')
          ParentFont = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 988.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."OUTDEBET"]')
          ParentFont = False
        end
        object DMPMemo11: TfrxDMPMemoView
          Left = 1094.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."OUTKREDIT"]')
          ParentFont = False
        end
        object DMPMemo12: TfrxDMPMemoView
          Left = 1200.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[frxDBData3."PN"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 17.000000000000000000
        Top = 323.000000000000000000
        Width = 1324.800000000000000000
        object DMPMemo13: TfrxDMPMemoView
          Left = 355.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."INDEBET">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo14: TfrxDMPMemoView
          Left = 460.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."INKREDIT">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo15: TfrxDMPMemoView
          Left = 566.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."CHARGES">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo16: TfrxDMPMemoView
          ShiftMode = smDontShift
          Width = 355.200000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'Итого по типу услуг:')
          ParentFont = False
          WordWrap = False
        end
        object DMPMemo17: TfrxDMPMemoView
          Left = 672.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."CHANGES">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo18: TfrxDMPMemoView
          Left = 777.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."SUBSID">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo19: TfrxDMPMemoView
          Left = 883.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."PAYMENT">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo20: TfrxDMPMemoView
          Left = 988.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."OUTDEBET">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Left = 1094.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."OUTKREDIT">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo22: TfrxDMPMemoView
          Left = 1200.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."PN">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 221.000000000000000000
        Top = 510.000000000000000000
        Width = 1324.800000000000000000
        Stretched = True
        object DMPMemo29: TfrxDMPMemoView
          Left = 940.800000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."OUTDEBET">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo30: TfrxDMPMemoView
          Left = 1046.400000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."OUTKREDIT">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo31: TfrxDMPMemoView
          Left = 1152.000000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."PN">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo23: TfrxDMPMemoView
          Left = 307.200000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."INDEBET">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo24: TfrxDMPMemoView
          Left = 412.800000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."INKREDIT">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo25: TfrxDMPMemoView
          Left = 518.400000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."CHARGES">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo26: TfrxDMPMemoView
          Left = 624.000000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."CHANGES">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo27: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."SUBSID">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo28: TfrxDMPMemoView
          Left = 835.200000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          FontStyle = [fsxCondensed]
          HAlign = haRight
          Memo.Strings = (
            '[SUM(<frxDBData3."PAYMENT">,MasterData1)]')
          ParentFont = False
        end
        object DMPMemo32: TfrxDMPMemoView
          ShiftMode = smDontShift
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 268.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'Итого по отчету:')
          ParentFont = False
          WordWrap = False
        end
        object DMPLine1: TfrxDMPLineView
          Left = 14.400000000000000000
          Top = 8.500000000000000000
          Width = 1304.000000000000000000
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo38: TfrxDMPMemoView
          Left = 259.200000000000000000
          Top = 68.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'Начисление на тек. содержание:')
          ParentFont = False
        end
        object DMPMemo39: TfrxDMPMemoView
          Left = 566.400000000000000000
          Top = 68.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[summa7]')
          ParentFont = False
        end
        object DMPMemo40: TfrxDMPMemoView
          Left = 710.400000000000000000
          Top = 68.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'Субсидии на тек. содержание:')
          ParentFont = False
        end
        object DMPMemo41: TfrxDMPMemoView
          Left = 1017.600000000000000000
          Top = 68.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[summa8]')
          ParentFont = False
        end
        object DMPMemo42: TfrxDMPMemoView
          Left = 172.800000000000000000
          Top = 102.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'В т.ч.')
          ParentFont = False
        end
        object DMPMemo43: TfrxDMPMemoView
          Left = 259.200000000000000000
          Top = 102.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[name1]')
          ParentFont = False
        end
        object DMPMemo44: TfrxDMPMemoView
          Left = 566.400000000000000000
          Top = 102.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[summa1]')
          ParentFont = False
        end
        object DMPMemo45: TfrxDMPMemoView
          Left = 259.200000000000000000
          Top = 119.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[name2]')
          ParentFont = False
        end
        object DMPMemo46: TfrxDMPMemoView
          Left = 566.400000000000000000
          Top = 119.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[summa2]')
          ParentFont = False
        end
        object DMPMemo47: TfrxDMPMemoView
          Left = 259.200000000000000000
          Top = 136.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[name3]')
          ParentFont = False
        end
        object DMPMemo48: TfrxDMPMemoView
          Left = 566.400000000000000000
          Top = 136.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[summa3]')
          ParentFont = False
        end
        object DMPMemo49: TfrxDMPMemoView
          Left = 710.400000000000000000
          Top = 102.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[name4]')
          ParentFont = False
        end
        object DMPMemo50: TfrxDMPMemoView
          Left = 1017.600000000000000000
          Top = 102.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[summa4]')
          ParentFont = False
        end
        object DMPMemo51: TfrxDMPMemoView
          Left = 710.400000000000000000
          Top = 119.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[name5]')
          ParentFont = False
        end
        object DMPMemo52: TfrxDMPMemoView
          Left = 1017.600000000000000000
          Top = 119.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[summa5]')
          ParentFont = False
        end
        object DMPMemo53: TfrxDMPMemoView
          Left = 710.400000000000000000
          Top = 136.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[name6]')
          ParentFont = False
        end
        object DMPMemo54: TfrxDMPMemoView
          Left = 1017.600000000000000000
          Top = 136.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[summa6]')
          ParentFont = False
        end
        object DMPMemo55: TfrxDMPMemoView
          Left = 172.800000000000000000
          Top = 119.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo56: TfrxDMPMemoView
          Left = 172.800000000000000000
          Top = 136.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo80: TfrxDMPMemoView
          Left = 172.800000000000000000
          Top = 68.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 136.000000000000000000
        Top = 17.000000000000000000
        Width = 1324.800000000000000000
        Stretched = True
        object DMPMemo34: TfrxDMPMemoView
          Left = 297.600000000000000000
          Top = 85.000000000000000000
          Width = 1296.000000000000000000
          Height = 17.000000000000000000
          AutoWidth = True
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            
              '      |      Входящее сальдо | начисление |в т.ч.изме- | субсиди' +
              'и | оплата |    Исходящее сальдо |   Пеня     |')
          ParentFont = False
          WordWrap = False
        end
        object DMPLine2: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 127.500000000000000000
          Width = 1304.000000000000000000
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPLine3: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 76.500000000000000000
          Width = 1304.000000000000000000
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo33: TfrxDMPMemoView
          ShiftMode = smDontShift
          Left = 297.600000000000000000
          Top = 102.000000000000000000
          Width = 1296.000000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            
              '      |     дебет     кредит |            |нения       |        ' +
              '  |        |    дебет     кредит |            |')
          ParentFont = False
          WordWrap = False
        end
        object DMPMemo35: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 85.000000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo36: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 102.000000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData3
          DataSetName = 'frxDBData3'
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo37: TfrxDMPMemoView
          Top = 34.000000000000000000
          Width = 1065.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Memo.Strings = (
            
              '                                     Групповая оборотная ведомос' +
              'ть по услугам за период с [mg1] по [mg2] ')
          ParentFont = False
        end
        object DMPMemo79: TfrxDMPMemoView
          Left = 998.400000000000000000
          Width = 316.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'Дата печати: [Date] [Time]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 119.000000000000000000
        Top = 357.000000000000000000
        Width = 1324.800000000000000000
        object DMPMemo57: TfrxDMPMemoView
          Left = 326.400000000000000000
          Top = 17.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."NAME7"]')
          ParentFont = False
        end
        object DMPMemo58: TfrxDMPMemoView
          Left = 518.400000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."SUMMA7"]')
          ParentFont = False
        end
        object DMPMemo59: TfrxDMPMemoView
          Left = 307.200000000000000000
          Top = 51.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."NAME1"]')
          ParentFont = False
        end
        object DMPMemo60: TfrxDMPMemoView
          Left = 518.400000000000000000
          Top = 51.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."SUMMA1"]')
          ParentFont = False
        end
        object DMPMemo61: TfrxDMPMemoView
          Left = 192.000000000000000000
          Top = 17.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'Начисление на ')
          ParentFont = False
        end
        object DMPMemo62: TfrxDMPMemoView
          Left = 192.000000000000000000
          Top = 34.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo63: TfrxDMPMemoView
          Left = 240.000000000000000000
          Top = 51.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'В т.ч.')
          ParentFont = False
        end
        object DMPMemo64: TfrxDMPMemoView
          Left = 307.200000000000000000
          Top = 68.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."NAME2"]')
          ParentFont = False
        end
        object DMPMemo65: TfrxDMPMemoView
          Left = 518.400000000000000000
          Top = 68.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."SUMMA2"]')
          ParentFont = False
        end
        object DMPMemo66: TfrxDMPMemoView
          Left = 307.200000000000000000
          Top = 85.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."NAME3"]')
          ParentFont = False
        end
        object DMPMemo67: TfrxDMPMemoView
          Left = 518.400000000000000000
          Top = 85.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."SUMMA3"]')
          ParentFont = False
        end
        object DMPMemo68: TfrxDMPMemoView
          Left = 720.000000000000000000
          Top = 17.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."NAME7"]')
          ParentFont = False
        end
        object DMPMemo69: TfrxDMPMemoView
          Left = 912.000000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."SUMMA8"]')
          ParentFont = False
        end
        object DMPMemo70: TfrxDMPMemoView
          Left = 681.600000000000000000
          Top = 51.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."NAME1"]')
          ParentFont = False
        end
        object DMPMemo71: TfrxDMPMemoView
          Left = 912.000000000000000000
          Top = 51.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."SUMMA4"]')
          ParentFont = False
        end
        object DMPMemo72: TfrxDMPMemoView
          Left = 681.600000000000000000
          Top = 68.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."NAME2"]')
          ParentFont = False
        end
        object DMPMemo73: TfrxDMPMemoView
          Left = 912.000000000000000000
          Top = 68.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."SUMMA5"]')
          ParentFont = False
        end
        object DMPMemo74: TfrxDMPMemoView
          Left = 681.600000000000000000
          Top = 85.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."NAME3"]')
          ParentFont = False
        end
        object DMPMemo75: TfrxDMPMemoView
          Left = 912.000000000000000000
          Top = 85.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            '[frxDBData_uslk."SUMMA6"]')
          ParentFont = False
        end
        object DMPMemo76: TfrxDMPMemoView
          Left = 604.800000000000000000
          Top = 17.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          Memo.Strings = (
            'Субсидии на ')
          ParentFont = False
        end
        object DMPMemo77: TfrxDMPMemoView
          Left = 240.000000000000000000
          Top = 68.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
        object DMPMemo78: TfrxDMPMemoView
          Left = 240.000000000000000000
          Top = 85.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBData_uslk
          DataSetName = 'frxDBData_uslk'
          FontStyle = [fsxCondensed]
          ParentFont = False
        end
      end
    end
  end
  object OD_uslk: TOracleDataSet
    SQL.Strings = (
      
        'select round(sum(t.charges * a.summa/b.summa),2) as summa2, c.na' +
        'me as name2,'
      
        '       round(sum(t.charges * d.summa/b.summa),2) as summa1, e.na' +
        'me as name1,'
      
        '       round(sum(t.charges * f.summa/b.summa),2) as summa3, f.na' +
        'me as name3,'
      '       round(sum(t.subsid  * a.summa/b.summa),2) as summa5, '
      '       round(sum(t.subsid  * d.summa/b.summa),2) as summa4, '
      '       round(sum(t.subsid  * f.summa/b.summa),2) as summa6, '
      '       round(sum(t.charges ),2) as summa7, g.name as name7,'
      '       round(sum(t.subsid  ),2) as summa8, '
      '       t.reu, t.kul, t.nd'
      '          from scott.xitog2 t,'
      '          (select p.mg, p.summa from scott.prices_uslk p'
      '          where p.uslk=''002'') a,'
      '          (select p.mg, p.summa from scott.prices_uslk p'
      '          where p.uslk=''001'') b,'
      '          (select p.mg, p.summa from scott.prices_uslk p'
      '          where p.uslk=''003'') d,'
      '          (select p.mg, p.summa from scott.prices_uslk p'
      '          where p.uslk=''004'') f,'
      '          (select name from scott.uslk u where u.uslk=''002'') c,'
      '          (select name from scott.uslk u where u.uslk=''003'') e,'
      '          (select name from scott.uslk u where u.uslk=''004'') f,'
      '          (select name from scott.uslk u where u.uslk=''001'') g'
      
        '          where t.mg=a.mg and t.mg=b.mg and t.mg=d.mg and t.mg=f' +
        '.mg'
      '          and t.mg between :mg_ and :mg1_'
      '          and t.uslm=''002'''
      '          and t.reu=:reu and t.kul=:kul and t.nd=:nd and '
      '          exists (select * from scott.list_choices l '
      
        '               where l.reu=t.reu and l.kul=t.kul and l.nd=t.nd a' +
        'nd l.sel=0) '
      
        '          group by c.name, e.name, f.name, g.name, t.reu, t.kul,' +
        ' t.nd')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    Variables.Data = {
      0300000005000000040000003A52455505000000000000000000000004000000
      3A4B554C050000000000000000000000030000003A4E44050000000000000000
      000000040000003A4D475F050000000000000000000000050000003A4D47315F
      050000000000000000000000}
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      030000000F000000030000005245550100000000030000004B554C0100000000
      020000004E4401000000000600000053554D4D41320100000000050000004E41
      4D453201000000000600000053554D4D41310100000000050000004E414D4531
      01000000000600000053554D4D41330100000000050000004E414D4533010000
      00000600000053554D4D413501000000000600000053554D4D41340100000000
      0600000053554D4D413601000000000600000053554D4D413701000000000500
      00004E414D453701000000000600000053554D4D41380100000000}
    Cursor = crDefault
    Master = OD_data
    MasterFields = 'REU;KUL;ND'
    ReadOnly = False
    LockingMode = lmCheckImmediate
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = True
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 40
    Top = 72
  end
  object frxDBData_uslk: TfrxDBDataset
    UserName = 'frxDBData_uslk'
    CloseDataSource = False
    DataSet = OD_uslk
    Left = 72
    Top = 91
  end
  object OD_list_choice: TOracleDataSet
    SQL.Strings = (
      'select * from scott.list_choices where sel=0')
    ReadBuffer = 25
    Optimize = True
    Debug = False
    StringFieldsOnly = False
    SequenceField.ApplyMoment = amOnPost
    OracleDictionary.EnforceConstraints = False
    OracleDictionary.UseMessageTable = False
    OracleDictionary.DefaultValues = False
    OracleDictionary.DynamicDefaults = False
    OracleDictionary.FieldKinds = False
    OracleDictionary.DisplayFormats = False
    OracleDictionary.RangeValues = False
    OracleDictionary.RequiredFields = True
    QBEDefinition.SaveQBEValues = True
    QBEDefinition.AllowFileWildCards = True
    QBEDefinition.QBEFontColor = clNone
    QBEDefinition.QBEBackgroundColor = clNone
    QBEDefinition.QBEFieldDefs = {
      0300000004000000030000005245550100000000020000004E44010000000003
      00000053454C0100000000030000004B554C0100000000}
    Cursor = crDefault
    ReadOnly = False
    LockingMode = lmNone
    QueryAllRecords = True
    CountAllRecords = False
    RefreshOptions = []
    CommitOnPost = False
    CachedUpdates = False
    QBEMode = False
    Session = DataModule1.OracleSession1
    DesignActivation = False
    Active = False
    Left = 24
    Top = 160
  end
end
