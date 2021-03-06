unit Unit_edit_bitmask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit;

type
  TForm_edit_bitmask = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    Db_arr: array[1..70] of TwwDBEdit;
    Lb_arr: array[1..70] of TLabel;
    procedure exit_ok;
  public
    { Public declarations }
  end;

var
  Form_edit_bitmask: TForm_edit_bitmask;

implementation

uses Unit_spr_tarif;

{$R *.dfm}

procedure TForm_edit_bitmask.FormCreate(Sender: TObject);
var
  a, b, c, d, e, cnt_, name_, x, y: Integer;
  str_, strtemp_, strtemp2_: string;
begin
  x:=5;
  c:=0;
  //����� ���� �� ��������
  str_:=Form_spr_tarif.OD_spr_tarif3.FieldByName('mask').AsString;

  d:=1;
  for b:=0 to 3 do
  begin
  y:=35;

  //���� ��������� ��� - �� ���-�� ��������� = 2
  if b=3 then
   cnt_:=1
   else
   cnt_:=19;


  for a:=0 to cnt_ do
  begin
  Db_arr[c]:=TwwDBEdit.Create(Form_edit_bitmask);
    with Db_arr[c] do
    begin
      Parent:=Form_edit_bitmask;
      Top:=y;
      Left:=x+20;
      Visible:=True;
      Width := 120;
      Height := 21;
      Picture.PictureMask := '{0,1}{0,1}{0,1}{0,1}{0,1}{0,1}{0,1}{0,1}-{0,1}{0,1}{0,1}{0,1}{0,1}{0,1}{0,1}{0,1}';
//      if c = 61 then
//        ShowMessage('test');

      strtemp2_:=Copy(str_, d, 8)+'-';
      d:=d+8;
      strtemp2_:=strtemp2_+Copy(str_, d, 8);
      d:=d+8;
      Text:=strtemp2_;
    end;
  Lb_arr[c]:=TLabel.Create(Form_edit_bitmask);
    with Lb_arr[c] do
    begin
      Parent:=Form_edit_bitmask;
      Caption:=IntToStr(c+1);
      Top:=y;
      Left:=x;
      Visible:=True;
    end;
  y:=y+20;
  c:=c+1;
  end;
  x:=x+140;
  end;

end;

procedure TForm_edit_bitmask.exit_ok;
var
  str_:string;
  c:Integer;
begin
  //���������� �������� �� DBEdit-�� � ����������
  str_:='';
  for c:=0 to 61 do
  begin
    str_:=str_+copy(Db_arr[c].Text,1,8)+copy(Db_arr[c].Text,10,8);
  end;

  Form_spr_tarif.OD_spr_tarif3.FieldByName('mask').AsString:=str_;

end;

procedure TForm_edit_bitmask.Button4Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_edit_bitmask.FormDestroy(Sender: TObject);
var
  a: Integer;
begin
  for a:=0 to 61 do
  begin
  Db_arr[a].Free;
  Lb_arr[a].Free;
  end;
end;

procedure TForm_edit_bitmask.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree
end;

procedure TForm_edit_bitmask.Button2Click(Sender: TObject);
begin
  close;
end;

end.
