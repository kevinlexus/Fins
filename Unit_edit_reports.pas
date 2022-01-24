unit Unit_edit_reports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxDesgn, frxClass, cxPropertiesStore, cxClasses;

type
  TForm_edit_reports = class(TForm)
    OpenDialog1: TOpenDialog;
    frxDesigner1: TfrxDesigner;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    frxReport1: TfrxReport;
    Edit1: TEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    Label1: TLabel;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_edit_reports: TForm_edit_reports;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_edit_reports.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxPropertiesStore1.StoreTo(True);
  Action:=caFree;
end;

procedure TForm_edit_reports.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_edit_reports.Button3Click(Sender: TObject);
begin
  OpenDialog1.InitialDir:=Form_main.exepath_;
  if OpenDialog1.Execute then
  begin
    Edit1.Text:=OpenDialog1.FileName;
    frxReport1.LoadFromFile(ExtractFilePath(OpenDialog1.FileName)+
      ExtractFileName(OpenDialog1.FileName), True);
    frxReport1.DesignReport;
  end;
end;

procedure TForm_edit_reports.FormCreate(Sender: TObject);
begin
  Edit1.Text:=OpenDialog1.FileName;
end;

procedure TForm_edit_reports.Button1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(ExtractFilePath(OpenDialog1.FileName)+
    ExtractFileName(OpenDialog1.FileName), True);
  frxReport1.DesignReport;
end;

end.
