object DM_Bill2: TDM_Bill2
  OldCreateOrder = False
  Left = 885
  Top = 160
  Height = 844
  Width = 489
  object OD_mg: TOracleDataSet
    SQL.Strings = (
      
        'select mg, substr(mg,1,4)||'#39'-'#39'||substr(mg,5,2)||'#39' '#1075'.'#39' as mg1 fro' +
        'm scott.v_period_reports t '
      'where t.cd='#39'12'#39
      'order by mg desc'
      ''
      '/*'
      
        'select mg, scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t '
      'where t.cd='#39'12'#39
      'order by mg desc'
      ''
      '*/')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 32
  end
  object OD_mg1: TOracleDataSet
    SQL.Strings = (
      
        'select mg, substr(mg,1,4)||'#39'-'#39'||substr(mg,5,2)||'#39' '#1075'.'#39' as mg1 fro' +
        'm scott.v_period_reports t '
      'where t.cd='#39'12'#39
      'order by mg desc'
      '/*'
      
        'select mg, scott.utils.MONTH_NAME(substr(mg,5,2))||'#39' '#39'||substr(m' +
        'g,1,4)||'#39' '#1075'.'#39' as mg1 from scott.v_period_reports t '
      'where t.cd='#39'12'#39
      'order by mg desc'
      ''
      '*/')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 88
  end
  object DS_mg: TDataSource
    DataSet = OD_mg
    Left = 88
    Top = 32
  end
  object DS_mg1: TDataSource
    DataSet = OD_mg1
    Left = 88
    Top = 88
  end
  object OD_streets: TOracleDataSet
    SQL.Strings = (
      'select id, name as street from scott.spul'
      'order by name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000060000005354524545540100
      00000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 24
    Top = 248
  end
  object DS_streets: TDataSource
    DataSet = OD_streets
    Left = 88
    Top = 248
  end
  object OD_houses: TOracleDataSet
    SQL.Strings = (
      'select distinct scott.utils.f_order(null,6) as ord1,'
      '       scott.utils.f_order2(null) as ord2,'
      '       null as reu,'
      '       null as kul,'
      '       null as nd,'
      '       null as nd_id,'
      '       null as house_id'
      '  from dual'
      'union all'
      'select distinct scott.utils.f_order(k.nd,6) as ord1,'
      '                scott.utils.f_order2(k.nd) as ord2,'
      '                a.reu as reu,'
      '                a.kul as kul,'
      '                LTRIM(k.nd, '#39'0'#39') || '#39' '#39' || s.name_reu as nd,'
      '                k.nd as nd_id,'
      '                k.id as house_id'
      '  from scott.c_houses k, scott.kart a, scott.s_reu_trest s'
      ' where k.kul = :id'
      '   and a.reu = s.reu'
      '   and a.house_id=k.id'
      '   and (:var = 1 and nvl(k.psch, 0) <> 1 or :var = 0)'
      ' order by ord1, ord2')
    Optimize = False
    Variables.Data = {
      0300000002000000030000003A49440500000005000000303135310000000000
      040000003A56415203000000040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000007000000020000004E44010000000000050000004E445F4944010000
      0000000300000052455501000000000008000000484F5553455F494401000000
      0000040000004F524431010000000000040000004F5244320100000000000300
      00004B554C010000000000}
    Master = OD_streets
    MasterFields = 'ID'
    DetailFields = 'ID'
    Session = DataModule1.OracleSession1
    Detachable = True
    Left = 24
    Top = 304
  end
  object DS_houses: TDataSource
    DataSet = OD_houses
    Left = 88
    Top = 304
  end
  object OD_kw: TOracleDataSet
    SQL.Strings = (
      'select scott.utils.f_order(null, 7) as ord1,'
      '       scott.utils.f_order2(null) as ord2,'
      '       null as kw,'
      '       null as lsk,'
      '       null as kw_id,'
      '       null as fio,'
      '       null as c_lsk_id,'
      '       null as k_lsk_id,'
      '       null as kpr,'
      '       null as opl'
      '  from dual'
      'union all'
      'select distinct scott.utils.f_order(k.kw, 7) as ord1,'
      '       scott.utils.f_order2(k.kw) as ord2,'
      
        '       LTRIM(k.kw, '#39'0'#39')||'#39'    '#39'||  '#39#1092'.'#1083#1080#1094'.:'#39'||to_char(k.k_lsk_id' +
        ')'
      
        '    /* case when lag(k.kw,1) over (order by k.reu, k.house_id, s' +
        'cott.utils.f_order(k.kw, 7), scott.utils.f_order2(k.kw))=k.kw or' +
        ' '
      
        '                     lead(k.kw,1) over (order by k.reu, k.house_' +
        'id, scott.utils.f_order(k.kw, 7), scott.utils.f_order2(k.kw))=k.' +
        'kw then '#39#1092'.'#1083#1080#1094'.:'#39'||to_char(k.k_lsk_id) else '#39#39' end as kw*/,'
      '       k.lsk as lsk,'
      '       k.kw as kw_id,'
      '       null as fio,'
      '       null as c_lsk_id,'
      '       k.k_lsk_id,'
      '       null as kpr,'
      '       null as opl'
      
        '--       s.name || '#39', '#39' || nvl(ltrim(k.nd, '#39'0'#39'), '#39'0'#39') || '#39'-'#39' ||n' +
        'vl(ltrim(k.kw, '#39'0'#39'), '#39'0'#39') as adr'
      '  from scott.kart k, scott.v_lsk_tp tp--, scott.spul s'
      
        ' where k.reu=:reu and k.kul=:kul and k.nd=:nd_id-- and k.kul=s.i' +
        'd'
      '-- where k.house_id = :house_id'
      'and k.fk_tp=tp.id'
      ' order by ord1, ord2')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A52455505000000000000000000000004000000
      3A4B554C050000000000000000000000060000003A4E445F4944050000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A000000020000004B57010000000000050000004B575F4944010000
      000000030000004C534B0100000000000300000046494F010000000000080000
      00435F4C534B5F4944010000000000080000004B5F4C534B5F49440100000000
      00030000004B5052010000000000030000004F504C010000000000040000004F
      524431010000000000040000004F524432010000000000}
    Master = OD_houses
    MasterFields = 'reu;kul;nd_id'
    DetailFields = 'reu;kul;nd_id'
    Session = DataModule1.OracleSession1
    Left = 24
    Top = 352
  end
  object DS_kw: TDataSource
    DataSet = OD_kw
    Left = 88
    Top = 352
  end
  object OD_main: TOracleDataSet
    SQL.Strings = (
      'begin'
      ''
      ' scott.rep_bills.main(p_sel_obj => :sel_obj_,'
      '                 p_reu => :reu_,'
      '                 p_kul => :kul_,'
      '                 p_nd => :nd_,'
      '                 p_kw => :kw_,'
      '                 p_lsk => :lsk_,'
      '                 p_lsk1 => :lsk1_,'
      '                 p_firstrec => :first_rec_,'
      '                 p_lastrec => :last_rec_,'
      '                 p_var2 => :var2_,'
      '                 p_var3 => :var3_,'
      '                 p_cntrec => :cnt_rec_,'
      '                 p_mg => :mg_,'
      '                 p_rfcur => :p_rfcur);'
      ''
      'end;')
    ReadBuffer = 250
    Optimize = False
    Variables.Data = {
      030000000E000000050000003A4B554C5F050000000000000000000000040000
      003A4E445F050000000000000000000000050000003A4C534B5F050000000900
      000030313030303031370000000000060000003A4C534B315F05000000090000
      0030313030303031370000000000040000003A4B575F05000000000000000000
      0000060000003A564152325F030000000000000000000000040000003A4D475F
      050000000000000000000000090000003A53454C5F4F424A5F03000000000000
      0000000000050000003A5245555F050000000000000000000000090000003A43
      4E545F5245435F0300000000000000000000000B0000003A46495253545F5245
      435F0300000000000000000000000A0000003A4C4153545F5245435F03000000
      0000000000000000060000003A564152335F0300000000000000000000000800
      00003A505F5246435552740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000037000000030000004C534B010000000000020000004D470100000000
      000800000046494F5F4B41535301000000000003000000414452010000000000
      030000004B5052010000000000060000004B50525F5752010000000000060000
      004B50525F4F540100000000000700000053545F4E414D450100000000000300
      0000504857010000000000030000005047570100000000000300000050454C01
      0000000000080000005048575F4241434B010000000000080000005047575F42
      41434B0100000000000800000050454C5F4241434B010000000000030000004D
      454C010000000000030000004D4857010000000000030000004D475701000000
      0000060000004D475F5354520100000000000300000044543101000000000003
      00000044543201000000000008000000484F5553455F49440100000000000300
      00005245550100000000000D000000524153434845545F534348455401000000
      00000200000051520100000000000700000053414C5F4F555401000000000004
      00000041445232010000000000050000004B5F46414D01000000000004000000
      4B5F494D010000000000040000004B5F4F5401000000000003000000494E4E01
      0000000000070000004B5F53434845540100000000000300000042494B010000
      0000000400000042414E4B0100000000000900000046554C4C5F4E414D450100
      000000000400000050534348010000000000060000004C534B5F545001000000
      00000700000050524E5F4E554D0100000000000700000050524E5F4E45570100
      000000000A0000004C534B5F54505F4E5050010000000000070000004B50525F
      57525001000000000007000000504552535F5450010000000000050000005048
      4F4E45010000000000070000004144525F4F5247010000000000030000004649
      4F0100000000000800000050454E59415F494E0100000000000A00000050454E
      59415F434852470100000000000A00000050454E59415F434F52520100000000
      000900000050454E59415F5041590100000000000900000050454E59415F4F55
      540100000000000E00000050454E59415F434852475F49544701000000000003
      0000004F504C010000000000030000004D473201000000000003000000504159
      010000000000090000004C4153545F4454454B010000000000080000004B5F4C
      534B5F4944010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 160
    Top = 32
  end
  object frxDB_main: TfrxDBDataset
    UserName = 'frxDB_main'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK=LSK'
      'K_LSK_ID=K_LSK_ID'
      'OPL=OPL'
      'MG2=MG2'
      'KPR=KPR'
      'KPR_WR=KPR_WR'
      'KPR_WRP=KPR_WRP'
      'KPR_OT=KPR_OT'
      'ST_NAME=ST_NAME'
      'PERS_TP=PERS_TP'
      'ADR=ADR'
      'ADR2=ADR2'
      'PHW=PHW'
      'PGW=PGW'
      'PEL=PEL'
      'PHW_BACK=PHW_BACK'
      'PGW_BACK=PGW_BACK'
      'PEL_BACK=PEL_BACK'
      'MEL=MEL'
      'MHW=MHW'
      'MGW=MGW'
      'FIO_KASS=FIO_KASS'
      'MG=MG'
      'MG_STR=MG_STR'
      'DT1=DT1'
      'DT2=DT2'
      'HOUSE_ID=HOUSE_ID'
      'REU=REU'
      'RASCHET_SCHET=RASCHET_SCHET'
      'SAL_OUT=SAL_OUT'
      'K_FAM=K_FAM'
      'K_IM=K_IM'
      'K_OT=K_OT'
      'FIO=FIO'
      'INN=INN'
      'K_SCHET=K_SCHET'
      'BIK=BIK'
      'BANK=BANK'
      'FULL_NAME=FULL_NAME'
      'PHONE=PHONE'
      'ADR_ORG=ADR_ORG'
      'PSCH=PSCH'
      'LSK_TP=LSK_TP'
      'LSK_TP_NPP=LSK_TP_NPP'
      'PRN_NUM=PRN_NUM'
      'PRN_NEW=PRN_NEW'
      'PENYA_IN=PENYA_IN'
      'PENYA_CHRG=PENYA_CHRG'
      'PENYA_CORR=PENYA_CORR'
      'PENYA_CHRG_ITG=PENYA_CHRG_ITG'
      'PENYA_PAY=PENYA_PAY'
      'PENYA_OUT=PENYA_OUT'
      'PAY=PAY'
      'LAST_DTEK=LAST_DTEK'
      'QR=QR')
    DataSet = OD_main
    BCDToCurrency = False
    Left = 224
    Top = 32
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      
        'select '#39#1089' '#39'||mg1 as mg1,substr(mg,1,4)||'#39'-'#39'||substr(mg,5,2) as m' +
        'g2, mg, k_lsk_id, lsk, '
      
        ' streetname, fio, monthyear, status, psch, phw, pgw, pel, kul, o' +
        'pl, '
      
        ' pldop, kpr, kpr_ot, kpr_wr, kpr_wrp, name_org, phone, phone2, k' +
        'i, subs_inf, usl, org, nm, lg_mains, lg_ids, tarif, pl_svnorm, v' +
        'ol, charges, '
      
        ' privs, changes0, ch_proc0,  changes1, changes2, subs, sub_el, i' +
        'tog, itog_uszn, lgname, '
      
        ' lg_id, cnt, lg_koef, fname_sch, prev_chrg, prev_pay, nvl(paymen' +
        't,0) as payment, nvl(penya,0) as penya,  '
      ' nvl(monthpenya,0) as monthpenya,'
      ' nvl(monthpenya2,0) as monthpenya2,'
      ' nvl(itg_pen,0) as itg_pen,'
      ' nvl(itg_pay,0) as itg_pay,'
      ' nvl(itg_pen_pay,0) as itg_pen_pay,'
      
        ' nvl(decode(LEAD(lsk||mg,1) over (order by lsk, mg), lsk||mg, 0,' +
        ' monthpenya2),0) as monthpenitg,'
      
        ' dolg, dolg2,old_dolg, itog_dolg, ovrpaymnt, sal_in, add_months(' +
        'to_date(mg||'#39'01'#39','#39'YYYYMMDD'#39'),1) as dt_sch,'
      ' sl, bill_brake'
      ' from '
      'table(scott.rep_bills.pipe_bills(:lsk_,'
      '                         :lsk_,'
      '                         :var_,'
      '                         :var2_,'
      '                         :kul_, '
      '                         :nd_,'
      '                         :kw_,'
      '                         :mg1_,'
      '                         :mg2_'
      ')) a'
      ''
      'order by lsk, mg, nvl(bill_brake,0), npp')
    Optimize = False
    Variables.Data = {
      0300000008000000050000003A4B554C5F050000000000000000000000040000
      003A4E445F050000000000000000000000040000003A4B575F05000000000000
      0000000000050000003A4D47315F050000000700000032303039313200000000
      00050000003A4D47325F05000000070000003230303931320000000000050000
      003A4C534B5F050000000900000020202020202020200000000000050000003A
      5641525F03000000040000000100000000000000060000003A564152325F0300
      0000040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000043000000030000004C534B010000000000030000004B554C01000000
      00000300000046494F010000000000030000004B505201000000000006000000
      4B50525F4F54010000000000030000004F504C01000000000004000000505343
      48010000000000060000005354415455530100000000000300000055534C0100
      00000000020000004E4D01000000000007000000434841524745530100000000
      00070000005041594D454E540100000000000500000050524956530100000000
      00080000004348414E47455330010000000000080000004348414E4745533101
      0000000000080000004348414E474553320100000000000A0000005354524545
      544E414D450100000000000400000049544F4701000000000005000000544152
      4946010000000000020000004B49010000000000060000004C474E414D450100
      0000000009000000505245565F4348524701000000000008000000505245565F
      504159010000000000090000004D4F4E54485945415201000000000009000000
      4F56525041594D4E5401000000000004000000444F4C47010000000000040000
      0053554253010000000000060000005355425F454C010000000000050000004C
      475F494401000000000005000000504C444F5001000000000003000000434E54
      010000000000070000004C475F4B4F45460100000000000500000050454E5941
      010000000000080000004C475F4D41494E53010000000000060000004C475F49
      4453010000000000080000004F4C445F444F4C47010000000000020000004D47
      0100000000000900000049544F475F444F4C470100000000000A0000004D4F4E
      544850454E59410100000000000B0000004D4F4E544850454E49544701000000
      00000B0000004D4F4E544850454E59413201000000000008000000535542535F
      494E4601000000000003000000564F4C01000000000009000000464E414D455F
      5343480100000000000300000050485701000000000003000000504757010000
      0000000300000050454C010000000000030000004D4732010000000000030000
      004D47310100000000000600000053414C5F494E010000000000090000004954
      4F475F55535A4E01000000000009000000504C5F53564E4F524D010000000000
      070000004954475F50454E010000000000070000004954475F50415901000000
      0000060000004B50525F5752010000000000080000004E414D455F4F52470100
      000000000500000050484F4E45010000000000080000004B5F4C534B5F494401
      00000000000600000050484F4E453201000000000005000000444F4C47320100
      000000000600000044545F534348010000000000030000004F52470100000000
      000800000043485F50524F4330010000000000070000004B50525F5752500100
      000000000B0000004954475F50454E5F50415901000000000002000000534C01
      00000000000A00000042494C4C5F4252414B45010000000000}
    Master = OD_main
    MasterFields = 'lsk'
    DetailFields = 'lsk_'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 160
    Top = 88
    object OD_dataMG1: TStringField
      FieldName = 'MG1'
      Size = 8
    end
    object OD_dataMG2: TStringField
      FieldName = 'MG2'
      Size = 7
    end
    object OD_dataMG: TStringField
      FieldName = 'MG'
      Size = 6
    end
    object OD_dataLSK: TStringField
      FieldName = 'LSK'
      Size = 8
    end
    object OD_dataSTREETNAME: TStringField
      FieldName = 'STREETNAME'
      Size = 42
    end
    object OD_dataFIO: TStringField
      FieldName = 'FIO'
      Size = 50
    end
    object OD_dataMONTHYEAR: TStringField
      FieldName = 'MONTHYEAR'
      Size = 30
    end
    object OD_dataSTATUS: TFloatField
      FieldName = 'STATUS'
    end
    object OD_dataPSCH: TFloatField
      FieldName = 'PSCH'
    end
    object OD_dataPEL: TFloatField
      FieldName = 'PEL'
    end
    object OD_dataKUL: TStringField
      FieldName = 'KUL'
      Size = 4
    end
    object OD_dataOPL: TFloatField
      FieldName = 'OPL'
    end
    object OD_dataPLDOP: TFloatField
      FieldName = 'PLDOP'
    end
    object OD_dataKPR: TFloatField
      FieldName = 'KPR'
    end
    object OD_dataKPR_OT: TFloatField
      FieldName = 'KPR_OT'
    end
    object OD_dataKI: TFloatField
      FieldName = 'KI'
    end
    object OD_dataSUBS_INF: TFloatField
      FieldName = 'SUBS_INF'
    end
    object OD_dataUSL: TStringField
      FieldName = 'USL'
      Size = 3
    end
    object OD_dataNM: TStringField
      FieldName = 'NM'
      Size = 38
    end
    object OD_dataLG_MAINS: TFloatField
      FieldName = 'LG_MAINS'
    end
    object OD_dataLG_IDS: TStringField
      FieldName = 'LG_IDS'
      Size = 300
    end
    object OD_dataTARIF: TFloatField
      FieldName = 'TARIF'
    end
    object OD_dataVOL: TFloatField
      FieldName = 'VOL'
    end
    object OD_dataCHARGES: TFloatField
      FieldName = 'CHARGES'
    end
    object OD_dataPRIVS: TFloatField
      FieldName = 'PRIVS'
    end
    object OD_dataCHANGES0: TFloatField
      FieldName = 'CHANGES0'
    end
    object OD_dataCH_PROC0: TFloatField
      FieldName = 'CH_PROC0'
    end
    object OD_dataCHANGES1: TFloatField
      FieldName = 'CHANGES1'
    end
    object OD_dataCHANGES2: TFloatField
      FieldName = 'CHANGES2'
    end
    object OD_dataSUBS: TFloatField
      FieldName = 'SUBS'
    end
    object OD_dataSUB_EL: TFloatField
      FieldName = 'SUB_EL'
    end
    object OD_dataITOG: TFloatField
      FieldName = 'ITOG'
    end
    object OD_dataLGNAME: TStringField
      FieldName = 'LGNAME'
      Size = 25
    end
    object OD_dataLG_ID: TFloatField
      FieldName = 'LG_ID'
    end
    object OD_dataCNT: TFloatField
      FieldName = 'CNT'
    end
    object OD_dataLG_KOEF: TFloatField
      FieldName = 'LG_KOEF'
    end
    object OD_dataFNAME_SCH: TStringField
      FieldName = 'FNAME_SCH'
      Size = 25
    end
    object OD_dataPREV_CHRG: TFloatField
      FieldName = 'PREV_CHRG'
    end
    object OD_dataPREV_PAY: TFloatField
      FieldName = 'PREV_PAY'
    end
    object OD_dataPAYMENT: TFloatField
      FieldName = 'PAYMENT'
    end
    object OD_dataPENYA: TFloatField
      FieldName = 'PENYA'
    end
    object OD_dataMONTHPENYA: TFloatField
      FieldName = 'MONTHPENYA'
    end
    object OD_dataMONTHPENYA2: TFloatField
      FieldName = 'MONTHPENYA2'
    end
    object OD_dataMONTHPENITG: TFloatField
      FieldName = 'MONTHPENITG'
    end
    object OD_dataDOLG: TFloatField
      FieldName = 'DOLG'
    end
    object OD_dataOLD_DOLG: TFloatField
      FieldName = 'OLD_DOLG'
    end
    object OD_dataITOG_DOLG: TFloatField
      FieldName = 'ITOG_DOLG'
    end
    object OD_dataOVRPAYMNT: TFloatField
      FieldName = 'OVRPAYMNT'
    end
    object OD_dataSAL_IN: TFloatField
      FieldName = 'SAL_IN'
    end
    object OD_dataITOG_USZN: TFloatField
      FieldName = 'ITOG_USZN'
    end
    object OD_dataPL_SVNORM: TFloatField
      FieldName = 'PL_SVNORM'
    end
    object OD_dataITG_PEN: TFloatField
      FieldName = 'ITG_PEN'
    end
    object OD_dataITG_PAY: TFloatField
      FieldName = 'ITG_PAY'
    end
    object OD_dataKPR_WR: TFloatField
      FieldName = 'KPR_WR'
    end
    object OD_dataNAME_ORG: TStringField
      FieldName = 'NAME_ORG'
      Size = 32
    end
    object OD_dataPHW: TFloatField
      FieldName = 'PHW'
    end
    object OD_dataPGW: TFloatField
      FieldName = 'PGW'
    end
    object OD_dataPHONE: TStringField
      FieldName = 'PHONE'
      Size = 15
    end
    object OD_dataK_LSK_ID: TFloatField
      FieldName = 'K_LSK_ID'
    end
    object OD_dataPHONE2: TStringField
      FieldName = 'PHONE2'
      Size = 15
    end
    object fltfldOD_dataDOLG2: TFloatField
      FieldName = 'DOLG2'
    end
    object OD_dataDT_SCH: TDateTimeField
      FieldName = 'DT_SCH'
    end
    object OD_dataORG: TFloatField
      FieldName = 'ORG'
    end
    object OD_dataKPR_WRP: TFloatField
      FieldName = 'KPR_WRP'
    end
    object OD_dataITG_PEN_PAY: TFloatField
      FieldName = 'ITG_PEN_PAY'
    end
    object OD_dataSL: TFloatField
      FieldName = 'SL'
    end
    object OD_dataBILL_BRAKE: TFloatField
      FieldName = 'BILL_BRAKE'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MG1='#1085#1072#1095'.'#1087#1077#1088#1080#1086#1076
      'MG2='#1055#1077#1088#1080#1086#1076'.'
      'MG=MG'
      'LSK='#1051'/'#1057
      'STREETNAME=STREETNAME'
      'FIO=FIO'
      'MONTHYEAR='#1055#1077#1088#1080#1086#1076
      'STATUS=STATUS'
      'PSCH=PSCH'
      'PEL='#1057#1095'.'#1069#1083'.'#1069#1085'.'
      'KUL=KUL'
      'OPL=OPL'
      'PLDOP=PLDOP'
      'KPR=KPR'
      'KPR_OT=KPR_OT'
      'KI=KI'
      'SUBS_INF=SUBS_INF'
      'USL=USL'
      'NM=NM'
      'LG_MAINS=LG_MAINS'
      'LG_IDS=LG_IDS'
      'TARIF='#1058#1072#1088'.'
      'VOL='#1054#1073#1098#1077#1084
      'CHARGES=CHARGES'
      'PRIVS=PRIVS'
      'CHANGES0=CHANGES0'
      'CH_PROC0=CH_PROC0'
      'CHANGES1=CHANGES1'
      'CHANGES2=CHANGES2'
      'SUBS=SUBS'
      'SUB_EL=SUB_EL'
      'ITOG='#1053#1072#1095'.'
      'LGNAME=LGNAME'
      'LG_ID=LG_ID'
      'CNT=CNT'
      'LG_KOEF=LG_KOEF'
      'FNAME_SCH=FNAME_SCH'
      'PREV_CHRG=PREV_CHRG'
      'PREV_PAY=PREV_PAY'
      'PAYMENT='#1054#1087#1083#1072#1090#1072
      'PENYA='#1055#1077#1085#1103
      'MONTHPENYA='#1055#1077#1085#1103' '#1090#1077#1082#1091#1097'.'
      'MONTHPENYA2='#1055#1077#1085#1103' '#1090#1077#1082'.'
      'MONTHPENITG='#1055#1077#1085#1103' '#1080#1090#1086#1075'.'
      'DOLG='#1044#1086#1083#1075
      'OLD_DOLG=OLD_DOLG'
      'ITOG_DOLG='#1044#1086#1083#1075'.'
      'OVRPAYMNT=OVRPAYMNT'
      'SAL_IN=SAL_IN'
      'ITOG_USZN=ITOG_USZN'
      'PL_SVNORM=PL_SVNORM'
      'ITG_PEN=ITG_PEN'
      'ITG_PAY=ITG_PAY'
      'KPR_WR=KPR_WR'
      'NAME_ORG=NAME_ORG'
      'PHW='#1057#1095'.'#1061'.'#1042'.'
      'PGW='#1057#1095'.'#1043'.'#1042'.'
      'PHONE=PHONE'
      'K_LSK_ID=K_LSK_ID'
      'PHONE2=PHONE2'
      'DOLG2=DOLG2'
      'DT_SCH=DT_SCH'
      'ORG=ORG'
      'KPR_WRP=KPR_WRP'
      'ITG_PEN_PAY=ITG_PEN_PAY'
      'SL=SL'
      'BILL_BRAKE=BILL_BRAKE')
    OpenDataSource = False
    DataSet = OD_data
    BCDToCurrency = False
    Left = 224
    Top = 88
  end
  object OD_t_org: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_bills.org('
      '                    p_mg => :mg_,'
      '                    p_var => :var_,'
      '                    p_rfcur => :p_rfcur);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A4D475F05000000000000000000000005000000
      3A5641525F030000000000000000000000080000003A505F5246435552740000
      000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000002F000000020000004944010000000000020000004344010000000000
      08000000464B5F4F52475450010000000000040000004E414D45010000000000
      030000004E505001000000000001000000560100000000000900000050415245
      4E545F4944010000000000030000005245550100000000000500000054524553
      5401000000000003000000554348010000000000030000004144520100000000
      0003000000494E4E010000000000070000004D414E4147455201000000000003
      0000004255480100000000000D000000524153434845545F5343484554010000
      000000070000004B5F5343484554010000000000090000004B4F445F4F4B4F4E
      48010000000000080000004B4F445F4F47524E0100000000000300000042494B
      0100000000000500000050484F4E45010000000000030000004B505001000000
      00000400000042414E4B0100000000000600000049445F455850010000000000
      090000004144525F52454349500100000000000E000000415554484F52495A45
      445F4449520100000000000E000000415554484F52495A45445F425548010000
      0000000C000000415554485F4449525F444F430100000000000C000000415554
      485F4255485F444F43010000000000040000004F4B504F010000000000060000
      005645525F43440100000000000900000046554C4C5F4E414D45010000000000
      0600000050484F4E45320100000000000A000000504152454E545F4944320100
      0000000007000000464B5F4F5247320100000000000700000042414E4B5F4344
      01000000000009000000464E414D455F53434801000000000007000000414452
      5F57575701000000000005000000454D41494C01000000000009000000484541
      445F4E414D450100000000000E000000524153434845545F5343484554320100
      0000000009000000504F53545F494E44580100000000000B000000525F534348
      5F41444449540100000000000B000000464B5F42494C4C5F5641520100000000
      0006000000414F47554944010000000000050000004F4B544D4F010000000000
      08000000434F44455F4445420100000000000700000042494C4C5F5450010000
      000000}
    Session = DataModule1.OracleSession1
    Left = 160
    Top = 144
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD=CD'
      'FK_ORGTP=FK_ORGTP'
      'NAME=NAME'
      'NPP=NPP'
      'V=V'
      'PARENT_ID=PARENT_ID'
      'REU=REU'
      'TREST=TREST'
      'UCH=UCH'
      'ADR=ADR'
      'INN=INN'
      'MANAGER=MANAGER'
      'BUH=BUH'
      'RASCHET_SCHET=RASCHET_SCHET'
      'K_SCHET=K_SCHET'
      'KOD_OKONH=KOD_OKONH'
      'KOD_OGRN=KOD_OGRN'
      'BIK=BIK'
      'PHONE=PHONE'
      'KPP=KPP'
      'BANK=BANK'
      'ID_EXP=ID_EXP'
      'ADR_RECIP=ADR_RECIP'
      'AUTHORIZED_DIR=AUTHORIZED_DIR'
      'AUTHORIZED_BUH=AUTHORIZED_BUH'
      'AUTH_DIR_DOC=AUTH_DIR_DOC'
      'AUTH_BUH_DOC=AUTH_BUH_DOC'
      'OKPO=OKPO'
      'VER_CD=VER_CD'
      'FULL_NAME=FULL_NAME'
      'PHONE2=PHONE2'
      'PARENT_ID2=PARENT_ID2'
      'FK_ORG2=FK_ORG2'
      'BANK_CD=BANK_CD'
      'ADR_WWW=ADR_WWW'
      'EMAIL=EMAIL'
      'HEAD_NAME=HEAD_NAME'
      'RASCHET_SCHET2=RASCHET_SCHET2'
      'POST_INDX=POST_INDX'
      'R_SCH_ADDIT=R_SCH_ADDIT'
      'FK_BILL_VAR=FK_BILL_VAR'
      'AOGUID=AOGUID'
      'OKTMO=OKTMO'
      'CODE_DEB=CODE_DEB'
      'FNAME_SCH=FNAME_SCH'
      'BILL_TP=BILL_TP')
    DataSet = OD_t_org
    BCDToCurrency = False
    Left = 224
    Top = 144
  end
  object OD_data2: TOracleDataSet
    SQL.Strings = (
      '--'#1085#1086#1074#1072#1103' '#1072#1088#1093#1080#1074#1085#1072#1103' '#1089#1087#1088#1072#1074#1082#1072' '#1086#1090' 15.05.12'
      'select * from ('
      
        'select substr(k.mg,5,2)||'#39'.'#39'||substr(k.mg,1,4) as mg, k.mg as mg' +
        '1,'
      
        ' to_char(m.dtek, '#39'DD.MM.YY'#39') as dtek, m.pay, substr(m.dopl,5,2)|' +
        '|'#39'.'#39'||substr(m.dopl,1,4) as dopl,'
      
        ' m.summa, decode(lag(k.mg,1,0) over (order by k.mg), k.mg, null,' +
        ' b.summa) as chrg,'
      
        ' decode(lag(k.mg,1,0) over (order by k.mg), k.mg, null, c.summa)' +
        ' as chng,'
      
        ' nvl(decode(lag(k.mg,1,0) over (order by k.mg), k.mg, null, b.su' +
        'mma),0)+'
      
        ' nvl(decode(lag(k.mg,1,0) over (order by k.mg), k.mg, null, c.su' +
        'mma),0) as itog'
      ' from scott.long_table k, '
      
        ' (select t.id, p.dtek, t.mg, decode(p.dopl, null, t.dopl, p.dopl' +
        ') as dopl, '
      
        '  decode(lag(t.id,1,0) over (order by t.id), t.id, null, t.summa' +
        ') as pay, sum(decode(p.dopl, null, t.summa, p.summa)) as summa'
      '   from scott.a_kwtp t,'
      
        '     scott.a_kwtp_mg p, scott.kart k where t.id=p.c_kwtp_id(+) a' +
        'nd k.lsk=t.lsk and'
      
        '      ((:lsk_ is not null and k.c_lsk_id=scott.utils.GET_C_LSK_I' +
        'D_BY_LSK(:lsk_)) '
      
        '      or (:lsk_ is null and k.c_lsk_id=scott.utils.GET_C_LSK_ID_' +
        'BY_ADR(:kul_, :nd_, :kw_)))'
      
        '    group by t.id, p.dtek, t.mg, t.summa, decode(p.dopl, null, t' +
        '.dopl, p.dopl)) m,'
      '(select sum(summa) as summa, mg '
      ' from scott.kart k, scott.arch_charges a'
      ' where k.lsk=a.lsk and a.usl_id<>'#39'024'#39' and'
      
        ' ((:lsk_ is not null and k.c_lsk_id=scott.utils.GET_C_LSK_ID_BY_' +
        'LSK(:lsk_)) '
      
        '  or (:lsk_ is null and k.c_lsk_id=scott.utils.GET_C_LSK_ID_BY_A' +
        'DR(:kul_, :nd_, :kw_)))'
      ' group by mg'
      ') b,'
      
        '(select sum(summa) as summa, mgchange from scott.kart k, scott.a' +
        '_change a'
      '  where k.lsk=a.lsk and a.usl<>'#39'024'#39' and'
      
        ' ((:lsk_ is not null and k.c_lsk_id=scott.utils.GET_C_LSK_ID_BY_' +
        'LSK(:lsk_)) '
      
        '  or (:lsk_ is null and k.c_lsk_id=scott.utils.GET_C_LSK_ID_BY_A' +
        'DR(:kul_, :nd_, :kw_)))'
      '  group by mgchange) c    '
      'where k.mg=m.mg(+) and k.mg=b.mg(+) and k.mg=c.mgchange(+)'
      
        ') a where nvl(a.chrg,0) <> 0 or nvl(a.chng,0) <> 0 or nvl(a.itog' +
        ',0) <> 0'
      ' or nvl(a.pay,0) <> 0 or nvl(a.summa,0) <> 0'
      'order by mg1'
      ' ')
    Optimize = False
    Variables.Data = {
      0300000004000000050000003A4C534B5F050000000000000000000000050000
      003A4B554C5F050000000000000000000000040000003A4E445F050000000000
      000000000000040000003A4B575F050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000009000000020000004D47010000000000040000004454454B01000000
      00000300000050415901000000000004000000444F504C010000000000050000
      0053554D4D410100000000000400000043485247010000000000040000004348
      4E470100000000000400000049544F47010000000000030000004D4731010000
      000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 160
    Top = 192
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'MG=MG'
      'DTEK=DTEK'
      'PAY=PAY'
      'DOPL=DOPL'
      'SUMMA=SUMMA'
      'CHRG=CHRG'
      'CHNG=CHNG'
      'ITOG=ITOG')
    DataSet = OD_data2
    BCDToCurrency = False
    Left = 224
    Top = 192
  end
  object OD_detail: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_bills.detail(p_lsk => :p_lsk,'
      '                    p_mg => :p_mg,'
      '                    p_rfcur => :p_rfcur);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000003000000060000003A505F4C534B0500000009000000202020202020
      20200000000000080000003A505F524643555274000000000000000000000005
      0000003A505F4D47050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000012000000030000004C534B010000000000020000004E4D0100000000
      0004000000434852470100000000000400000043454E41010000000000060000
      0053414C5F494E0100000000000500000043484E473001000000000005000000
      43484E47310100000000000500000043484E4732010000000000040000004954
      4F470100000000000300000055534C0100000000000900000043484E475F5052
      4F4301000000000003000000564F4C0100000000000600000045445F495A4D01
      0000000000030000004E50500100000000000A00000042494C4C5F4252414B45
      0100000000000800000042494C4C5F5641520100000000000200000054500100
      00000000020000004D47010000000000}
    Master = OD_main
    MasterFields = 'lsk'
    DetailFields = 'p_lsk'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 160
    Top = 248
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK=LSK'
      'USL=USL'
      'NM=NM'
      'ED_IZM=ED_IZM'
      'CHRG=CHRG'
      'VOL=VOL'
      'CENA=CENA'
      'SAL_IN=SAL_IN'
      'CHNG0=CHNG0'
      'CHNG1=CHNG1'
      'CHNG2=CHNG2'
      'CHNG_PROC=CHNG_PROC'
      'ITOG=ITOG'
      'BILL_BRAKE=BILL_BRAKE'
      'NPP=NPP'
      'BILL_VAR=BILL_VAR'
      'TP=TP'
      'MG=MG')
    OpenDataSource = False
    DataSet = OD_detail
    BCDToCurrency = False
    Left = 224
    Top = 248
  end
  object OD_reu: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.reu||'#39'-'#39'||t.name as name'
      'from scott.t_org t, scott.t_org_tp tp'
      'where tp.id=t.fk_orgtp and t.reu is not null'
      
        'and exists (select s.* from scott.C_USERS_PERM s join scott.u_li' +
        'st u on s.fk_perm_tp=u.id join scott.t_user e on e.cd=user and s' +
        '.user_id=e.id'
      '                   and u.cd='#39#1076#1086#1089#1090#1091#1087' '#1082' '#1086#1090#1095#1105#1090#1072#1084#39
      '                   where s.fk_reu=t.reu)'
      'order by t.reu')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004E414D4501000000000003000000524555010000
      000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 160
    Top = 352
  end
  object DS_reu: TDataSource
    DataSet = OD_reu
    Left = 224
    Top = 352
  end
  object OD_data3: TOracleDataSet
    SQL.Strings = (
      'begin'
      ''
      ' scott.rep_bills.deb(p_lsk => :p_lsk,'
      '                 p_k_lsk_id => :k_lsk_id_,'
      '                 p_flt_mg_from => :p_flt_mg_from,'
      '                 p_flt_mg_to => :p_flt_mg_to,'
      '                 p_rfcur => :p_rfcur);'
      ''
      'end;'
      ''
      '')
    Optimize = False
    Variables.Data = {
      03000000050000000A0000003A4B5F4C534B5F49445F03000000000000000000
      0000080000003A505F5246435552740000000000000000000000060000003A50
      5F4C534B0500000000000000000000000E0000003A505F464C545F4D475F4652
      4F4D0500000000000000000000000C0000003A505F464C545F4D475F544F0500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F0000000600000043484152474501000000000004000000444F4C47
      0100000000000500000050454E5941010000000000030000004C534B01000000
      0000030000004144520100000000000300000046494F01000000000004000000
      4E414D45010000000000070000004D475F4E414D45010000000000020000004D
      47010000000000030000004D473201000000000009000000444F4C475F4E414D
      4501000000000006000000504552494F440100000000000800000046494F5F4B
      4153530100000000000400000050534348010000000000040000004441595301
      0000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 408
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = OD_data3
    BCDToCurrency = False
    Left = 88
    Top = 408
  end
  object OD_data6: TOracleDataSet
    SQL.Strings = (
      'select k.lsk, sum(nvl(s.summa,0)+nvl(s.penya,0)) as summa '
      'from scott.arch_kart k,'
      'scott.a_penya s, scott.params p'
      'where k.lsk=s.lsk and k.psch in (8)'
      'and k.k_lsk_id=:k_lsk_id and k.mg=:mg and s.mg=:mg'
      'and :psch <> 8'
      'group by k.lsk'
      'having sum(nvl(s.summa,0)+nvl(s.penya,0)) > 0')
    Optimize = False
    Variables.Data = {
      0300000003000000090000003A4B5F4C534B5F49440300000000000000000000
      00030000003A4D47050000000000000000000000050000003A50534348030000
      000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000030000004C534B0100000000000500000053554D4D410100
      00000000}
    Master = OD_data
    MasterFields = 'k_lsk_id;mg;psch'
    DetailFields = 'k_lsk_id;mg;psch'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 632
    object OD_data6LSK: TStringField
      FieldName = 'LSK'
      Required = True
      Size = 8
    end
    object OD_data6SUMMA: TFloatField
      FieldName = 'SUMMA'
    end
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK=LSK'
      'SUMMA=SUMMA')
    DataSet = OD_data6
    BCDToCurrency = False
    Left = 88
    Top = 632
  end
  object OD_detail_ext: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_bills_ext.detail(p_lsk => :p_lsk,'
      '                    p_mg => :p_mg,'
      '                    p_rfcur => :p_rfcur);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000003000000060000003A505F4C534B0500000009000000303030303032
      30330000000000080000003A505F524643555274000000000000000000000005
      0000003A505F4D4705000000070000003230313430340000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000003000000564F4C010000000000030000004E505001000000
      0000040000004E414D4501000000000005000000505249434501000000000006
      000000434841524745010000000000070000004348414E474531010000000000
      0C0000004348414E47455F50524F4331010000000000070000004348414E4745
      3201000000000004000000414D4E540100000000000300000044454201000000
      00000300000055534C0100000000000B00000049535F414D4E545F53554D0100
      000000000800000042494C4C5F434F4C0100000000000900000042494C4C5F43
      4F4C32010000000000030000004B554201000000000003000000504159010000
      000000090000004348415247454F574E010000000000}
    Master = OD_main
    MasterFields = 'lsk'
    DetailFields = 'p_lsk'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Active = True
    Left = 160
    Top = 464
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDetail_ext'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IS_AMNT_SUM=IS_AMNT_SUM'
      'USL=USL'
      'NPP=NPP'
      'NAME=NAME'
      'PRICE=PRICE'
      'VOL=VOL'
      'CHARGE=CHARGE'
      'CHANGE1=CHANGE1'
      'CHANGE_PROC1=CHANGE_PROC1'
      'CHANGE2=CHANGE2'
      'AMNT=AMNT'
      'DEB=DEB')
    OpenDataSource = False
    DataSet = OD_detail_ext
    BCDToCurrency = False
    Left = 224
    Top = 464
  end
  object OD_detail2: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_bills.detail2(p_lsk => :p_lsk,'
      '                    p_mg => :p_mg,'
      '                    p_bill_var => :p_bill_var,'
      '                    p_tp => :p_tp,'
      '                    p_rfcur => :p_rfcur);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000005000000060000003A505F4C534B0500000009000000202020202020
      20200000000000080000003A505F524643555274000000000000000000000005
      0000003A505F4D470500000000000000000000000B0000003A505F42494C4C5F
      564152030000000000000000000000050000003A505F54500300000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F0000000400000043454E410100000000000300000055534C010000
      00000003000000564F4C010000000000020000004E4D01000000000003000000
      4C534B0100000000000600000045445F495A4D01000000000004000000434852
      470100000000000600000053414C5F494E0100000000000500000043484E4730
      0100000000000500000043484E47310100000000000500000043484E47320100
      000000000900000043484E475F50524F430100000000000400000049544F4701
      00000000000A00000042494C4C5F4252414B45010000000000030000004E5050
      010000000000}
    Master = OD_detail
    MasterFields = 'lsk;mg;bill_var;tp'
    DetailFields = 'p_lsk;p_mg;p_bill_var;p_tp'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 160
    Top = 408
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDetail2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK=LSK'
      'USL=USL'
      'NM=NM'
      'ED_IZM=ED_IZM'
      'CHRG=CHRG'
      'VOL=VOL'
      'CENA=CENA'
      'SAL_IN=SAL_IN'
      'CHNG0=CHNG0'
      'CHNG1=CHNG1'
      'CHNG2=CHNG2'
      'CHNG_PROC=CHNG_PROC'
      'ITOG=ITOG'
      'BILL_BRAKE=BILL_BRAKE'
      'NPP=NPP')
    OpenDataSource = False
    DataSet = OD_detail2
    BCDToCurrency = False
    Left = 224
    Top = 408
  end
  object OD_t_org3: TOracleDataSet
    SQL.Strings = (
      'select t.* from scott.t_org t'
      'where t.reu=:reu')
    Optimize = False
    Variables.Data = {0300000001000000040000003A524555050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000031000000020000004944010000000000020000004344010000000000
      08000000464B5F4F52475450010000000000040000004E414D45010000000000
      030000004E505001000000000001000000560100000000000900000050415245
      4E545F4944010000000000030000005245550100000000000500000054524553
      5401000000000003000000554348010000000000030000004144520100000000
      0003000000494E4E010000000000070000004D414E4147455201000000000003
      0000004255480100000000000D000000524153434845545F5343484554010000
      000000070000004B5F5343484554010000000000090000004B4F445F4F4B4F4E
      48010000000000080000004B4F445F4F47524E0100000000000300000042494B
      0100000000000500000050484F4E45010000000000030000004B505001000000
      00000400000042414E4B0100000000000600000049445F455850010000000000
      090000004144525F52454349500100000000000E000000415554484F52495A45
      445F4449520100000000000E000000415554484F52495A45445F425548010000
      0000000C000000415554485F4449525F444F430100000000000C000000415554
      485F4255485F444F43010000000000040000004F4B504F010000000000060000
      005645525F43440100000000000900000046554C4C5F4E414D45010000000000
      0600000050484F4E45320100000000000A000000504152454E545F4944320100
      0000000007000000464B5F4F5247320100000000000700000042414E4B5F4344
      010000000000070000004144525F57575701000000000005000000454D41494C
      01000000000009000000484541445F4E414D450100000000000E000000524153
      434845545F53434845543201000000000009000000504F53545F494E44580100
      000000000B000000525F5343485F41444449540100000000000B000000464B5F
      42494C4C5F56415201000000000006000000414F475549440100000000000500
      00004F4B544D4F01000000000008000000434F44455F44454201000000000009
      000000444F4C475F4E414D450100000000000A00000042414E4B5F464E414D45
      0100000000000300000047525001000000000009000000525F5343485F474953
      010000000000}
    Master = OD_main
    MasterFields = 'reu'
    DetailFields = 'reu'
    Session = DataModule1.OracleSession1
    Left = 24
    Top = 464
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxDB_t_org3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD=CD'
      'FK_ORGTP=FK_ORGTP'
      'NAME=NAME'
      'NPP=NPP'
      'V=V'
      'PARENT_ID=PARENT_ID'
      'REU=REU'
      'TREST=TREST'
      'UCH=UCH'
      'ADR=ADR'
      'INN=INN'
      'MANAGER=MANAGER'
      'BUH=BUH'
      'RASCHET_SCHET=RASCHET_SCHET'
      'K_SCHET=K_SCHET'
      'KOD_OKONH=KOD_OKONH'
      'KOD_OGRN=KOD_OGRN'
      'BIK=BIK'
      'PHONE=PHONE'
      'KPP=KPP'
      'BANK=BANK'
      'ID_EXP=ID_EXP'
      'ADR_RECIP=ADR_RECIP'
      'AUTHORIZED_DIR=AUTHORIZED_DIR'
      'AUTHORIZED_BUH=AUTHORIZED_BUH'
      'AUTH_DIR_DOC=AUTH_DIR_DOC'
      'AUTH_BUH_DOC=AUTH_BUH_DOC'
      'OKPO=OKPO'
      'VER_CD=VER_CD'
      'FULL_NAME=FULL_NAME'
      'PHONE2=PHONE2'
      'PARENT_ID2=PARENT_ID2'
      'FK_ORG2=FK_ORG2'
      'BANK_CD=BANK_CD'
      'ADR_WWW=ADR_WWW')
    DataSet = OD_t_org3
    BCDToCurrency = False
    Left = 88
    Top = 464
  end
  object OD_vvod: TOracleDataSet
    SQL.Strings = (
      
        'select u.nm, t.kub, c.kub_odn , nvl(kub_nrm_fact,0)+nvl(kub_sch_' +
        'fact,0) as house_odn,'
      ' nvl(kub_norm,0)+nvl(kub_sch,0) as house_vol,'
      ' case when nvl(c.kub_odn,0) > 0 then nvl(c2.kub_lsk,0)'
      
        '                                                            when' +
        ' nvl(c.kub_odn,0) <= 0 then nvl(c2.kub_lsk,0)-nvl(c.kub_odn,0)'
      ' end  as kub_lsk, --'#1074' '#1090'.'#1095'. '#1054#1044#1053' ('#1076#1086' 01.2017)'
      ' nvl(c2.kub_lsk,0) as kub_lsk2, --'#1073#1077#1079' '#1091#1095#1105#1090#1072' '#1054#1044#1053' ('#1087#1086#1089#1083#1077' 01.2017)'
      
        ' decode(u.cd, '#39#1093'.'#1074#1086#1076#1072#39', c3.phw,  '#39#1101#1083'.'#1101#1085#1077#1088#1075'.2'#39',  c3.pel,  '#39#1101#1083'.'#1101#1085'.' +
        #1091#1095#1077#1090' '#1059#1054#39', c3.pel, '#39#1075'.'#1074#1086#1076#1072#39', c3.pgw,  '#39#1093'.'#1074'. '#1076#1083#1103' '#1075#1074#1089#39', c3.pgw, '#39#1082#1072 +
        #1085#1072#1083#1080#1079#39', null) as meter,'
      
        ' decode(u.cd, '#39#1093'.'#1074#1086#1076#1072#39', c3.phw2,  '#39#1101#1083'.'#1101#1085#1077#1088#1075'.2'#39', c3.pel2,  '#39#1101#1083'.'#1101#1085 +
        '.'#1091#1095#1077#1090' '#1059#1054#39',  c3.pel2,  '#39#1075'.'#1074#1086#1076#1072#39', c3.pgw2, '#39#1093'.'#1074'. '#1076#1083#1103' '#1075#1074#1089#39',  c3.pgw' +
        ', '#39#1082#1072#1085#1072#1083#1080#1079#39', null) as meter2,'
      '  c3.dt1, c3.dt2'
      'from scott.usl u'
      'left join  '
      '(select a.* from scott.a_vvod a where a.mg=:mg and exists'
      
        '(select /*+ INDEX (n A_NABOR2_I)*/* from scott.a_nabor2 n where ' +
        'n.fk_vvod=a.id'
      ' and n.lsk=:lsk and :mg between mgFrom and mgTo)'
      ') t on u.usl=t.usl and t.mg =:mg'
      ''
      'left join '
      
        '(select t.usl, sum(t.test_opl) as kub_odn from scott.a_charge2 t' +
        ' '
      
        'where t.lsk=:lsk and t.type=5 and :mg between t.mgFrom and t.mgT' +
        'o  --'#1086#1073#1098#1077#1084#1099' '#1087#1086' '#1083#1080#1094#1077#1074#1086#1084#1091', '#1087#1086' '#1054#1044#1053
      'group by t.usl) c '
      'on u.fk_usl_chld=c.usl'
      ''
      'left join'
      
        '(select u2.usl, sum(t.test_opl) as kub_lsk from scott.a_charge2 ' +
        't, scott.usl u, scott.usl u2 '
      
        'where t.lsk=:lsk and t.type=1 and :mg between t.mgFrom and t.mgT' +
        'o  --'#1086#1073#1098#1077#1084#1099' '#1087#1086' '#1083#1080#1094#1077#1074#1086#1084#1091', '#1087#1086' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1091#1089#1083#1091#1075#1077', '#1074' '#1090'.'#1095'. '#1087#1086' '#1089#1074'.'#1089'.'#1085'.'
      'and t.usl=u.usl and u.uslm=u2.uslm and u2.usl_norm=0'
      'group by u2.usl) c2'
      'on u.usl=c2.usl'
      ''
      'left join '
      
        '(select to_date(scott.utils.add_months2(:mg,1)||'#39'01'#39','#39'YYYYMMDD'#39')' +
        ' as dt1,'
      'to_date(:mg||'#39'01'#39','#39'YYYYMMDD'#39') as dt2,'
      
        't.phw, t.pgw, t.pel, t2.phw as phw2, t2.pgw as pgw2, t2.pel as p' +
        'el2'
      ' from scott.arch_kart t, scott.arch_kart t2'
      'where t.lsk=:lsk and t.mg=:mg'
      
        'and t.lsk=t2.lsk(+) and scott.utils.add_months2(:mg,-1)=t2.mg(+)' +
        ') c3'
      'on 1=1'
      ''
      'where '
      
        '(u.cd in ('#39#1093'.'#1074#1086#1076#1072#39','#39#1101#1083'.'#1101#1085#1077#1088#1075'.2'#39',  '#39#1101#1083'.'#1101#1085'.'#1091#1095#1077#1090' '#1059#1054#39', '#39#1101#1083'.'#1101#1085'.'#1091#1095#1077#1090' '#1059 +
        #1054' '#1054#1044#1053#39', '#39#1075'.'#1074#1086#1076#1072#39', '#39#1082#1072#1085#1072#1083#1080#1079#39','#39#1086#1090#1086#1087'.'#1075#1082#1072#1083'.'#39', '#39#1101#1083'.'#1101#1085'.'#1052#1054#1055'2'#39','#39#1093'.'#1074'. '#1076#1083#1103 +
        ' '#1075#1074#1089#39','#39#1090'.'#1101#1085'.'#1076#1083#1103' '#1085'.'#1093'.'#1074'.'#39','#39'EL_ODN2'#39')'
      
        'or t.dist_tp=7 -- '#1080#1083#1080' '#1090#1080#1087' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1074#1086' '#1074#1074#1086#1076#1077' ('#1076#1083#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080 +
        ' '#1087#1086' '#1054#1044#1055#1059')'
      ')'
      ''
      'and (nvl(t.kub,0) <> 0 or  nvl(c.kub_odn,0) <> 0 or'
      ' case when nvl(c.kub_odn,0) > 0 then nvl(c2.kub_lsk,0)'
      
        '      when nvl(c.kub_odn,0) <= 0 then nvl(c2.kub_lsk,0)-nvl(c.ku' +
        'b_odn,0)'
      ' end <> 0 )'
      'order by u.npp'
      '')
    Optimize = False
    Variables.Data = {
      0300000002000000030000003A4D47050000000000000000000000040000003A
      4C534B050000000900000020202020202020200000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000B000000020000004E4D010000000000030000004B55420100000000
      00070000004B55425F4F444E010000000000070000004B55425F4C534B010000
      000000050000004D455445520100000000000300000044543101000000000003
      000000445432010000000000060000004D455445523201000000000009000000
      484F5553455F4F444E01000000000009000000484F5553455F564F4C01000000
      0000080000004B55425F4C534B32010000000000}
    Master = OD_main
    MasterFields = 'lsk;mg'
    DetailFields = 'lsk;mg'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 576
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxDBDataset9'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NM=NM'
      'KUB=KUB'
      'KUB_ODN=KUB_ODN'
      'HOUSE_ODN=HOUSE_ODN'
      'HOUSE_VOL=HOUSE_VOL'
      'KUB_LSK=KUB_LSK'
      'KUB_LSK2=KUB_LSK2'
      'METER=METER'
      'METER2=METER2'
      'DT1=DT1'
      'DT2=DT2')
    DataSet = OD_vvod
    BCDToCurrency = False
    Left = 88
    Top = 576
  end
  object KMP_rep2: TOracleDataSet
    SQL.Strings = (
      
        'select rownum as rn, t.*, to_char(t.dat_prop,'#39'DD.MM.YYYY'#39') as dt' +
        '1,'
      
        'to_char(t.dat_ub,'#39'DD.MM.YYYY'#39') as dt2, p.name as status_name, r.' +
        'name as relat_name, u.name as ub_name'
      
        ' from scott.c_kart_pr t, scott.c_status_pr p, scott.relations r,' +
        ' scott.u_list u'
      
        ' where t.lsk = :lsk and t.status=p.id(+) and t.relat_id=r.id(+) ' +
        'and t.fk_ub=u.id(+)'
      ' and t.status not in (6) --'#1082#1088#1086#1084#1077' '#1074#1088#1077#1084#1077#1085#1085#1086' '#1087#1088#1086#1078#1080#1074
      'order by t.id'
      '')
    Optimize = False
    Variables.Data = {0300000001000000040000003A4C534B610000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000035000000020000004944010000000000030000004C534B0100000000
      000300000046494F010000000000060000005354415455530100000000000700
      00004441545F524F4701000000000003000000504F4C01000000000003000000
      444F4B01000000000005000000444F4B5F4301000000000005000000444F4B5F
      4E01000000000005000000444F4B5F4401000000000005000000444F4B5F5601
      0000000000080000004441545F50524F50010000000000060000004441545F55
      420100000000000800000052454C41545F4944010000000000060000004F4C44
      5F49440100000000000A0000005354415455535F4441540100000000000B0000
      005354415455535F43484E47010000000000050000004B5F46414D0100000000
      00040000004B5F494D010000000000040000004B5F4F54010000000000090000
      00464B5F444F435F545001000000000006000000464B5F4E4143010000000000
      07000000425F504C4143450100000000000B000000464B5F46524D5F434E5452
      0100000000000B000000464B5F46524D5F5245474E0100000000000C00000046
      4B5F46524D5F44495354520100000000000800000046524D5F544F574E010000
      0000000700000046524D5F4441540100000000000600000046524D5F4E440100
      000000000600000046524D5F4B5701000000000007000000575F504C41434501
      000000000002000000524E0100000000000B0000005354415455535F4E414D45
      0100000000000A00000052454C41545F4E414D4501000000000005000000464B
      5F55420100000000000700000055425F4E414D450100000000000A000000464B
      5F46524D5F4B554C0100000000000A000000464B5F544F5F434E545201000000
      00000A000000464B5F544F5F5245474E0100000000000B000000464B5F544F5F
      444953545201000000000007000000544F5F544F574E01000000000009000000
      464B5F544F5F4B554C01000000000005000000544F5F4E440100000000000500
      0000544F5F4B5701000000000008000000464B5F434954495A01000000000008
      000000464B5F4D494C49540100000000000D000000464B5F4D494C49545F5245
      474E0100000000000B0000005354415455535F44415442010000000000030000
      00445431010000000000030000004454320100000000000A000000464B5F4445
      425F4F524701000000000009000000505249565F50524F430100000000000400
      000041435054010000000000}
    MasterFields = 'LSK'
    DetailFields = 'LSK'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 160
    Top = 696
  end
  object frxDBDataset11: TfrxDBDataset
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
    DataSet = DM_Bill.Uni_rep2
    BCDToCurrency = False
    Left = 224
    Top = 698
  end
  object frxDBDataset12: TfrxDBDataset
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
    DataSet = DM_Bill.Uni_rep1
    BCDToCurrency = False
    Left = 224
    Top = 634
  end
  object KMP_rep1: TOracleDataSet
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
      0300000001000000040000003A4C534B05000000090000002020202020202020
      0000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000066000000030000004C534B010000000000030000004B554C01000000
      0000020000004E44010000000000020000004B57010000000000030000004649
      4F010000000000030000004B5052010000000000060000004B50525F57520100
      00000000060000004B50525F4F54010000000000070000004B50525F43454D01
      0000000000050000004B50525F53010000000000030000004F504C0100000000
      000300000050504C01000000000005000000504C444F50010000000000020000
      004B49010000000000040000005053434801000000000007000000505343485F
      445401000000000006000000535441545553010000000000030000004B575401
      0000000000050000004C4F44504C0100000000000500000042454B504C010000
      0000000500000042414C504C010000000000040000004B4F4D4E010000000000
      020000004554010000000000030000004B4647010000000000040000004B464F
      5401000000000003000000504857010000000000030000004D48570100000000
      0003000000504757010000000000030000004D47570100000000000300000050
      454C010000000000030000004D454C010000000000080000005355425F4E4143
      4801000000000008000000535542534944494901000000000008000000535542
      5F4441544101000000000005000000504F4C4953010000000000060000005343
      485F454C01000000000003000000524555010000000000040000005445585401
      000000000008000000534348454C5F445401000000000006000000454B535542
      3101000000000006000000454B53554232010000000000040000004B52414E01
      0000000000050000004B52414E3101000000000002000000454C010000000000
      03000000454C310100000000000400000053474B550100000000000500000044
      4F50504C01000000000008000000535542535F434F5201000000000008000000
      484F5553455F494401000000000008000000435F4C534B5F4944010000000000
      030000004D4731010000000000030000004D4732010000000000070000004B41
      4E5F53434801000000000008000000535542535F494E46010000000000040000
      00464C414701000000000005000000464C414731010000000000080000004B5F
      4C534B5F494401000000000007000000444F475F4E554D010000000000090000
      00534348454C5F454E440100000000000A000000464B5F4445425F4F52470100
      0000000008000000535542535F435552010000000000050000004B5F46414D01
      0000000000040000004B5F494D010000000000040000004B5F4F540100000000
      00040000004D454D4F01000000000008000000464B5F44495354520100000000
      00070000004C41575F444F430100000000000B0000005354524545545F4E414D
      450100000000000A00000044495354525F4E414D45010000000000040000004E
      5F4E44010000000000040000004E5F4B570100000000000B0000005354415455
      535F4E414D450100000000000B000000464B5F504153505F4F52470100000000
      00080000004E414D455F52455501000000000006000000464B5F455252010000
      00000009000000544F574E5F4E414D450100000000000A0000004C41575F444F
      435F445401000000000008000000505256545F444F430100000000000B000000
      505256545F444F435F4454010000000000030000004144520100000000000800
      000046494F5F50415350010000000000080000004E414D455F524B4301000000
      00000300000043504E010000000000070000004B50525F575250010000000000
      05000000504E5F4454010000000000070000004C534B5F455854010000000000
      05000000464B5F545001000000000007000000504552535F5450010000000000
      0400000053454C310100000000000700000056564F445F4F5401000000000004
      000000454E545201000000000003000000504F54010000000000030000004D4F
      5401000000000004000000454C534B0100000000000A000000504152454E545F
      4C534B0100000000000B000000464B5F4B4C534B5F4F424A0100000000000500
      000044545F43520100000000000E00000055534C5F4E414D455F53484F525401
      00000000000D000000464143545F4D455445525F545001000000000007000000
      4B50525F4F574E0100000000000F000000464B5F4B4C534B5F5052454D495345
      0100000000000700000044495649444544010000000000}
    MasterFields = 'lsk'
    DetailFields = 'lsk'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 160
    Top = 632
  end
  object OD_spr_services: TOracleDataSet
    SQL.Strings = (
      'select t.* from scott.spr_services t '
      'where :p_mg between t.mg and t.mg1 and t.fk_sch_type=0'
      'order by t.mg, t.npp')
    Optimize = False
    Variables.Data = {0300000001000000050000003A505F4D47050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000009000000464E414D455F534348010000000000020000004D
      47010000000000030000004D47310100000000000B000000464B5F5343485F54
      595045010000000000020000005450010000000000}
    Session = DataModule1.OracleSession1
    Left = 160
    Top = 576
  end
  object DS_spr_services: TDataSource
    DataSet = OD_spr_services
    Left = 224
    Top = 576
  end
  object OD_uk: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.name, 1 as sel from scott.t_org t'
      'where t.reu is not null'
      
        'and exists (select s.* from scott.C_USERS_PERM s join scott.u_li' +
        'st u on s.fk_perm_tp=u.id join scott.t_user e on e.cd=user and s' +
        '.user_id=e.id'
      '                   and u.cd='#39#1076#1086#1089#1090#1091#1087' '#1082' '#1086#1090#1095#1105#1090#1072#1084#39
      '                   where s.fk_reu=t.reu)'
      'order by t.reu')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000003000000524555010000000000040000004E414D45010000
      0000000300000053454C010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 160
    Top = 520
  end
  object DS_uk: TDataSource
    DataSet = OD_uk
    Left = 224
    Top = 520
  end
  object OD_sel_obj: TOracleDataSet
    SQL.Strings = (
      
        'select '#39'0'#39' as id, '#39#1040#1076#1088#1077#1089#1091#39' as name from dual where :var_ in (0,1' +
        ',2,3,4,5,6,7,8,9)'
      'union all'
      
        'select '#39'1'#39' as id, '#39#1051#1080#1094#1077#1074#1086#1084#1091' '#1089#1095#1077#1090#1091#39' as name from dual where :var_' +
        ' in (0,1,2,3,4,5,6,7,8,9)'
      'union all'
      
        'select '#39'2'#39' as id, '#39#1059#1050#39' as name from dual where  :var_ in (0,1,4,' +
        '5,6,7)')
    Optimize = False
    Variables.Data = {0300000001000000050000003A5641525F030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    AfterOpen = OD_sel_objAfterOpen
    Left = 24
    Top = 144
  end
  object DS_sel_obj: TDataSource
    DataSet = OD_sel_obj
    Left = 88
    Top = 145
  end
  object OD_ls_cnt: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  scott.rep_bills.get_breaks(p_reu => :p_reu,'
      '                       p_cnt => :p_cnt,'
      '                       p_mg => :p_mg,'
      '                       p_recset => :p_recset);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000004000000060000003A505F5245550500000000000000000000000600
      00003A505F434E54030000000000000000000000050000003A505F4D47050000
      000000000000000000090000003A505F52454353455474000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000900000046495253545F524543010000000000080000004C
      4153545F524543010000000000040000004E414D45010000000000}
    Session = DataModule1.OracleSession1
    DesignActivation = True
    BeforeOpen = OD_ls_cntBeforeOpen
    AfterOpen = OD_ls_cntAfterOpen
    Left = 24
    Top = 192
  end
  object DS_ls_cnt: TDataSource
    DataSet = OD_ls_cnt
    Left = 88
    Top = 192
  end
  object frxDBD_cmp_detail_primary: TfrxDBDataset
    UserName = 'frxDB_cmp_detail_primary'
    CloseDataSource = False
    DataSet = DM_Bill.Uni_cmp_detail_primary
    BCDToCurrency = False
    Left = 336
    Top = 32
  end
  object frxDBD_cmp_detail_main: TfrxDBDataset
    UserName = 'frxDBD_cmp_detail_main'
    CloseDataSource = False
    FieldAliases.Strings = (
      'LSK=LSK'
      'K_LSK_ID=K_LSK_ID'
      'OPL=OPL'
      'PERIOD=PERIOD'
      'DT=DT'
      'ST_NAME=ST_NAME'
      'PERS_TP=PERS_TP'
      'ADR=ADR'
      'ADR2=ADR2'
      'RASCHET_SCHET=RASCHET_SCHET'
      'SAL_IN=SAL_IN'
      'SAL_OUT=SAL_OUT'
      'K_FAM=K_FAM'
      'K_IM=K_IM'
      'K_OT=K_OT'
      'FIO=FIO'
      'INN=INN'
      'K_SCHET=K_SCHET'
      'KPP=KPP'
      'BIK=BIK'
      'BANK=BANK'
      'FULL_NAME=FULL_NAME'
      'PHONE=PHONE'
      'ADR_ORG=ADR_ORG'
      'UK_NAME=UK_NAME'
      'ADR_WWW=ADR_WWW'
      'PSCH=PSCH'
      'LSK_TP=LSK_TP'
      'LSK_TP_NPP=LSK_TP_NPP'
      'PRN_NUM=PRN_NUM'
      'PRN_NEW=PRN_NEW'
      'PENYA_IN=PENYA_IN'
      'PENYA_CHARGE=PENYA_CHARGE'
      'PENYA_CORR=PENYA_CORR'
      'PENYA_PAY=PENYA_PAY'
      'PENYA_OUT=PENYA_OUT'
      'PAY=PAY'
      'LAST_DTEK=LAST_DTEK'
      'CHARGE=CHARGE'
      'QR=QR')
    DataSet = DM_Bill.Uni_cmp_detail_main
    BCDToCurrency = False
    Left = 336
    Top = 88
  end
  object frxDB_cmp_main: TfrxDBDataset
    UserName = 'frxDB_cmp_main'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRN_NUM=PRN_NUM'
      'FOR_BILL=FOR_BILL'
      'LSK=LSK'
      'K_LSK_ID=K_LSK_ID'
      'OPL=OPL'
      'MG2=MG2'
      'KPR=KPR'
      'KPR_WR=KPR_WR'
      'KPR_WRP=KPR_WRP'
      'KPR_OT=KPR_OT'
      'OPL_1=OPL_1'
      'ST_NAME=ST_NAME'
      'PERS_TP=PERS_TP'
      'ADR=ADR'
      'MG=MG'
      'MG_STR=MG_STR'
      'FIO=FIO')
    DataSet = DM_Bill.Uni_cmp_main
    BCDToCurrency = False
    Left = 336
    Top = 144
  end
  object frxDB_cmp_detail_cap: TfrxDBDataset
    UserName = 'frxDB_cmp_detail_cap'
    CloseDataSource = False
    DataSet = DM_Bill.Uni_cmp_detail_cap
    BCDToCurrency = False
    Left = 336
    Top = 192
  end
  object frxDB_cmp_funds_primary: TfrxDBDataset
    UserName = 'frxDB_cmp_funds_primary'
    CloseDataSource = False
    DataSet = DM_Bill.Uni_cmp_funds_primary
    BCDToCurrency = False
    Left = 336
    Top = 248
  end
  object frxDB_cmp_funds_main: TfrxDBDataset
    UserName = 'frxDB_cmp_funds_main'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IS_AMNT_SUM=IS_AMNT_SUM'
      'USL=USL'
      'NPP=NPP'
      'NAME=NAME'
      'PRICE=PRICE'
      'VOL=VOL'
      'CHARGE=CHARGE'
      'CHANGE1=CHANGE1'
      'CHANGE_PROC1=CHANGE_PROC1'
      'CHANGE2=CHANGE2'
      'AMNT=AMNT'
      'DEB=DEB'
      'BILL_COL=BILL_COL'
      'BILL_COL2=BILL_COL2'
      'KUB=KUB'
      'PAY=PAY')
    DataSet = DM_Bill.Uni_cmp_funds_main
    BCDToCurrency = False
    Left = 336
    Top = 296
  end
  object frxDB_cmp_funds_cap: TfrxDBDataset
    UserName = 'frxDB_cmp_funds_cap'
    CloseDataSource = False
    DataSet = DM_Bill.Uni_cmp_funds_cap
    BCDToCurrency = False
    Left = 336
    Top = 352
  end
  object frxDB_cmp_funds_lsk: TfrxDBDataset
    UserName = 'frxDB_cmp_funds_lsk'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IS_AMNT_SUM=IS_AMNT_SUM'
      'USL=USL'
      'NPP=NPP'
      'NAME=NAME'
      'PRICE=PRICE'
      'VOL=VOL'
      'CHARGE=CHARGE'
      'CHANGE1=CHANGE1'
      'CHANGE_PROC1=CHANGE_PROC1'
      'CHANGE2=CHANGE2'
      'AMNT=AMNT'
      'DEB=DEB'
      'BILL_COL=BILL_COL'
      'BILL_COL2=BILL_COL2'
      'KUB=KUB'
      'PAY=PAY'
      'CHARGEOWN=CHARGEOWN')
    DataSet = DM_Bill.Uni_cmp_funds_lsk
    BCDToCurrency = False
    Left = 336
    Top = 408
  end
  object frxDB_cmp_contractors: TfrxDBDataset
    UserName = 'frxDB_cmp_contractors'
    CloseDataSource = False
    DataSet = DM_Bill.Uni_cmp_contractors
    BCDToCurrency = False
    Left = 336
    Top = 464
  end
  object frxDB_cmp_qr: TfrxDBDataset
    UserName = 'frxDB_cmp_qr'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QR=QR'
      'UK_NAME=UK_NAME')
    DataSet = DM_Bill.Uni_cmp_qr
    BCDToCurrency = False
    Left = 336
    Top = 520
  end
  object frxDB_cmp_main_arch: TfrxDBDataset
    UserName = 'frxDB_cmp_main_arch'
    CloseDataSource = False
    FieldAliases.Strings = (
      'K_LSK_ID=K_LSK_ID'
      'ADR=ADR'
      'LSK=LSK'
      'KPR=KPR'
      'OPL=OPL'
      'PERS_TP=PERS_TP'
      'FIO=FIO'
      'NAME_UK=NAME_UK')
    DataSet = DM_Bill.Uni_cmp_main_arch
    BCDToCurrency = False
    Left = 336
    Top = 576
  end
  object frxDB_arch_supp: TfrxDBDataset
    UserName = 'frxDB_arch_supp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PAY=PAY'
      'PAY_PEN=PAY_PEN'
      'DOLG=DOLG'
      'PENYA=PENYA')
    DataSet = DM_Bill.Uni_arch_supp
    BCDToCurrency = False
    Left = 336
    Top = 632
  end
  object frxDBData_arch: TfrxDBDataset
    UserName = 'frxDBData_arch'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MG='#1055#1077#1088#1080#1086#1076
      'MG_NEW=MG_NEW'
      'LSK='#1051'/C'
      'NM='#1059#1089#1083#1091#1075#1072
      'SUMMA='#1053#1072#1095
      'SAL='#1044#1086#1083#1075
      'PAY='#1054#1087#1083#1072#1090#1072
      'PAY_PEN='#1054#1087#1083'.'#1087#1077#1085#1080
      'PEN='#1055#1077#1085#1103' '#1090#1077#1082'.')
    DataSet = DM_Bill.Uni_arch
    BCDToCurrency = False
    Left = 336
    Top = 696
  end
  object frxDBData_arch3: TfrxDBDataset
    UserName = 'frxDBData_arch3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'MG=MG'
      'MG_NEW=MG_NEW'
      'LSK=LSK'
      'SAL_IN=SAL_IN'
      'SAL_OUT=SAL_OUT'
      'SUM_CHRG=SUM_CHRG'
      'PAY=PAY'
      'PAY_PEN=PAY_PEN'
      'PEN_IN=PEN_IN'
      'PEN_OUT=PEN_OUT'
      'PEN_CUR=PEN_CUR')
    DataSet = DM_Bill.Uni_arch
    BCDToCurrency = False
    Left = 336
    Top = 752
  end
  object OD_t_org2: TOracleDataSet
    SQL.Strings = (
      'select t.* from scott.t_org t'
      'where t.id=:org')
    Optimize = False
    Variables.Data = {0300000001000000040000003A4F5247030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000039000000020000004944010000000000020000004344010000000000
      08000000464B5F4F52475450010000000000040000004E414D45010000000000
      030000004E505001000000000001000000560100000000000900000050415245
      4E545F4944010000000000030000005245550100000000000500000054524553
      5401000000000003000000554348010000000000030000004144520100000000
      0003000000494E4E010000000000070000004D414E4147455201000000000003
      0000004255480100000000000D000000524153434845545F5343484554010000
      000000070000004B5F5343484554010000000000090000004B4F445F4F4B4F4E
      48010000000000080000004B4F445F4F47524E0100000000000300000042494B
      0100000000000500000050484F4E45010000000000030000004B505001000000
      00000400000042414E4B0100000000000600000049445F455850010000000000
      090000004144525F52454349500100000000000E000000415554484F52495A45
      445F4449520100000000000E000000415554484F52495A45445F425548010000
      0000000C000000415554485F4449525F444F430100000000000C000000415554
      485F4255485F444F43010000000000040000004F4B504F010000000000060000
      005645525F43440100000000000900000046554C4C5F4E414D45010000000000
      0600000050484F4E45320100000000000A000000504152454E545F4944320100
      0000000007000000464B5F4F5247320100000000000700000042414E4B5F4344
      010000000000070000004144525F57575701000000000005000000454D41494C
      01000000000009000000484541445F4E414D450100000000000E000000524153
      434845545F53434845543201000000000009000000504F53545F494E44580100
      000000000B000000525F5343485F41444449540100000000000B000000464B5F
      42494C4C5F56415201000000000006000000414F475549440100000000000500
      00004F4B544D4F01000000000008000000434F44455F44454201000000000009
      000000444F4C475F4E414D450100000000000A00000042414E4B5F464E414D45
      0100000000000300000047525001000000000009000000525F5343485F474953
      0100000000000B000000444953545F5041595F54500100000000000800000041
      44525F434153480100000000000600000049535F52534F0100000000000F0000
      0049535F45584348414E47455F4749530100000000000A0000004F52475F5450
      5F474953010000000000070000004752505F4445420100000000000F00000049
      535F45584348414E47455F45585401000000000010000000534552564943455F
      4E414D455F474953010000000000}
    MasterFields = 'org'
    DetailFields = 'org'
    Session = DataModule1.OracleSession1
    Left = 160
    Top = 304
  end
  object frxDBDataset13: TfrxDBDataset
    UserName = 'frxDB_t_org2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD=CD'
      'FK_ORGTP=FK_ORGTP'
      'NAME=NAME'
      'NPP=NPP'
      'V=V'
      'PARENT_ID=PARENT_ID'
      'REU=REU'
      'TREST=TREST'
      'UCH=UCH'
      'ADR=ADR'
      'INN=INN'
      'MANAGER=MANAGER'
      'BUH=BUH'
      'RASCHET_SCHET=RASCHET_SCHET'
      'K_SCHET=K_SCHET'
      'KOD_OKONH=KOD_OKONH'
      'KOD_OGRN=KOD_OGRN'
      'BIK=BIK'
      'PHONE=PHONE'
      'KPP=KPP'
      'BANK=BANK'
      'ID_EXP=ID_EXP'
      'ADR_RECIP=ADR_RECIP'
      'AUTHORIZED_DIR=AUTHORIZED_DIR'
      'AUTHORIZED_BUH=AUTHORIZED_BUH'
      'AUTH_DIR_DOC=AUTH_DIR_DOC'
      'AUTH_BUH_DOC=AUTH_BUH_DOC'
      'OKPO=OKPO'
      'VER_CD=VER_CD'
      'FULL_NAME=FULL_NAME'
      'PHONE2=PHONE2'
      'PARENT_ID2=PARENT_ID2'
      'FK_ORG2=FK_ORG2'
      'BANK_CD=BANK_CD')
    DataSet = OD_t_org2
    BCDToCurrency = False
    Left = 224
    Top = 304
  end
  object OD_data4: TOracleDataSet
    SQL.Strings = (
      'select t.fio, c.name as st_name, r.name as rl_name'
      ' from scott.a_kart_pr2 t, scott.c_status_pr c, scott.relations r'
      
        'where t.status <> 4 and :mg between t.mgFrom and t.mgTo and t.st' +
        'atus=c.id(+) and t.relat_id=r.id(+) and'
      '  t.lsk =:lsk')
    Optimize = False
    Variables.Data = {
      0300000002000000030000003A4D47050000000000000000000000040000003A
      4C534B050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000300000046494F0100000000000700000053545F4E414D45
      01000000000007000000524C5F4E414D45010000000000}
    MasterFields = 'lsk; mg'
    DetailFields = 'lsk; mg'
    Session = DataModule1.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 520
  end
  object frxDBDataset14: TfrxDBDataset
    UserName = 'frxDB_kart_pr'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FIO=FIO'
      'ST_NAME=ST_NAME'
      'RL_NAME=RL_NAME')
    DataSet = OD_data4
    BCDToCurrency = False
    Left = 88
    Top = 520
  end
end
