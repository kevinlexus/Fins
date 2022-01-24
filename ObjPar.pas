unit ObjPar;

interface

  function getStrPar(klsk: Integer; lsk, cd: String): String;
  function setStrPar(klsk: Integer; lsk, cd, val: String): Integer;
  function getNumPar(klsk: Integer; lsk, cd: String): double;
  function setNumPar(klsk: Integer; lsk, cd: String; val: double): Integer;
  function getStrIdPar(klsk: Integer; lsk, cd: String): String;
  function setStrIdPar(klsk: Integer; lsk, cd: String; cdVal: String): Integer;
  function setDtPar(klsk: Integer; lsk, cd: String; val: TDateTime): Integer;
  function getDtPar(klsk: Integer; lsk, cd: String): TDateTime;


implementation

uses DM_module1;

  //������� ��������� ��������
  function getStrPar(klsk: Integer; lsk, cd: String): String;
  begin
    Result:=DataModule1.OraclePackage1.CallStringFunction
             ('scott.c_obj_par.get_str_param',
               [klsk, lsk, cd]);
  end;

  //��������� ��������� ��������, ������� ID ������ ���������
  function setStrPar(klsk: Integer; lsk, cd, val: String): Integer;
  begin
    Result:=DataModule1.OraclePackage1.CallIntegerFunction
             ('scott.c_obj_par.set_str_param',
               [klsk, lsk, cd, val]);
  end;

  //������� �������� ��������
  function getNumPar(klsk: Integer; lsk, cd: String): double;
  begin
    Result:=DataModule1.OraclePackage1.CallFloatFunction
             ('scott.c_obj_par.get_num_param',
               [klsk, lsk, cd]);
  end;

  //��������� �������� ��������, ������� ID ������ ���������
  function setNumPar(klsk: Integer; lsk, cd: String; val: double): Integer;
  begin
    Result:=DataModule1.OraclePackage1.CallIntegerFunction
             ('scott.c_obj_par.set_num_param',
               [klsk, lsk, cd, val]);
  end;

  //��������� �������� ����, ������� ID ������ ���������
  function setDtPar(klsk: Integer; lsk, cd: String; val: TDateTime): Integer;
  begin
    Result:=DataModule1.OraclePackage1.CallIntegerFunction
             ('scott.c_obj_par.set_date_param',
               [klsk, lsk, cd, val, 0]);
  end;

  //������� �������� ����
  function getDtPar(klsk: Integer; lsk, cd: String): TDateTime;
  begin
    Result:=DataModule1.OraclePackage1.CallDateFunction
             ('scott.c_obj_par.get_date_param',
               [klsk, lsk, cd]);
  end;

  //������� String ID ��������
  function getStrIdPar(klsk: Integer; lsk, cd: String): String;
  begin
    Result:=DataModule1.OraclePackage1.CallStringFunction
             ('scott.c_obj_par.get_str_param_by_qry',
               [klsk, lsk, cd]);
  end;

  //��������� String ID ��������, ������� ID ������ ���������
  function setStrIdPar(klsk: Integer; lsk, cd: String; cdVal: String): Integer;
  begin
    Result:=DataModule1.OraclePackage1.CallIntegerFunction
             ('scott.c_obj_par.set_str_param_by_qry',
               [klsk, lsk, cd, cdVal]);
  end;


  end.
