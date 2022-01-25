object DM_Olap: TDM_Olap
  OldCreateOrder = False
  Height = 810
  Width = 686
  object DS_spr_params: TDataSource
    DataSet = Uni_spr_params
    Left = 97
    Top = 240
  end
  object OD_oper: TOracleDataSet
    SQL.Strings = (
      'select oper, oper||'#39' '#39'||naim as name from scott.oper t'
      'order by t.naim')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004F00500045005200010000000000080000004E00
      41004D004500010000000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 264
  end
  object DS_oper: TDataSource
    DataSet = OD_oper
    Left = 168
    Top = 264
  end
  object OD_org: TOracleDataSet
    SQL.Strings = (
      
        'select t.kod, to_char(t.kod)||'#39' '#39'||t.name as name from scott.spr' +
        'org t'
      'order by t.name')
    ReadBuffer = 2000
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000060000004B00
      4F004400010000000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 296
  end
  object DS_org: TDataSource
    DataSet = OD_org
    Left = 168
    Top = 296
  end
  object DS_mg1: TDataSource
    DataSet = OD_mg1
    Left = 232
    Top = 288
  end
  object DS_mg2: TDataSource
    DataSet = OD_mg2
    Left = 264
    Top = 288
  end
  object OD_org_olap: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, to_char(t.id)||'#39' '#39'||t.name as name from scott.t_org' +
        ' t'
      'order by t.name')
    ReadBuffer = 2000
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000040000004900
      4400010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 312
  end
  object OD_spul_olap: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.name'
      ' from scott.spul t')
    ReadBuffer = 2000
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 360
    Top = 312
  end
  object OD_empty: TOracleDataSet
    SQL.Strings = (
      'select 1 as x, 1 as y from dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000020000005800010000000000020000005900010000000000}
    Session = DataModule1.OracleSession1
    Left = 256
    Top = 328
  end
  object OD_usl_olap: TOracleDataSet
    SQL.Strings = (
      
        'select u.usl, u.usl||'#39' '#39'||TRIM(u.nm)||DECODE(u.ed_izm,NULL,'#39#39','#39' ' +
        '('#39'||TRIM(u.ed_izm)||'#39')'#39') as nm'
      ' from scott.usl u'
      'union all'
      
        'select '#39'000'#39' as usl, '#39#1048#1090#1086#1075#1086', '#1073#1077#1079' '#1088#1072#1079#1073#1080#1074#1082#1080' '#1085#1072' '#1091#1089#1083#1091#1075#1080#39' as nm from ' +
        'dual'
      'order by nm')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000006000000550053004C00010000000000040000004E004D00
      010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 568
  end
  object OD_lsk_tp_olap: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.name'
      ' from scott.v_lsk_tp t'
      'union all'
      'select 0 as id, '#39#1053#1077' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086#39' as name from dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 360
    Top = 344
  end
  object OD_trest_olap: TOracleDataSet
    SQL.Strings = (
      'select t.trest, t.name as name_tr'
      'from scott.t_org t where t.trest is not null')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000A000000540052004500530054000100000000000E000000
      4E0041004D0045005F0054005200010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 376
  end
  object OD_org2_olap: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, to_char(t.id)||'#39' '#39'||t.name as name from scott.t_org' +
        ' t'
      'order by t.name')
    ReadBuffer = 2000
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000040000004900
      4400010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 360
    Top = 376
  end
  object OD_reu_olap: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.name as name_reu'
      'from scott.t_org t where t.reu is not null')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000006000000520045005500010000000000100000004E004100
      4D0045005F00520045005500010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 408
  end
  object OD_status_olap: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.name'
      'from scott.status t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 440
  end
  object OD_sch_olap: TOracleDataSet
    SQL.Strings = (
      'select 0 as id, '#39#1053#1086#1088#1084#1072#1090#1080#1074#39' as name from dual'
      'union all'
      'select 1 as id, '#39#1057#1095#1077#1090#1095#1080#1082#39' as name from dual'
      'union all'
      'select -1 as id, '#39#1053#1077#1090#39' as name from dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 472
  end
  object OD_psch_olap: TOracleDataSet
    SQL.Strings = (
      'select 0 as id, '#39#1054#1090#1082#1088#1099#1090#1099#1077' '#1051'/'#1057#39' as name from dual'
      'union all'
      'select 1 as id, '#39#1047#1072#1082#1088#1099#1090#1099#1077' '#1051'/'#1057#39' as name from dual'
      'union all'
      'select 2 as id, '#39#1057#1090#1072#1088#1099#1081' '#1092#1086#1085#1076#39' as name from dual'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000080000004E0041004D00
      4500010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 504
  end
  object DS_detail: TDataSource
    Left = 80
    Top = 656
  end
  object OD_mg1: TOracleDataSet
    SQL.Strings = (
      
        'select t.mg, scott.utils.MONTH_NAME1(substr(t.mg,5,2))||'#39' '#39'||sub' +
        'str(mg,1,4)||'#39' '#1075'.'#39' as mg1,'
      
        ' scott.utils.MONTH_NAME(substr(t.mg,5,2))||'#39' '#39'||substr(mg,1,4)||' +
        #39' '#1075'.'#39' as mg2'
      
        'from scott.v_period_reports t where t.id=:id_ and t.mg is not nu' +
        'll'
      'order by t.mg desc'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00490044005F00030000000400000004000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004D004700010000000000060000004D0047003100
      010000000000060000004D0047003200010000000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 448
  end
  object OD_mg2: TOracleDataSet
    SQL.Strings = (
      
        'select t.mg, scott.utils.MONTH_NAME(substr(t.mg,5,2))||'#39' '#39'||subs' +
        'tr(mg,1,4)||'#39' '#1075'.'#39' as mg1 '
      
        'from scott.v_period_reports t where t.id=:id_ and t.mg is not nu' +
        'll'
      'order by t.mg desc'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00490044005F00030000000400000004000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = DataModule1.OracleSession1
    Left = 168
    Top = 448
  end
  object DS_c_kart_pr: TDataSource
    DataSet = Uni_c_kart_pr
    Left = 80
    Top = 600
  end
  object DS_nabor_lsk: TDataSource
    DataSet = Uni_nabor_lsk
    Left = 80
    Top = 544
  end
  object OD_dat2: TOracleDataSet
    SQL.Strings = (
      'select t.dat as mg, t.dat as mg1 '
      
        'from scott.v_period_reports t where t.id=:id_ and t.dat is not n' +
        'ull'
      'order by t.dat desc'
      ''
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00490044005F00030000000400000004000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = DataModule1.OracleSession1
    Left = 168
    Top = 480
  end
  object OD_dat1: TOracleDataSet
    SQL.Strings = (
      'select t.dat as mg, t.dat as mg1'
      
        'from scott.v_period_reports t where t.id=:id_ and t.dat is not n' +
        'ull'
      'order by t.dat desc'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00490044005F00030000000400000004000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004D004700010000000000060000004D0047003100
      010000000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 480
  end
  object OD_level: TOracleDataSet
    SQL.Strings = (
      'select * from ('
      'select 0 as level_id, '#39#1060#1086#1085#1076#39' as name from dual'
      'union all'
      'select 1, '#39#1046#1069#1054#39' as name from dual'
      'union all'
      'select 2, '#39#1044#1086#1084#39' as name from dual'
      'union all'
      'select 3, '#39#1050#1074#1072#1088#1090#1080#1088#1072#39' as name from dual'
      ') where level_id between :id and :max_level')
    Optimize = False
    Variables.Data = {
      0400000002000000060000003A00490044000300000000000000000000001400
      00003A004D00410058005F004C004500560045004C0003000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000000400000049004400010000000000080000004E0041004D00
      45000100000000001200000046004B005F005200450050005F00490044000100
      00000000100000004C004500560045004C005F00490044000100000000000E00
      000058004D004C005400450058005400000000000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 416
    object OD_levelNAME: TStringField
      DisplayWidth = 8
      FieldName = 'NAME'
      Size = 8
    end
    object OD_levelLEVEL_ID: TFloatField
      FieldName = 'LEVEL_ID'
      Required = True
    end
  end
  object OD_uslm_olap: TOracleDataSet
    SQL.Strings = (
      
        'select distinct u.uslm, u.uslm||'#39' '#39'||TRIM(u.nm1)||DECODE(u.ed_iz' +
        'm,NULL,'#39#39','#39' ('#39'||TRIM(u.ed_izm)||'#39')'#39') as nm1'
      ' from scott.usl u where u.usl_norm=0'
      'union all'
      
        'select '#39'000'#39' as uslm, '#39#1048#1090#1086#1075#1086', '#1073#1077#1079' '#1088#1072#1079#1073#1080#1074#1082#1080' '#1085#1072' '#1091#1089#1083#1091#1075#1080#39' as nm1 fro' +
        'm dual'
      'order by nm1')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000060000004E004D0031000100000000000800000055005300
      4C004D00010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 616
  end
  object DS_tree_objects: TDataSource
    DataSet = Uni_tree_objects
    Left = 96
    Top = 192
  end
  object Uni_Data: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      
        '  scott.stat.rep_stat(:reu_, :p_for_reu, :kul_, :nd_, :trest_, :' +
        'mg_, :mg1_, :dat_, :dat1_, '
      
        '    :var_, :det_, :org_, :oper_, :cd_, :spk_id_, :p_house, :p_ou' +
        't_tp, :prep_refcursor);'
      'end;')
    FetchRows = 1000
    Left = 32
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'reu_'
        ParamType = ptInput
        Value = 'xx'
      end
      item
        DataType = ftString
        Name = 'p_for_reu'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'kul_'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'nd_'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'trest_'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'mg_'
        ParamType = ptInput
        Value = '201404'
      end
      item
        DataType = ftString
        Name = 'mg1_'
        ParamType = ptInput
        Value = '201404'
      end
      item
        DataType = ftDate
        Name = 'dat_'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'dat1_'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'var_'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'det_'
        ParamType = ptInput
        Value = 3
      end
      item
        DataType = ftInteger
        Name = 'org_'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'oper_'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'cd_'
        ParamType = ptInput
        Value = '78'
      end
      item
        DataType = ftInteger
        Name = 'spk_id_'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_house'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_out_tp'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftCursor
        Name = 'prep_refcursor'
        Value = ''
      end>
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 584
    Top = 32
  end
  object Uni_tree_objects: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select t.rowid, t.sel, t.id as id, t.main_id as main_id,'
      '       decode(t.obj_level,'
      '               0,'
      '               '#39' '#1043#1086#1088#1086#1076#39','
      '               1,'
      '               v.name_tr,'
      '               2,'
      
        '               case when t.tp_show = 1 then '#39#1056#1057#1054':'#39'||s.reu||'#39'-'#39'||' +
        's.name else s.reu||'#39'-'#39'||s.name end,'
      '               3,'
      '               p.name||'#39', '#39'||ltrim(t.nd, '#39'0'#39'),'
      '               -1, '#39#1056#1057#1054#39
      '               ) as name,'
      '       decode(t.obj_level, 3,'
      #39#1089' '#39'||'
      
        '       case when t.mg1 <> '#39'999999'#39' then substr(t.mg1,5,2)||'#39'.'#39'||' +
        'substr(t.mg1,3,2)||'#39#1075'. '#1087#1086' '#39' '
      '        else '#39'- '#1087#1086' '#39
      '        end ||'
      
        '       case when t.mg2 <> '#39'999999'#39' then substr(t.mg2,5,2)||'#39'.'#39'||' +
        'substr(t.mg2,3,2)||'#39#1075'.'#39
      '        else '#39'-'#39
      '        end, null)'
      ' as house_mg,'
      ' case when t.obj_level=3 and t.mg2 = '#39'999999'#39' then 1'
      '         when t.obj_level=3 and t.mg2 <> '#39'999999'#39' then 0'
      '     else -1 end as exist1,'
      ' t.trest, t.reu, t.for_reu,'
      '       t.kul, t.nd, upper(ltrim(t.nd, '#39'0'#39')) as nd1, t.obj_level,'
      '       upper(p.name) as street,'
      '       upper(s.name) as name_tr,'
      '       s.bank_cd,'
      '       t.fk_house'
      ''
      '  from scott.tree_objects t,'
      '        scott.t_org s,'
      
        '       (select distinct trest, name_tr from scott.s_reu_trest) v' +
        ','
      '       scott.spul p'
      ' where t.reu = s.reu(+)'
      '   and t.trest = v.trest(+)'
      '   and t.kul = p.id(+)'
      '   and t.fk_user=USERENV('#39'sessionid'#39')'
      
        '   and (t.obj_level<>3 or t.obj_level=3 and :set_psch=1 and t.ps' +
        'ch<>1 or :set_psch <> 1'
      '   )'
      ' order by t.obj_level,'
      '          decode(t.obj_level,'
      '                  0,'
      '                  '#39' '#1043#1086#1088#1086#1076#39','
      '                  1,'
      '                  v.name_tr,'
      '                  2,'
      '                   s.reu||'#39'-'#39'||s.name,'
      
        '                  p.name || '#39', '#39' || scott.utils.f_order(t.nd, 6)' +
        '), t.reu, p.name, t.nd, t.mg1')
    AfterPost = Uni_tree_objectsAfterPost
    AfterScroll = Uni_tree_objectsAfterScroll
    Left = 32
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'set_psch'
        ParamType = ptInput
        Value = nil
      end>
  end
  object Uni_spr_params: TUniQuery
    UpdatingTable = 'SCOTT.SPR_PAR_SES'
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select p.id, t.name as gr_name, p.name as parname, p.cdtp,case'
      '         when p.cdtp = 0 then'
      '          to_char(p.parn1)'
      '         when p.cdtp = 1 then'
      '          p.parvc1'
      '         when p.cdtp = 2 then'
      '          to_char(p.pardt1, '#39'DD.MM.YYYY'#39')'
      '         when p.cdtp = 3 then'
      '          decode(p.parn1, 0, '#39#1053#1077#1090#39', '#39#1044#1072#39')'
      '         when p.cdtp = 4 then'
      '          a.name'
      '         when p.cdtp = 5 then'
      '          case'
      '            when nvl(a.cnt, 0) = 0 then'
      '             null'
      '            else'
      '             '#39#1042#1099#1073#1088#1072#1085#1086':'#39' || to_char(a.cnt)'
      '          end'
      '         when p.cdtp = 6 then'
      '          b.name'
      '       end as val, p.parn1, p.parvc1, p.pardt1, p.rowid'
      '  from scott.spr_par_ses p'
      '  join scott.repxpar r'
      '    on p.id = r.fk_par'
      '  left join scott.spr_par_ses t'
      '    on p.parent_id = t.id'
      '   and p.fk_ses = t.fk_ses'
      '  join scott.reports s'
      '    on r.fk_rep = s.id'
      
        '  left join (select c.fk_par, max(c.name) as name, count(*) as c' +
        'nt'
      '               from scott.list_c c'
      '              where c.sel = 1'
      '                and c.fk_ses = USERENV('#39'sessionid'#39')'
      '              group by c.fk_par) a'
      '    on p.id = a.fk_par'
      '  left join (select c.fk_par, max(c.name) as name'
      '               from scott.list_c c'
      '              where c.fk_ses = USERENV('#39'sessionid'#39')'
      '              group by c.fk_par) b'
      '    on p.id = b.fk_par'
      ' where p.cdtp is not null'
      '   and p.fk_ses = USERENV('#39'sessionid'#39')'
      '   and s.cd = :cd_'
      ' order by p.npp')
    Left = 32
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'cd_'
        ParamType = ptInput
        Value = nil
      end>
  end
  object Uni_nabor_lsk: TUniQuery
    KeyFields = 'id'
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      
        'select ltrim(t.kw,'#39'0'#39') as kw, n.*, n.rowid from scott.nabor n, s' +
        'cott.kart t'
      'where t.lsk=n.lsk and n.usl=:usl and'
      'exists'
      '(select * from  scott.kart k'
      '  where k.lsk=n.lsk and k.house_id=:house_id)'
      'and nvl(n.koeff,0)=nvl(:koeff,0) and nvl(n.norm,0)=nvl(:norm,0)'
      'and n.dt1=:dt1 and n.dt2=:dt2'
      'order by scott.utils.f_order(t.kw,7)')
    MasterSource = DS_data
    MasterFields = 'house_id;koeff;norm;usl;dt1;dt2'
    DetailFields = 'house_id;koeff;norm;usl;dt1;dt2'
    Active = True
    Left = 40
    Top = 544
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'usl'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'house_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'koeff'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'norm'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DT1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DT2'
        ParamType = ptInput
        Value = nil
      end>
  end
  object Uni_c_kart_pr: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      
        'select a.*, r.name as rel_name,a.k_fam||'#39' '#39'||substr(a.k_im,1,1)|' +
        '|'#39'.'#39'||substr(a.k_ot,1,1)||'#39'.'#39' as short_name'
      'from scott.a_kart_pr2 a, scott.relations r'
      
        'where a.lsk=:lsk and :mg between a.mgFrom and a.mgTo and a.relat' +
        '_id=r.id'
      'and a.status<>4')
    MasterSource = DS_data
    MasterFields = 'lsk'
    DetailFields = 'lsk'
    Left = 40
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'mg'
        ParamType = ptInput
        Value = nil
      end>
  end
  object Uni_detail: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      
        '--'#1074#1090#1086#1088#1086#1081', ('#1074#1089#1087#1086#1084#1086#1075#1072#1090#1077#1083#1100#1085#1099#1081') '#1076#1072#1090#1072#1089#1077#1090' '#1076#1083#1103' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' ' +
        #1079#1072#1087#1088#1086#1089#1072
      ''
      'begin'
      '  scott.stat.rep_detail(:p_cd, :mg, :lsk,'
      '    :prep_refcursor);'
      'end;')
    MasterFields = 'lsk;mg'
    Left = 40
    Top = 656
    ParamData = <
      item
        DataType = ftString
        Name = 'p_cd'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'mg'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftCursor
        Name = 'prep_refcursor'
        Value = 'Object'
      end>
  end
  object DS_data: TDataSource
    DataSet = Uni_Data
    Left = 72
    Top = 32
  end
  object DS_level: TDataSource
    DataSet = OD_level
    Left = 168
    Top = 416
  end
end
