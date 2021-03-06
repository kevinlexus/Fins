unit Unit_new_lsk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Oracle, OracleData;

type
  TForm_new_lsk = class(TForm)
    GroupBox1: TGroupBox;
    wwDBEdit3: TwwDBEdit;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_new_lsk: TForm_new_lsk;
  str_: String;
implementation

uses DM_module1, Unit_list_kart;

{$R *.dfm}

procedure TForm_new_lsk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_new_lsk.FormCreate(Sender: TObject);
begin
  str_:=Form_list_kart.OD_list_kart.FieldByName('lsk').asString;
  wwDBEdit3.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.UTILS.get_new_lsk', [str_]);
end;

procedure TForm_new_lsk.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_new_lsk.Button2Click(Sender: TObject);
var
cnt_: Integer;
begin
  if DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.UTILS.allow_cr_new_lsk',
    [str_]) = 0 then
    begin
     Application.MessageBox('������� ���� ��������� ���������!',
      '��������!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
    end
  else
    begin
    cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.UTILS.create_lsk',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString,
       wwDBEdit3.Text, null, null]);
    if cnt_ =0 then DataModule1.OraclePackage1.Session.Commit;
    Form_list_kart.OD_list_kart.Refresh;
    Form_list_kart.OD_list_kart.SearchRecord('lsk', wwDBEdit3.Text, [srFromBeginning]);
    Form_new_lsk.Visible:=false;
     Application.MessageBox('������� ���� ������!',
      '��������!', MB_ICONINFORMATION+MB_OK+MB_APPLMODAL);
  end;
  Close;
end;

end.
