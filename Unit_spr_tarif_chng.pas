unit Unit_spr_tarif_chng;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, wwdbedit, Mask;

type
  TForm_spr_tarif_chng = class(TForm)
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_spr_tarif_chng: TForm_spr_tarif_chng;

implementation

{$R *.dfm}
  Uses Unit_spr_tarif, DM_module1, Utils;

procedure TForm_spr_tarif_chng.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_spr_tarif_chng.Button2Click(Sender: TObject);
var
 cnt_: Integer;
begin
  cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.P_HOUSES.change_tarif',
    [Form_spr_tarif.Mem_spr_tarif.FieldByName('id').AsInteger,
       Form_spr_tarif.OD_spr_tarif2.FieldByName('id').AsInteger]);
  msg2('����� �������� � '+inttostr(cnt_)+' �/C', '��������!',
   MB_OK+MB_ICONINFORMATION);
  Form_spr_tarif.Mem_spr_tarif.Refresh;
  Close;
end;

end.
