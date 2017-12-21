unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Oracle, StdCtrls, cxShellBrowserDialog,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, ComCtrls,
  ShlObj, cxShellCommon, dxSkinsCore, dxSkinsDefaultPainters, cxContainer,
  cxEdit, cxShellTreeView, cxShellListView;

type
  TMain = class(TForm)
    OD_du_obj: TOracleDataSet;
    orclsn1: TOracleSession;
    btn1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    g_exepath: String;
  end;

var
  Main: TMain;

implementation

uses frmSelFiles;

{$R *.dfm}

procedure TMain.FormCreate(Sender: TObject);
begin
  g_exepath:=ExtractFilePath(Application.ExeName);
  lst1.Root.CustomPath:=g_exepath;
  orclsn1.Connected:=True;
  OD_du_obj.Active:=True;
end;

procedure TMain.btn1Click(Sender: TObject);
begin
  Application.CreateForm(TSelFiles, SelFiles);
end;

end.
