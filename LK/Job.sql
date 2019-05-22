begin
  sys.dbms_scheduler.create_job(job_name            => 'INET.EXCHANGE',
                                job_type            => 'PLSQL_BLOCK',
                                job_action          => 'begin
    --пока сделал полный обмен, каждые N минут

    scott.ext_pkg.imp_vol_all;
    scott.ext_pkg.exp_base(1, null, null);
  end;',
                                start_date          => to_date('29-09-2011 01:00:00', 'dd-mm-yyyy hh24:mi:ss'),
                                repeat_interval     => 'FREQ=MINUTELY; INTERVAL=5',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => true,
                                auto_drop           => false,
                                comments            => '');
end;
/
