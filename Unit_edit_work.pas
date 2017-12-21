unit Unit_edit_work;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, DB, wwfltdlg,
  Buttons;

type
  TForm_edit_work = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Edit2: TEdit;
    Label4: TLabel;
    BitBtn3: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure exit_ok;
    procedure exit_cancel;
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_edit_work: TForm_edit_work;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_edit_work.exit_ok;
begin
{  Form_edit_request.OD_req_works.Edit;
  Form_edit_request.OD_req_works.FieldByName('r_work_id').AsInteger:=
    Form_main.MemTableEh1.FieldByName('id').AsInteger;}
  exit_:=1;
end;

procedure TForm_edit_work.exit_cancel;
begin
//  Form_edit_request.OD_req_works.Cancel;
  exit_:=0;
end;

procedure TForm_edit_work.Button1Click(Sender: TObject);
begin
  exit_cancel;
  Close;
end;

end.
