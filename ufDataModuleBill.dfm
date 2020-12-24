object DM_Bill: TDM_Bill
  OldCreateOrder = False
  Left = 1370
  Top = 221
  Height = 607
  Width = 470
  object Uni_cmp_main: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.rep_bills_compound.main(p_sel_obj => :p_sel_obj,'
      '                          p_reu => :p_reu,'
      '                          p_kul => :p_kul,'
      '                          p_nd => :p_nd,'
      '                          p_kw => :p_kw,'
      '                          p_lsk => :p_lsk,'
      '                          p_lsk1 => :p_lsk1,'
      '                          p_firstnum => :p_firstnum,'
      '                          p_lastnum => :p_lastnum,'
      '                          p_is_closed => :p_is_closed,'
      '                          p_mg => :p_mg,'
      '                          p_sel_uk => :p_sel_uk,'
      '                          p_postcode => :p_postcode,'
      '                          p_rfcur => :p_rfcur);'
      'end;')
    FetchRows = 1000
    Constraints = <>
    Left = 32
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_sel_obj'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_reu'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_kul'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_nd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_kw'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_lsk'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_lsk1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_firstnum'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_lastnum'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_postcode'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_detail_primary: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      ''
      ' scott.rep_bills_compound.detail(p_klsk => :k_lsk_id,'
      '                            p_is_closed => :p_is_closed,'
      '                            p_mg => :p_mg,'
      '                            p_sel_tp => :p_sel_tp,'
      '                            p_sel_flt_tp => :p_sel_flt_tp,'
      '                          p_sel_uk => :p_sel_uk,'
      '                            p_rfcur => :p_rfcur);'
      'end;')
    MasterSource = DS_cmp_main
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 32
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'k_lsk_id'
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_tp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_flt_tp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_detail_main: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      ''
      ' scott.rep_bills_compound.detail(p_klsk => :k_lsk_id,'
      '                            p_is_closed => :p_is_closed,'
      '                            p_mg => :p_mg,'
      '                            p_sel_tp => :p_sel_tp,'
      '                            p_sel_flt_tp => :p_sel_flt_tp,'
      '                          p_sel_uk => :p_sel_uk,'
      '                            p_rfcur => :p_rfcur);'
      'end;')
    MasterSource = DS_cmp_main
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 184
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'k_lsk_id'
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_tp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_flt_tp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_detail_cap: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      ''
      ' scott.rep_bills_compound.detail(p_klsk => :k_lsk_id,'
      '                            p_is_closed => :p_is_closed,'
      '                            p_mg => :p_mg,'
      '                            p_sel_tp => :p_sel_tp,'
      '                            p_sel_flt_tp => :p_sel_flt_tp,'
      '                          p_sel_uk => :p_sel_uk,'
      '                            p_rfcur => :p_rfcur);'
      'end;')
    MasterSource = DS_cmp_main
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 32
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'k_lsk_id'
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_tp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_flt_tp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_funds_primary: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      ''
      
        ' scott.rep_bills_compound.funds_flow_by_klsk(p_klsk => :k_lsk_id' +
        ','
      '                                        p_sel_tp => :p_sel_tp,'
      '                            p_is_closed => :p_is_closed,'
      '                                        p_mg => :p_mg,'
      '                            p_sel_flt_tp => :p_sel_flt_tp,'
      '                          p_sel_uk => :p_sel_uk,'
      '                                        p_rfcur => :p_rfcur);'
      ''
      'end;')
    MasterSource = DS_cmp_main
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 32
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'k_lsk_id'
      end
      item
        DataType = ftInteger
        Name = 'p_sel_tp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_flt_tp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_funds_cap: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      ''
      
        ' scott.rep_bills_compound.funds_flow_by_klsk(p_klsk => :k_lsk_id' +
        ','
      '                                        p_sel_tp => :p_sel_tp,'
      '                            p_is_closed => :p_is_closed,'
      '                                        p_mg => :p_mg,'
      '                            p_sel_flt_tp => :p_sel_flt_tp,'
      '                          p_sel_uk => :p_sel_uk,'
      '                                        p_rfcur => :p_rfcur);'
      ''
      'end;')
    MasterSource = DS_cmp_main
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 32
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'k_lsk_id'
      end
      item
        DataType = ftInteger
        Name = 'p_sel_tp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_flt_tp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_contractors: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      ''
      ' scott.rep_bills_compound.contractors(p_klsk => :k_lsk_id,'
      '                            p_is_closed => :p_is_closed,'
      '                            p_mg => :p_mg,'
      '                            p_sel_flt_tp => :p_sel_flt_tp,'
      '                          p_sel_uk => :p_sel_uk,'
      '                            p_rfcur => :p_rfcur);'
      'end;')
    MasterSource = DS_cmp_main
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 32
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'k_lsk_id'
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_flt_tp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_qr: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      ''
      ' scott.rep_bills_compound.getQr(p_klsk => :k_lsk_id,'
      '                            p_is_closed => :p_is_closed,'
      '                            p_mg => :p_mg,'
      '                            p_sel_tp => :p_sel_tp,'
      '                            p_sel_flt_tp => :p_sel_flt_tp,'
      '                          p_sel_uk => :p_sel_uk,'
      '                            p_rfcur => :p_rfcur);'
      'end;')
    MasterSource = DS_cmp_main
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 32
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'k_lsk_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_tp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_flt_tp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_funds_main: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      ''
      
        ' scott.rep_bills_compound.funds_flow_by_klsk(p_klsk => :k_lsk_id' +
        ','
      '                                        p_sel_tp => :p_sel_tp,'
      '                            p_is_closed => :p_is_closed,'
      '                                        p_mg => :p_mg,'
      '                            p_sel_flt_tp => :p_sel_flt_tp,'
      '                          p_sel_uk => :p_sel_uk,'
      '                                        p_rfcur => :p_rfcur);'
      ''
      'end;')
    MasterSource = DS_cmp_main
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 184
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'k_lsk_id'
      end
      item
        DataType = ftInteger
        Name = 'p_sel_tp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_flt_tp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_funds_lsk: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      '  scott.rep_bills_ext.detail(p_lsk => :lsk,'
      '                       p_mg => :p_mg,'
      '                       p_includesaldo => :p_includesaldo,'
      '                       p_rfcur => :p_rfcur);'
      'end;')
    MasterSource = DS_cmp_detail_primary
    MasterFields = 'lsk'
    DetailFields = 'lsk'
    Constraints = <>
    Left = 184
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_includesaldo'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object DS_cmp_main: TDataSource
    DataSet = Uni_cmp_main
    Left = 112
    Top = 80
  end
  object DS_cmp_funds_primary: TDataSource
    DataSet = Uni_cmp_funds_primary
    Left = 112
    Top = 211
  end
  object Uni_arch: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.rep_bills.arch(p_k_lsk => :k_lsk_id,'
      '                 p_sel_obj => :p_sel_obj,'
      '                 p_lsk => :lsk,'
      '                 p_tp => :p_tp,'
      '                 p_mg1 => :p_mg1,'
      '                 p_mg2 => :p_mg2,'
      '                 p_sel_uk => :p_sel_uk,'
      '                 p_rfcur => :p_rfcur);'
      'end;')
    MasterSource = DS_cmp_main_arch
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 96
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'k_lsk_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_obj'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_tp'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftString
        Name = 'p_mg1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object DS_cmp_detail_primary: TDataSource
    DataSet = Uni_cmp_detail_primary
    Left = 112
    Top = 35
  end
  object Uni_arch_supp: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.rep_bills.arch_supp(p_k_lsk => :k_lsk_id,'
      '                 p_sel_obj => :p_sel_obj,'
      '                 p_lsk => :lsk,'
      '                 p_mg1 => :p_mg1,'
      '                 p_mg2 => :p_mg2,'
      '                 p_sel_uk => :p_sel_uk,'
      '                 p_rfcur => :p_rfcur);'
      'end;'
      '')
    MasterSource = DS_cmp_main_arch
    MasterFields = 'k_lsk_id'
    DetailFields = 'k_lsk_id'
    Constraints = <>
    Left = 32
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'k_lsk_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_sel_obj'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object Uni_cmp_main_arch: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  scott.rep_bills_compound.main_arch(p_sel_obj => :p_sel_obj,'
      '                          p_kul => :p_kul,'
      '                          p_nd => :p_nd,'
      '                          p_kw => :p_kw,'
      '                          p_lsk => :p_lsk,'
      '                          p_lsk1 => :p_lsk1,'
      '                          p_is_closed => :p_is_closed,'
      '                          p_firstNum => :p_firstNum,'
      '                          p_lastNum => :p_lastNum,'
      '                          p_mg => :p_mg,'
      '                          p_sel_uk => :p_sel_uk,'
      '                          p_rfcur => :p_rfcur);'
      'end;')
    FetchRows = 1000
    Constraints = <>
    Left = 32
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_sel_obj'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_kul'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_nd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_kw'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_lsk'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_lsk1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_is_closed'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_firstNum'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_lastNum'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_mg'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_sel_uk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'p_rfcur'
        Value = 'Object'
      end>
  end
  object DS_cmp_main_arch: TDataSource
    DataSet = Uni_cmp_main_arch
    Left = 88
    Top = 432
  end
  object Uni_rep1: TUniQuery
    Connection = DataModule1.UniConnection1
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
    MasterSource = DS_cmp_main
    MasterFields = 'lsk'
    DetailFields = 'lsk'
    FetchRows = 1000
    Constraints = <>
    Left = 112
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
      end>
  end
  object Uni_rep2: TUniQuery
    Connection = DataModule1.UniConnection1
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
    MasterSource = DS_cmp_main
    MasterFields = 'lsk'
    DetailFields = 'lsk'
    FetchRows = 1000
    Constraints = <>
    Left = 112
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
      end>
  end
  object Uni_postcode: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select distinct t.postcode from scott.kart k '
      'join scott.c_houses t on k.house_id=t.id'
      'and k.reu=:reu and t.postcode is not null'
      'order by t.postcode')
    Constraints = <>
    Left = 264
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'reu'
        ParamType = ptInput
      end>
  end
  object DS_postcode: TDataSource
    DataSet = Uni_postcode
    Left = 312
    Top = 208
  end
end
