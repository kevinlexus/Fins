unit Unit_form_edit_price;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, wwdblook, DBCtrls, Mask, DBCtrlsEh;

type
  TForm_edit_price = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    OD_spr_meas: TOracleDataSet;
    DS_spr_meas: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNumberEditEh1: TDBNumberEditEh;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBNumberEditEh2: TDBNumberEditEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_edit_price: TForm_edit_price;

implementation

uses Unit_Mainform;

{$R *.dfm}

procedure TForm_edit_price.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_edit_price.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
