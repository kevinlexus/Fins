
[ver_ESZRP=314]
-- Create table
-- Create table
create table T_OBJXPAR
(
  ID       NUMBER not null,
  FK_LSK   CHAR(8),
  FK_K_LSK NUMBER,
  FK_LIST  NUMBER not null,
  S1       VARCHAR2(255),
  D1       DATE,
  N1       NUMBER,
  C1       CLOB,
  PASS     RAW(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table T_OBJXPAR
  is 'Параметры по лицевому счету или по k_lsk';
-- Add comments to the columns 
comment on column T_OBJXPAR.ID
  is 'ID';
comment on column T_OBJXPAR.FK_LSK
  is 'FK на л/с';
comment on column T_OBJXPAR.FK_K_LSK
  is 'FK на k_lsk';
comment on column T_OBJXPAR.FK_LIST
  is 'FK на параметр';
comment on column T_OBJXPAR.S1
  is 'значение параметра типа Varchar(255)';
comment on column T_OBJXPAR.D1
  is 'значение параметра типа Дата';
comment on column T_OBJXPAR.N1
  is 'значение параметра типа Number';
comment on column T_OBJXPAR.C1
  is 'значение параметра типа CLOB';
comment on column T_OBJXPAR.PASS
  is 'значение параметра типа RAW(50)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_OBJXPAR
  add constraint T_OBJXPAR_P primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table T_OBJXPAR
  add constraint T_OBJXPAR_F_K_LSK foreign key (FK_K_LSK)
  references K_LSK (ID) on delete cascade;
alter table T_OBJXPAR
  add constraint T_OBJXPAR_F_LIST foreign key (FK_LIST)
  references U_LIST (ID) on delete cascade;
alter table T_OBJXPAR
  add constraint T_OBJXPAR_F_LSK foreign key (FK_LSK)
  references KART (LSK) on delete cascade;

[ver_KESZRP=314]
-- Add/modify columns 
alter table U_LIST add VAL_TP VARCHAR2(3);
-- Add comments to the columns 
comment on column U_LIST.VAL_TP
  is 'тип значения  [(NM)number;  (ST)string;  (DT)date; (Списки: NML)number;  (STL)string;  (DTL)date;   ]';

insert into u_listtp t(cd, name)
select 'Параметры лиц.счета', 'Параметры лиц.счета' 
 from u_listtp tp
 where not exists (select * from u_listtp tp
  where tp.cd='Параметры лиц.счета');

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'sist_otop', 'Кран из системы отопления', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='sist_otop' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'login', 'login', tp.id, 'ST'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='login' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'pass', 'pass', tp.id, 'RW'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='pass' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

commit;

-- Drop columns 
alter table KART drop column PASS;

-- Add/modify columns 
alter table T_ORG add INET_CD number;
-- Add comments to the columns 
comment on column T_ORG.INET_CD
  is 'Уникальный код организации в сети Internet (для орг.типа РКЦ)';
-- Add comments to the columns 
comment on column U_LIST.VAL_TP
  is 'тип значения  [(NM)number;  (ST)string;  (DT)date; (RW) raw (Списки: NML)number;  (STL)string;  (DTL)date; ]';


[ver_ESZRP=315]

-- Create table
create table EXP_KART
(
  K_LSK_ID NUMBER not null,
  LSK      VARCHAR2(8 CHAR) not null,
  CD_ORG   VARCHAR2(8 CHAR),
  KUL      VARCHAR2(4 CHAR) not null,
  ND       VARCHAR2(6 CHAR) not null,
  KW       VARCHAR2(7 CHAR) not null,
  PHW      NUMBER,
  MHW      NUMBER,
  PGW      NUMBER,
  MGW      NUMBER,
  PEL      NUMBER,
  MEL      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table EXP_KART
  is 'Промежуточная таблица kart, для отправки данных в ЛК';

-- Create table
create table EXP_KARTXPAR
(
  CD_ORG   VARCHAR2(32 CHAR) not null,
  FK_K_LSK NUMBER,
  FK_LIST  NUMBER not null,
  S1       VARCHAR2(255),
  D1       DATE,
  N1       NUMBER,
  C1       CLOB,
  PASS     RAW(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table EXP_KARTXPAR
  is 'Параметры по лицевому счету или по k_lsk';
-- Add comments to the columns 
comment on column EXP_KARTXPAR.CD_ORG
  is 'CD организации';
comment on column EXP_KARTXPAR.FK_K_LSK
  is 'FK на k_lsk';
comment on column EXP_KARTXPAR.FK_LIST
  is 'FK на параметр';
comment on column EXP_KARTXPAR.S1
  is 'значение параметра типа Varchar(255)';
comment on column EXP_KARTXPAR.D1
  is 'значение параметра типа Дата';
comment on column EXP_KARTXPAR.N1
  is 'значение параметра типа Number';
comment on column EXP_KARTXPAR.C1
  is 'значение параметра типа CLOB';
comment on column EXP_KARTXPAR.PASS
  is 'значение параметра типа RAW(50)';

[ver_K=315]

-- Create table
create table EXP_KART
(
  K_LSK_ID NUMBER not null,
  LSK      VARCHAR2(8 CHAR) not null,
  CD_ORG   VARCHAR2(8 CHAR),
  KUL      VARCHAR2(4 CHAR) not null,
  ND       VARCHAR2(6 CHAR) not null,
  KW       VARCHAR2(7 CHAR) not null,
  PHW      NUMBER,
  MHW      NUMBER,
  PGW      NUMBER,
  MGW      NUMBER,
  PEL      NUMBER,
  MEL      NUMBER
)
tablespace DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table EXP_KART
  is 'Промежуточная таблица kart, для отправки данных в ЛК';

-- Create table
create table EXP_KARTXPAR
(
  CD_ORG   VARCHAR2(32 CHAR) not null,
  FK_K_LSK NUMBER,
  FK_LIST  NUMBER not null,
  S1       VARCHAR2(255),
  D1       DATE,
  N1       NUMBER,
  C1       CLOB,
  PASS     RAW(50)
)
tablespace DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table EXP_KARTXPAR
  is 'Параметры по лицевому счету или по k_lsk';
-- Add comments to the columns 
comment on column EXP_KARTXPAR.CD_ORG
  is 'CD организации';
comment on column EXP_KARTXPAR.FK_K_LSK
  is 'FK на k_lsk';
comment on column EXP_KARTXPAR.FK_LIST
  is 'FK на параметр';
comment on column EXP_KARTXPAR.S1
  is 'значение параметра типа Varchar(255)';
comment on column EXP_KARTXPAR.D1
  is 'значение параметра типа Дата';
comment on column EXP_KARTXPAR.N1
  is 'значение параметра типа Number';
comment on column EXP_KARTXPAR.C1
  is 'значение параметра типа CLOB';
comment on column EXP_KARTXPAR.PASS
  is 'значение параметра типа RAW(50)';


[ver_KESZRP=316]

-- Add/modify columns 
alter table EXP_KART add PSCH NUMBER;
-- Add comments to the columns 
comment on column EXP_KART.PSCH
  is 'Признак счета (8,9-закрыт, остальное - открыт)';

-- Add comments to the columns 
comment on column C_VVOD.KUB
  is 'Объём~ на ввод';
comment on column C_VVOD.KUB_SCH
  is 'Объем~по счетчикам';
comment on column C_VVOD.KUB_FACT
  is 'Дораспределено~фактически';
comment on column C_VVOD.KUB_NORM
  is 'Объем~по нормативу';
comment on column C_VVOD.KUB_NRM_FACT
  is 'Дораспр.факт~на норматив';
comment on column C_VVOD.KUB_SCH_FACT
  is 'Дораспр.факт~на счетчики';

-- Add comments to the columns 
comment on column C_VVOD.VOL_ADD
  is '';
comment on column C_VVOD.SCH_ADD
  is '';
comment on column C_VVOD.VOL_ADD_FACT
  is '';
comment on column C_VVOD.ITG_FACT
  is '';
comment on column C_VVOD.OPL_ADD
  is '';

-- Add/modify columns 
alter table C_VVOD add KUB_AR_FACT number;
-- Add/modify columns 
alter table C_VVOD add KUB_AR number;
-- Add/modify columns 
alter table C_VVOD add OPL_AR number;

-- Add comments to the columns 
comment on column C_VVOD.OPL_AR
  is 'Площадь по нежилым';
comment on column C_VVOD.KUB_AR
  is 'Объем по нежилым';
comment on column C_VVOD.KUB_AR_FACT
  is 'Дораспределено~фактически по нежилым';


[ver_KESZRP=317]

-- Add/modify columns 
alter table ARCH_CHANGES add PROC number;
-- Add comments to the columns 
comment on column ARCH_CHANGES.PROC
  is 'Суммарный % для счетов';

[ver_KESZRP=318]
-- Drop columns 
alter table C_VVOD drop column TYPE;

[ver_KESZRP=319]
update spr_params t set t.parn1=0 where cd='REP_LOAD_TPL';
commit;

-- Add/modify columns 
alter table C_CHARGEPAY add SUMMAP NUMBER;
-- Add comments to the columns 
comment on column C_CHARGEPAY.SUMMA
  is 'Оплата';
comment on column C_CHARGEPAY.SUMMAP
  is 'Оплата пени';


[ver_KESZRP=320]
--обновить оплату пени в c_chargepay
update c_chargepay t set t.summap=null
  where exists (select * from sys.v_params p where p.period3=t.period)
  and t.type=1;
update c_chargepay t set t.summap=nvl(t.summap,0)+
 (select nvl(sum(a.penya),0) from a_kwtp_mg a, params p where a.lsk=t.lsk
   and a.dopl=t.mg and a.mg between substr(p.period,1,4)||'01'
   and p.period and a.mg < p.period)
  where exists (select * from sys.v_params p where p.period3=t.period)
  and t.type=1;
  
commit;

[ver_KESZRP=321]
-- Add/modify columns 
alter table LOG add ID_REC number;
-- Add comments to the columns 
comment on column LOG.ID_REC
  is 'ID записи';

-- Drop columns 
alter table T_ORG drop column INET_CD;

-- Add/modify columns 
alter table A_VVOD add DIST_TP NUMBER;
alter table A_VVOD add OPL_AR NUMBER;
alter table A_VVOD add KUB_AR NUMBER;
alter table A_VVOD add KUB_AR_FACT NUMBER;
-- Add comments to the columns 
comment on column A_VVOD.DIST_TP
  is 'Распределение воды по дому (0, null-пропорционально расходу, 1 - проп. площади)';
comment on column A_VVOD.OPL_AR
  is 'Площадь по нежилым';
comment on column A_VVOD.KUB_AR
  is 'Объем по нежилым';
comment on column A_VVOD.KUB_AR_FACT
  is 'Дораспределено~фактически по нежилым';
-- Add/modify columns 
alter table EXP_KART add CD_INET VARCHAR2(4 CHAR);
-- Add comments to the columns 
comment on column EXP_KART.CD_INET
  is 'CD базы';
-- Add/modify columns 
alter table EXP_KARTXPAR rename column FK_LIST to CD_LIST;
alter table EXP_KARTXPAR modify CD_LIST VARCHAR2(32 CHAR);
-- Add comments to the columns 
comment on column EXP_KARTXPAR.CD_LIST
  is 'CD на параметр';

[ver_KESZRP=322]
insert into u_listtp
  (cd, name)
select 'Параметры лиц.счета' as cd, 'Параметры лиц.счета' as name from dual t
 where not exists (select * from u_listtp tp 
 where tp.cd='Параметры лиц.счета');

[ver_ESZRP=323]
create index T_OBJXPAR_I on T_OBJXPAR (fk_k_lsk, fk_list)
  tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

[ver_K=323]
create index T_OBJXPAR_I on T_OBJXPAR (fk_k_lsk, fk_list)
  tablespace DATA
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

[ver_KESZRP=324]
grant select,insert,update, delete on t_objxpar to
КОРРЕКТ_КАРТ;

[ver_KESZRP=325]
-- Create table
create global temporary table TMP_STATE
(
  FK_KART_PR NUMBER,
  FK_STATUS  NUMBER,
  DT1        DATE,
  DT2        DATE,
  TP         NUMBER
)
on commit delete rows;
-- Add comments to the table 
comment on table TMP_STATE
  is 'Временная таблица, для расчета долей пользования  услугами';
-- Add comments to the columns 
comment on column TMP_STATE.FK_KART_PR
  is 'FK на проживающего';
comment on column TMP_STATE.FK_STATUS
  is 'FK статус проживающего (счетчика)';
comment on column TMP_STATE.DT1
  is 'Дата начала';
comment on column TMP_STATE.DT2
  is 'Дата окончания';
comment on column TMP_STATE.TP
  is '0-основной статус проживающего, 1,-дополнительный (вр.рег, вр.отсут.) 2 - по счетчикам';

[ver_KESZRP=326]
-- Add/modify columns 
alter table NABOR add KF_KPR_SCH number;
-- Add comments to the columns 
comment on column NABOR.KF_KPR
  is 'Коэфф прожив для долевого расчета  по услуге (по нормативу)';
comment on column NABOR.KF_KPR_SCH
  is 'Коэфф прожив для долевого расчета  по услуге (по счетчику)';

-- Add comments to the columns 
comment on column USL.IS_ITER
  is 'Применять ли принцип долевого подсчета кол-во прожив по услуге';

insert into spr_params
  (cd, name, cdtp, parn1)
 select 'GEN_BASE', 'Происходит формирование начисления', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='GEN_BASE');
commit;

grant execute on c_obj_par to
base_connect;

-- Add/modify columns 
alter table U_LIST add VAL_TP VARCHAR2(3);
-- Add comments to the columns 
comment on column U_LIST.VAL_TP
  is 'тип значения  [(NM)number;  (ST)string;  (DT)date; (RW) raw (Списки: NML)number;  (STL)string;  (DTL)date; ]';

[ver_KESZRP=327]
-- Add/modify columns 
alter table USL_BILLS add fk_tp number;
-- Add comments to the columns 
comment on column USL_BILLS.fk_tp
  is 'Тип обработки (null, 0 -для объединения услуг в счетах, 1 - для скрытия экономии по услуге(ОДН))';

update usl_bills t
set t.fk_tp=0 where 
  t.fk_tp is null;
commit;

-- Add/modify columns 
alter table A_NABOR add KF_KPR_SCH NUMBER;
-- Add comments to the columns 
comment on column A_NABOR.KF_KPR_SCH
  is 'Коэфф прожив для долевого расчета  по услуге (по счетчику)';

[ver_KESZRP=328]
insert into u_list t(cd, name, fk_listtp)
select 'доступ к карт.площадь', 'доступ к карт.площадь', tp.id
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='доступ к карт.площадь' and u.fk_listtp=d.id
    and d.cd='Тип разрешения')
 and tp.cd='Тип разрешения';
 
insert into u_list t(cd, name, fk_listtp)
select 'доступ к карт.статус', 'доступ к карт.статус', tp.id
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='доступ к карт.статус' and u.fk_listtp=d.id
    and d.cd='Тип разрешения')
 and tp.cd='Тип разрешения';
 
commit;
  
-- Add comments to the columns 
comment on column C_CHARGE.TYPE
  is '0 - начисл со льгот.(без уч. изменений)  1 - начисл без льгот(по тарифу). 2- субсидия (с уч. изменений) 3 - сами льготы 4 - льготы (с уч. изменений) 5-инф.ОДН';

-- Add/modify columns 
alter table T_ORG add ADR_WWW VARCHAR2(256);
-- Add comments to the columns 
comment on column T_ORG.ADR_WWW
  is 'Адрес сайта';
  

[ver_KESZRP=329]
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'VAR_NRM_CNT', 'Особый расчет кол-во прожив по нормативу', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='VAR_NRM_CNT');
commit;

-- Add/modify columns 
alter table C_CHARGE modify NPP null;

[ver_KESZRP=330]
comment on column TEMP_STAT.LSK
  is 'л/с.';
comment on column TEMP_STAT.USL
  is 'USL, услуга';
comment on column TEMP_STAT.KPR_OT
  is 'кол-во временно отсут.';
comment on column TEMP_STAT.KPR_WR
  is 'кол-во временно зарег';
-- Add comments to the columns 
comment on column TEMP_STAT.KPR
  is 'кол-во прожив (там где usl_iter=1 - коэфф прожив)';

[ver_KESZRP=330]
grant execute on p_vvod to ввод_объемов

[ver_ESZRP=331]
create table c_deb_usl
(
  ID     NUMBER not null,
  LSK    VARCHAR2(8),
  USL    VARCHAR2(3),
  ORG    number,
  SUMMA  NUMBER,
  MG     VARCHAR2(6),
  PERIOD VARCHAR2(6)
)
;
-- Add comments to the table 
comment on table c_deb_usl
  is 'задолжности по услугам (для распр оплаты)';
-- Add comments to the columns 
comment on column c_deb_usl.ID
  is 'ID записи';
comment on column c_deb_usl.lsk
  is 'Л/C';
comment on column c_deb_usl.usl
  is 'ID услуги';
comment on column c_deb_usl.summa
  is 'Сумма задолжности';
comment on column c_deb_usl.mg
  is 'Период задолжности';
comment on column c_deb_usl.period
  is 'Отчетный период';
-- Create/Recreate primary, unique and foreign key constraints 
alter table c_deb_usl
  add constraint c_deb_usl_p primary key (ID);
-- Create/Recreate indexes 
create unique index c_deb_usl_i on c_deb_usl (period, lsk, usl, org, mg);

[ver_K=331]
create table c_deb_usl
(
  ID     NUMBER not null,
  LSK    VARCHAR2(8),
  USL    VARCHAR2(3),
  ORG    number,
  SUMMA  NUMBER,
  MG     VARCHAR2(6),
  PERIOD VARCHAR2(6)
) tablespace data
;
-- Add comments to the table 
comment on table c_deb_usl
  is 'задолжности по услугам (для распр оплаты)';
-- Add comments to the columns 
comment on column c_deb_usl.ID
  is 'ID записи';
comment on column c_deb_usl.lsk
  is 'Л/C';
comment on column c_deb_usl.usl
  is 'ID услуги';
comment on column c_deb_usl.summa
  is 'Сумма задолжности';
comment on column c_deb_usl.mg
  is 'Период задолжности';
comment on column c_deb_usl.period
  is 'Отчетный период';
-- Create/Recreate primary, unique and foreign key constraints 
alter table c_deb_usl
  add constraint c_deb_usl_p primary key (ID);
-- Create/Recreate indexes 
create unique index c_deb_usl_i on c_deb_usl (period, lsk, usl, org, mg)
tablespace indx;

[ver_KESZRP=332]
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'DIST_PAY_TP', 'Распределение оплаты по-периодным способом (1-да,0-по-сальдовым)', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='DIST_PAY_TP');
commit;

[ver_KESZRP=333]
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'HAVE_LK', 'Наличие Личного Кабинета (1-да,0-нет)', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='HAVE_LK');
commit;

insert into spr_params
  (cd, name, cdtp, parn1)
 select 'AUTO_SEL_COMP', 'Автоматический выбор № комп, по адресу фонда', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='AUTO_SEL_COMP');
commit;

-- Add/modify columns 
alter table C_CHARGEPAY add ACTIV number;
-- Add comments to the columns 
comment on column C_CHARGEPAY.ACTIV
  is 'Активность счета последние 3 месяца (0, null -не активен,1 - активен) (для партишинга)';


[ver_KESZRP=334]
insert into u_list t(cd, name, fk_listtp, val_tp)
select 'gen_chrg', 'Пересчитать начисление', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='gen_chrg' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'gen_chrgpay', 'Пересчитать движение', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='gen_chrgpay' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

commit;

[ver_ESZRP=335]
drop index C_DEB_USL_I;
create unique index C_DEB_USL_I on C_DEB_USL (period, lsk, usl, org, mg)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
grant execute on p_vvod to ввод_объемов;

/*begin
  -- Call the procedure
  c_valid.set_valid_all(1,'gen_chrg');
  c_valid.set_valid_all(1,'gen_chrgpay');
end;
commit;*/

-- Create/Recreate indexes 
create index t_objxpar_i2 on T_OBJXPAR (fk_lsk, fk_list)
  tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );



[ver_KESZRP=336]

grant execute on p_vvod to ввод_объемов

insert into spr_params
  (cd, name, cdtp, parn1)
 select 'LD_SUBS_EL', 'Загружать субсидии по эл.энергии? (1-да, null,0 -нет)', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='LD_SUBS_EL');
commit;

-- Create table
create global temporary table temp_prep
(
  ID    number,
  USL   VARCHAR(3),
  ORG   NUMBER,
  SUMMA NUMBER,
  TP_CD number
)
on commit delete rows;
-- Add comments to the table 
comment on table temp_prep
  is 'Временная таблица для пакета C_PREP';
-- Add comments to the columns 
comment on column temp_prep.ID
  is 'ID';
comment on column temp_prep.USL
  is 'Услуга';
comment on column temp_prep.ORG
  is 'Организация';
comment on column temp_prep.SUMMA
  is 'Сумма';
comment on column temp_prep.TP_CD
  is 'Тип (0-Вх.значения, 1-Исх.значения, 2-Корректировка)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table temp_prep
  add constraint temp_prep_P primary key (ID);

-- Add comments to the columns 
comment on column TEMP_PREP.TP_CD
  is 'Тип (0-Вх.значения, 1-Исх.значения, 2-Корректировка, 3 -Корректировка округленная)';


[ver_ESZRP=337]
-- Create/Recreate indexes 
create index a_charge_i on A_CHARGE (mg, lsk)
  tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

[ver_KESZRP=337]
-- Add comments to the columns 
comment on column C_KART_PR.STATUS
  is 'Статус (1-постоянно зарег, 2-временно отсут, 3-временно зарег, 4 -выбыл, 6-временно прожив.)';
-- Add/modify columns 
-- Add/modify columns 
alter table NABOR add KF_KPR_WRZ NUMBER;
alter table NABOR add KF_KPR_WRO NUMBER;
alter table NABOR add KF_KPR_WRZ_SCH NUMBER;
alter table NABOR add KF_KPR_WRO_SCH NUMBER;
-- Add comments to the columns 
comment on column NABOR.KF_KPR_WRZ
  is 'Коэфф временно зарег.(по нормативу)';
comment on column NABOR.KF_KPR_WRO
  is 'Коэфф временно отсут.(по нормативу)';
comment on column NABOR.KF_KPR_WRZ_SCH
  is 'Коэфф временно зарег.(по счетчику)';
comment on column NABOR.KF_KPR_WRO_SCH
  is 'Коэфф временно отсут.(по счетчику)';

[ver_KESZRP=338]
-- Add/modify columns 
alter table A_NABOR add KF_KPR_SCH NUMBER;
alter table A_NABOR add KF_KPR_WRZ NUMBER;
alter table A_NABOR add KF_KPR_WRO NUMBER;
alter table A_NABOR add KF_KPR_WRZ_SCH NUMBER;
alter table A_NABOR add KF_KPR_WRO_SCH NUMBER;
-- Add comments to the columns 
comment on column A_NABOR.KF_KPR_SCH
  is 'Коэфф прожив для долевого расчета  по услуге (по счетчику)';
comment on column A_NABOR.KF_KPR_WRZ
  is 'Коэфф временно зарег.(по нормативу)';
comment on column A_NABOR.KF_KPR_WRO
  is 'Коэфф временно отсут.(по нормативу)';
comment on column A_NABOR.KF_KPR_WRZ_SCH
  is 'Коэфф временно зарег.(по счетчику)';
comment on column A_NABOR.KF_KPR_WRO_SCH
  is 'Коэфф временно отсут.(по счетчику)';

[ver_KESZRP=339]
-- Add/modify columns 
alter table TREE_OBJECTS add MG1 varchar2(6);
alter table TREE_OBJECTS add MG2 varchar2(6);
-- Add comments to the columns 
comment on column TREE_OBJECTS.MG1
  is 'Начало существования объекта в данном УК';
comment on column TREE_OBJECTS.MG2
  is 'Окончание существования объекта в данном УК';

[ver_KESZRP=340]
-- Add/modify columns 
alter table TREE_OBJECTS add PSCH number;
-- Add comments to the columns 
comment on column TREE_OBJECTS.PSCH
  is 'Признак работающего дома (на текущую дату) (1-закрыт, 0- открыт)';

[ver_KESZRP=341]
insert into reports
  (name, fk_type, cd, frx_fname)
select 'Реестр для УСЗН' as name, 1 as fk_type,
 '79' as cd, 'uszn1.fr3' as frx_fname from dual t
 where not exists (select * from reports r where r.cd='79');
 
[ver_ESZRP=342]
-- Create/Recreate indexes 
create index STAT_LSK_MG_LSK on STATISTICS_LSK (mg, lsk)
  tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );


[ver_ESZRP=343]
-- Create/Recreate indexes 
drop index C_CHARGEPAY_PERIOD;
create index C_CHARGEPAY_PERIOD on C_CHARGEPAY (period, lsk, type)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 8M
    minextents 1
    maxextents unlimited
  );


[ver_KESZRP=344]
grant select, update, insert, delete on kwtp_day to Администратор;



[ver_KESZRP=345]
insert into reports
  (name, maxlevel, fk_type, cd, have_date, frx_fname)
select 'Отчет по проживающим, для паспортного стола' as name, 3 as maxlevel, 1 as fk_type,
 '64' as cd, 1 as have_date, 'список_прожив_рожд.fr3' as frx_fname from dual t
 where not exists (select * from reports r where r.cd='64');


[ver_KESZRP=346]
-- Drop table
drop table LIST_C cascade constraints;
-- Create table
create global temporary table LIST_C
(
  ID     NUMBER not null,
  SEL_ID NUMBER,
  SEL_CD VARCHAR2(255),
  NAME   VARCHAR2(255),
  FK_SES NUMBER,
  FK_PAR NUMBER,
  SEL    NUMBER
)
on commit preserve rows;
-- Add comments to the table 
comment on table LIST_C
  is 'Таблица выбора пользователем значений для сложного параметра';
-- Add comments to the columns 
comment on column LIST_C.ID
  is 'ID';
comment on column LIST_C.SEL_ID
  is 'ID выбранного элемента';
comment on column LIST_C.SEL_CD
  is 'CD выбранного элемента';
comment on column LIST_C.NAME
  is 'Наименование';
comment on column LIST_C.FK_SES
  is 'FK на сесиию';
comment on column LIST_C.FK_PAR
  is 'FK на параметр';
comment on column LIST_C.SEL
  is 'Элемент выбран -1, нет -0';
-- Create/Recreate primary, unique and foreign key constraints 
alter table LIST_C
  add constraint LIST_C_P primary key (ID);
-- Create/Recreate indexes 
create index LIST_C_I1 on LIST_C (FK_SES);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on LIST_C to BASE_CONNECT;

[ver_KESZRP=347]

-- Drop table
drop table SPR_PAR_SES cascade constraints;
-- Create table
create global temporary table SPR_PAR_SES
(
  ID        NUMBER not null,
  CD        VARCHAR2(32) not null,
  PARVC1    VARCHAR2(1000),
  PARN1     NUMBER,
  NAME      VARCHAR2(64),
  CDTP      NUMBER,
  PARDT1    DATE,
  PARENT_ID NUMBER,
  PAR_SHOW  VARCHAR2(250),
  NPP       NUMBER,
  FK_SES    NUMBER
)
on commit preserve rows;
-- Add comments to the table 
comment on table SPR_PAR_SES
  is 'Справочник параметров сессии';
-- Add comments to the columns 
comment on column SPR_PAR_SES.ID
  is 'ID';
comment on column SPR_PAR_SES.CD
  is 'CD';
comment on column SPR_PAR_SES.PARVC1
  is 'Параметр varchar2(1000)';
comment on column SPR_PAR_SES.PARN1
  is 'Параметр number';
comment on column SPR_PAR_SES.NAME
  is 'Наименование параметра';
comment on column SPR_PAR_SES.CDTP
  is '(0 - числовой, 1- Символьный параметр, 2-Дата, 3-Логическое значение,4 - список )';
comment on column SPR_PAR_SES.PARDT1
  is 'Параметр Date';
comment on column SPR_PAR_SES.PARENT_ID
  is 'FK на вышестоящий параметр (заголовок)';
comment on column SPR_PAR_SES.PAR_SHOW
  is 'Текст значения, только для отображения';
comment on column SPR_PAR_SES.NPP
  is '№ порядк';
comment on column SPR_PAR_SES.FK_SES
  is 'ID Сессии';
-- Grant/Revoke object privileges 
grant select, insert, update, delete on SPR_PAR_SES to BASE_CONNECT;


[ver_KESZRP=348]

--добавить не сущ. параметры по отчету cd='64'
insert into repxpar
  (fk_rep, fk_par)
select r.id, p.id from reports r, spr_params p
where r.cd='64' and p.cd in 
('REPMN_DT_BR','REPMN_GENDER','REP_DT_BR1','REP_DT_BR2','REP_GENDER')
and not exists
 (select * from repxpar t where t.fk_rep=r.id
  and t.fk_par=p.id);

[ver_KESZRP=349]
update reports t set t.fk_type=1, t.frx_fname='list_sch1.fr3'
where cd='58';
commit;


[ver_KESZRP=350]
-- Add comments to the columns 
comment on column TEMP_PREP.TP_CD
  is 'Тип (0-Вх.значения, 1-Исх.значения, 2-Корректировка, 3 -Корректировка округленная, 4 -корректировка дополнителная)';

[ver_KESZRP=351]
-- Add/modify columns 
alter table T_OBJXPAR add FK_USER number;
alter table T_OBJXPAR add FK_USL char(3);
alter table T_OBJXPAR add TP number;
alter table T_OBJXPAR add TS date default sysdate;
-- Add comments to the columns 
comment on column T_OBJXPAR.FK_USER
  is 'FK на пользователя, добавившего запись (Счетчики)';
comment on column T_OBJXPAR.FK_USL
  is 'FK на услугу (Счетчики)';
comment on column T_OBJXPAR.TP
  is 'Тип ввода (0-ручной, 1-автоначисление) (Счетчики)';
comment on column T_OBJXPAR.TS
  is 'Timestamp (Счетчики)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_OBJXPAR
  add constraint T_OBJXPAR_F_USER foreign key (FK_USER)
  references t_user (ID) on delete cascade;
alter table T_OBJXPAR
  add constraint t_objxpar_f_usl foreign key (FK_USL)
  references usl (USL) on delete cascade;
-- Add/modify columns 
alter table T_OBJXPAR add MG varchar2(6);
-- Add comments to the columns 
comment on column T_OBJXPAR.MG
  is 'Расчетный период (Счетчики)';


[ver_KESZRP=352]
insert into u_list t(cd, name, fk_listtp, val_tp)
select 'ins_sch', 'Показание прибора учета', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='ins_sch' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'ins_vol_sch', 'Расход прибора учета', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='ins_vol_sch' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

commit;


-- Add comments to the columns 
comment on column T_OBJXPAR.TP
  is 'Тип ввода (0-ручной, 1-автоначисление, 2 -Отмена автонач.) (Счетчики)';

[ver_KESZRP=353]
grant execute on  drn86_автоначисление to Администратор;
grant select on scott.t_objxpar to бухг_по_квартплате

[ver_KESZRP=354]

-- Add/modify columns 
alter table KART add KPR_WRP number;
-- Add comments to the columns 
comment on column KART.KPR_WRP
  is 'Кол-во временно проживающих (не путать с вр.зарег)';
  
  
-- Add/modify columns 
alter table ARCH_KART add KPR_WRP number;
-- Add comments to the columns 
comment on column ARCH_KART.KPR_WRP
  is 'Кол-во временно проживающих (не путать с вр.зарег)';  


[ver_KESZRP=355]

-- Add/modify columns 
alter table T_ORG add email VARCHAR2(256);
-- Add comments to the columns 
comment on column T_ORG.email
  is 'E-MAIL';

[ver_KESZRP=356]
insert into u_list t(cd, name, fk_listtp, val_tp)
select 'email_lk', 'E-mail', tp.id, 'ST'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='email_lk' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

commit;


[ver_KESZRP=357]
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'AUTOCHRGM', 'Кол-во месяцев для автоначисления', 0, 12
 from dual where not exists
 (select * from spr_params t where t.cd='AUTOCHRGM');

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'Дата создания', 'Дата создания', tp.id, 'DT'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Дата создания' and u.fk_listtp=d.id
    and d.cd='Параметры лиц.счета')
 and tp.cd='Параметры лиц.счета';

commit;


[ver_KESZRP=358]
-- Add/modify columns 
alter table C_VVOD add limit_proc number;
-- Add comments to the columns 
comment on column C_VVOD.limit_proc
  is '% органичения по доначислению';
  
-- Add/modify columns 
alter table A_VVOD add limit_proc number;
-- Add comments to the columns 
comment on column A_VVOD.limit_proc
  is '% органичения по доначислению';  
  

[ver_KESZRP=359]
-- Drop existing database link 
drop database link APEX;
-- Create database link 
create public database link APEX
  connect to A12243  identified by  DJD823C7SDFH
  using 'orange';


[ver_KESZRP=360]

-- Create table
create table c_reg_sch
(
  id       number,
  dt1      date,
  fk_tp    number,
  fk_state number,
  text     varchar2(1000)
)
;
-- Add comments to the table 
comment on table c_reg_sch
  is 'Регистрационные действия над счетчиками';
-- Add comments to the columns 
comment on column c_reg_sch.id
  is 'ID';
comment on column c_reg_sch.dt1
  is 'Дата поверки';
comment on column c_reg_sch.fk_tp
  is 'Тип действия (поверка, установка, снятие...)';
comment on column c_reg_sch.fk_state
  is 'Результат действия';
comment on column c_reg_sch.text
  is 'Комментарий';
-- Create/Recreate primary, unique and foreign key constraints 
alter table c_reg_sch
  add constraint c_reg_sch_p primary key (ID);
alter table c_reg_sch
  add constraint c_reg_sch_f_state foreign key (FK_STATE)
  references u_list (ID);
alter table c_reg_sch
  add constraint c_reg_sch_f_tp foreign key (FK_TP)
  references u_list (ID);

-- Add/modify columns 
alter table C_REG_SCH add fk_usl char(3);
-- Add comments to the columns 
comment on column C_REG_SCH.fk_usl
  is 'Услуга по счетчику';
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_REG_SCH
  add constraint C_REG_SCH_F_USL foreign key (FK_USL)
  references usl (USL);

grant select,insert,update, delete on c_reg_sch to бухг_по_квартплате;

alter table C_REG_SCH modify dt1 not null;
alter table C_REG_SCH modify fk_tp not null;
alter table C_REG_SCH modify fk_state not null;
alter table C_REG_SCH modify fk_usl not null;

-- Create sequence 
create sequence c_reg_sch_id
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20
order;

grant select, delete, update, insert on C_REG_SCH to бухг_по_квартплате

insert into u_listtp t(cd, name)
select 'Тип действия по ПУ', 'Тип действия по ПУ' 
 from dual tp
 where not exists (select * from u_listtp tp
  where tp.cd='Тип действия по ПУ');

insert into u_listtp t(cd, name)
select 'Результат действия по ПУ', 'Результат действия по ПУ' 
 from dual tp
 where not exists (select * from u_listtp tp
  where tp.cd='Результат действия по ПУ');

insert into u_list t(cd, name, fk_listtp, val_tp, npp)
select 'Исправен ПУ', 'Исправен', tp.id, 'ST', 0
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Исправен ПУ' and u.fk_listtp=d.id
    and d.cd='Результат действия по ПУ')
 and tp.cd='Результат действия по ПУ';

insert into u_list t(cd, name, fk_listtp, val_tp, npp)
select 'Неисправен ПУ', 'Неисправен', tp.id, 'ST', 1
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Неисправен ПУ' and u.fk_listtp=d.id
    and d.cd='Результат действия по ПУ')
 and tp.cd='Результат действия по ПУ';

insert into u_list t(cd, name, fk_listtp, val_tp, npp)
select 'Поверка ПУ', 'Поверка', tp.id, 'ST', 0
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Поверка ПУ' and u.fk_listtp=d.id
    and d.cd='Тип действия по ПУ')
 and tp.cd='Тип действия по ПУ';

insert into spr_params
  (cd, name, cdtp, parn1)
 select 'BILL_SUPRESS_SAL', 'Подавлять строки с нулевым сальдо в счетах (1-да,0-нет)', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='BILL_SUPRESS_SAL');


[ver_KESZRP=361]
-- Add/modify columns 
alter table C_REG_SCH add lsk char(8);
-- Add comments to the columns 
comment on column C_REG_SCH.lsk
  is 'Л/C';
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_REG_SCH
  add constraint C_REG_SCH_F_LSK foreign key (LSK)
  references kart (LSK);

-- Add/modify columns 
delete from C_REG_SCH;
commit;
alter table C_REG_SCH modify lsk not null;

-- Add/modify columns 
alter table T_ORG add head_name VARCHAR2(50);
-- Add comments to the columns 
comment on column T_ORG.head_name
  is 'Должность руководителя';

[ver_KESZRP=362]
-- Create table
create global temporary table temp_c_change2
(
  lsk      VARCHAR2(8),
  usl      CHAR(3),
  org      NUMBER,
  proc     NUMBER,
  abs_set  NUMBER,
  mg       CHAR(6),
  tp       NUMBER,
  for_usl  CHAR(3),
  cnt_days NUMBER
)
on commit delete rows;
-- Add comments to the table 
comment on table temp_c_change2
  is 'Таблица для проведения перерасчетов';
-- Add comments to the columns 
comment on column temp_c_change2.usl
  is 'Услуга';
comment on column temp_c_change2.org
  is 'Организация 1';
comment on column temp_c_change2.proc
  is 'Процент по 1 орг';
comment on column temp_c_change2.abs_set
  is 'Абсолютное значение по перерасчету';
comment on column temp_c_change2.mg
  is 'Период';
comment on column temp_c_change2.tp
  is 'Добавочные операции (хол.вода + канализ) - 1 else - null,0';
comment on column temp_c_change2.for_usl
  is 'Выполняется для услуги (например для снятия г.воды и канализ)';
comment on column temp_c_change2.cnt_days
  is 'Кол-во дней перерасчета (1-ый процент)';

-- Add/modify columns 
alter table TEMP_C_CHANGE2 add uslm CHAR(3);
-- Add comments to the columns 
comment on column TEMP_C_CHANGE2.uslm
  is 'Услуга главная';

[ver_KESZRP=363]
-- Create/Recreate indexes 
create index TEMP_C_CHANGE2_i on TEMP_C_CHANGE2 (lsk, usl, org);

[ver_KESZRP=364]
insert into reports(name, maxlevel, fk_type, cd)
select 'Задолжники OLAP-2' as name, 3 as maxlevel,
 null as fk_type, '80' as cd from dual where not exists
 (select * from reports s where s.cd='80');

insert into repxpar
  (fk_rep, fk_par)
select r.id, s.id  from reports r, spr_params s where r.cd='80'
and s.cd in ('REP_RNG_KPR','REP_RNG_KPR1','REP_RNG_KPR2',
'REP_DEB_VAR','REP_DEB_SUMMA','REP_DEB_MONTH')
and not exists
(select * from repxpar x where x.fk_par=s.id and x.fk_rep=r.id)


[ver_K=365]

[ver_ESZRP=365]
create index debits_lsk_month_i on DEBITS_LSK_MONTH (mg);
create index debits_lsk_month_i2 on DEBITS_LSK_MONTH (dat);


[ver_ESZRP=366]
-- Add/modify columns 
alter table DEBITS_LSK_MONTH add k_lsk_id number;
-- Add comments to the columns 
comment on column DEBITS_LSK_MONTH.k_lsk_id
  is 'K_LSK_ID';


[ver_KESZRP=367]
-- Add/modify columns 
alter table C_HOUSES add k_lsk_id number;
-- Add comments to the columns 
comment on column C_HOUSES.k_lsk_id
  is 'FK на k_lsk';
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_HOUSES
  add constraint C_HOUSES_F_K_LSK foreign key (k_lsk_id)
  references k_lsk (ID);
-- Create/Recreate primary, unique and foreign key constraints 
alter table K_LSK
  add constraint k_lsk_FK_ADDRTP foreign key (FK_ADDRTP)
  references u_list (ID);

drop table t_addr_tp;

[ver_KESZRP=368]

insert into u_listtp t(cd, name)
select 'object_type', 'Тип объекта' 
 from dual
 where not exists (select * from u_listtp tp
  where tp.cd='object_type');

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'flat', 'Квартира', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='flat' and u.fk_listtp=d.id
    and d.cd='object_type')
 and tp.cd='object_type';

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'house', 'Дом', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='house' and u.fk_listtp=d.id
    and d.cd='object_type')
 and tp.cd='object_type';

begin
  for c in (select t.*, t.rowid as rd from c_houses t where t.k_lsk_id is null)
  loop
    
    insert into k_lsk
      (id)
      values (k_lsk_id.nextval);
    update c_houses t set t.k_lsk_id=k_lsk_id.currval where t.rowid=c.rd;
     
  end loop;
end;
/

update k_lsk t set
t.fk_addrtp=(select u.id from u_list u, u_listtp tp where u.cd='flat'
and u.fk_listtp=tp.id and tp.cd='object_type')
where exists (select * from kart k where k.k_lsk_id=t.id);

update k_lsk t set
t.fk_addrtp=(select u.id from u_list u, u_listtp tp where u.cd='house'
and u.fk_listtp=tp.id and tp.cd='object_type')
where exists (select * from c_houses k where k.k_lsk_id=t.id);

insert into u_listtp t(cd, name)
select 'house_params', 'Параметры дома' 
 from dual
 where not exists (select * from u_listtp tp
  where tp.cd='house_params');

insert into u_list t(cd, name, fk_listtp, val_tp)
select 'area_general_property', 'Площадь общего имущества', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='area_general_property' and u.fk_listtp=d.id
    and d.cd='house_params')
 and tp.cd='house_params';

commit;


[ver_KESZRP=369]
-- Add/modify columns 
alter table USL add frc_get_price number;
-- Add comments to the columns 
comment on column USL.frc_get_price
  is 'Принудительно взять расценку по услуге в счет (в основном для тек содерж)';

-- Add/modify columns 
alter table U_LIST add fk_unit number;
-- Add comments to the columns 
comment on column U_LIST.fk_unit
  is 'Единица измерения (для параметров)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table U_LIST
  add constraint U_LIST_Fk_UNIT foreign key (FK_UNIT)
  references u_list (ID);

insert into u_listtp t(cd, name)
select 'unit', 'Единицы измерения' 
 from dual
 where not exists (select * from u_listtp tp
  where tp.cd='unit');

insert into u_list t(cd, nm, name, fk_listtp, val_tp)
select 'Метр квадратный', 'м2', 'Метр квадратный', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Метр квадратный' and u.fk_listtp=d.id
    and d.cd='unit')
 and tp.cd='unit';

insert into u_list t(cd, nm, name, fk_listtp, val_tp)
select 'Метр кубический', 'м3', 'Метр кубический', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Метр кубический' and u.fk_listtp=d.id
    and d.cd='unit')
 and tp.cd='unit';

insert into u_list t(cd, nm, name, fk_listtp, val_tp)
select 'Штука', 'шт', 'Штука', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Штука' and u.fk_listtp=d.id
    and d.cd='unit')
 and tp.cd='unit';
 
insert into u_list t(cd, nm, name, fk_listtp, val_tp)
select 'Точка', 'точка', 'Точка', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Точка' and u.fk_listtp=d.id
    and d.cd='unit')
 and tp.cd='unit';
 
commit;


update u_list t set t.fk_unit=
(select u.id from u_list u, u_listtp tp
where u.fk_listtp=tp.id and tp.cd='unit'
and u.cd='Метр квадратный')
where exists (select u.id from u_list u, u_listtp tp
where u.fk_listtp=tp.id and tp.cd='house_params'
and u.cd='area_general_property'
and u.id=t.id
);

commit;


[ver_KESZRP=370]

insert into t_objxpar (fk_k_lsk, fk_list)
select t.k_lsk_id, u.id  from c_houses t, u_list u where u.cd='area_general_property'
and not exists 
(select * from t_objxpar x, u_list u2 
 where u2.cd='area_general_property' and x.fk_list=u2.id
 and x.fk_k_lsk=t.k_lsk_id);

commit;

[ver_KESZRP=371]
-- Add/modify columns 
alter table C_VVOD add kub_dist number;
-- Add comments to the columns 
comment on column C_VVOD.kub
  is 'Введённый объём~ на ввод';
comment on column C_VVOD.kub_dist
  is 'Распределенный объём';

-- Add/modify columns 
alter table A_VVOD add kub_dist NUMBER;
-- Add comments to the columns 
comment on column A_VVOD.kub_dist
  is 'Распределенный объём';


[ver_KESZRP=372]

-- Add/modify columns 
alter table T_ORG add raschet_schet2 VARCHAR2(20);
-- Add comments to the columns 
comment on column T_ORG.raschet_schet2
  is 'Р/C-2';

insert into spr_typeslist
  (id, cd, name, npp)
select '19' as id, '19' as cd, 'Выгрузка долгов для Сбербанка вар-1' as name, 19 as npp from dual
 where not exists (select * from spr_typeslist t
  where t.cd='19')
union all
select '20' as id, '20' as cd, 'Выгрузка долгов для Сбербанка вар-2' as name, 20 as npp from dual
 where not exists (select * from spr_typeslist t
  where t.cd='20');

commit;

[ver_KESZRP=373]
alter table USL drop column type;

alter table STATISTICS drop column uslm;
-- Drop columns 
alter table STATISTICS_LSK drop column uslm;
-- Drop columns 
alter table STATISTICS_TREST drop column uslm;


[ver_KESZRP=374]
-- Grant/Revoke object privileges 
grant execute on IS_ALLOW to BASE_CONNECT;

[ver_E=375]
insert into reports
  (name, fk_type, cd, frx_fname)
select 'Список польз. интернет' as name, 1 as fk_type,
 '81' as cd, 'list1.fr3' as frx_fname from dual t
 where not exists (select * from reports r where r.cd='81');
commit;

[ver_KESZRP=376]


[ver_K=377]

[ver_ESZRP=377]
-- Create table
create table C_DEBUG
(
  id     number,
  lsk    VARCHAR(8),
  summa  NUMBER,
  summa2 NUMBER,
  n1     NUMBER,
  n2     NUMBER,
  c1     varchar2(1024),
  c2     varchar2(1024),
  d1     date,
  d2     date,
  mg1    VARCHAR(6),
  mg2    VARCHAR(6),
  tp     number,
  ts     date default sysdate
)
tablespace USERS
  pctfree 1
  initrans 1
  maxtrans 255
  storage
  (
    initial 7
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table C_DEBUG
  is 'Архивная таблица для хранения отладочной информации';
-- Add comments to the columns 
comment on column C_DEBUG.id
  is 'ID';
comment on column C_DEBUG.lsk
  is 'Л/С';
comment on column C_DEBUG.summa
  is 'Сумма1';
comment on column C_DEBUG.summa2
  is 'Сумма2';
comment on column C_DEBUG.n1
  is 'Число1';
comment on column C_DEBUG.n2
  is 'Число2';
comment on column C_DEBUG.c1
  is 'Строка1';
comment on column C_DEBUG.c2
  is 'Строка2';
comment on column C_DEBUG.d1
  is 'Дата1';
comment on column C_DEBUG.d2
  is 'Дата2';
comment on column C_DEBUG.mg1
  is 'Период1';
comment on column C_DEBUG.mg2
  is 'Период2';
comment on column C_DEBUG.tp
  is 'Тип отладки (0-c_penya, 1-c_chargepay)';
comment on column C_DEBUG.ts
  is 'TS';
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_DEBUG
  add constraint c_debug_p primary key (ID);
-- Grant/Revoke object privileges 

[ver_K=378]
-- Create table
create table EXP_C_HOUSES
(
  id       NUMBER,
  reu      VARCHAR2(2 CHAR),
  kul      VARCHAR2(4 CHAR),
  nd       VARCHAR2(6 CHAR),
  k_lsk_id NUMBER,
  cd_org   VARCHAR2(32 CHAR)
)
tablespace DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    minextents 1
    maxextents unlimited
  );
-- Add comments to the columns 
comment on column EXP_C_HOUSES.id
  is 'ID дома';
comment on column EXP_C_HOUSES.reu
  is 'Код РЭУ';
comment on column EXP_C_HOUSES.kul
  is 'Код улицы';
comment on column EXP_C_HOUSES.nd
  is '№ дома';
comment on column EXP_C_HOUSES.k_lsk_id
  is 'k_lsk_id';
comment on column EXP_C_HOUSES.cd_org
  is 'CD организации';

[ver_ESZRP=378]
-- Create table
create table EXP_C_HOUSES
(
  id       NUMBER,
  reu      VARCHAR2(2 CHAR),
  kul      VARCHAR2(4 CHAR),
  nd       VARCHAR2(6 CHAR),
  k_lsk_id NUMBER,
  cd_org   VARCHAR2(32 CHAR)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    minextents 1
    maxextents unlimited
  );
-- Add comments to the columns 
comment on column EXP_C_HOUSES.id
  is 'ID дома';
comment on column EXP_C_HOUSES.reu
  is 'Код РЭУ';
comment on column EXP_C_HOUSES.kul
  is 'Код улицы';
comment on column EXP_C_HOUSES.nd
  is '№ дома';
comment on column EXP_C_HOUSES.k_lsk_id
  is 'k_lsk_id';
comment on column EXP_C_HOUSES.cd_org
  is 'CD организации';

[ver_KESZRP=379]
grant select on c_deb_usl to коррект_карт;
grant execute on c_dist_pay to коррект_карт;
grant select, insert, delete on EXP_C_HOUSES to INET_ROLE;
grant select on C_HOUSES to INET_ROLE;

[ver_KESZRP=380]
-- Add/modify columns 
alter table KART add pn_dt date;
-- Add comments to the columns 
comment on column KART.pn_dt
  is 'Дата ограничения пени';

-- Add/modify columns 
alter table ARCH_KART add pn_dt date;
-- Add comments to the columns 
comment on column ARCH_KART.pn_dt
  is 'Дата ограничения пени';


[ver_KESZRP=381]
-- Add/modify columns 
alter table C_KART_PR add fk_deb_org number;
-- Add comments to the columns 
comment on column C_KART_PR.fk_deb_org
  is 'Организация - задолжник';
  
-- Add/modify columns 
alter table A_KART_PR add fk_deb_org number;
-- Add comments to the columns 
comment on column A_KART_PR.fk_deb_org
  is 'Организация - задолжник';  

-- Create/Recreate primary, unique and foreign key constraints 
alter table C_KART_PR
  add constraint C_KART_PR_F_fk_deb_org foreign key (FK_DEB_ORG)
  references t_org (ID);
  
[ver_KESZRP=382]
delete from repxpar x where 
  exists (select * from reports r, spr_params p where 
  p.cd in ('REP_MN_ORG','REP_ORG') and r.id=x.fk_rep
  and r.cd='80' and p.id=x.fk_par
  );

delete from spr_params r where 
  r.cd in ('REP_MN_ORG','REP_ORG');

insert into spr_params
  (cd, name, fk_parcdtp, npp)
select 
  'REP_MN_ORG' as cd, 'Организация' as name, 'FLT_REP' as fk_parcdtp, (select nvl(max(s.npp),0)+1 from spr_params s)
  from dual;

insert into spr_params
  (cd, name, cdtp, fk_parcdtp, npp, parent_id, sql_text)
  select 'REP_ORG', 'выбрать', 4, 'FLT_REP', 
  (select nvl(max(npp),0)+1 from spr_params t), 
  t.id,
  'select t.id as sel_id, t.cd as sel_cd, t.name, 
  :fk_ses_ as fk_user, :fk_par_ as fk_par, 0 as sel from scott.t_org t
  order by t.name
  '
   as sql_text    
from spr_params t where t.cd='REP_MN_ORG';

insert into repxpar
  (fk_rep, fk_par)
 select r.id, t.id from reports r, spr_params t where 
  t.cd in ('REP_ORG')
  and r.cd in ('80');

commit;


[ver_KESZRP=383]
-- Add/modify columns 
alter table T_ORG modify FULL_NAME VARCHAR2(100);
grant execute on DBMS_LOCK to scott;
-- Add/modify columns 
alter table KART add lsk_ext varchar2(8);
-- Add comments to the columns 
comment on column KART.lsk_ext
  is 'Лицевой счет в внешней базе данных (Денис)';

-- Add/modify columns 
alter table ARCH_KART add lsk_ext varchar2(8);
-- Add comments to the columns 
comment on column ARCH_KART.lsk_ext
  is 'Лицевой счет в внешней базе данных (Денис)';

-- Add/modify columns 
alter table LIST_C add npp number;
-- Add comments to the columns 
comment on column LIST_C.npp
  is '№ п/п для сортировки';

update spr_params t set t.sql_text=
'select to_number(u.usl) as sel_id, u.usl as sel_cd, u.nm as name,
  :fk_ses_ as fk_ses, :fk_par_ as fk_par, 1 as sel, u.npp from usl u
  union all 
select 0 as sel_id, ''0'' as sel_cd, ''ИТОГ'' as name,
  :fk_ses_ as fk_ses, :fk_par_ as fk_par, 1 as sel, 999999 as npp from dual'
  where t.cd='REP_USL';
commit;  


delete from repxpar x where exists 
  (select * from spr_params t where t.cd='REP_STATUS'
    and t.id=x.fk_par);
    
delete from spr_params t where t.cd='REP_STATUS';
insert into spr_params
  (cd, name, cdtp, fk_parcdtp, npp, parent_id, sql_text)
  values
  ('REP_STATUS', 'Статус', 5, 'FLT_REP', 
  (select nvl(max(npp),0)+1 from spr_params t), 
  null,
  'select s.id as sel_id, s.id as sel_cd, s.name, 
  :fk_ses_ as fk_user, :fk_par_ as fk_par, 1 as sel from scott.status s
  order by s.name
  ');

insert into repxpar
  (fk_rep, fk_par)
 select r.id, t.id from reports r, spr_params t where 
  t.cd in ('REP_STATUS')
  and r.cd in ('13')
  and not exists (select * from repxpar x where x.fk_par=t.id);

commit;

-- Add/modify columns 
alter table LIST_C add NPP number;
-- Add comments to the columns 
comment on column LIST_C.NPP
  is '№ п/п';


[ver_KESZRP=384]
-- Add/modify columns 
alter table DEBITS_LSK_MONTH add pay_pen number;
-- Add comments to the columns 
comment on column DEBITS_LSK_MONTH.pay_pen
  is 'Оплата пени';


[ver_KESZRP=385]
-- Add/modify columns 
alter table TEMP_STAT add cena number;
-- Add comments to the columns 
comment on column TEMP_STAT.cnt
  is 'Объем';
comment on column TEMP_STAT.status
  is 'Статус';
comment on column TEMP_STAT.psch
  is 'Признак сч';
comment on column TEMP_STAT.org
  is 'Организация';
comment on column TEMP_STAT.cena
  is 'Цена';

-- Add/modify columns 
alter table STATISTICS add cena number;
-- Add comments to the columns 
comment on column STATISTICS.cena
  is 'Цена';

-- Add/modify columns 
alter table STATISTICS_TREST add cena number;
-- Add comments to the columns 
comment on column STATISTICS_TREST.cena
  is 'Цена';

-- Add/modify columns 
alter table STATISTICS_LSK add cena number;
-- Add comments to the columns 
comment on column STATISTICS_LSK.cena
  is 'Цена';

[ver_KESZRP=386]
update spr_params t set t.cdtp=5 where t.cd='REP_ORG';
commit;

[ver_KESZRP=387]
update REPORTS t set t.name = 
replace(t.name, 'Списки','Список') where t.name like 'Списки%';
commit;

insert into reports
  (name, fk_type, cd, frx_fname, maxlevel)
select 'Отчет по нормативам потребления' as name, 1 as fk_type,
 '83' as cd, 'listTar1.fr3' as frx_fname, 3 as maxlevel from dual t
 where not exists (select * from reports r where r.cd='83');
commit;


[ver_KESZRP=388]
-- Add/modify columns 
alter table C_CHARGE add limit number;
-- Add comments to the columns 
comment on column C_CHARGE.limit
  is 'Лимит объема по услуге (Используется при начислении по ОДН)';

-- Add/modify columns 
alter table statistics_lsk add limit number;
-- Add comments to the columns 
comment on column statistics_lsk.limit
  is 'Лимит объема по услуге (Используется при начислении по ОДН)';

-- Add/modify columns 
alter table temp_stat add limit number;
-- Add comments to the columns 
comment on column temp_stat.limit
  is 'Лимит объема по услуге (Используется при начислении по ОДН)';

-- Add/modify columns 
alter table nabor add limit number;
-- Add comments to the columns 
comment on column nabor.limit
  is 'Лимит объема по услуге (Используется при начислении по ОДН)';

-- Add/modify columns 
alter table a_nabor add limit number;
-- Add comments to the columns 
comment on column a_nabor.limit
  is 'Лимит объема по услуге (Используется при начислении по ОДН)';


[ver_KESZRP=389]
-- Create table
create table A_NABOR_PREP
(
  lsk            CHAR(8) not null,
  usl            CHAR(3) not null,
  org            NUMBER(3) not null,
  koeff          NUMBER,
  norm           NUMBER,
  fk_tarif       NUMBER,
  fk_vvod        NUMBER,
  vol            NUMBER,
  vol_add        NUMBER,
  kf_kpr         NUMBER,
  sch_auto       NUMBER,
  nrm_kpr        NUMBER,
  kf_kpr_sch     NUMBER,
  kf_kpr_wrz     NUMBER,
  kf_kpr_wro     NUMBER,
  kf_kpr_wrz_sch NUMBER,
  kf_kpr_wro_sch NUMBER,
  mg1            VARCHAR2(6),
  mg2            VARCHAR2(6)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    minextents 1
    maxextents unlimited
  )
nologging;
-- Add comments to the table 
comment on table A_NABOR_PREP
  is 'Хранение таблицы nabor в сжатом виде';
-- Add comments to the columns 
comment on column A_NABOR_PREP.fk_tarif
  is 'ID Тариф (Антенн)';
comment on column A_NABOR_PREP.fk_vvod
  is 'ID ввода по услуге';
comment on column A_NABOR_PREP.vol
  is 'Расход по услуге (объем)';
comment on column A_NABOR_PREP.vol_add
  is 'добавочный расход по услуге (например доначисление по 307 постановлению)';
comment on column A_NABOR_PREP.kf_kpr
  is 'Коэфф прожив для долевого расчета по услуге';
comment on column A_NABOR_PREP.sch_auto
  is 'Автоначисление? (0-нет,1-да)';
comment on column A_NABOR_PREP.nrm_kpr
  is 'Кол-во проживающих для расчета норматива';
comment on column A_NABOR_PREP.kf_kpr_sch
  is 'Коэфф прожив для долевого расчета  по услуге (по счетчику)';
comment on column A_NABOR_PREP.kf_kpr_wrz
  is 'Коэфф временно зарег.(по нормативу)';
comment on column A_NABOR_PREP.kf_kpr_wro
  is 'Коэфф временно отсут.(по нормативу)';
comment on column A_NABOR_PREP.kf_kpr_wrz_sch
  is 'Коэфф временно зарег.(по счетчику)';
comment on column A_NABOR_PREP.kf_kpr_wro_sch
  is 'Коэфф временно отсут.(по счетчику)';
comment on column A_NABOR_PREP.mg1
  is 'Начальный период';
comment on column A_NABOR_PREP.mg2
  is 'Конечный период';
-- Create/Recreate indexes 
create unique index A_NABOR_PREP_IU on A_NABOR_PREP (MG1, MG2, LSK, USL, ORG)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select on A_NABOR_PREP to АРХИВЫ;


[ver_KESZRP=390]
-- Add/modify columns 
alter table NABOR add nrm_kpr2 NUMBER;
-- Add comments to the columns 
comment on column NABOR.nrm_kpr2
  is 'Кол-во проживающих для расценки';

-- Add/modify columns 
alter table A_NABOR add nrm_kpr2 NUMBER;
-- Add comments to the columns 
comment on column A_NABOR.nrm_kpr2
  is 'Кол-во проживающих для расценки';

-- Add/modify columns 
alter table A_NABOR_PREP add nrm_kpr2 NUMBER;
-- Add comments to the columns 
comment on column A_NABOR_PREP.nrm_kpr2
  is 'Кол-во проживающих для расценки';

[ver_KESZRP=391]
-- Add comments to the columns 
comment on column T_OBJXPAR.tp
  is 'Тип ввода (0-ручной, 1-автоначисление, 2 -Отмена автонач., 3-Очистка перехода) (Счетчики)';

-- Add/modify columns 
alter table LIST_C add NPP NUMBER;
-- Add comments to the columns 
comment on column LIST_C.NPP
  is '№ п/п для сортировки';


[ver_KESZRP=392]
-- Add/modify columns 
alter table TEMP_STAT add kpr2 NUMBER;
-- Add comments to the columns 
comment on column TEMP_STAT.kpr2
  is 'кол-во прожив соответствующий расценке ';

-- Add/modify columns 
alter table STATISTICS add kpr2 NUMBER;
-- Add comments to the columns 
comment on column STATISTICS.kpr2
  is 'кол-во прожив соответствующий расценке ';

-- Add/modify columns 
alter table STATISTICS_LSK add kpr2 NUMBER;
-- Add comments to the columns 
comment on column STATISTICS_LSK.kpr2
  is 'кол-во прожив соответствующий расценке ';

-- Add/modify columns 
alter table STATISTICS_TREST add kpr2 NUMBER;
-- Add comments to the columns 
comment on column STATISTICS_TREST.kpr2
  is 'кол-во прожив соответствующий расценке ';


[ver_KESZRP=393]
-- Add/modify columns 
alter table C_CHANGE add mg2 VARCHAR(6);
-- Add comments to the columns 
comment on column C_CHANGE.mg2
  is 'Период, которым надо провести разовые изменения';

-- Add/modify columns 
alter table C_CHANGE_docs add mg2 VARCHAR(6);
-- Add comments to the columns 
comment on column C_CHANGE_docs.mg2
  is 'Период, которым надо провести разовые изменения';


-- Add/modify columns 
alter table A_CHANGE add mg2 VARCHAR(6);
-- Add comments to the columns 
comment on column A_CHANGE.mg2
  is 'Период, которым надо провести разовые изменения';


[ver_KESZRP=394]
-- Create table
drop table temp_prep2;

create global temporary table temp_prep2
(
  id     NUMBER not null,
  fk_ext number,
  summa  NUMBER,
  tp_cd  NUMBER
)
on commit delete rows;
-- Add comments to the table 
comment on table temp_prep2
  is 'Временная таблица для пакета C_PREP';
-- Add comments to the columns 
comment on column temp_prep2.id
  is 'ID';
comment on column temp_prep2.fk_ext
  is 'Внешний идентификатор';
comment on column temp_prep2.summa
  is 'Сумма';
comment on column temp_prep2.tp_cd
  is 'Тип (0-Вх.значения, 1-Исх.значения, 2-Корректировка, 3 -Корректировка округленная, 4 -корректировка дополнителная)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table temp_prep2
  add constraint TEMP_PREP2_P primary key (ID);

[ver_KESZRP=395]
-- Create table
create table C_CHARGE_PREP
(
  id         NUMBER not null,
  lsk        CHAR(8) not null,
  usl        CHAR(3) not null,
  vol        NUMBER,
  kpr        NUMBER,
  kprz       NUMBER,
  kpro       NUMBER,
  sch        NUMBER,
  dt         DATE,
  tp         NUMBER not null,
  vol_nrm    NUMBER,
  vol_sv_nrm NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table C_CHARGE_PREP
  is 'Подготовительная информация для расчета начисления';
-- Add comments to the columns 
comment on column C_CHARGE_PREP.id
  is 'ID';
comment on column C_CHARGE_PREP.lsk
  is 'Лиц. счет';
comment on column C_CHARGE_PREP.usl
  is 'Услуга';
comment on column C_CHARGE_PREP.vol
  is 'Объем';
comment on column C_CHARGE_PREP.kpr
  is 'Кол-во проживающих';
comment on column C_CHARGE_PREP.kprz
  is 'Кол-во временно зарег';
comment on column C_CHARGE_PREP.kpro
  is 'Кол-во временно отсут';
comment on column C_CHARGE_PREP.sch
  is 'наличие счетчика (1-есть, null(0) - нет)';
comment on column C_CHARGE_PREP.dt
  is 'Дата';
comment on column C_CHARGE_PREP.tp
  is 'Тип записи (0-предварительный подсчет, 
1 - сгруппированный до ключевых структур, .
2 - кол-во прож.для опред.соцнормы, 
3 - итог объёма, проживающих,
4 - корректировки ОДН,
5 - детально, но без корректировок ОДН,
6 - итог объёма, проживающих без коррект. ОДН)';
comment on column C_CHARGE_PREP.vol_nrm
  is 'Объем по соцнорме';
comment on column C_CHARGE_PREP.vol_sv_nrm
  is 'Объем свыше соцнормы';
-- Create/Recreate indexes 
create index C_CHARGE_PREP_I on C_CHARGE_PREP (LSK, TP)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_CHARGE_PREP
  add constraint C_CHARGE_PREP_P primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table C_CHARGE_PREP
  add constraint C_CHARGE_PREP_F_KART foreign key (LSK)
  references KART (LSK) on delete cascade;
alter table C_CHARGE_PREP
  add constraint C_CHARGE_PREP_F_USL foreign key (USL)
  references USL (USL) on delete cascade;
-- Grant/Revoke object privileges 
grant select on C_CHARGE_PREP to КОРРЕКТ_КАРТ;



[ver_KESZRP=396]
-- Create table
create table A_CHARGE_PREP
(
  id         NUMBER not null,
  lsk        CHAR(8) not null,
  usl        CHAR(3) not null,
  vol        NUMBER,
  kpr        NUMBER,
  kprz       NUMBER,
  kpro       NUMBER,
  sch        NUMBER,
  dt         DATE,
  tp         NUMBER not null,
  vol_nrm    NUMBER,
  vol_sv_nrm NUMBER,
  mg         VARCHAR2(6)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table A_CHARGE_PREP
  is 'Архив: Подготовительная информация для расчета начисления';
-- Add comments to the columns 
comment on column A_CHARGE_PREP.id
  is 'ID';
comment on column A_CHARGE_PREP.lsk
  is 'Лиц. счет';
comment on column A_CHARGE_PREP.usl
  is 'Услуга';
comment on column A_CHARGE_PREP.vol
  is 'Объем';
comment on column A_CHARGE_PREP.kpr
  is 'Кол-во проживающих';
comment on column A_CHARGE_PREP.kprz
  is 'Кол-во временно зарег';
comment on column A_CHARGE_PREP.kpro
  is 'Кол-во временно отсут';
comment on column A_CHARGE_PREP.sch
  is 'наличие счетчика (1-есть, null(0) - нет)';
comment on column A_CHARGE_PREP.dt
  is 'Дата';
comment on column A_CHARGE_PREP.tp
  is 'Тип записи (0-предварительный подсчет, 
1 - сгруппированный до ключевых структур, .
2 - кол-во прож.для опред.соцнормы, 
3 - итог объёма, проживающих,
4 - корректировки ОДН,
5 - детально, но без корректировок ОДН,
6 - итог объёма, проживающих без коррект. ОДН)';
comment on column A_CHARGE_PREP.vol_nrm
  is 'Объем по соцнорме';
comment on column A_CHARGE_PREP.vol_sv_nrm
  is 'Объем свыше соцнормы';
comment on column A_CHARGE_PREP.mg
  is 'Период';
-- Create/Recreate indexes 
create index A_CHARGE_PREP_I on A_CHARGE_PREP (MG, LSK, TP)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select on A_CHARGE_PREP to КОРРЕКТ_КАРТ;



[ver_KESZRP=397]

-- Add/modify columns 
alter table TEMP_STAT rename column kpr2 to is_empt;
-- Add comments to the columns 
comment on column TEMP_STAT.is_empt
  is 'Пустая ли квартира (0-нет, 1 - да)';

-- Add/modify columns 
alter table statistics_lsk rename column kpr2 to is_empt;
-- Add comments to the columns 
comment on column statistics_lsk.is_empt
  is 'Пустая ли квартира (0-нет, 1 - да)';

-- Add/modify columns 
alter table statistics rename column kpr2 to is_empt;
-- Add comments to the columns 
comment on column statistics.is_empt
  is 'Пустая ли квартира (0-нет, 1 - да)';

-- Add/modify columns 
alter table statistics_trest rename column kpr2 to is_empt;
-- Add comments to the columns 
comment on column statistics_trest.is_empt
  is 'Пустая ли квартира (0-нет, 1 - да)';


grant execute on gen_stat to Администратор


[ver_KESZRP=398]
---- Add/modify columns 
--alter table USL add for_stat number;
---- Add comments to the columns 
--comment on column USL.for_stat
--  is 'Откуда брать объем для статы? (0, null - из c_charge_prep, 1 - из c_charge.test_opl)';
-- Add/modify columns 
alter table C_CHARGE add kpr NUMBER;
alter table C_CHARGE add kprz NUMBER;
alter table C_CHARGE add kpro NUMBER;
-- Add comments to the columns 
comment on column C_CHARGE.kpr
  is 'Кол-во проживающих';
comment on column C_CHARGE.kprz
  is 'Кол-во временно зарег';
comment on column C_CHARGE.kpro
  is 'Кол-во временно отсут';


alter table a_charge add kpr NUMBER;
alter table a_charge add kprz NUMBER;
alter table a_charge add kpro NUMBER;
-- Add comments to the columns 
comment on column a_charge.kpr
  is 'Кол-во проживающих';
comment on column a_charge.kprz
  is 'Кол-во временно зарег';
comment on column a_charge.kpro
  is 'Кол-во временно отсут';

-- Add/modify columns 
alter table C_CHARGE_PREP add kpr2 NUMBER;
-- Add comments to the columns 
comment on column C_CHARGE_PREP.kpr2
  is 'Кол-во проживающих в т.ч. все, В.О. В.З. В.П.';


-- Add/modify columns 
alter table A_CHARGE_PREP add kpr2 NUMBER;
-- Add comments to the columns 
comment on column A_CHARGE_PREP.kpr2
  is 'Кол-во проживающих в т.ч. все, В.О. В.З. В.П.';


-- Add/modify columns 
alter table C_CHARGE add kpr2 NUMBER;
-- Add comments to the columns 
comment on column C_CHARGE.kpr2
  is 'Кол-во проживающих в т.ч. все, В.О. В.З. В.П.';


-- Add/modify columns 
alter table A_CHARGE add kpr2 NUMBER;
-- Add comments to the columns 
comment on column A_CHARGE.kpr2
  is 'Кол-во проживающих в т.ч. все, В.О. В.З. В.П.';



[ver_KESZRP=399]

-- Add comments to the columns 
comment on column T_CORRECTS_PAYMENTS.var
  is 'Вариант обработки, (null,0- до форм.сальдо, 1- после, 11 - спец.корр. сальдо (вар.с c_deb_usl )';


[ver_KESZRP=400]

/*insert into u_list(cd, name, npp, fk_listtp, val_tp)
select 'gen_part_kpr', 'Пересчитать доли проживающих' as name, 0 as npp, t.id as fk_listtp, 'NM' as val_tp
 from U_LISTTP t where t.cd='Параметры лиц.счета'
 and not exists (select * from u_list u where u.cd='gen_part_kpr');

insert into u_list(cd, name, npp, fk_listtp, val_tp)
select 'gen_vvod', 'Пересчитать ввод' as name, 0 as npp, t.id as fk_listtp, 'NM' as val_tp
 from U_LISTTP t where t.cd='Параметры лиц.счета'
 and not exists (select * from u_list u where u.cd='gen_vvod');

insert into u_listtp t(cd, name)
select 'Параметры объекта', 'Параметры объекта' 
 from dual tp
 where not exists (select * from u_listtp tp
  where tp.cd='Параметры объекта');
*/

insert into u_list(cd, name, npp, fk_listtp, val_tp)
select 'vvod', 'Ввод' as name, 0 as npp, t.id as fk_listtp, 'NM' as val_tp
 from U_LISTTP t where t.cd='object_type'
 and not exists (select * from u_list u where u.cd='vvod');

commit;

-- Add/modify columns 
alter table C_VVOD add fk_k_lsk number;
-- Add comments to the columns 
comment on column C_VVOD.fk_k_lsk
  is 'fk на k_lsk';
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_VVOD
  add constraint c_vvod_f_fk_k_lsk foreign key (FK_K_LSK)
  references k_lsk (ID);


begin
for c in (select * from c_vvod t where t.fk_k_lsk is null) 
  loop
    
    insert into k_lsk(id, fk_addrtp)
     select k_lsk_id.nextval, u.id from u_list u,u_listtp tp
      where tp.cd='object_type'
      and u.fk_listtp=tp.id
      and u.cd='vvod';
    update C_VVOD t set t.fk_k_lsk=k_lsk_id.currval where t.id=c.id;  
    
  end loop;
commit;
end;



[ver_KESZRP=401]

/*insert into u_list(cd, name, npp, fk_listtp, val_tp)
select 'gen_part_kpr', 'Пересчитать доли проживающих' as name, 0 as npp, t.id as fk_listtp, 'NM' as val_tp
 from U_LISTTP t where t.cd='Параметры лиц.счета'
 and not exists (select * from u_list u where u.cd='gen_part_kpr');

insert into u_list(cd, name, npp, fk_listtp, val_tp)
select 'gen_vvod', 'Пересчитать ввод' as name, 0 as npp, t.id as fk_listtp, 'NM' as val_tp
 from U_LISTTP t where t.cd='Параметры лиц.счета'
 and not exists (select * from u_list u where u.cd='gen_vvod');

insert into u_listtp t(cd, name)
select 'Параметры объекта', 'Параметры объекта' 
 from dual tp
 where not exists (select * from u_listtp tp
  where tp.cd='Параметры объекта');

insert into u_list(cd, name, npp, fk_listtp, val_tp)
select 'gen_obj', 'Пересчитать объект' as name, 0 as npp, t.id as fk_listtp, 'NM' as val_tp
 from U_LISTTP t where t.cd='Параметры объекта'
 and not exists (select * from u_list u where u.cd='gen_obj');

commit; */



[ver_KESZRP=402]

-- Add comments to the columns 
comment on column C_CHARGE_PREP.tp
  is 'Тип записи (0-предварительный подсчет, 
1 - сгруппированный до ключевых структур, .
2 - кол-во прож.для опред.соцнормы, 
3 - итог объёма, проживающих,
4 - корректировки ОДН,
5 - детально, но без корректировок ОДН,
6 - итог объёма, проживающих без коррект. ОДН)
7 - просто, наличие счетчика';


[ver_KESZRP=403]
alter table NABOR
  drop constraint NABOR_LSK;
alter table NABOR
  add constraint NABOR_LSK foreign key (LSK)
  references KART (LSK) on delete cascade;


[ver_KESZRP=404]
-- Add/modify columns 
alter table USL add usl_empt CHAR(3);

-- Create/Recreate primary, unique and foreign key constraints 
alter table USL
  add constraint USL_F_USL_E foreign key (USL_EMPT)
  references usl (USL);



[ver_KESZRP=405]
-- Add/modify columns 
alter table PARAMS add is_det_chrg number;
-- Add comments to the columns 
comment on column PARAMS.is_det_chrg
  is 'Считать ли c_charge_prep детально? (0, null - нет, 1 - да)';


[ver_KESZRP=406]

insert into reports
  (name, maxlevel, fk_type, expand_row, expand_col, can_detail, show_sel_org, show_sel_oper, cd, sel_many, have_date, fname, iscnt, issum, fldsum, ishead, show_paychk, show_deb, frx_fname, isoem, frm_name)
select 
 'Оборотная списком, для ТСЖ по отоплению-2' name, maxlevel, fk_type, expand_row, expand_col, 
 can_detail, show_sel_org, show_sel_oper, '84' as cd, sel_many, have_date, 
 fname, iscnt, issum, fldsum, ishead, show_paychk, show_deb, 
 'оборотка_отоп2.fr3' as frx_fname, isoem, frm_name
 from REPORTS t where t.cd='63'
 and not exists (select * from reports r where r.cd='84');

commit;


[ver_KESZRP=407]
-- Create table
create global temporary table temp_c_charge_prep
(
  id         NUMBER,
  usl        VARCHAR(3),
  vol        NUMBER,
  kpr        NUMBER,
  kprz       NUMBER,
  kpro       NUMBER,
  sch        NUMBER,
  dt         DATE,
  tp         NUMBER,
  vol_nrm    NUMBER,
  vol_sv_nrm NUMBER,
  kpr2       NUMBER
)
on commit delete rows;
-- Add comments to the table 
comment on table temp_c_charge_prep
  is 'Подготовительная информация для расчета начисления';
-- Add comments to the columns 
comment on column temp_c_charge_prep.id
  is 'ID';
comment on column temp_c_charge_prep.usl
  is 'Услуга';
comment on column temp_c_charge_prep.vol
  is 'Объем';
comment on column temp_c_charge_prep.kpr
  is 'Кол-во проживающих';
comment on column temp_c_charge_prep.kprz
  is 'Кол-во временно зарег';
comment on column temp_c_charge_prep.kpro
  is 'Кол-во временно отсут';
comment on column temp_c_charge_prep.sch
  is 'наличие счетчика (1-есть, null(0) - нет)';
comment on column temp_c_charge_prep.dt
  is 'Дата';
comment on column temp_c_charge_prep.tp
  is 'Тип записи (0-предварительный подсчет, 
1 - сгруппированный до ключевых структур, .
2 - кол-во прож.для опред.соцнормы, 
3 - итог объёма, проживающих,
4 - корректировки ОДН,
5 - детально, но без корректировок ОДН,
6 - итог объёма, проживающих без коррект. ОДН)
7 - просто, наличие счетчика';
comment on column temp_c_charge_prep.vol_nrm
  is 'Объем по соцнорме';
comment on column temp_c_charge_prep.vol_sv_nrm
  is 'Объем свыше соцнормы';
comment on column temp_c_charge_prep.kpr2
  is 'Кол-во проживающих в т.ч. все, В.О. В.З. В.П.';
-- Create/Recreate indexes 
create index temp_C_CHARGE_PREP_I on temp_c_charge_prep (tp);
-- Create/Recreate primary, unique and foreign key constraints 
alter table temp_c_charge_prep
  add constraint C_CHARGE_PREP_P primary key (ID);
-- Grant/Revoke object privileges 
grant select on temp_c_charge_prep to КОРРЕКТ_КАРТ;


[ver_KESZRP=408]
-- Drop columns 
alter table temp_c_charge_prep drop column id;
alter table c_charge_prep drop column id;
alter table a_charge_prep drop column id;
drop trigger c_charge_prep_bi;
drop trigger temp_c_charge_prep_bi;


[ver_KESZRP=409]

insert into reports
  (name, maxlevel, fk_type, expand_row, expand_col, can_detail, show_sel_org, show_sel_oper, cd, sel_many, have_date, fname, iscnt, issum, fldsum, ishead, show_paychk, show_deb, frx_fname, isoem, frm_name)
select 
 'Справка по начислению, прил.5' name, maxlevel, fk_type, expand_row, expand_col, 
 can_detail, show_sel_org, show_sel_oper, '85' as cd, sel_many, have_date, 
 fname, iscnt, issum, fldsum, ishead, show_paychk, show_deb, 
 'справка_прил5.fr3' as frx_fname, isoem, frm_name
 from REPORTS t where t.cd='63'
 and not exists (select * from reports r where r.cd='85');

insert into reports
  (name, maxlevel, fk_type, expand_row, expand_col, can_detail, show_sel_org, show_sel_oper, cd, sel_many, have_date, fname, iscnt, issum, fldsum, ishead, show_paychk, show_deb, frx_fname, isoem, frm_name)
select 
 'Справка по начислению, прил.6' name, maxlevel, fk_type, expand_row, expand_col, 
 can_detail, show_sel_org, show_sel_oper, '86' as cd, sel_many, have_date, 
 fname, iscnt, issum, fldsum, ishead, show_paychk, show_deb, 
 'справка_прил6.fr3' as frx_fname, isoem, frm_name
 from REPORTS t where t.cd='63'
 and not exists (select * from reports r where r.cd='86');

insert into reports
  (name, maxlevel, fk_type, expand_row, expand_col, can_detail, show_sel_org, show_sel_oper, cd, sel_many, have_date, fname, iscnt, issum, fldsum, ishead, show_paychk, show_deb, frx_fname, isoem, frm_name)
select 
 'Справка по начислению, прил.7' name, maxlevel, fk_type, expand_row, expand_col, 
 can_detail, show_sel_org, show_sel_oper, '87' as cd, sel_many, have_date, 
 fname, iscnt, issum, fldsum, ishead, show_paychk, show_deb, 
 'справка_прил7.fr3' as frx_fname, isoem, frm_name
 from REPORTS t where t.cd='63'
 and not exists (select * from reports r where r.cd='87');

commit;


-- Grant/Revoke object privileges 
/*grant execute on DRN511_СПРАВКА_ПРИЛ7 to БУХГ_ПО_КВАРТПЛАТЕ;
grant execute on DRN510_СПРАВКА_ПРИЛ6 to БУХГ_ПО_КВАРТПЛАТЕ;
grant execute on DRN128_СПРАВКА_ПРИЛ5 to БУХГ_ПО_КВАРТПЛАТЕ;*/

[ver_KESZRP=410]

-- Add/modify columns 
alter table C_CHARGE_PREP add opl number;
-- Add comments to the columns 
comment on column C_CHARGE_PREP.opl
  is 'Площадь, которую надо всё равно учитывать (например когда отопление гКал, где в VOL сидят - гКал)';

-- Add/modify columns 
alter table A_CHARGE_PREP add opl number;
-- Add comments to the columns 
comment on column A_CHARGE_PREP.opl
  is 'Площадь, которую надо всё равно учитывать (например когда отопление гКал, где в VOL сидят - гКал)';

-- Add/modify columns 
alter table C_CHARGE add opl number;
-- Add comments to the columns 
comment on column C_CHARGE.opl
  is 'Площадь, которую надо всё равно учитывать (например когда отопление гКал, где в VOL сидят - гКал)';

-- Add/modify columns 
alter table A_CHARGE add opl number;
-- Add comments to the columns 
comment on column A_CHARGE.opl
  is 'Площадь, которую надо всё равно учитывать (например когда отопление гКал, где в VOL сидят - гКал)';

-- Add/modify columns 
alter table temp_c_charge_prep add opl number;
-- Add comments to the columns 
comment on column temp_c_charge_prep.opl
  is 'Площадь, которую надо всё равно учитывать (например когда отопление гКал, где в VOL сидят - гКал)';


[ver_KESZRP=411]

insert into spr_params
  (cd, name, cdtp, pardt1)
 select 'MONTH_HEAT1', 'Дата начала отопит.сезона', 2, null
 from dual where not exists
 (select * from spr_params t where t.cd='MONTH_HEAT1');
commit;

insert into spr_params
  (cd, name, cdtp, pardt1)
 select 'MONTH_HEAT2', 'Дата окончания отопит.сезона', 2, null
 from dual where not exists
 (select * from spr_params t where t.cd='MONTH_HEAT2');
commit;

[ver_KESZRP=412]
insert into spr_params
  (cd, name, cdtp, pardt1)
 select 'VAR_CNT_KPR', 'Вариант подсчёта кол-во прож.', 0, null
 from dual where not exists
 (select * from spr_params t where t.cd='VAR_CNT_KPR');
commit;


[ver_KESZRP=413]
insert into u_list t(cd, name, fk_listtp, val_tp)
select 'exist_lift', 'Наличие лифта', tp.id, 'NM'
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='exist_lift' and u.fk_listtp=d.id
    and d.cd='house_params')
 and tp.cd='house_params';

commit;

[ver_KESZRP=414]
-- Add comments to the columns 
comment on column C_CHANGE.mg2
  is 'Период, которым надо провести разовые изменения (Сделано, чтобы можно было проводить доначисление за прошлый период, не трогая расчёт пени)';


[ver_ESZRP=415]
-- Create table
create table a_kwtp_day
(
  kwtp_id   NUMBER,
  summa     NUMBER(12,2),
  lsk       CHAR(8) not null,
  oper      CHAR(2) not null,
  dopl      CHAR(6) not null,
  nkom      CHAR(3) not null,
  nink      NUMBER,
  dat_ink   DATE,
  priznak   NUMBER(1) not null,
  usl       CHAR(3) not null,
  org       NUMBER not null,
  fk_distr  NUMBER,
  sum_distr NUMBER,
  id        NUMBER not null,
  mg        char(6)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 9M
    minextents 1
    maxextents unlimited
  )
nologging;
-- Add comments to the table 
comment on table a_kwtp_day
  is 'Архив таблицы kwtp_day';
-- Add comments to the columns 
comment on column a_kwtp_day.priznak
  is '1-оплата, 0 - пеня';
comment on column a_kwtp_day.fk_distr
  is 'Вариант распределения оплаты (смотри описание в пакете)';
comment on column a_kwtp_day.sum_distr
  is 'Сумма по которой произошло распределение';
comment on column a_kwtp_day.id
  is 'ID';
comment on column a_kwtp_day.mg
  is 'Период';
-- Grant/Revoke object privileges 
grant select on a_kwtp_day to бухг_по_квартплате;


[ver_ESZRP=416]
-- Add/modify columns 
alter table T_ORG add post_indx VARCHAR2(10);
-- Add comments to the columns 
comment on column T_ORG.post_indx
  is 'Почтовый индекс';


[ver_ESZRP=417]
-- Drop table
drop table LIST_CHOICES_HS cascade constraints;
-- Create table
create global temporary table LIST_CHOICES_HS
(
  kul CHAR(4),
  nd  CHAR(6),
  sel NUMBER(1)
)
on commit preserve rows;
-- Add comments to the table 
comment on table LIST_CHOICES_HS
  is 'Таблица для выбора домов пользователем';
-- Add comments to the columns 
comment on column LIST_CHOICES_HS.kul
  is 'Id улицы';
comment on column LIST_CHOICES_HS.nd
  is '№ дома';
comment on column LIST_CHOICES_HS.sel
  is 'Отмечено';
-- Create/Recreate indexes 
create index LIST_CHOICES_HS on LIST_CHOICES_HS (KUL, ND, SEL);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on LIST_CHOICES_HS to BASE_CONNECT;


-- Drop table
drop table TEMP_C_CHANGE2 cascade constraints;
-- Create table
create global temporary table TEMP_C_CHANGE2
(
  lsk      VARCHAR2(8),
  usl      CHAR(3),
  org      NUMBER,
  proc     NUMBER,
  abs_set  NUMBER,
  mg       CHAR(6),
  tp       NUMBER,
  for_usl  CHAR(3),
  cnt_days NUMBER,
  uslm     CHAR(3)
)
on commit preserve rows;
-- Add comments to the table 
comment on table TEMP_C_CHANGE2
  is 'Таблица для проведения перерасчетов';
-- Add comments to the columns 
comment on column TEMP_C_CHANGE2.usl
  is 'Услуга';
comment on column TEMP_C_CHANGE2.org
  is 'Организация 1';
comment on column TEMP_C_CHANGE2.proc
  is 'Процент по 1 орг';
comment on column TEMP_C_CHANGE2.abs_set
  is 'Абсолютное значение по перерасчету';
comment on column TEMP_C_CHANGE2.mg
  is 'Период';
comment on column TEMP_C_CHANGE2.tp
  is 'Добавочные операции (хол.вода + канализ) - 1 else - null,0';
comment on column TEMP_C_CHANGE2.for_usl
  is 'Выполняется для услуги (например для снятия г.воды и канализ)';
comment on column TEMP_C_CHANGE2.cnt_days
  is 'Кол-во дней перерасчета (1-ый процент)';
comment on column TEMP_C_CHANGE2.uslm
  is 'Услуга главная';
-- Create/Recreate indexes 
create index TEMP_C_CHANGE2_I on TEMP_C_CHANGE2 (LSK, USL, ORG);


[ver_KESZRP=418]

-- Add/modify columns 
alter table KWTP_DAY add dtek date;
-- Add comments to the columns 
comment on column KWTP_DAY.dtek
  is 'Дата принятия платежа';

-- Add/modify columns 
alter table a_KWTP_DAY add dtek date;
-- Add comments to the columns 
comment on column a_KWTP_DAY.dtek
  is 'Дата принятия платежа';

-- Add comments to the columns 
comment on column C_VVOD.dist_tp
  is 'Распределение воды по дому (0, null-пропорционально расходу, 1 - проп. площади, 4 - по дому, без ОДПУ)';

-- Create/Recreate indexes 
create index kwtp_day_i on KWTP_DAY (dtek)
  tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

-- Create/Recreate indexes 
create index kwtp_round_i on KWTP_ROUND (dtek)
  tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );



[ver_KESZRP=419]
--КРИТИЧЕСКАЯ СЕКЦИЯ!!! ПРОВЕРИТЬ ВЫПОЛНЕНИЕ!!!

update kwtp_day k set dtek=(select max(t.dtek) from c_kwtp_mg t where t.id=k.kwtp_id);
update kwtp_round k set dtek=(select max(t.dtek) from c_kwtp_mg t where t.lsk=k.lsk);

commit;
alter table KWTP_DAY modify dtek not null;
alter table KWTP_ROUND modify dtek not null;


[ver_KESZR=420]
--установить параметр, без удаления его 
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'NEED_CLOSE_BASE', 'Закрывать базу до итогового (null,0-нет,1-да)', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='NEED_CLOSE_BASE');
commit;

[ver_KP=420]
--установить параметр, без удаления его 
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'NEED_CLOSE_BASE', 'Закрывать базу до итогового (null,0-нет,1-да)', 0, 1
 from dual where not exists
 (select * from spr_params t where t.cd='NEED_CLOSE_BASE');
commit;



[ver_PKESZR=421]
-- Create table
create global temporary table LOAD_TMP_BULK
(
  s1 VARCHAR2(4000)
)
on commit preserve rows;
-- Add comments to the table 
comment on table LOAD_TMP_BULK
  is 'Таблица для загрузки необработанного TXT файла из любых источников';
-- Add comments to the columns 
comment on column LOAD_TMP_BULK.s1
  is 'Длинная строка, только для загрузки текстового файла';


-- Drop table
drop table LOAD_TMP_E cascade constraints;
-- Create table
create table LOAD_TMP_E
(
  lsk_ext  VARCHAR2(25),
  fio      VARCHAR2(255),
  adr      VARCHAR2(255),
  usl_cd   VARCHAR2(255),
  usl_name VARCHAR2(255),
  fk_org   number,
  period   VARCHAR2(6),
  mel      NUMBER,
  sal      NUMBER(8,2)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table LOAD_TMP_E
  is 'Таблица для обработки файлов формата Кузбассэнерго';
-- Add comments to the columns 
comment on column LOAD_TMP_E.lsk_ext
  is 'Лицевой счет в системе Кузб.Энерг.';
comment on column LOAD_TMP_E.fio
  is 'ФИО';
comment on column LOAD_TMP_E.adr
  is 'Adr';
comment on column LOAD_TMP_E.usl_cd
  is 'Код услуги';
comment on column LOAD_TMP_E.usl_name
  is 'Наименование услуги';
comment on column LOAD_TMP_E.fk_org
  is 'fk на организацию отправившую долги';
comment on column LOAD_TMP_E.period
  is 'Период';
comment on column LOAD_TMP_E.mel
  is 'Показание сч.';
comment on column LOAD_TMP_E.sal
  is 'Сальдо в копейках';
-- Create/Recreate primary, unique and foreign key constraints 
alter table LOAD_TMP_E
  add constraint LOAD_TMP_E_F foreign key (FK_ORG)
  references t_org (ID);


-- Add/modify columns 
alter table KART modify lsk_ext VARCHAR2(25);




[ver_KESZR=422]

-- Create table
create table C_DEB_OPER
(
  id      NUMBER not null,
  fk_oper CHAR(2) not null,
  fk_lsk  CHAR(8) not null,
  summa   NUMBER,
  n1      NUMBER,
  s1      VARCHAR2(256)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table C_DEB_OPER
  is 'Долги по операциям (для приёма оплаты по внешним услугам и лиц.счетам)';
-- Add comments to the columns 
comment on column C_DEB_OPER.id
  is 'ID';
comment on column C_DEB_OPER.fk_oper
  is 'FK на операцию';
comment on column C_DEB_OPER.summa
  is 'Сумма долга';
comment on column C_DEB_OPER.n1
  is 'Служебное поле (может хранить последние показания и т.п.)';
comment on column C_DEB_OPER.s1
  is 'Служебное поле (может хранить фио и т.п.)';
comment on column C_DEB_OPER.fk_lsk
  is 'FK на ЛС';
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_DEB_OPER
  add constraint C_DEB_OPER_P primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table C_DEB_OPER
  add constraint C_DEB_OPER_F_LSK foreign key (FK_LSK)
  references KART (LSK);
alter table C_DEB_OPER
  add constraint C_DEB_OPER_F_OPER foreign key (FK_OPER)
  references OPER (OPER);


[ver_PKESZR=423]
-- Add/modify columns 
alter table C_COMPS add period varchar2(6);
-- Add comments to the columns 
comment on column C_COMPS.period
  is 'Текущий период работы';

-- Add/modify columns 
alter table USL add parent_usl CHAR(3);
-- Add comments to the columns 
comment on column USL.parent_usl
  is 'Родительская услуга (ну как надо уже пора сделать)))';
-- Create/Recreate primary, unique and foreign key constraints 
alter table USL
  add constraint USL_FPARENT foreign key (PARENT_USL)
  references usl (USL);

[ver_PKESZR=424]

create table DU_OBJ
(
  id  NUMBER not null,
  cd  VARCHAR2(1024) not null,
  obj BLOB not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DU_OBJ
  is 'Объект для обновления';
comment on column DU_OBJ.id
  is 'ID';
comment on column DU_OBJ.cd
  is 'Наименование объекта';
comment on column DU_OBJ.obj
  is 'Файл (BLOB)';
create unique index DU_OBJ_I on DU_OBJ (CD)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DU_OBJ
  add constraint DU_OBJ_P primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

create table DU_OBJ_COMP
(
  id        NUMBER not null,
  fk_du_obj NUMBER,
  comp      NUMBER,
  is_get    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DU_OBJ_COMP
  is 'Отметки о получении обновления объекта';
comment on column DU_OBJ_COMP.id
  is 'ID';
comment on column DU_OBJ_COMP.fk_du_obj
  is 'FK на объект';
comment on column DU_OBJ_COMP.comp
  is 'Уникальный идентификатор компьютера (пишется в licenses.ini)';
comment on column DU_OBJ_COMP.is_get
  is 'Получено? (0, null-нет, 1-да)';
create unique index DU_OBJ_COMP_I on DU_OBJ_COMP (FK_DU_OBJ, COMP)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DU_OBJ_COMP
  add constraint DU_OBJ_COMP_P primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DU_OBJ_COMP
  add constraint DU_OBJ_COMP_F foreign key (FK_DU_OBJ)
  references DU_OBJ (ID) on delete cascade;



[ver_PKESZR=425]

-- Add/modify columns 
alter table C_KART_PR add priv_proc varchar2(10);
-- Add comments to the columns 
comment on column C_KART_PR.priv_proc
  is 'Доля приватизированной площади в STR (например 1/5)';


-- Add/modify columns 
alter table A_KART_PR add priv_proc varchar2(10);
-- Add comments to the columns 
comment on column A_KART_PR.priv_proc
  is 'Доля приватизированной площади в STR (например 1/5)';


[ver_PKESZR=426]
-- Add/modify columns 
alter table C_VVOD add wo_limit number;
-- Add comments to the columns 
comment on column C_VVOD.wo_limit
  is '(1-не ограничивать лимитом потребления ОДН, 0 и null- ограничивать) (долько для определённых dist_tp)';

-- Add/modify columns 
alter table A_VVOD add wo_limit number;
-- Add comments to the columns 
comment on column A_VVOD.wo_limit
  is '(1-не ограничивать лимитом потребления ОДН, 0 и null- ограничивать) (долько для определённых dist_tp)';

[ver_PKESZR=427]

-- Add/modify columns 
alter table EXP_KART add house_id number;
-- Add/modify columns 
alter table EXP_C_HOUSES add psch number;


-- Add/modify columns 
alter table KART add fk_tp number;
-- Add comments to the columns 
comment on column KART.fk_tp
  is 'FK на тип лицевого счета (основной, дополнительный)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table KART
  add constraint KART_F_fk_tp foreign key (FK_TP)
  references u_list (ID);

insert into u_listtp t(cd, name)
select 'Типы лиц.счета', 'Типы лиц.счета' 
 from dual
 where not exists (select * from u_listtp tp
  where tp.cd='Типы лиц.счета');

insert into u_list t(cd, name, fk_listtp, npp)
select 'LSK_TP_MAIN', 'Основной', tp.id, 10 as npp
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Основной' and u.fk_listtp=d.id
    and d.cd='Типы лиц.счета')
 and tp.cd='Типы лиц.счета';

insert into u_list t(cd, name, fk_listtp, npp)
select 'LSK_TP_ADDIT', 'Дополнительный', tp.id, 20 as npp
 from u_listtp tp
 where not exists (select * from u_list u, u_listtp d
  where u.cd='Дополнительный' and u.fk_listtp=d.id
    and d.cd='Типы лиц.счета')
 and tp.cd='Типы лиц.счета';

update KART t 
set t.fk_tp=(select u.id from u_list u, u_listtp tp
 where tp.id=u.fk_listtp and tp.cd='Типы лиц.счета'
 and u.cd='LSK_TP_MAIN'
 );

commit;

grant select on scott.v_lsk_tp to base_connect;

-- Add/modify columns 
alter table ARCH_KART add fk_tp NUMBER;
-- Add comments to the columns 
comment on column ARCH_KART.fk_tp
  is 'FK на тип лицевого счета (основной, дополнительный)';


[ver_PKESZR=428]

-- Add comments to the columns 
comment on column C_VVOD.opl_add
  is 'Площадь по вводу';

-- Add comments to the columns 
comment on column A_VVOD.opl_add
  is 'Площадь по вводу';


[ver_PKESZR=429]
insert into spr_params
  (cd, name, fk_parcdtp, npp)
select 
  'REP_MN_TP_SCH' as cd, 'Тип счетов' as name, 'FLT_REP' as fk_parcdtp, (select nvl(max(s.npp),0)+1 from spr_params s)
  from dual;

insert into spr_params
  (cd, name, cdtp, fk_parcdtp, parent_id, sql_text, npp)
select 'REP_TP_SCH_SEL' as cd, 'выбрать' as name, 4 as cdtp, 'FLT_REP' as fk_parcdtp,
  t.id as parent_id,
  'select 0 as sel_id, ''LSK_TP_MAIN'' as sel_cd, ''Основные'' as name, 
  :fk_ses_ as fk_ses, :fk_par_ as fk_par, 1 as sel from dual
  union all
  select 1 as sel_id, ''LSK_TP_ADDIT'' as sel_cd, ''Дополнительные'' as name, 
  :fk_ses_, :fk_par_, 0 as sel from dual' 
   as sql_text, (select nvl(max(s.npp),0)+1 from spr_params s) as npp    
from spr_params t where t.cd='REP_MN_TP_SCH'
and not exists (select * from spr_params p where p.cd='REP_TP_SCH_SEL');

delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_TP_SCH', 'REP_TP_SCH_SEL')
and r.cd='78' and r.id=f.fk_rep and t.id=f.fk_par);

insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_TP_SCH')
and r.cd='78';

insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_TP_SCH_SEL')
and r.cd='78';


commit;

-- Create/Recreate primary, unique and foreign key constraints 
alter table REPXPAR
  drop constraint REPXPAR_F_PAR;
alter table REPXPAR
  add constraint REPXPAR_F_PAR foreign key (FK_PAR)
  references SPR_PARAMS (ID) on delete cascade;
alter table REPXPAR
  drop constraint REPXPAR_F_REP;
alter table REPXPAR
  add constraint REPXPAR_F_REP foreign key (FK_REP)
  references REPORTS (ID) on delete cascade;

-- Create/Recreate primary, unique and foreign key constraints 
alter table SPR_PARAMS
  drop constraint SPR_PARAMS_F_PARENT_ID;
alter table SPR_PARAMS
  add constraint SPR_PARAMS_F_PARENT_ID foreign key (PARENT_ID)
  references SPR_PARAMS (ID) on delete cascade;


[ver_PKESZR=430]

update ARCH_KART t set t.fk_tp=(select tp.id from v_lsk_tp tp where tp.cd='LSK_TP_MAIN')
where t.fk_tp is null
and t.mg < '201412';
commit;

-- Add/modify columns 
alter table KART modify fk_tp not null;


[ver_PKESZR=431]
-- Add/modify columns 
alter table ARCH_KART add for_bill number;
-- Add comments to the columns 
comment on column ARCH_KART.for_bill
  is 'Для распечатки счета (Null,0 - нет, 1-да) ';


[ver_ESZR=432]
-- Create/Recreate indexes 
create index ARCH_KART_I_for_bill on ARCH_KART (mg, for_bill)
  tablespace USERS;

[ver_PK=432]
-- Create/Recreate indexes 
create index ARCH_KART_I_for_bill on ARCH_KART (for_bill)
  tablespace INDX
  local;


[ver_PKESZR=433]
-- Add/modify columns 
alter table ARCH_KART add prn_num number;
alter table ARCH_KART add prn_new number;
-- Add comments to the columns 
comment on column ARCH_KART.prn_num
  is '№ порядк печати';
comment on column ARCH_KART.prn_new
  is 'Новый лист счета? (Null,0 - нет, 1-да) ';

[ver_PK=434]
create index ARCH_KART_I2 on ARCH_KART (prn_num)
local;

[ver_ESZR=434]
create index ARCH_KART_I2 on ARCH_KART (prn_num);

[ver_PKESZR=435]
-- Add/modify columns 
alter table T_ORG add r_sch_addit VARCHAR2(20);
-- Add comments to the columns 
comment on column T_ORG.r_sch_addit
  is 'Р/C-для дополнительных счетов';


[ver_PKESZR=436]
insert into reports
  (name, fk_type, cd, frx_fname, maxlevel)
select 'Реестр для фонда Капремонта' as name, 1 as fk_type,
 '88' as cd, 'reestrcap1.fr3' as frx_fname, 0 as maxlevel from dual t
 where not exists (select * from reports r where r.cd='88');
commit;

[ver_PKESZR=437]


insert into spr_params
  (cd, name, fk_parcdtp, npp)
select 
  'REP_MN_ORG2' as cd, 'Организация' as name, 'FLT_REP' as fk_parcdtp, (select nvl(max(s.npp),0)+1 from spr_params s)
  from dual where not exists (select * from spr_params s where s.cd='REP_MN_ORG2');

insert into spr_params
  (cd, name, cdtp, fk_parcdtp, npp, parent_id, sql_text)
  select 'REP_ORG2', 'выбрать', 5, 'FLT_REP', 
  (select nvl(max(npp),0)+1 from spr_params t), 
  t.id,
  'select t.id as sel_id, t.cd as sel_cd, t.name, 
  :fk_ses_ as fk_user, :fk_par_ as fk_par, decode(t.cd,''Фонд Капремонта МКД'',0, 1) as sel from scott.t_org t
  order by t.name
  '
   as sql_text    
from spr_params t where t.cd='REP_MN_ORG2' and not exists (select * from spr_params s where s.cd='REP_ORG2');

insert into spr_params
  (cd, name, fk_parcdtp, npp)
select 
  'REP_MN_USL2' as cd, 'Услуга' as name, 'FLT_REP' as fk_parcdtp, (select nvl(max(s.npp),0)+1 from spr_params s)
  from dual where not exists (select * from spr_params s where s.cd='REP_MN_USL2');
  
insert into spr_params
  (cd, name, cdtp, fk_parcdtp, parent_id, sql_text, npp)
select 'REP_USL2' as cd, 'выбрать' as name, 5 as cdtp, 'FLT_REP' as fk_parcdtp,
  t.id as parent_id,
  'select to_number(u.usl) as sel_id, u.usl as sel_cd, u.nm as name,
  :fk_ses_ as fk_ses, :fk_par_ as fk_par, 1 as sel from usl u order by u.npp' 
   as sql_text, (select nvl(max(s.npp),0)+1 from spr_params s) as npp    
from spr_params t where t.cd='REP_MN_USL2' and not exists (select * from spr_params s where s.cd='REP_MN_USL2');

insert into reports
  (name, fk_type, cd, frx_fname, maxlevel)
select 'Оборотная ведомость по поставщикам услуг' as name, 1 as fk_type,
 '89' as cd, 'oborot1.fr3' as frx_fname, 3 as maxlevel from dual t
 where not exists (select * from reports r where r.cd='89');


delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='89' and r.id=f.fk_rep and t.id=f.fk_par);
delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='89' and r.id=f.fk_rep and t.id=f.fk_par);

insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='89';
insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='89';

commit;
 

insert into period_reports
  (id, mg, dat, signed)
select r2.id, t.mg, null as dat, 1 as signed
 from PERIOD_REPORTS t, reports r, reports r2
where r.cd='1' and r2.cd='89' and r.id=t.id
and not exists (select * from period_reports s where s.id=r2.id and s.mg=t.mg);
commit;


[ver_PKESZR=438]
delete from repxpar x where 
  exists (select * from reports r, spr_params p where 
  p.cd in ('REP_MN_ORG2','REP_ORG2') and r.id=x.fk_rep
  and r.cd='89' and p.id=x.fk_par
  );

insert into repxpar
  (fk_rep, fk_par)
 select r.id, t.id from reports r, spr_params t where 
  t.cd in ('REP_ORG2')
  and r.cd in ('89');

commit;


[ver_PKESZR=439]

insert into reports
  (name, fk_type, cd, frx_fname, maxlevel)
select 'Оборотная ведомость по домам' as name, 1 as fk_type,
 '90' as cd, 'oborot2.fr3' as frx_fname, 3 as maxlevel from dual t
 where not exists (select * from reports r where r.cd='90');


delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='90' and r.id=f.fk_rep and t.id=f.fk_par);
delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='90' and r.id=f.fk_rep and t.id=f.fk_par);

insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='90';
insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='90';

commit;
 

insert into period_reports
  (id, mg, dat, signed)
select r2.id, t.mg, null as dat, 1 as signed
 from PERIOD_REPORTS t, reports r, reports r2
where r.cd='1' and r2.cd='90' and r.id=t.id
and not exists (select * from period_reports s where s.id=r2.id and s.mg=t.mg);
commit;


delete from repxpar x where 
  exists (select * from reports r, spr_params p where 
  p.cd in ('REP_MN_ORG2','REP_ORG2') and r.id=x.fk_rep
  and r.cd='90' and p.id=x.fk_par
  );

insert into repxpar
  (fk_rep, fk_par)
 select r.id, t.id from reports r, spr_params t where 
  t.cd in ('REP_ORG2')
  and r.cd in ('90');

commit;

[ver_PKESZR=440]


delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='61' and r.id=f.fk_rep and t.id=f.fk_par);
delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='61' and r.id=f.fk_rep and t.id=f.fk_par);

insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='61';
insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='61';

commit;
 

delete from repxpar x where 
  exists (select * from reports r, spr_params p where 
  p.cd in ('REP_MN_ORG2','REP_ORG2') and r.id=x.fk_rep
  and r.cd='61' and p.id=x.fk_par
  );

insert into repxpar
  (fk_rep, fk_par)
 select r.id, t.id from reports r, spr_params t where 
  t.cd in ('REP_ORG2')
  and r.cd in ('61');

commit;

update reports t set t.show_sel_org=0
where t.cd='61';

commit;


[ver_PKESZR=441]

-- Create table
create table T_ORGASSIGN
(
  fk_src number,
  fk_dst number,
  mg1    varchar2(6),
  mg2    varchar2(6)
)
;
-- Add comments to the table 
comment on table T_ORGASSIGN
  is 'Правоприемники по организациям';
-- Add comments to the columns 
comment on column T_ORGASSIGN.fk_src
  is 'Орг-источник';
comment on column T_ORGASSIGN.fk_dst
  is 'Орг-назначение';
comment on column T_ORGASSIGN.mg1
  is 'Нач.период';
comment on column T_ORGASSIGN.mg2
  is 'Кон.период';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_ORGASSIGN
  add constraint T_ORGASSIGN_F_SRC foreign key (FK_SRC)
  references t_org (ID);
alter table T_ORGASSIGN
  add constraint T_ORGASSIGN_F_DST foreign key (FK_DST)
  references t_org (ID);


[ver_PKESZR=442]

-- Add/modify columns 
alter table STATISTICS_LSK add fk_tp number;
-- Add comments to the columns 
comment on column STATISTICS_LSK.fk_tp
  is 'FK на тип счета (Основоной, Дополнительный)';
  
-- Add/modify columns 
alter table STATISTICS add fk_tp number;
-- Add comments to the columns 
comment on column STATISTICS.fk_tp
  is 'FK на тип счета (Основоной, Дополнительный)';
  
-- Add/modify columns 
alter table STATISTICS_TREST add fk_tp number;
-- Add comments to the columns 
comment on column STATISTICS_TREST.fk_tp
  is 'FK на тип счета (Основоной, Дополнительный)';


[ver_PKESZR=443]

-- Add/modify columns 
alter table C_VVOD add edt_norm number;
-- Add comments to the columns 
comment on column C_VVOD.edt_norm
  is 'Введённый норматив на м2 (Например для отопления, Полыс. там где отопление в гкал, надо начислять по нормативу, nabor.norm - не подходит для этого, оно в кис. для отопления м2)';


-- Add/modify columns 
alter table A_VVOD add edt_norm number;
-- Add comments to the columns 
comment on column A_VVOD.edt_norm
  is 'Введённый норматив на м2 (Например для отопления, Полыс. там где отопление в гкал, надо начислять по нормативу, nabor.norm - не подходит для этого, оно в кис. для отопления м2)';

[ver_PKESZR=444]

-- Add comments to the columns 
comment on column C_VVOD.dist_tp
  is 'Распределение воды по дому (0, null-пропорционально расходу, 1 - проп. площади, 
4-по дому, без ОДПУ, есть возм.установки, 5-по дому, без ОДПУ, нет возм.установки)';

-- Add comments to the columns 
comment on column A_VVOD.dist_tp
  is 'Распределение воды по дому (0, null-пропорционально расходу, 1 - проп. площади, 
4-по дому, без ОДПУ, есть возм.установки, 5-по дому, без ОДПУ, нет возм.установки)';

-- Add/modify columns 
alter table USL add chrg_round number;
-- Add comments to the columns 
comment on column USL.chrg_round
  is 'Округлить до N знаков (исп. в C_KART если NULL то берется по умолчанию в C_KART)';


[ver_PKESZR=445]
-- Add/modify columns 
alter table STATISTICS_LSK add opl number;
-- Add comments to the columns 
comment on column STATISTICS_LSK.opl
  is 'Площадь по услуге (в дополнение к CNT)';
  
-- Add/modify columns 
alter table statistics add opl number;
-- Add comments to the columns 
comment on column STATISTICS.opl
  is 'Площадь по услуге (в дополнение к CNT)';

-- Add/modify columns 
alter table statistics_trest add opl number;
-- Add comments to the columns 
comment on column STATISTICS_trest.opl
  is 'Площадь по услуге (в дополнение к CNT)';
    
  
-- Add/modify columns 
alter table STATISTICS_LSK add is_vol VARCHAR2(20);
-- Add comments to the columns 
comment on column STATISTICS_LSK.is_vol
  is 'Имеется объем по услуге (null,0-нет, 1 -да)';
  
-- Add/modify columns 
alter table statistics add is_vol VARCHAR2(20);
-- Add comments to the columns 
comment on column STATISTICS.is_vol
  is 'Имеется объем по услуге (null,0-нет, 1 -да)';

-- Add/modify columns 
alter table statistics_trest add is_vol VARCHAR2(20);
-- Add comments to the columns 
comment on column STATISTICS_trest.is_vol
  is 'Имеется объем по услуге (null,0-нет, 1 -да)';

[ver_PKESZR=446]

-- Add/modify columns 
alter table USL add bill_brake number;
-- Add comments to the columns 
comment on column USL.bill_brake
  is 'Отделить в счете? (null,0-нет, 1-да)';

[ver_PKESZR=447]
-- Add comments to the columns 
comment on column C_VVOD.dist_tp
  is 'Распределение воды по дому (0, null-пропорционально расходу, 1 - проп. площади,
4-по дому, без ОДПУ, есть возм.установки, 5-по дому, без ОДПУ, нет возм.установки,
6-просто учитывать объем)';


[ver_PKESZR=448]
-- Add comments to the columns 
comment on column USL.frc_get_price
  is 'Принудительно брать расценку по услуге в счет (в основном для тек содерж) (1-брать)';

[ver_PKESZR=449]
-- Add/modify columns 
alter table C_HOUSES add fk_other_org number;
-- Add comments to the columns 
comment on column C_HOUSES.fk_other_org
  is 'FK на прочую орг. (например на котельную)';
  
-- Add/modify columns 
alter table A_HOUSES add fk_other_org number;
-- Add comments to the columns 
comment on column A_HOUSES.fk_other_org
  is 'FK на прочую орг. (например на котельную)';
  

[ver_PKESZR=450]
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_HOUSES
  add constraint C_HOUSES_F_OTHER_ORG foreign key (FK_OTHER_ORG)
  references t_org (ID);


[ver_PKESZR=451]

delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='14' and r.id=f.fk_rep and t.id=f.fk_par);
delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='14' and r.id=f.fk_rep and t.id=f.fk_par);

insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='14';
insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='14';

commit;

[ver_PKESZR=452]
delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='89' and r.id=f.fk_rep and t.id=f.fk_par);
delete from repxpar f where exists
(select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='89' and r.id=f.fk_rep and t.id=f.fk_par);

insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_USL2')
and r.cd='89';
insert into repxpar
  (fk_rep, fk_par)
select r.id, t.id from reports r, spr_params t where t.cd in ('REP_MN_USL2')
and r.cd='89';

delete from repxpar x where 
  exists (select * from reports r, spr_params p where 
  p.cd in ('REP_MN_ORG2','REP_ORG2') and r.id=x.fk_rep
  and r.cd='89' and p.id=x.fk_par
  );

insert into repxpar
  (fk_rep, fk_par)
 select r.id, t.id from reports r, spr_params t where 
  t.cd in ('REP_ORG2')
  and r.cd in ('89');

commit;


[ver_PKESZR=453]

-- Drop table
drop table TEMP_PREP cascade constraints;
-- Create table
create global temporary table TEMP_PREP
(
  id    NUMBER not null,
  usl   VARCHAR2(3),
  org   NUMBER,
  summa NUMBER,
  tp_cd NUMBER
)
on commit preserve rows;
-- Add comments to the table 
comment on table TEMP_PREP
  is 'Временная таблица для пакета C_PREP';
-- Add comments to the columns 
comment on column TEMP_PREP.id
  is 'ID';
comment on column TEMP_PREP.usl
  is 'Услуга';
comment on column TEMP_PREP.org
  is 'Организация';
comment on column TEMP_PREP.summa
  is 'Сумма';
comment on column TEMP_PREP.tp_cd
  is 'Тип (0-Вх.значения, 1-Исх.значения, 2-Корректировка, 3 -Корректировка округленная, 4 -корректировка дополнителная)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table TEMP_PREP
  add constraint TEMP_PREP_P primary key (ID);

[ver_PKESZR=454]

-- Add/modify columns 
alter table STATUS add cd VARCHAR2(32);
update STATUS t set t.cd=decode(t.name, 'Муницип', 'MUN', 'Приват', 'PRV', null);
commit;


[ver_PKESZR=455]

-- Add/modify columns 
alter table TEMP_PREP add mg varchar2(32);
-- Add comments to the columns 
comment on column TEMP_PREP.mg
  is 'Дополнительный идентификатор';

[ver_PKESZR=456]
update REPORTS t set t.maxlevel=3, t.can_detail=1 where t.cd='80';
commit;

[ver_PKESZR=457]
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'IS_1ROOM_SN', 'Распространять соцнорму 1комн. квартир на всю площадь?', 0, 1
 from dual where not exists
 (select * from spr_params t where t.cd='IS_1ROOM_SN');
commit;

[ver_PKESZR=458]
-- Add/modify columns 
alter table T_ORG add fk_bill_var NUMBER;
-- Add comments to the columns 
comment on column T_ORG.fk_bill_var
  is 'Вариант компоновки счета для УК (работает совместно с usl_bills';

-- Add/modify columns 
alter table USL_BILLS add fk_bill_var NUMBER;
-- Add comments to the columns 
comment on column USL_BILLS.fk_bill_var
  is 'Вариант компоновки счета';

[ver_PKESZR=459]
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'SPR_DEB_VAR', 'Вариант справки о задолжности, 0-старый, 1-новый', 0, 1
 from dual where not exists
 (select * from spr_params t where t.cd='SPR_DEB_VAR');
commit;

[ver_PKESZR=460] 
-- Create table
create table pay_redirect
(
  fk_usl_src  varchar2(3) not null,
  fk_usl_dst  varchar2(3),
  fk_org_src  number,
  fk_org_dst  number,
  use_org_reu number,
  tp          number
)
;
-- Add comments to the table 
comment on table pay_redirect
  is 'Перенаправление оплаты, пени на другую услугу или поставщика';
-- Add comments to the columns 
comment on column pay_redirect.fk_usl_src
  is 'Услуга - источник';
comment on column pay_redirect.fk_usl_dst
  is 'Услуга - назначение (если не заполнено, не меняется)';
comment on column pay_redirect.fk_org_src
  is 'Организация - источник (если не заполнено, берётся любая)';
comment on column pay_redirect.fk_org_dst
  is 'Организация - назначение (если не заполнено, не меняется)';
comment on column pay_redirect.use_org_reu
  is 'Использовать орг, которая обслуживает фонд (0-нет, 1 -да)';
comment on column pay_redirect.tp
  is 'Тип поступления (1-Оплата, 0-Пеня)';

create unique index PAY_REDIRECT_IU on PAY_REDIRECT (fk_usl_src, fk_org_dst);


[ver_PKESZR=461] 
-- Add/modify columns 
alter table PAY_REDIRECT add npp number;
-- Add comments to the columns 
comment on column PAY_REDIRECT.npp
  is 'Номер порядковый исполнения (от 0 до ...)';

[ver_PKESZR=462] 
-- Add/modify columns 
alter table C_VVOD add nrm number;
-- Add comments to the columns 
comment on column C_VVOD.nrm
  is 'Норматив по ОДН, для отчётов, рассчитывается либо по таблице opl_liter, либо в условии';

-- Add/modify columns 
alter table A_VVOD add nrm number;
-- Add comments to the columns 
comment on column A_VVOD.nrm
  is 'Норматив по ОДН, для отчётов, рассчитывается либо по таблице opl_liter, либо в условии';


[ver_PKESZR=463] 

rename pay_redirect to kmp_redirect;



[ver_PK=464] 
-- Create table
create table REDIR_PAY
(
  reu        VARCHAR2(2),
  fk_usl_src CHAR(3),
  fk_usl_dst CHAR(3),
  fk_org_src NUMBER,
  fk_org_dst NUMBER,
  tp         NUMBER not null
)
tablespace DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table REDIR_PAY
  is 'Перенаправление оплаты, пени на другую услугу или поставщика';
-- Add comments to the columns 
comment on column REDIR_PAY.reu
  is 'Код РЭУ';
comment on column REDIR_PAY.fk_usl_src
  is 'Услуга - источник';
comment on column REDIR_PAY.fk_usl_dst
  is 'Услуга - назначение (если не заполнено, не меняется)';
comment on column REDIR_PAY.fk_org_src
  is 'Организация - источник (если не заполнено, берётся любая)';
comment on column REDIR_PAY.fk_org_dst
  is 'Организация - назначение (если не заполнено, не меняется) Использовать орг, которая обслуживает фонд (-1) (минус один)';
comment on column REDIR_PAY.tp
  is 'Тип поступления (1-Оплата, 0-Пеня)';
-- Create/Recreate indexes 
create unique index REDIR_PAY_IU on REDIR_PAY (FK_USL_SRC, FK_ORG_DST, TP, FK_USL_DST, FK_ORG_SRC, REU)
  tablespace INDX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table REDIR_PAY
  add constraint REDIR_PAY_F_ORG_SRC foreign key (FK_ORG_SRC)
  references T_ORG (ID) on delete cascade;
alter table REDIR_PAY
  add constraint REDIR_PAY_F_USL_DST foreign key (FK_USL_DST)
  references USL (USL) on delete cascade;
alter table REDIR_PAY
  add constraint REDIR_PAY_F_USL_SRC foreign key (FK_USL_SRC)
  references USL (USL) on delete cascade;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on REDIR_PAY to АДМИНИСТРАТОР;

[ver_PKESZR=464] 
-- Create table
create table REDIR_PAY
(
  reu        VARCHAR2(2),
  fk_usl_src CHAR(3),
  fk_usl_dst CHAR(3),
  fk_org_src NUMBER,
  fk_org_dst NUMBER,
  tp         NUMBER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table REDIR_PAY
  is 'Перенаправление оплаты, пени на другую услугу или поставщика';
-- Add comments to the columns 
comment on column REDIR_PAY.reu
  is 'Код РЭУ';
comment on column REDIR_PAY.fk_usl_src
  is 'Услуга - источник';
comment on column REDIR_PAY.fk_usl_dst
  is 'Услуга - назначение (если не заполнено, не меняется)';
comment on column REDIR_PAY.fk_org_src
  is 'Организация - источник (если не заполнено, берётся любая)';
comment on column REDIR_PAY.fk_org_dst
  is 'Организация - назначение (если не заполнено, не меняется) Использовать орг, которая обслуживает фонд (-1) (минус один)';
comment on column REDIR_PAY.tp
  is 'Тип поступления (1-Оплата, 0-Пеня)';
-- Create/Recreate indexes 
create unique index REDIR_PAY_IU on REDIR_PAY (FK_USL_SRC, FK_ORG_DST, TP, FK_USL_DST, FK_ORG_SRC, REU)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table REDIR_PAY
  add constraint REDIR_PAY_F_ORG_SRC foreign key (FK_ORG_SRC)
  references T_ORG (ID) on delete cascade;
alter table REDIR_PAY
  add constraint REDIR_PAY_F_USL_DST foreign key (FK_USL_DST)
  references USL (USL) on delete cascade;
alter table REDIR_PAY
  add constraint REDIR_PAY_F_USL_SRC foreign key (FK_USL_SRC)
  references USL (USL) on delete cascade;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on REDIR_PAY to АДМИНИСТРАТОР;

[ver_PKESZR=465] 
insert into my_messages
  (constraint_name, actions, parent_child, error_message)
select 'REDIR_PAY_IU', '*', '*', 'Найдены повторяющиеся записи, сохранение не возможно!'
 from dual where not exists
(select * from my_messages t where t.constraint_name='REDIR_PAY_IU');
commit;


[ver_PKESZR=466] 

-- Add comments to the columns 
comment on column C_VVOD.dist_tp
  is 'Распределение воды по дому (0, null-пропорционально расходу, 2-нет услуги, не считать вообще, 1 - проп. площади,
4-по дому, без ОДПУ, есть возм.установки, 5-по дому, без ОДПУ, нет возм.установки,
6-просто учитывать объем)';

[ver_PKESZR=467] 
-- Add/modify columns 
alter table KART modify phw NUMBER(10,3);
alter table KART modify pgw NUMBER(10,3);
alter table KART modify pel NUMBER(10,3);

[ver_PKESZR=468] 
-- Add/modify columns 
alter table TMP_STATE add dat_rog date;
-- Add comments to the columns 
comment on column TMP_STATE.dat_rog
  is 'Дата рождения';

-- Add/modify columns 
alter table TMP_STATE add rel_cd varchar2(32);
-- Add comments to the columns 
comment on column TMP_STATE.rel_cd
  is 'CD родственного отношения';

[ver_PKESZR=469] 
-- Add/modify columns 
alter table STATUS add tp VARCHAR2(32);
-- Add comments to the columns 
comment on column STATUS.tp
  is 'Назначение помещения (жил./не жил)';

-- Add/modify columns 
alter table STATUS add name_kp VARCHAR2(25);
-- Add comments to the columns 
comment on column STATUS.name_kp
  is 'Наименование статуса, для выгрузки в фонд капремонта';

-- Add/modify columns 
alter table SPK modify name CHAR(64);

-- Add/modify columns 
alter table SPK add cd varchar2(32);
-- Add comments to the columns 
comment on column SPK.cd
  is 'CD';


[ver_PKESZR=470] 
-- Drop columns 
alter table C_CHARGE_PREP drop column dt;
alter table C_CHARGE_PREP add dt1 date;
alter table C_CHARGE_PREP add dt2 date;
-- Add comments to the columns 
comment on column C_CHARGE_PREP.tp
  is 'Тип записи (0-предварительный подсчет,
1 - сгруппированный до ключевых структур, .
2 - кол-во прож.для опред.соцнормы,
3 - итог объёма, проживающих,
4 - корректировки ОДН,
5 - детально, но без корректировок ОДН,
6 - итог объёма, проживающих без коррект. ОДН)
7 - просто, наличие счетчика
 8-детализация льготы, 9 - наличие льготы (используется совместно с dt1,dt2)';
comment on column C_CHARGE_PREP.dt1
  is 'Дата начала периода';
comment on column C_CHARGE_PREP.dt2
  is 'Дата конца периода';

-- Drop columns 
alter table A_CHARGE_PREP drop column dt;
alter table A_CHARGE_PREP add dt1 date;
alter table A_CHARGE_PREP add dt2 date;
-- Add comments to the columns 
comment on column A_CHARGE_PREP.tp
  is 'Тип записи (0-предварительный подсчет,
1 - сгруппированный до ключевых структур, .
2 - кол-во прож.для опред.соцнормы,
3 - итог объёма, проживающих,
4 - корректировки ОДН,
5 - детально, но без корректировок ОДН,
6 - итог объёма, проживающих без коррект. ОДН)
7 - просто, наличие счетчика
 8-детализация льготы, 9 - наличие льготы (используется совместно с dt1,dt2)';
comment on column A_CHARGE_PREP.dt1
  is 'Дата начала периода';
comment on column A_CHARGE_PREP.dt2
  is 'Дата конца периода';

-- Drop columns 
alter table temp_c_CHARGE_PREP drop column dt;
alter table temp_c_CHARGE_PREP add dt1 date;
alter table temp_c_CHARGE_PREP add dt2 date;
-- Add comments to the columns 
comment on column temp_c_CHARGE_PREP.tp
  is 'Тип записи (0-предварительный подсчет,
1 - сгруппированный до ключевых структур, .
2 - кол-во прож.для опред.соцнормы,
3 - итог объёма, проживающих,
4 - корректировки ОДН,
5 - детально, но без корректировок ОДН,
6 - итог объёма, проживающих без коррект. ОДН)
7 - просто, наличие счетчика
 8-детализация льготы, 9 - наличие льготы (используется совместно с dt1,dt2)';
comment on column temp_c_CHARGE_PREP.dt1
  is 'Дата начала периода';
comment on column temp_c_CHARGE_PREP.dt2
  is 'Дата конца периода';

-- Add/modify columns 
alter table TEMP_C_CHARGE_PREP add fk_spk number;
-- Add comments to the columns 
comment on column TEMP_C_CHARGE_PREP.fk_spk
  is 'FK на справочник льгот';

-- Add/modify columns 
alter table C_CHARGE_PREP add fk_spk number;
-- Add comments to the columns 
comment on column C_CHARGE_PREP.fk_spk
  is 'FK на справочник льгот';
  
  
-- Add/modify columns 
alter table A_CHARGE_PREP add fk_spk number;
-- Add comments to the columns 
comment on column A_CHARGE_PREP.fk_spk
  is 'FK на справочник льгот';


[ver_PKESZR=470] 
create or replace view v_params as
select p.id, p.param, p.message, p.ver, p.mess_hint,
p.period, (select count(*) as cnt from scott.v_messages v
where v.is_read_lamp= 0 and v.can_set_is_read = 1
and v.user_id=uid) as cntmess,
TO_CHAR(ADD_MONTHS( to_date( p.period,'YYYYMM'),1),'YYYYMM') as period1,
TO_CHAR(to_date( p.period,'YYYYMM'),'MM/YYYY') as period2,
TO_CHAR(ADD_MONTHS( to_date( p.period,'YYYYMM'),-1),'YYYYMM') as period3,
CASE WHEN ROUND(sysdate-p.agent_uptime,2) > 0.02 THEN 1 ELSE 0 END
    as agent_uptime, p.agent_uptime as agent_time
from scott.params p;

grant select on v_params to base_connect

[ver_PKESZR=471]
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'DEL_BRK_SCH', 'Менять во время автонач. Сч->Нормат.', 0, 1
 from dual where not exists
 (select * from spr_params t where t.cd='DEL_BRK_SCH');

insert into reports
  (name, fk_type, cd, frx_fname, maxlevel)
select 'Реестр по льготникам для фонда Капремонта' as name, 1 as fk_type,
 '91' as cd, 'reestrcap2.fr3' as frx_fname, 0 as maxlevel from dual t
 where not exists (select * from reports r where r.cd='91');
commit;

[ver_PKESZR=472]
insert into reports
  (name, fk_type, cd, frx_fname, maxlevel)
select 'Реестр для УСЗН, для обмена' as name, 5 as fk_type,
 '92' as cd, null as frx_fname, 0 as maxlevel from dual t
 where not exists (select * from reports r where r.cd='92');
commit;

[ver_PKESZR=473]
insert into spr_params
  (cd, name, cdtp, parn1)
 select 'RESTRICT_BY_SAL' as cd, 'Выполнять органичение по сальдо при распр.оплаты', 0, 1
 from dual where not exists
 (select * from spr_params t where t.cd='RESTRICT_BY_SAL');

commit;

[ver_PKESZR=474]
-- Add/modify columns 
alter table KART add sel1 number;
-- Add comments to the columns 
comment on column KART.sel1
  is 'Лиц.счет отобран для выгрузки реестра для УСЗН';
  
-- Add/modify columns 
alter table ARCH_KART add sel1 number;
-- Add comments to the columns 
comment on column ARCH_KART.sel1
  is 'Лиц.счет отобран для выгрузки реестра для УСЗН';
  
  
[ver_K=475]

insert into spr_params
  (cd, name, cdtp, parn1)
 select 'GEN_CHK_C_DEB_USL' as cd, 'Формировать и проверять C_DEB_USL?', 0, 0
 from dual where not exists
 (select * from spr_params t where t.cd='GEN_CHK_C_DEB_USL');

commit;

[ver_PESZR=475]

insert into spr_params
  (cd, name, cdtp, parn1)
 select 'GEN_CHK_C_DEB_USL' as cd, 'Формировать и проверять C_DEB_USL?', 0, 1
 from dual where not exists
 (select * from spr_params t where t.cd='GEN_CHK_C_DEB_USL');

commit;

[ver_PKESZR=475]
grant select on DBA_TAB_COLUMNS to Администратор;
grant select on DBA_TAB_COLUMNS to Главный_оператор;


[ver_PKESZR=476]

-- Add/modify columns 
alter table LOAD_PRIVS add id number;
alter table LOAD_PRIVS add fk_src number;
-- Add comments to the columns 
comment on column LOAD_PRIVS.id
  is 'ID';
comment on column LOAD_PRIVS.fk_src
  is 'С какого ID получена запись';

create sequence load_privs_id
start with 1;



[ver_PKESZR=477]

-- Drop columns 
alter table TEMP_PREP drop column id;
-- Create/Recreate primary, unique and foreign key constraints 
alter table TEMP_PREP
  drop constraint TEMP_PREP_P cascade;
alter table TEMP_PREP
  add constraint TEMP_PREP_P primary key ();

drop trigger temp_prep_bi;


[ver_PKESZR=478]
-- Add/modify columns 
alter table STAV_R add days1 number;
alter table STAV_R add days2 number;
-- Add comments to the columns 
comment on column STAV_R.proc
  is 'Доля  от ставки рефинансирования';
comment on column STAV_R.dat1
  is 'Пероиод действия С';
comment on column STAV_R.dat2
  is 'Пероиод действия По';
comment on column STAV_R.month_pen
  is 'С какого месяца считается пеня от текущего (+2 например) --поле не работает';
comment on column STAV_R.days1
  is 'На какое кол-во дней просрочки распространяется С';
comment on column STAV_R.days2
  is 'На какое кол-во дней просрочки распространяется По';
-- Create/Recreate indexes 
create unique index STAV_R_U_I on STAV_R (dat1, dat2, days1, days2);

-- Add/modify columns 
alter table STAV_R modify proc NUMBER;

[ver_PKESZR=479]

insert into spr_params
  (cd, name, cdtp, parn1)
 select 'GEN_SAL_PEN' as cd, 'Вести сальдо по пене', 0, 1
 from dual where not exists
 (select * from spr_params t where t.cd='GEN_SAL_PEN');

commit;

[ver_PKESZR=480]
-- Add/modify columns 
alter table REDIR_PAY add mg1 VARCHAR2(6);
alter table REDIR_PAY add mg2 VARCHAR2(6);
-- Add comments to the columns 
comment on column REDIR_PAY.tp
  is 'Тип поступления (1-Оплата, 0-Пеня, 2 -Начисление)';
comment on column REDIR_PAY.mg1
  is 'Начальный период (для 2-типа, начисл)';
comment on column REDIR_PAY.mg2
  is 'Конечный период (для 2-типа, начисл)';


-- Add comments to the columns 
comment on column REDIR_PAY.tp
  is 'Тип поступления (1-Оплата, 0-Пеня, 2 -Статистика)';
comment on column REDIR_PAY.mg1
  is 'Начальный период (для 2-типа, статистика)';
comment on column REDIR_PAY.mg2
  is 'Конечный период (для 2-типа, статистика)';

[ver_PESZR=481]
-- Create/Recreate indexes 
drop index REDIR_PAY_IU;
create index REDIR_PAY_IU on REDIR_PAY (tp)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
[ver_K=481]
-- Create/Recreate indexes 
drop index REDIR_PAY_IU;
create index REDIR_PAY_IU on REDIR_PAY (tp)
  tablespace INDX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

[ver_PESZR=482]
-- Create table
create table c_pen_corr
(
  id      number,
  lsk     char(8),
  penya   number(12,2),
  dopl    varchar2(6),
  dtek    date,
  ts      date,
  fk_user number
)
tablespace users
;
-- Add comments to the table 
comment on table c_pen_corr
  is 'Корректировки по пене (корректировать сальдо по пене)';
-- Add comments to the columns 
comment on column c_pen_corr.id
  is 'ID';
comment on column c_pen_corr.lsk
  is 'Fk на лиц.счет';
comment on column c_pen_corr.penya
  is 'Сумма корректировки пени';
comment on column c_pen_corr.dopl
  is 'За период';
comment on column c_pen_corr.dtek
  is 'Дата исполнения';
comment on column c_pen_corr.ts
  is 'Timestamp';
comment on column c_pen_corr.fk_user
  is 'Кем исполнено';


[ver_PKESZR=482]
-- Create table
create table c_pen_corr
(
  id      number,
  lsk     char(8),
  penya   number(12,2),
  dopl    varchar2(6),
  dtek    date,
  ts      date,
  fk_user number
)
tablespace DATA
;
-- Add comments to the table 
comment on table c_pen_corr
  is 'Корректировки по пене (корректировать сальдо по пене)';
-- Add comments to the columns 
comment on column c_pen_corr.id
  is 'ID';
comment on column c_pen_corr.lsk
  is 'Fk на лиц.счет';
comment on column c_pen_corr.penya
  is 'Сумма корректировки пени';
comment on column c_pen_corr.dopl
  is 'За период';
comment on column c_pen_corr.dtek
  is 'Дата исполнения';
comment on column c_pen_corr.ts
  is 'Timestamp';
comment on column c_pen_corr.fk_user
  is 'Кем исполнено';


[ver_PKESZR=483]
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_PEN_CORR
  add constraint C_PEN_CORR_F foreign key (LSK)
  references kart (LSK) on delete cascade;

-- Add/modify columns 
alter table C_PEN_CORR modify id not null;
alter table C_PEN_CORR modify lsk not null;
alter table C_PEN_CORR modify penya not null;
alter table C_PEN_CORR modify dopl not null;
alter table C_PEN_CORR modify dtek not null;
alter table C_PEN_CORR modify ts not null;
alter table C_PEN_CORR modify fk_user not null;
-- Create/Recreate primary, unique and foreign key constraints 
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_PEN_CORR
  add constraint C_PEN_CORR_F_LSK foreign key (LSK)
  references KART (LSK) on delete cascade;
alter table C_PEN_CORR
  add constraint C_PEN_CORR_F_USER foreign key (FK_USER)
  references t_user (ID) on delete cascade;

grant insert, select, update, delete on C_PEN_CORR to Бухг_по_квартплате;


[ver_PKESZR=484]
-- Add/modify columns 
alter table C_SPR_PEN add fk_lsk_tp number;
-- Add comments to the columns 
comment on column C_SPR_PEN.fk_lsk_tp
  is 'Тип лиц счета, по которому определяется пеня';
-- Create/Recreate primary, unique and foreign key constraints 
alter table C_SPR_PEN
  add constraint C_SPR_PEN_f_lsk_tp foreign key (FK_LSK_TP)
  references u_list (ID);

-- Add/modify columns 
alter table stav_r add fk_lsk_tp number;
-- Add comments to the columns 
comment on column stav_r.fk_lsk_tp
  is 'Тип лиц счета, по которому определяется пеня';
-- Create/Recreate primary, unique and foreign key constraints 
alter table stav_r
  add constraint stav_r_f_lsk_tp foreign key (FK_LSK_TP)
  references u_list (ID);


[ver_K=485]

-- Create table
create table a_pen_corr
(
  id      NUMBER not null,
  lsk     CHAR(8) not null,
  penya   NUMBER(12,2) not null,
  dopl    VARCHAR2(6) not null,
  dtek    DATE not null,
  ts      DATE not null,
  fk_user NUMBER not null,
  mg      CHAR(6)
)
tablespace DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table a_pen_corr
  is 'Корректировки по пене (корректировать сальдо по пене)';
-- Add comments to the columns 
comment on column a_pen_corr.id
  is 'ID';
comment on column a_pen_corr.lsk
  is 'Fk на лиц.счет';
comment on column a_pen_corr.penya
  is 'Сумма корректировки пени';
comment on column a_pen_corr.dopl
  is 'За период';
comment on column a_pen_corr.dtek
  is 'Дата исполнения';
comment on column a_pen_corr.ts
  is 'Timestamp';
comment on column a_pen_corr.fk_user
  is 'Кем исполнено';
comment on column a_pen_corr.mg
  is 'Архивный период';
-- Create/Recreate indexes 
create index a_pen_corr_i on a_pen_corr (mg, lsk)
  tablespace INDX
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select, insert, update, delete on a_pen_corr to БУХГ_ПО_КВАРТПЛАТЕ;



[ver_PESZR=485]

-- Create table
create table a_pen_corr
(
  id      NUMBER not null,
  lsk     CHAR(8) not null,
  penya   NUMBER(12,2) not null,
  dopl    VARCHAR2(6) not null,
  dtek    DATE not null,
  ts      DATE not null,
  fk_user NUMBER not null,
  mg      CHAR(6)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table a_pen_corr
  is 'Корректировки по пене (корректировать сальдо по пене)';
-- Add comments to the columns 
comment on column a_pen_corr.id
  is 'ID';
comment on column a_pen_corr.lsk
  is 'Fk на лиц.счет';
comment on column a_pen_corr.penya
  is 'Сумма корректировки пени';
comment on column a_pen_corr.dopl
  is 'За период';
comment on column a_pen_corr.dtek
  is 'Дата исполнения';
comment on column a_pen_corr.ts
  is 'Timestamp';
comment on column a_pen_corr.fk_user
  is 'Кем исполнено';
comment on column a_pen_corr.mg
  is 'Архивный период';
-- Create/Recreate indexes 
create index a_pen_corr_i on a_pen_corr (mg, lsk)
  tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select, insert, update, delete on a_pen_corr to БУХГ_ПО_КВАРТПЛАТЕ;


[ver_PKESZR=486]

-- Create/Recreate indexes 
drop index STAV_R_U_I;
create unique index STAV_R_U_I on STAV_R (dat1, dat2, days1, days2, fk_lsk_tp)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

insert into my_messages
  (constraint_name, actions, parent_child, error_message)
select 'C_PEN_CORR_F_LSK', '*', '*', 'Лицевой счет не существует!'
 from dual where not exists
(select * from my_messages t where t.constraint_name='C_PEN_CORR_F_LSK');
commit;

insert into spr_typespay
  (id, cd, name, npp)
select 
  5, 'Комплексный платеж', 'Комплексный платеж', 5
  from dual where not exists 
  (select * from spr_typespay t where t.id=5);
commit;

-- Create table
create global temporary table TEMP_KWTP_MG
(
  lsk       CHAR(8) not null,
  summa     NUMBER(12,2),
  penya     NUMBER(12,2),
  oper      CHAR(2) not null,
  dopl      CHAR(6) not null,
  nink      NUMBER,
  nkom      CHAR(3) not null,
  dtek      DATE not null,
  nkvit     NUMBER,
  ts        DATE
)
on commit delete rows;


[ver_K=487]
create table C_PEN_CHRG
(
  lsk   char(8),
  mg1   char(6),
  days  number,
  summa number,
  penya number
)
tablespace data
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table C_PEN_CHRG
  is 'Начисление пени за текущий период';
comment on column C_PEN_CHRG.lsk
  is 'Лиц. счет';
comment on column C_PEN_CHRG.mg1
  is 'Период';
comment on column C_PEN_CHRG.days
  is 'Кол-во дней долга';
comment on column C_PEN_CHRG.summa
  is 'Сумма задолжности, по которой расчёт пени';
comment on column C_PEN_CHRG.penya
  is 'Сумма пени';
create index C_PEN_CHRG_I on C_PEN_CHRG (LSK, MG1)
  tablespace indx
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );




[ver_PESZR=487]

create table C_PEN_CHRG
(
  lsk   char(8),
  mg1   char(6),
  days  number,
  summa number,
  penya number
)
tablespace users
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table C_PEN_CHRG
  is 'Начисление пени за текущий период';
comment on column C_PEN_CHRG.lsk
  is 'Лиц. счет';
comment on column C_PEN_CHRG.mg1
  is 'Период';
comment on column C_PEN_CHRG.days
  is 'Кол-во дней долга';
comment on column C_PEN_CHRG.summa
  is 'Сумма задолжности, по которой расчёт пени';
comment on column C_PEN_CHRG.penya
  is 'Сумма пени';
create index C_PEN_CHRG_I on C_PEN_CHRG (LSK, MG1)
  tablespace users
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

[ver_KPESZR=488]


-- Add/modify columns 
alter table C_PEN_CHRG add iter number;
-- Add comments to the columns 
comment on column C_PEN_CHRG.iter 
  is 'Номер итерации расчета';


[ver_K=489]

create table A_PEN_CHRG
(
  lsk   char(8),
  mg1   char(6),
  days  number,
  summa number,
  penya number,
  iter  number,
  mg char(6)
)
partition by range (MG)
(
  partition MG201602 values less than ('201602')
    tablespace ARCH
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 128K
      next 1M
      minextents 1
      maxextents unlimited
    )
);

comment on table A_PEN_CHRG
  is 'Начисление пени за текущий период';
comment on column A_PEN_CHRG.lsk
  is 'Лиц. счет';
comment on column A_PEN_CHRG.mg1
  is 'Период';
comment on column A_PEN_CHRG.days
  is 'Кол-во дней долга';
comment on column A_PEN_CHRG.summa
  is 'Сумма задолжности, по которой расчёт пени';
comment on column A_PEN_CHRG.penya
  is 'Сумма пени';
comment on column A_PEN_CHRG.iter
  is 'Номер итерации расчета';
create index A_PEN_CHRG_I on A_PEN_CHRG (mg, LSK, MG1)
  tablespace indx
  local;
  

[ver_PESZR=489]

create table A_PEN_CHRG
(
  lsk   char(8),
  mg1   char(6),
  days  number,
  summa number,
  penya number,
  iter  number,
  mg char(6)
);

comment on table A_PEN_CHRG
  is 'Начисление пени за текущий период';
comment on column A_PEN_CHRG.lsk
  is 'Лиц. счет';
comment on column A_PEN_CHRG.mg1
  is 'Период';
comment on column A_PEN_CHRG.days
  is 'Кол-во дней долга';
comment on column A_PEN_CHRG.summa
  is 'Сумма задолжности, по которой расчёт пени';
comment on column A_PEN_CHRG.penya
  is 'Сумма пени';
comment on column A_PEN_CHRG.iter
  is 'Номер итерации расчета';
create index A_PEN_CHRG_I on A_PEN_CHRG (MG, LSK, MG1);
  


[ver_KPESZR=489]
-- Add/modify columns 
alter table EXP_KART add cd_lsk_tp VARCHAR2(32 CHAR);
-- Add comments to the columns 
comment on column EXP_KART.cd_lsk_tp
  is 'CD тип лицевого счета (LSK_TP_MAIN, LSK_TP_ADDIT)';
grant select on v_lsk_tp to inet;

[ver_KPESZR=490]
-- Add/modify columns 
alter table C_SPR_PEN add reu CHAR(2);
-- Add comments to the columns 
comment on column C_SPR_PEN.reu
  is 'REU по которому определена дата начала пени';
