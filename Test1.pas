unit Test1;

interface

uses
  Classes;
type
  test = class(TThread)
  private
  protected
    procedure Execute; override;
  public
    constructor Create(sss: String);
    property ReturnValue;
  end;

implementation

constructor Test.Create(sss: String);
begin
  inherited Create(False);
  FreeOnTerminate := False;
  ReturnValue := 0;
end;

procedure test.Execute;
begin

end;

end.
