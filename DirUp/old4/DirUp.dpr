program DirUp;

uses
  Forms,
  SysUtils,
  uMain in 'uMain.pas' {frmMain},
  uSelFiles in 'uSelFiles.pas' {frmSelFiles},
  uDm1 in 'uDm1.pas' {dtmdl1: TDataModule};

var
  s: String;
{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdtmdl1, dtmdl1);
  Application.CreateForm(TfrmMain, frmMain);
  s:=ParamStr(1);
  frmMain.g_par:=s;

//  s:='-load';
  frmMain.connOra;

  if s = '-load' then
  begin
    //Ожидать загрузки обновлений файлов
    frmMain.g_load:=1;
    frmMain.setForm;
  end
  else
  begin
    //Выгрузить файлы
    frmMain.setForm;
    frmMain.go_unload;
  end;

  Application.Run;

end.
