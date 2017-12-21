unit uDm1;

interface

uses
  SysUtils, Classes, Oracle;

type
  Tdtmdl1 = class(TDataModule)
    orclsn1: TOracleSession;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmdl1: Tdtmdl1;

implementation

{$R *.dfm}

end.
