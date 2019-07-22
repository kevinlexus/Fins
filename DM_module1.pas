unit DM_module1;

interface

uses
  SysUtils, Classes, Oracle, DB, OracleData, frxClass, frxDBSet, MemDS,
  DBAccess, Uni;

type
  TDataModule1 = class(TDataModule)
    OracleSession1: TOracleSession;
    OraclePackage1: TOraclePackage;
    OracleSession2: TOracleSession;
    OraclePackage2: TOraclePackage;
    OD_spul: TOracleDataSet;
    DS_spul: TDataSource;
    OD_reu: TOracleDataSet;
    DS_reu: TDataSource;
    OD_rkc: TOracleDataSet;
    DS_rkc: TDataSource;
    FR_rkc: TfrxDBDataset;
    OD_mg1: TOracleDataSet;
    OD_mg2: TOracleDataSet;
    OD_dat1: TOracleDataSet;
    OD_dat2: TOracleDataSet;
    DS_period1: TDataSource;
    DS_period2: TDataSource;
    UniConnection1: TUniConnection;
    UniStoredProc1: TUniStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation



{$R *.dfm}

end.
