unit ufDataModuleBill;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Uni;

type
  TDM_Bill = class(TDataModule)
    Uni_cmp_main: TUniQuery;
    Uni_cmp_detail_primary: TUniQuery;
    Uni_cmp_detail_main: TUniQuery;           
    Uni_cmp_detail_cap: TUniQuery;
    Uni_cmp_funds_primary: TUniQuery;
    Uni_cmp_funds_cap: TUniQuery;
    Uni_cmp_contractors: TUniQuery;
    Uni_cmp_qr: TUniQuery;
    Uni_cmp_funds_main: TUniQuery;
    Uni_cmp_funds_lsk: TUniQuery;
    DS_cmp_main: TDataSource;
    DS_cmp_funds_primary: TDataSource;
    Uni_arch: TUniQuery;
    DS_cmp_detail_primary: TDataSource;
    Uni_arch_supp: TUniQuery;
    Uni_cmp_main_arch: TUniQuery;
    DS_cmp_main_arch: TDataSource;
    Uni_rep1: TUniQuery;
    Uni_rep2: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Bill: TDM_Bill;

implementation

{$R *.dfm}

end.
