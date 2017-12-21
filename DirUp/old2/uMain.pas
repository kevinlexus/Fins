unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Oracle, StdCtrls, cxShellBrowserDialog,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, ComCtrls,
  ShlObj, cxShellCommon, dxSkinsCore, dxSkinsDefaultPainters, cxContainer,
  cxEdit, cxShellTreeView, cxShellListView, IniFiles;

type
  TfrmMain = class(TForm)
    OD_du_obj: TOracleDataSet;
    orclsn1: TOracleSession;
    btn1: TButton;
    Memo1: TMemo;
    OD_upd_obj: TOracleDataSet;
    btn2: TButton;
    OD_du_obj_comp: TOracleDataSet;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
  public
    g_exepath: String;
    g_comp: Integer;
  end;

var
  frmMain: TfrmMain;

implementation

uses uSelFiles;

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
  s: string;
begin
  g_exepath:=ExtractFilePath(Application.ExeName);
  orclsn1.Connected:=True;
  OD_du_obj.Active:=True;
  OD_du_obj_comp.Active:=True;


  Ini := TIniFile.Create(g_exepath+'\licenses.ini');
  s := Ini.ReadString('Application', 'Comp', '');
  if s='' then
  begin
    //создать строчку comp в лицензии
    g_comp:=dmBase.OraclePackage1.CallIntegerFunction('init.get_unq_comp',
      [parNone]);
    Ini.WriteString('Application', 'Comp', IntToStr(g_comp));
  end
  else
  begin
    //получить строчку comp из лицензии
    g_comp:=StrToInt(s);
  end;
  OD_du_obj_comp.SetVariable('comp', g_comp);
end;

procedure TfrmMain.btn1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmSelFiles, frmSelFiles);
end;

{function CheckFile(AfNamePath: String; AfDt: TDateTime; AfSize: Integer): Integer;
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
end;           }

procedure TfrmMain.btn2Click(Sender: TObject);
var
  fPath: string;
begin
  with OD_du_obj do
  begin
    Active:=false;
    Active:=true;
    First;
    //В датасете - все файлы, подлежащие обновлению
    while not Eof do
    begin
      fPath:=g_exepath+'#\'+FieldByName('CD').AsString;
      //выгрузить файл
      if DeleteFile(fPath) then
      begin
        try
          TBlobField(FieldByName('OBJ')).SaveToFile(fPath)
          if not OD_du_obj_comp.Eof then
            OD_du_obj_comp.FieldByName('is_get').AsInteger:=1
          else
          begin
            OD_du_obj_comp.InsertRecord([null,
              FieldByName('id').AsInteger,
              g_comp,
              1]);
          end;
          Memo1.Lines.Add(fPath+' Файл выгружен');
        except
          Memo1.Lines.Add(fPath+' Ошибка выгрузки');
        end;
      end;
      else
      begin
        Memo1.Lines.Add(fPath+' ошибка удаления файла! ');
      end;

      Next;
    end;
  end;

//коммит (в Post-e)
if not (OD_du_obj_comp.State in [dsBrowse]) then
  OD_du_obj_comp.Post;
end;

end.
