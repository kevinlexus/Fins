unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Oracle, StdCtrls, cxShellBrowserDialog,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, ComCtrls,
  ShlObj, cxShellCommon, dxSkinsCore, dxSkinsDefaultPainters, cxContainer,
  cxEdit, cxShellTreeView, cxShellListView;

type
  TfrmMain = class(TForm)
    OD_du_obj: TOracleDataSet;
    orclsn1: TOracleSession;
    btn1: TButton;
    Memo1: TMemo;
    OD_upd_obj: TOracleDataSet;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
  public
    g_exepath: String;
  end;

var
  frmMain: TfrmMain;

implementation

uses uSelFiles;

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  g_exepath:=ExtractFilePath(Application.ExeName);
  orclsn1.Connected:=True;
  OD_du_obj.Active:=True;
end;

procedure TfrmMain.btn1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmSelFiles, frmSelFiles);
end;

function CheckFile(AfNamePath: String; AfDt: TDateTime; AfSize: Integer): Boolean;
var
  fHandle, fSize: integer;
  fDt: TDateTime;
begin
  //проверить совпадение атрибутов файла
  fHandle:=-1;
  try
    fHandle := FileOpen(AfNamePath, 0);
    fSize := GetFileSize(fHandle, nil);
    fDt:=FileDateToDateTime(FileGetDate(fHandle));
  except
    //Ошибка при открытии/определении даты файла '+AFileName+', возможно он занят другим процессом
    if fHandle <> -1 then
     FileClose(fHandle);
    Result:=False;
    Exit;
  end;
  if (AfDt=fDt) and (AfSize=fSize) then
    Result:=True
  else
    Result:=False;
end;

procedure TfrmMain.btn2Click(Sender: TObject);
var
  fPath: string;
begin
  with OD_du_obj do
  begin
    Active:=false;
    Active:=true;
    First;
    while not Eof do
    begin
      fPath:=g_exepath+'#\'+FieldByName('CD').AsString;
      if not CheckFile(fPath, FieldByName('DT').AsDateTime,
        FieldByName('SZ').AsInteger) then
      begin
        //выгрузить файл
        Memo1.Lines.Add(fPath+' нет');
        if DeleteFile(fPath) then
          TBlobField(FieldByName('OBJ')).SaveToFile(fPath)
        else
          Memo1.Lines.Add(fPath+' ошибка удаления файла!');
    end
      else
        Memo1.Lines.Add(fPath+' да');


      Next;
    end;
  end;


end;

end.
