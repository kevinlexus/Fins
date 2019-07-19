unit loccxGrid;

interface

uses
  dxCore;

resourcestring

implementation

procedure AddResourceStringNames(AProduct: TdxProductResourceStrings);
begin
end;

initialization
  dxResourceStringsRepository.RegisterProduct('Custom Resource Strings', @AddResourceStringNames);

finalization
  dxResourceStringsRepository.UnRegisterProduct('Custom Resource Strings');

end.
