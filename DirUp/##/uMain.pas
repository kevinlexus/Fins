unit uMain;

interface

uses
  OracleMonitor, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Oracle, StdCtrls, cxShellBrowserDialog,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, ComCtrls,
  ShlObj, cxShellCommon, dxSkinsCore, dxSkinsDefaultPainters, cxContainer,
  cxEdit, cxShellTreeView, cxShellListView, IniFiles, ExtCtrls,
  cxPropertiesStore;

type
  TfrmMain = class(TForm)
    OD_du_obj: TOracleDataSet;
    orclsn1: TOracleSession;
    Memo1: TMemo;
    OD_upd_obj: TOracleDataSet;
    OD_du_obj_comp: TOracleDataSet;
    orclpckg1: TOraclePackage;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    cxprprtstr1: TcxPropertiesStore;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    g_exepath: String;
    g_load, g_comp: Integer;
    procedure unload;
    procedure setForm;
  end;

var
  frmMain: TfrmMain;

implementation

uses uSelFiles;

{$R *.dfm}

function decode(AStr:string):string;
var
  s, s1: String;
  i, i1: Integer;
begin
//декодировать строку
  s:='';
  i:=1;
  i1:=Length(AStr);
  while i < i1 do
   begin
      s1:=copy(AStr,i,3);
      s := s + CHR( StrToInt('$'+copy(AStr,i,3)));
      i := i + 3;
   end;
 Result:=s;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
  User, Pass, SID, s: string;

begin
  g_exepath:=ExtractFilePath(Application.ExeName);

  Ini := TIniFile.Create(g_exepath+'\licenses.ini');


  User := decode(Ini.ReadString( 'Application', 'User', '' ));
  Pass := decode(Ini.ReadString( 'Application', 'Pass', '' ));
  SID := decode(Ini.ReadString( 'Application', 'SID', '' ));

  orclsn1.LogonUsername:=User;
  orclsn1.LogonPassword:=Pass;
  orclsn1.LogonDatabase:=SID;
  orclsn1.Connected:=True;
  
  OD_du_obj.Active:=True;
  OD_du_obj_comp.Active:=True;

  //s := Ini.ReadString('Application', 'Comp', '');
  cxprprtstr1.Active:=True;
  cxprprtstr1.RestoreFrom;

  if lbl1.Caption='Comp' then
  begin
    //создать строчку comp в реестре
    g_comp:=orclpckg1.CallIntegerFunction('scott.init.get_unq_comp',
      [parNone]);
    //Ini.WriteString('Application', 'Comp', IntToStr(g_comp));
    lbl1.Caption:=IntToStr(g_comp);
    cxprprtstr1.StoreTo(True);
  end
  else
  begin
    //получить строчку comp из реестра (из контрола, который сохраняет свойства в реестре)
    g_comp:=StrToInt(lbl1.Caption);
  end;
  Ini.Free;
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

procedure TfrmMain.setForm;
begin
  if g_load=1 then
  begin
    btn1.visible:=True;
  end
  else
  begin
    btn1.visible:=False;
  end;
end;

procedure TfrmMain.unload;
var
  fPath: string;
  l_err: Integer;
begin
  //Выгрузить файлы
  l_err:=0;
  Memo1.Lines.Add('Начало обновления файлов...');
  with OD_du_obj do
  begin
    Active:=false;
    Active:=true;
    First;
    //Элементы датасета
    while not Eof do
    begin
      if OD_du_obj_comp.FieldByName('IS_GET').AsInteger <> 1 then
      begin
        //только предназначенные для выгрузки файлы
        fPath:=g_exepath+'##\'+FieldByName('CD').AsString;
        //выгрузить файл
        if not DeleteFile(fPath) then
        begin
          Memo1.Lines.Add(fPath+' Ошибка удаления файла (файл отсутствует?)!');
        end;

        try
          TBlobField(FieldByName('OBJ')).SaveToFile(fPath);
          if OD_du_obj_comp.RecordCount<>0 then
          begin
            OD_du_obj_comp.Edit;
            OD_du_obj_comp.FieldByName('is_get').AsInteger:=1
          end
          else
          begin
            OD_du_obj_comp.InsertRecord([null,
              FieldByName('id').AsInteger,
              g_comp,
              1]);
          end;
          Memo1.Lines.Add(fPath+' Файл выгружен!');
        except
           on E: Exception do
            begin
              l_err:=1;
              Memo1.Lines.Add(fPath+' Ошибка выгрузки:');
              Memo1.Lines.Add(E.Message);
            end;
        end;
      end;

      Next;
    end;
  end;

//коммит (в Post-e)
if not (OD_du_obj_comp.State in [dsBrowse]) then
  OD_du_obj_comp.Post;

Memo1.Lines.Add('Окончание обновления файлов...');
//Закрыть программу, если всё прошло без ошибок
if l_err=0 then
  Close;
end;

procedure TfrmMain.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
 Application.Terminate;
end;

end.
