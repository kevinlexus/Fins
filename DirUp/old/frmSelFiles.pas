unit uSelFiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  ComCtrls, ShlObj, cxShellCommon, dxSkinsCore, dxSkinsDefaultPainters,
  ExtCtrls, cxContainer, cxEdit, cxShellListView, StdCtrls;

type
  TSelFiles = class(TForm)
    lst1: TcxShellListView;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelFiles: TSelFiles;

implementation

{$R *.dfm}

procedure TSelFiles.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TSelFiles.btn1Click(Sender: TObject);
var
  i: Integer;
  AFileName: string;
begin
  for I := 0 to lst1.InnerListView.Items.Count - 1 do
    if lst1.InnerListView.Items[I].Selected then
    begin
      AFileName := GetPidlName(lst1.GetItemAbsolutePIDL(I));
      frmMain.Memo1.Lines.Add(AFileName);
    end;

end;

end.
