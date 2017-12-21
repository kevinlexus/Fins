unit Unit_load_file;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Oracle;

type
  TForm_load_file = class(TForm)
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    Loader: TOracleDirectPathLoader;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_load_file: TForm_load_file;

implementation



{$R *.dfm}

procedure TForm_load_file.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
//    DbfLoad(Loader, ExtractFilePath( OpenDialog1.FileName ),
//      'scott.load_inf', ExtractFileName( OpenDialog1.FileName ), 1);
  end;
end;

procedure TForm_load_file.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
