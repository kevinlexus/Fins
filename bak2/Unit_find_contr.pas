unit Unit_find_contr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit;

type
  TForm_find_contr = class(TForm)
    Label2: TLabel;
    wwDBEdit1: TwwDBEdit;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure exit_ok;
    procedure exit_cancel;
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_find_contr: TForm_find_contr;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_find_contr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_find_contr.exit_ok;
begin
  Form_Main.cl_flt;
  Form_Main.search_type_:=6;
  Form_Main.last_name_:=wwDBEdit1.Text;
end;

procedure TForm_find_contr.exit_cancel;
begin
  Form_Main.search_type_:=0;
end;

procedure TForm_find_contr.Button1Click(Sender: TObject);
begin
 exit_ok;
 Close;
end;

procedure TForm_find_contr.Button2Click(Sender: TObject);
begin
  exit_cancel;
  Close;
end;

procedure TForm_find_contr.wwDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
   exit_ok;
   Close;
  end;
end;

end.
