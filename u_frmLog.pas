unit u_frmLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls;

type
  TfrmLog = class(TForm)
    cxMemo1: TcxMemo;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLog: TfrmLog;

implementation

{$R *.dfm}

procedure TfrmLog.FormCreate(Sender: TObject);
var
  f: TextFile;
  path,s: string;
begin
  path:=ExtractFilePath(Application.ExeName);
  AssignFile(f, path + 'direct.log');
  Reset(f);
  while not Eof(f) do
  begin
    Readln(f, s);
    cxMemo1.Lines.Add(s);
  end;
  CloseFile(f);
end;

procedure TfrmLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
