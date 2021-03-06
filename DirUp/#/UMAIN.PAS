unit uMain;

interface

uses
  OracleMonitor, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
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
    orclpckg1: TOraclePackage;
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

function decode(AStr:string):string;
var
  s, s1: String;
  i, i1: Integer;
begin
//������������ ������
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

  s := Ini.ReadString('Application', 'Comp', '');
  if s='' then
  begin
    //������� ������� comp � ��������
    g_comp:=orclpckg1.CallIntegerFunction('scott.init.get_unq_comp',
      [parNone]);
    Ini.WriteString('Application', 'Comp', IntToStr(g_comp));
  end
  else
  begin
    //�������� ������� comp �� ��������
    g_comp:=StrToInt(s);
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
  //��������� ���������� ��������� �����
  fHandle:=-1;
  try
    fHandle := FileOpen(AfNamePath, 0);
    fSize := GetFileSize(fHandle, nil);
    fDt:=FileDateToDateTime(FileGetDate(fHandle));
  except
    //������ ��� ��������/����������� ���� ����� '+AFileName+', �������� �� ����� ������ ���������
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
    //�������� ��������
    while not Eof do
    begin
      if OD_du_obj_comp.FieldByName('IS_GET').AsInteger <> 1 then
      begin
        //������ ��������������� ��� �������� �����
        fPath:=g_exepath+'#\'+FieldByName('CD').AsString;
        //��������� ����
        if not DeleteFile(fPath) then
        begin
          Memo1.Lines.Add(fPath+' ������ �������� ����� (����� �� � �� ����������)!');
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
          Memo1.Lines.Add(fPath+' ���� ��������!');
        except
           on E: Exception do
            begin
              Memo1.Lines.Add(fPath+' ������ ��������:');
              Memo1.Lines.Add(E.Message);
            end;
        end;
      end;

      Next;
    end;
  end;

//������ (� Post-e)
if not (OD_du_obj_comp.State in [dsBrowse]) then
  OD_du_obj_comp.Post;
end;

end.
