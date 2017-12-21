unit uSelFiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  ComCtrls, ShlObj, cxShellCommon, dxSkinsCore, dxSkinsDefaultPainters,
  ExtCtrls, cxContainer, cxEdit, cxShellListView, StdCtrls, Oracle;

type
  TfrmSelFiles = class(TForm)
    lst1: TcxShellListView;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelFiles: TfrmSelFiles;

implementation

uses uMain;

{$R *.dfm}

procedure TfrmSelFiles.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSelFiles.btn1Click(Sender: TObject);
var
  i: Integer;
  fNamePath, fName: String;
  fHandle, fSize: integer;
  LOB: TLOBLocator;
  fDt: TDateTime;
begin
  frmMain.OD_du_obj.Active:=false;
  frmMain.OD_du_obj.Active:=true;
  for i := 0 to lst1.InnerListView.Items.Count - 1 do
    if lst1.InnerListView.Items[I].Selected then
    begin
      fNamePath := GetPidlName(lst1.GetItemAbsolutePIDL(I));
      fName := ExtractFileName(fNamePath);
      frmMain.Memo1.Lines.Add('Попытка загрузить: '+fNamePath);
      with frmMain.OD_upd_obj do
      begin
        Active:=False;
        if frmMain.OD_du_obj.Locate('CD', UpperCaseW(fName), []) then
        begin
          SQL.Text:='update scott.DU_OBJ t '+
                'set t.obj=:obj '+
                'where t.cd=:cd';
        end
        else
        begin
          SQL.Text:='insert into scott.DU_OBJ t (cd, obj)'+
                'values(:cd, :obj)';
        end;
        fHandle := FileOpen(fNamePath, 0);
        fSize := GetFileSize(fHandle, nil);
        try
          fDt:=FileDateToDateTime(FileGetDate(fHandle));
        except
          frmMain.Memo1.Lines.Add('Ошибка при определении даты файла '+fName+', возможно он занят другим процессом');
        end;
        FileClose(FHandle);

        LOB := TLOBLocator.CreateTemporary(Session, otBLOB, True);
        LOB.LoadFromFile(fNamePath);
        SetComplexVariable('OBJ', LOB);
        SetVariable('CD', fName);
        Active:=True;
        LOB.free;
        frmMain.Memo1.Lines.Add('Загружен: '+fNamePath);
      end;
    end;
  frmMain.orclsn1.Commit;
  Close;
end;

procedure TfrmSelFiles.FormCreate(Sender: TObject);
begin
  lst1.Root.CustomPath:=frmMain.g_exepath;
end;

end.
