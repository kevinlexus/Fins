unit DM_module1;

interface

uses
  SysUtils, Classes, Oracle, DB, OracleData, frxClass, frxDBSet, MemDS,
  DBAccess, Uni, OracleCI, UniDacVcl, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TDataModule1 = class(TDataModule)
    OracleSession1: TOracleSession;
    OraclePackage1: TOraclePackage;
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
    OD_pasp: TOracleDataSet;
    OD_paspID: TFloatField;
    OD_paspNAME: TStringField;
    OD_distr: TOracleDataSet;
    OD_distrID: TFloatField;
    OD_distrCD: TStringField;
    OD_distrNAME: TStringField;
    OD_distrNM: TStringField;
    OD_distrFK_LISTTP: TFloatField;
    OD_distrNPP: TFloatField;
    OD_kfg: TOracleDataSet;
    OD_kfgID: TFloatField;
    OD_kfgKOEFF: TFloatField;
    OD_sprorg: TOracleDataSet;
    OD_status: TOracleDataSet;
    OD_spul2: TOracleDataSet;
    OD_s_reu_trest: TOracleDataSet;
    OD_s_reu_trestREU: TStringField;
    OD_s_reu_trestNAME_TR: TStringField;
    OD_s_reu_trestNAME_REU: TStringField;
    OD_close_reason: TOracleDataSet;
    OD_psch: TOracleDataSet;
    OD_pschID: TFloatField;
    OD_pschNAME: TStringField;
    OD_pschTP: TFloatField;
    OD_psch2: TOracleDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    OD_doc: TOracleDataSet;
    OD_docID: TFloatField;
    OD_docCD: TStringField;
    OD_docNAME: TStringField;
    OD_docNM: TStringField;
    OD_docFK_LISTTP: TFloatField;
    OD_docNPP: TFloatField;
    OD_usl: TOracleDataSet;
    OD_uslUSL: TStringField;
    OD_uslNM: TStringField;
    OD_sch_el: TOracleDataSet;
    FloatField2: TFloatField;
    StringField2: TStringField;
    OD_list_choice: TOracleDataSet;
    UniTablePriveleges: TUniQuery;
    OD_u_list: TOracleDataSet;
    OracleLogon1: TOracleLogon;
    UniConnectDialog1: TUniConnectDialog;
    Uni_user: TUniQuery;
    Uni_user_permissions: TUniQuery;
    Uni_proc_p_java_http_req: TUniStoredProc;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
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
