object DM_Bill2: TDM_Bill2
  OldCreateOrder = False
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
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
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
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
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
      
        'select distinct s.id, s.name as street from scott.spul s join sc' +
        'ott.kart k on k.kul=s.id'
      ':substExp1'
      'order by s.name')
    ReadBuffer = 1000
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00530055004200530054004500580050003100
      010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000000C000000530054005200
      450045005400010000000000}
    Session = DataModule1.OracleSession1
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
      '  :substExp1'
      ' order by ord1, ord2')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000005000000303137350000
      000000080000003A005600410052000300000004000000000000000000000014
      0000003A00530055004200530054004500580050003100010000000000000000
      000000}
    QBEDefinition.QBEFieldDefs = {
      0500000007000000040000004E0044000100000000000A0000004E0044005F00
      4900440001000000000006000000520045005500010000000000100000004800
      4F005500530045005F0049004400010000000000080000004F00520044003100
      010000000000080000004F00520044003200010000000000060000004B005500
      4C00010000000000}
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
      ':substExp1'
      ' order by ord1, ord2')
    Optimize = False
    Variables.Data = {
      0400000004000000080000003A00520045005500050000000000000000000000
      080000003A004B0055004C000500000000000000000000000C0000003A004E00
      44005F0049004400050000000000000000000000140000003A00530055004200
      530054004500580050003100010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000A000000040000004B0057000100000000000A0000004B0057005F00
      49004400010000000000060000004C0053004B00010000000000060000004600
      49004F000100000000001000000043005F004C0053004B005F00490044000100
      00000000100000004B005F004C0053004B005F00490044000100000000000600
      00004B0050005200010000000000060000004F0050004C000100000000000800
      00004F00520044003100010000000000080000004F0052004400320001000000
      0000}
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
      040000000E0000000A0000003A004B0055004C005F0005000000000000000000
      0000080000003A004E0044005F000500000000000000000000000A0000003A00
      4C0053004B005F000500000009000000303130303030313700000000000C0000
      003A004C0053004B0031005F0005000000090000003031303030303137000000
      0000080000003A004B0057005F000500000000000000000000000C0000003A00
      56004100520032005F00030000000000000000000000080000003A004D004700
      5F00050000000000000000000000120000003A00530045004C005F004F004200
      4A005F000300000000000000000000000A0000003A005200450055005F000500
      00000000000000000000120000003A0043004E0054005F005200450043005F00
      030000000000000000000000160000003A00460049005200530054005F005200
      450043005F00030000000000000000000000140000003A004C00410053005400
      5F005200450043005F000300000000000000000000000C0000003A0056004100
      520033005F00030000000000000000000000100000003A0050005F0052004600
      430055005200740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000037000000060000004C0053004B00010000000000040000004D004700
      01000000000010000000460049004F005F004B00410053005300010000000000
      06000000410044005200010000000000060000004B0050005200010000000000
      0C0000004B00500052005F00570052000100000000000C0000004B0050005200
      5F004F0054000100000000000E000000530054005F004E0041004D0045000100
      0000000006000000500048005700010000000000060000005000470057000100
      0000000006000000500045004C00010000000000100000005000480057005F00
      4200410043004B00010000000000100000005000470057005F00420041004300
      4B0001000000000010000000500045004C005F004200410043004B0001000000
      0000060000004D0045004C00010000000000060000004D004800570001000000
      0000060000004D00470057000100000000000C0000004D0047005F0053005400
      5200010000000000060000004400540031000100000000000600000044005400
      32000100000000001000000048004F005500530045005F004900440001000000
      0000060000005200450055000100000000001A00000052004100530043004800
      450054005F005300430048004500540001000000000004000000510052000100
      000000000E000000530041004C005F004F005500540001000000000008000000
      41004400520032000100000000000A0000004B005F00460041004D0001000000
      0000080000004B005F0049004D00010000000000080000004B005F004F005400
      0100000000000600000049004E004E000100000000000E0000004B005F005300
      430048004500540001000000000006000000420049004B000100000000000800
      0000420041004E004B0001000000000012000000460055004C004C005F004E00
      41004D0045000100000000000800000050005300430048000100000000000C00
      00004C0053004B005F00540050000100000000000E000000500052004E005F00
      4E0055004D000100000000000E000000500052004E005F004E00450057000100
      00000000140000004C0053004B005F00540050005F004E005000500001000000
      00000E0000004B00500052005F005700520050000100000000000E0000005000
      4500520053005F00540050000100000000000A000000500048004F004E004500
      0100000000000E0000004100440052005F004F00520047000100000000000600
      0000460049004F0001000000000010000000500045004E00590041005F004900
      4E0001000000000014000000500045004E00590041005F004300480052004700
      01000000000014000000500045004E00590041005F0043004F00520052000100
      0000000012000000500045004E00590041005F00500041005900010000000000
      12000000500045004E00590041005F004F00550054000100000000001C000000
      500045004E00590041005F0043004800520047005F0049005400470001000000
      0000060000004F0050004C00010000000000060000004D004700320001000000
      000006000000500041005900010000000000120000004C004100530054005F00
      4400540045004B00010000000000100000004B005F004C0053004B005F004900
      4400010000000000}
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
      04000000080000000A0000003A004B0055004C005F0005000000000000000000
      0000080000003A004E0044005F00050000000000000000000000080000003A00
      4B0057005F000500000000000000000000000A0000003A004D00470031005F00
      050000000700000032303039313200000000000A0000003A004D00470032005F
      00050000000700000032303039313200000000000A0000003A004C0053004B00
      5F000500000009000000202020202020202000000000000A0000003A00560041
      0052005F00030000000400000001000000000000000C0000003A005600410052
      0032005F0003000000040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000043000000060000004C0053004B00010000000000060000004B005500
      4C0001000000000006000000460049004F00010000000000060000004B005000
      52000100000000000C0000004B00500052005F004F0054000100000000000600
      00004F0050004C00010000000000080000005000530043004800010000000000
      0C00000053005400410054005500530001000000000006000000550053004C00
      010000000000040000004E004D000100000000000E0000004300480041005200
      4700450053000100000000000E0000005000410059004D0045004E0054000100
      000000000A000000500052004900560053000100000000001000000043004800
      41004E004700450053003000010000000000100000004300480041004E004700
      450053003100010000000000100000004300480041004E004700450053003200
      010000000000140000005300540052004500450054004E0041004D0045000100
      0000000008000000490054004F0047000100000000000A000000540041005200
      49004600010000000000040000004B0049000100000000000C0000004C004700
      4E0041004D0045000100000000001200000050005200450056005F0043004800
      520047000100000000001000000050005200450056005F005000410059000100
      00000000120000004D004F004E00540048005900450041005200010000000000
      120000004F00560052005000410059004D004E00540001000000000008000000
      44004F004C004700010000000000080000005300550042005300010000000000
      0C0000005300550042005F0045004C000100000000000A0000004C0047005F00
      490044000100000000000A00000050004C0044004F0050000100000000000600
      000043004E0054000100000000000E0000004C0047005F004B004F0045004600
      0100000000000A000000500045004E0059004100010000000000100000004C00
      47005F004D00410049004E0053000100000000000C0000004C0047005F004900
      44005300010000000000100000004F004C0044005F0044004F004C0047000100
      00000000040000004D00470001000000000012000000490054004F0047005F00
      44004F004C004700010000000000140000004D004F004E005400480050004500
      4E0059004100010000000000160000004D004F004E0054004800500045004E00
      490054004700010000000000160000004D004F004E0054004800500045004E00
      5900410032000100000000001000000053005500420053005F0049004E004600
      0100000000000600000056004F004C000100000000001200000046004E004100
      4D0045005F005300430048000100000000000600000050004800570001000000
      00000600000050004700570001000000000006000000500045004C0001000000
      0000060000004D0047003200010000000000060000004D004700310001000000
      00000C000000530041004C005F0049004E000100000000001200000049005400
      4F0047005F00550053005A004E000100000000001200000050004C005F005300
      56004E004F0052004D000100000000000E0000004900540047005F0050004500
      4E000100000000000E0000004900540047005F00500041005900010000000000
      0C0000004B00500052005F0057005200010000000000100000004E0041004D00
      45005F004F00520047000100000000000A000000500048004F004E0045000100
      00000000100000004B005F004C0053004B005F00490044000100000000000C00
      0000500048004F004E00450032000100000000000A00000044004F004C004700
      32000100000000000C000000440054005F005300430048000100000000000600
      00004F005200470001000000000010000000430048005F00500052004F004300
      30000100000000000E0000004B00500052005F00570052005000010000000000
      160000004900540047005F00500045004E005F00500041005900010000000000
      0400000053004C0001000000000014000000420049004C004C005F0042005200
      41004B004500010000000000}
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
      0400000003000000080000003A004D0047005F00050000000000000000000000
      0A0000003A005600410052005F00030000000000000000000000100000003A00
      50005F0052004600430055005200740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000002F000000040000004900440001000000000004000000430044000100
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
      0100000000001200000046004E0041004D0045005F0053004300480001000000
      00000E0000004100440052005F005700570057000100000000000A0000004500
      4D00410049004C000100000000001200000048004500410044005F004E004100
      4D0045000100000000001C00000052004100530043004800450054005F005300
      430048004500540032000100000000001200000050004F00530054005F004900
      4E00440058000100000000001600000052005F005300430048005F0041004400
      4400490054000100000000001600000046004B005F00420049004C004C005F00
      5600410052000100000000000C00000041004F00470055004900440001000000
      00000A0000004F004B0054004D004F000100000000001000000043004F004400
      45005F004400450042000100000000000E000000420049004C004C005F005400
      5000010000000000}
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
      04000000040000000A0000003A004C0053004B005F0005000000000000000000
      00000A0000003A004B0055004C005F0005000000000000000000000008000000
      3A004E0044005F00050000000000000000000000080000003A004B0057005F00
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000009000000040000004D00470001000000000008000000440054004500
      4B00010000000000060000005000410059000100000000000800000044004F00
      50004C000100000000000A000000530055004D004D0041000100000000000800
      0000430048005200470001000000000008000000430048004E00470001000000
      000008000000490054004F004700010000000000060000004D00470031000100
      00000000}
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
      04000000030000000C0000003A0050005F004C0053004B000500000009000000
      20202020202020200000000000100000003A0050005F00520046004300550052
      007400000000000000000000000A0000003A0050005F004D0047000500000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000012000000060000004C0053004B00010000000000040000004E004D00
      0100000000000800000043004800520047000100000000000800000043004500
      4E0041000100000000000C000000530041004C005F0049004E00010000000000
      0A000000430048004E00470030000100000000000A000000430048004E004700
      31000100000000000A000000430048004E004700320001000000000008000000
      490054004F00470001000000000006000000550053004C000100000000001200
      0000430048004E0047005F00500052004F004300010000000000060000005600
      4F004C000100000000000C000000450044005F0049005A004D00010000000000
      060000004E005000500001000000000014000000420049004C004C005F004200
      520041004B00450001000000000010000000420049004C004C005F0056004100
      52000100000000000400000054005000010000000000040000004D0047000100
      00000000}
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
      0500000002000000080000004E0041004D004500010000000000060000005200
      45005500010000000000}
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
      0400000005000000140000003A004B005F004C0053004B005F00490044005F00
      030000000000000000000000100000003A0050005F0052004600430055005200
      7400000000000000000000000C0000003A0050005F004C0053004B0005000000
      00000000000000001C0000003A0050005F0046004C0054005F004D0047005F00
      460052004F004D00050000000000000000000000180000003A0050005F004600
      4C0054005F004D0047005F0054004F00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F0000000C0000004300480041005200470045000100000000000800
      000044004F004C0047000100000000000A000000500045004E00590041000100
      00000000060000004C0053004B00010000000000060000004100440052000100
      0000000006000000460049004F00010000000000080000004E0041004D004500
      0100000000000E0000004D0047005F004E0041004D0045000100000000000400
      00004D004700010000000000060000004D004700320001000000000012000000
      44004F004C0047005F004E0041004D0045000100000000000C00000050004500
      520049004F00440001000000000010000000460049004F005F004B0041005300
      5300010000000000080000005000530043004800010000000000080000004400
      410059005300010000000000}
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
      0400000003000000120000003A004B005F004C0053004B005F00490044000300
      00000000000000000000060000003A004D004700050000000000000000000000
      0A0000003A005000530043004800030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000060000004C0053004B000100000000000A00000053005500
      4D004D004100010000000000}
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
      04000000030000000C0000003A0050005F004C0053004B000500000009000000
      30303030303230330000000000100000003A0050005F00520046004300550052
      007400000000000000000000000A0000003A0050005F004D0047000500000007
      0000003230313430340000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000110000000600000056004F004C00010000000000060000004E005000
      5000010000000000080000004E0041004D0045000100000000000A0000005000
      52004900430045000100000000000C0000004300480041005200470045000100
      000000000E0000004300480041004E0047004500310001000000000018000000
      4300480041004E00470045005F00500052004F00430031000100000000000E00
      00004300480041004E004700450032000100000000000800000041004D004E00
      5400010000000000060000004400450042000100000000000600000055005300
      4C0001000000000016000000490053005F0041004D004E0054005F0053005500
      4D0001000000000010000000420049004C004C005F0043004F004C0001000000
      000012000000420049004C004C005F0043004F004C0032000100000000000600
      00004B0055004200010000000000060000005000410059000100000000001200
      00004300480041005200470045004F0057004E00010000000000}
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
      04000000050000000C0000003A0050005F004C0053004B000500000009000000
      20202020202020200000000000100000003A0050005F00520046004300550052
      007400000000000000000000000A0000003A0050005F004D0047000500000000
      00000000000000160000003A0050005F00420049004C004C005F005600410052
      000300000000000000000000000A0000003A0050005F00540050000300000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F00000008000000430045004E004100010000000000060000005500
      53004C000100000000000600000056004F004C00010000000000040000004E00
      4D00010000000000060000004C0053004B000100000000000C00000045004400
      5F0049005A004D00010000000000080000004300480052004700010000000000
      0C000000530041004C005F0049004E000100000000000A000000430048004E00
      470030000100000000000A000000430048004E00470031000100000000000A00
      0000430048004E004700320001000000000012000000430048004E0047005F00
      500052004F00430001000000000008000000490054004F004700010000000000
      14000000420049004C004C005F004200520041004B0045000100000000000600
      00004E0050005000010000000000}
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
    Variables.Data = {
      0400000001000000080000003A00520045005500050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000041000000040000004900440001000000000004000000430044000100
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
      000052005F005300430048005F004700490053000100000000000E0000004900
      4E00450054005F00430044000100000000001600000044004900530054005F00
      5000410059005F0054005000010000000000100000004100440052005F004300
      4100530048000100000000000C000000490053005F00520053004F0001000000
      00001E000000490053005F00450058004300480041004E00470045005F004700
      49005300010000000000140000004F00520047005F00540050005F0047004900
      53000100000000000E0000004700520050005F00440045004200010000000000
      1E000000490053005F00450058004300480041004E00470045005F0045005800
      54000100000000002000000053004500520056004900430045005F004E004100
      4D0045005F004700490053000100000000002C000000550053004C005F004600
      4F0052005F004300520045004100540045005F004500580054005F004C005300
      4B0001000000000032000000490053005F004300520045004100540045005F00
      4500580054005F004C0053004B005F0049004E005F004B004100520054000100
      00000000220000004500580054005F004C0053004B005F0046004F0052004D00
      410054005F00540050000100000000002A0000004500580054005F004C005300
      4B005F004C004F00410044005F00530041004C0044004F005F00540050000100
      00000000200000004500580054005F004C0053004B005F004C004F0041004400
      5F005000410059000100000000002A0000004500580054005F004C0053004B00
      5F005000410059005F0046004F0052004D00410054005F005400500001000000
      0000240000005600410052005F004400450042005F00500045004E005F005000
      44005F00470049005300010000000000}
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
      'select distinct t.id,'#11
      ''
      '                u.npp,'#11
      ''
      '                u.nm,'#11
      ''
      
        '                to_date(scott.utils.add_months2(:mg, 1) || '#39'01'#39',' +
        ' '#39'YYYYMMDD'#39') as dt1,'#11
      ''
      '                to_date(:mg || '#39'01'#39', '#39'YYYYMMDD'#39') as dt2,'#11
      ''
      '                (select sum(x.n1)'#11
      ''
      '                 from scott.t_objxpar x'#11
      ''
      
        '                          join scott.u_list s on s.cd = '#39'ins_vol' +
        '_sch'#39#11
      ''
      '                 where t.k_lsk_id = x.fk_k_lsk'#11
      ''
      '                   and x.fk_list = s.id'#11
      ''
      '                   and x.mg = :mg) as kub_lsk,'#11
      ''
      
        '                coalesce((select distinct last_value(to_char(x.n' +
        '1))'#11
      ''
      
        '                                            over (order by x.id ' +
        'rows between unbounded preceding and unbounded following)'#11
      ''
      '                 from scott.t_objxpar x'#11
      ''
      
        '                          join scott.u_list s on s.cd = '#39'ins_sch' +
        #39#11
      ''
      '                 where t.k_lsk_id = x.fk_k_lsk'#11
      ''
      '                   and x.fk_list = s.id'#11
      ''
      
        '                   and x.mg <= scott.utils.add_months2(:mg, -1))' +
        ', '#39'--'#39') as meter2,'#11
      ''
      '                (select distinct last_value(x.n1)'#11
      ''
      
        '                                            over (order by x.id ' +
        'rows between unbounded preceding and unbounded following)'#11
      ''
      '                 from scott.t_objxpar x'#11
      ''
      
        '                          join scott.u_list s on s.cd = '#39'ins_sch' +
        #39#11
      ''
      '                 where t.k_lsk_id = x.fk_k_lsk'#11
      ''
      '                   and x.fk_list = s.id'#11
      ''
      '                   and x.mg <= :mg) as meter'#11
      ''
      'from scott.meter t'#11
      ''
      '         join scott.usl u on t.fk_usl = u.usl'#11
      ''
      'where t.fk_klsk_obj = :k_lsk_id'#11
      ''
      '  and (t.dt2 >='#11
      ''
      
        '       last_day(to_date(:mg || '#39'01'#39', '#39'YYYYMMDD'#39')) or -- '#1083#1080#1073#1086' '#1089#1095'.' +
        ' '#1076#1072#1083#1100#1096#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1077#1090', '#1083#1080#1073#1086' '#1079#1072#1074#1077#1088#1096#1072#1077#1090' '#1088#1072#1073#1086#1090#1091' '#1074' '#1074#1099#1073#1088#1072#1085#1085#1086#1084' '#1087#1077#1088#1080#1086#1076#1077#11
      ''
      
        '       t.dt2 between to_date(:mg || '#39'01'#39', '#39'YYYYMMDD'#39') and last_d' +
        'ay(to_date(:mg || '#39'01'#39', '#39'YYYYMMDD'#39')))'#11
      ''
      'group by t.id, u.npp, u.nm, t.k_lsk_id'#11
      ''
      'order by u.npp')
    Optimize = False
    Variables.Data = {
      0400000002000000060000003A004D0047000500000000000000000000001200
      00003A004B005F004C0053004B005F0049004400080000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B000000040000004E004D00010000000000060000004B0055004200
      0100000000000E0000004B00550042005F004F0044004E000100000000000E00
      00004B00550042005F004C0053004B000100000000000A0000004D0045005400
      4500520001000000000006000000440054003100010000000000060000004400
      540032000100000000000C0000004D0045005400450052003200010000000000
      1200000048004F005500530045005F004F0044004E0001000000000012000000
      48004F005500530045005F0056004F004C00010000000000100000004B005500
      42005F004C0053004B003200010000000000}
    Master = OD_main
    MasterFields = 'k_lsk_id;mg'
    DetailFields = 'k_lsk_id;mg'
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
    Variables.Data = {
      0400000001000000080000003A004C0053004B00610000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000350000000400000049004400010000000000060000004C0053004B00
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
      52004F004300010000000000080000004100430050005400010000000000}
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
      0400000001000000080000003A004C0053004B00050000000900000020202020
      202020200000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000066000000060000004C0053004B00010000000000060000004B005500
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
      52000100000000001C000000550053004C005F004E0041004D0045005F005300
      48004F00520054000100000000001A00000046004100430054005F004D004500
      5400450052005F00540050000100000000000E0000004B00500052005F004F00
      57004E000100000000001E00000046004B005F004B004C0053004B005F005000
      520045004D004900530045000100000000000E00000044004900560049004400
      45004400010000000000}
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
    Variables.Data = {
      04000000010000000A0000003A0050005F004D00470005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000001200000046004E0041004D0045005F005300430048000100
      00000000040000004D004700010000000000060000004D004700310001000000
      00001600000046004B005F005300430048005F00540059005000450001000000
      00000400000054005000010000000000}
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
      050000000300000006000000520045005500010000000000080000004E004100
      4D00450001000000000006000000530045004C00010000000000}
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
    Variables.Data = {
      04000000010000000A0000003A005600410052005F0003000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
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
      04000000040000000C0000003A0050005F005200450055000500000000000000
      000000000C0000003A0050005F0043004E005400030000000000000000000000
      0A0000003A0050005F004D004700050000000000000000000000120000003A00
      50005F00520045004300530045005400740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000300000012000000460049005200530054005F005200450043000100
      00000000100000004C004100530054005F005200450043000100000000000800
      00004E0041004D004500010000000000}
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
    FieldAliases.Strings = (
      'LSK=LSK'
      'LSK_DISPLAY=LSK_DISPLAY'
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
      'LSK_DISPLAY=LSK_DISPLAY'
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
    FieldAliases.Strings = (
      'LSK=LSK'
      'LSK_DISPLAY=LSK_DISPLAY'
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
    Variables.Data = {
      0400000001000000080000003A004F0052004700030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000041000000040000004900440001000000000004000000430044000100
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
      45005F004E0041004D0045005F004700490053000100000000000E0000004900
      4E00450054005F00430044000100000000002C000000550053004C005F004600
      4F0052005F004300520045004100540045005F004500580054005F004C005300
      4B0001000000000032000000490053005F004300520045004100540045005F00
      4500580054005F004C0053004B005F0049004E005F004B004100520054000100
      00000000220000004500580054005F004C0053004B005F0046004F0052004D00
      410054005F00540050000100000000002A0000004500580054005F004C005300
      4B005F004C004F00410044005F00530041004C0044004F005F00540050000100
      00000000200000004500580054005F004C0053004B005F004C004F0041004400
      5F005000410059000100000000002A0000004500580054005F004C0053004B00
      5F005000410059005F0046004F0052004D00410054005F005400500001000000
      0000240000005600410052005F004400450042005F00500045004E005F005000
      44005F00470049005300010000000000}
    Master = OD_data
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
      0400000002000000060000003A004D0047000500000000000000000000000800
      00003A004C0053004B00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000300000006000000460049004F000100000000000E00000053005400
      5F004E0041004D0045000100000000000E00000052004C005F004E0041004D00
      4500010000000000}
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
