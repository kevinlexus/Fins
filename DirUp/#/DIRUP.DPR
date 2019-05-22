program DirUp;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uSelFiles in 'uSelFiles.pas' {frmSelFiles};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
