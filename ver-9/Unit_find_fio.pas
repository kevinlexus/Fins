unit Unit_find_fio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, DB, wwdblook,
  wwdbedit, wwcheckbox;

type
  TForm_find_fio = class(TForm)
    Label2: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwCheckBox1: TwwCheckBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure exit_ok;
    procedure exit_cancel;
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_find_fio: TForm_find_fio;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_find_fio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_find_fio.exit_ok;
begin
  Form_Main.cl_flt;
  if wwCheckBox1.Checked = true then
    Form_Main.search_type_:=5
  else
    Form_Main.search_type_:=4;

    Form_Main.last_name_:=wwDBEdit1.Text;
end;

procedure TForm_find_fio.exit_cancel;
begin
  Form_Main.search_type_:=0;
end;

procedure TForm_find_fio.Button1Click(Sender: TObject);
begin
 exit_ok;
 Close;
end;

procedure TForm_find_fio.Button2Click(Sender: TObject);
begin
  exit_cancel;
  Close;
end;

procedure TForm_find_fio.FormCreate(Sender: TObject);
begin
//  Form_Main.search_:=0;
end;

procedure TForm_find_fio.wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
   exit_ok;
   Close;
  end;
end;

end.
