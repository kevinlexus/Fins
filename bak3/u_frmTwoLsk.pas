unit u_frmTwoLsk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, DB;

type
  TfrmTwoLsk = class(TForm)
    GroupBox1: TGroupBox;
    edt1: TwwDBEdit;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    edt2: TwwDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTwoLsk: TfrmTwoLsk;
  str_: String;
implementation

uses Unit_list_kart;

{$R *.dfm}

procedure TfrmTwoLsk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action:=caFree;
end;

procedure TfrmTwoLsk.FormCreate(Sender: TObject);
begin
  edt1.Text:=Form_list_kart.OD_list_kart.FieldByName('lsk').asString;
end;

procedure TfrmTwoLsk.Button1Click(Sender: TObject);
begin
 // Close;
end;

end.
