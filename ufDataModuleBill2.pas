unit ufDataModuleBill2;

interface

uses
  SysUtils, Classes, DB, frxClass, frxDBSet, OracleData;

type
  TDM_Bill2 = class(TDataModule)
    OD_mg: TOracleDataSet;
    OD_mg1: TOracleDataSet;
    DS_mg: TDataSource;
    DS_mg1: TDataSource;
    OD_streets: TOracleDataSet;
    DS_streets: TDataSource;
    OD_houses: TOracleDataSet;
    DS_houses: TDataSource;
    OD_kw: TOracleDataSet;
    DS_kw: TDataSource;
    OD_main: TOracleDataSet;
    frxDB_main: TfrxDBDataset;
    OD_data: TOracleDataSet;
    OD_dataMG1: TStringField;
    OD_dataMG2: TStringField;
    OD_dataMG: TStringField;
    OD_dataLSK: TStringField;
    OD_dataSTREETNAME: TStringField;
    OD_dataFIO: TStringField;
    OD_dataMONTHYEAR: TStringField;
    OD_dataSTATUS: TFloatField;
    OD_dataPSCH: TFloatField;
    OD_dataPEL: TFloatField;
    OD_dataKUL: TStringField;
    OD_dataOPL: TFloatField;
    OD_dataPLDOP: TFloatField;
    OD_dataKPR: TFloatField;
    OD_dataKPR_OT: TFloatField;
    OD_dataKI: TFloatField;
    OD_dataSUBS_INF: TFloatField;
    OD_dataUSL: TStringField;
    OD_dataNM: TStringField;
    OD_dataLG_MAINS: TFloatField;
    OD_dataLG_IDS: TStringField;
    OD_dataTARIF: TFloatField;
    OD_dataVOL: TFloatField;
    OD_dataCHARGES: TFloatField;
    OD_dataPRIVS: TFloatField;
    OD_dataCHANGES0: TFloatField;
    OD_dataCH_PROC0: TFloatField;
    OD_dataCHANGES1: TFloatField;
    OD_dataCHANGES2: TFloatField;
    OD_dataSUBS: TFloatField;
    OD_dataSUB_EL: TFloatField;
    OD_dataITOG: TFloatField;
    OD_dataLGNAME: TStringField;
    OD_dataLG_ID: TFloatField;
    OD_dataCNT: TFloatField;
    OD_dataLG_KOEF: TFloatField;
    OD_dataFNAME_SCH: TStringField;
    OD_dataPREV_CHRG: TFloatField;
    OD_dataPREV_PAY: TFloatField;
    OD_dataPAYMENT: TFloatField;
    OD_dataPENYA: TFloatField;
    OD_dataMONTHPENYA: TFloatField;
    OD_dataMONTHPENYA2: TFloatField;
    OD_dataMONTHPENITG: TFloatField;
    OD_dataDOLG: TFloatField;
    OD_dataOLD_DOLG: TFloatField;
    OD_dataITOG_DOLG: TFloatField;
    OD_dataOVRPAYMNT: TFloatField;
    OD_dataSAL_IN: TFloatField;
    OD_dataITOG_USZN: TFloatField;
    OD_dataPL_SVNORM: TFloatField;
    OD_dataITG_PEN: TFloatField;
    OD_dataITG_PAY: TFloatField;
    OD_dataKPR_WR: TFloatField;
    OD_dataNAME_ORG: TStringField;
    OD_dataPHW: TFloatField;
    OD_dataPGW: TFloatField;
    OD_dataPHONE: TStringField;
    OD_dataK_LSK_ID: TFloatField;
    OD_dataPHONE2: TStringField;
    fltfldOD_dataDOLG2: TFloatField;
    OD_dataDT_SCH: TDateTimeField;
    OD_dataORG: TFloatField;
    OD_dataKPR_WRP: TFloatField;
    OD_dataITG_PEN_PAY: TFloatField;
    OD_dataSL: TFloatField;
    OD_dataBILL_BRAKE: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    OD_t_org: TOracleDataSet;
    frxDBDataset4: TfrxDBDataset;
    OD_data2: TOracleDataSet;
    frxDBDataset2: TfrxDBDataset;
    OD_detail: TOracleDataSet;
    frxDBDataset5: TfrxDBDataset;
    OD_reu: TOracleDataSet;
    DS_reu: TDataSource;
    OD_data3: TOracleDataSet;
    frxDBDataset3: TfrxDBDataset;
    OD_data6: TOracleDataSet;
    OD_data6LSK: TStringField;
    OD_data6SUMMA: TFloatField;
    frxDBDataset6: TfrxDBDataset;
    OD_detail_ext: TOracleDataSet;
    frxDBDataset7: TfrxDBDataset;
    OD_detail2: TOracleDataSet;
    frxDBDataset8: TfrxDBDataset;
    OD_t_org3: TOracleDataSet;
    frxDBDataset10: TfrxDBDataset;
    OD_vvod: TOracleDataSet;
    frxDBDataset9: TfrxDBDataset;
    KMP_rep2: TOracleDataSet;
    frxDBDataset11: TfrxDBDataset;
    frxDBDataset12: TfrxDBDataset;
    KMP_rep1: TOracleDataSet;
    OD_spr_services: TOracleDataSet;
    DS_spr_services: TDataSource;
    OD_uk: TOracleDataSet;
    DS_uk: TDataSource;
    OD_sel_obj: TOracleDataSet;
    DS_sel_obj: TDataSource;
    OD_ls_cnt: TOracleDataSet;
    DS_ls_cnt: TDataSource;
    frxDBD_cmp_detail_primary: TfrxDBDataset;
    frxDBD_cmp_detail_main: TfrxDBDataset;
    frxDB_cmp_main: TfrxDBDataset;
    frxDB_cmp_detail_cap: TfrxDBDataset;
    frxDB_cmp_funds_primary: TfrxDBDataset;
    frxDB_cmp_funds_main: TfrxDBDataset;
    frxDB_cmp_funds_cap: TfrxDBDataset;
    frxDB_cmp_funds_lsk: TfrxDBDataset;
    frxDB_cmp_contractors: TfrxDBDataset;
    frxDB_cmp_qr: TfrxDBDataset;
    frxDB_cmp_main_arch: TfrxDBDataset;
    frxDB_arch_supp: TfrxDBDataset;
    frxDBData_arch: TfrxDBDataset;
    frxDBData_arch3: TfrxDBDataset;
    OD_t_org2: TOracleDataSet;
    frxDBDataset13: TfrxDBDataset;
    OD_data4: TOracleDataSet;
    frxDBDataset14: TfrxDBDataset;
    procedure OD_sel_objAfterOpen(DataSet: TDataSet);
    procedure OD_ls_cntBeforeOpen(DataSet: TDataSet);
    procedure OD_ls_cntAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Bill2: TDM_Bill2;

implementation

uses Unit_form_bills;

{$R *.dfm}

procedure TDM_Bill2.OD_sel_objAfterOpen(DataSet: TDataSet);
begin
  if Form_print_bills.sel_obj_ = 2 then
    OD_ls_cnt.Active := true;

end;

procedure TDM_Bill2.OD_ls_cntBeforeOpen(DataSet: TDataSet);
begin
  Form_print_bills.pnl1.Visible := true;
  Form_print_bills.Update;

end;

procedure TDM_Bill2.OD_ls_cntAfterOpen(DataSet: TDataSet);
begin
  Form_print_bills.pnl1.Visible := false;
  Form_print_bills.Update;
end;

end.
