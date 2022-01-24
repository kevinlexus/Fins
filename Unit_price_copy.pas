unit Unit_price_copy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Oracle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TForm_price_copy = class(TForm)
    GroupBox2: TGroupBox;
    OD_t_org2: TOracleDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    GroupBox3: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    OD_t_org2GR_NAME: TStringField;
    cbbOrg: TcxLookupComboBox;
    DS_t_org2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_price_copy: TForm_price_copy;

implementation

uses DM_module1, Unit_spr_prices, Utils;

{$R *.dfm}

procedure TForm_price_copy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_price_copy.Button3Click(Sender: TObject);
var
  err_: Integer;
  err_str_: string;
begin
  //Копирование расценок
  Form_spr_prices.upd_:=1;
  Form_spr_prices.Button5.Enabled:=True;
  DataModule1.OraclePackage1.CallProcedure(
  'scott.UTILS.cp_price',
    [parInteger, parString,
    Form_spr_prices.OD_prices.FieldByName('usl').AsString,
    Form_spr_prices.OD_prices.FieldByName('fk_org').AsInteger,
    OD_t_org2.FieldByName('id').AsInteger]
    );
  err_:=DataModule1.OraclePackage1.GetParameter(0);
  err_str_:=DataModule1.OraclePackage1.GetParameter(1);

  if err_ <> 0 then
  begin
    msg2(err_str_,
      'Внимание', MB_OK+MB_ICONEXCLAMATION);
  end
  else
  begin
    Form_spr_prices.OD_prices.Active:=False;
    Form_spr_prices.OD_prices.Active:=True;
    msg2('Расценка скопирована', 'Внимание!', MB_OK+MB_ICONINFORMATION);
    Close;
  end;
end;

procedure TForm_price_copy.Button4Click(Sender: TObject);
begin
 Close;
end;

procedure TForm_price_copy.FormCreate(Sender: TObject);
begin
  OD_t_org2.Active:=true;
end;

end.
