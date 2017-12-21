unit Unit_plat_doc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, StdCtrls, frxDBSet, frxPreview,
  ExtCtrls, frxDesgn, frxDCtrl;

type
  TForm_plat_doc = class(TForm)
    frxPreview1: TfrxPreview;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    Memo1: TMemo;
    Button3: TButton;
    procedure frxReport1ClosePreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_plat_doc: TForm_plat_doc;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_plat_doc.frxReport1ClosePreview(Sender: TObject);
begin
  Close;
end;

procedure TForm_plat_doc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_plat_doc.Button1Click(Sender: TObject);
begin
  frxReport1.Print;
  Close;
end;

procedure TForm_plat_doc.Button2Click(Sender: TObject);
begin
  frxReport1.Print;
  frxReport1.PrepareReport(true);
end;

procedure TForm_plat_doc.FormShow(Sender: TObject);
begin
  Form_plat_doc.Button1.SetFocus;
end;

procedure TForm_plat_doc.Button3Click(Sender: TObject);
begin
  frxPreview1.Edit;
end;

end.
