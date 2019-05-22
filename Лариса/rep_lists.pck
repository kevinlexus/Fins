create or replace package rep_lists is
  type rep_refcursor is ref cursor;
  procedure report_oborot(uslg_          in uslg.uslg%type,
                          mg_            in a_charge.mg%type,
                          prep_refcursor in out rep_refcursor);
end rep_lists;
/
create or replace package body rep_lists is
  procedure report_oborot(uslg_           in uslg.uslg%type,
                          mg_            in a_charge.mg%type,
                          prep_refcursor in out rep_refcursor) is
  begin
  --список дл€ “—∆
    open prep_refcursor for
    select ltrim(k.kw,'0') as kw,
    k.komn, k.opl, b.opl_n, b.opl_sv, k.fio, k.kpr, b.summa_n, b.summa_l, b.summa_sv, b.summa_sv_l, 
     gw.summa_n as gw_summa_n, gw.summa_l as gw_summa_l, 
     gw.summa_sv as gw_summa_sv, gw.summa_sv_l as gw_summa_sv_l, gw.gw_n, gw.gw_sv,
    c.name, c.adr, c.inn, c.kpp, 
    upper(scott.utils.MONTH_NAME(substr(mg_,5,2)))||' '||substr(mg_,1,4)||'г.' as mg_name, 
    upper(m.nm) as nm
    from scott.arch_kart k, scott.schet_contragent c, scott.params p, scott.uslg m,
    (select t.lsk, u.uslg,
     sum(decode(u.usl_norm, 0, decode(t.type, 1, t.summa, 0))) as summa_n,
     sum(decode(u.usl_norm, 0, decode(t.type, 4, t.summa, 0))) as summa_l,
     sum(decode(u.usl_norm, 1, decode(t.type, 1, t.summa, 0))) as summa_sv, 
     sum(decode(u.usl_norm, 1, decode(t.type, 4, t.summa, 0))) as summa_sv_l, 
     sum(decode(u.usl_norm, 0, decode(t.type, 1, t.test_opl, 0), 0)) as opl_n,
     sum(decode(u.usl_norm, 1, decode(t.type, 1, t.test_opl, 0), 0)) as opl_sv 
      from scott.a_charge t, scott.usl u where t.mg=mg_ and t.usl=u.usl and
      u.uslg=uslg_ and t.type in (1, 2, 4) 
     group by t.lsk, u.uslg) b,
    (select t.lsk,
     sum(decode(u.usl_norm, 0, decode(t.type, 1, t.summa, 0))) as summa_n,
     sum(decode(u.usl_norm, 0, decode(t.type, 1, t.summa, 0))) as summa_l,
     sum(decode(u.usl_norm, 1, decode(t.type, 1, 0))) as summa_sv, 
     sum(decode(u.usl_norm, 1, decode(t.type, 4, t.summa, 0))) as summa_sv_l, 
     sum(decode(u.usl_norm, 0, decode(t.type, 1, t.test_opl, 0), 0)) as gw_n,
     sum(decode(u.usl_norm, 1, decode(t.type, 1, t.test_opl, 0), 0)) as gw_sv 
      from scott.a_charge t, scott.usl u where t.mg=mg_ and t.usl=u.usl and
      u.uslm='008' and t.type in (1, 2, 4)  --гор€ча€ вода
     group by t.lsk) gw
    where k.mg=mg_
     and k.lsk = b.lsk(+) and k.lsk=gw.lsk(+) and m.uslg=b.uslg and c.id=0
    order by k.kul, k.nd, k.kw;
  end;

end rep_lists;
/
