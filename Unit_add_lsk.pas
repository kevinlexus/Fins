unit Unit_add_lsk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, DBCtrlsEh, DBLookupEh, DBGridEh, Utils,
  Mask;

type
  TForm_add_lsk = class(TForm)
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    GroupBox1: TGroupBox;
    OD_reu: TOracleDataSet;
    DS_reu: TDataSource;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DS_spul: TDataSource;
    OD_spul: TOracleDataSet;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    DBEditEh1: TDBEditEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    OD_reuREU: TStringField;
    OD_reuNAME_REU: TStringField;
    DBLookupComboboxEh5: TDBLookupComboboxEh;
    Label43: TLabel;
    DS_pasp: TDataSource;
    OD_pasp: TOracleDataSet;
    OD_paspID: TFloatField;
    OD_paspNAME: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_add_lsk: TForm_add_lsk;

implementation

uses DM_module1;

{$R *.dfm}

procedure TForm_add_lsk.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_add_lsk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_add_lsk.FormCreate(Sender: TObject);
begin
  Autosize:=true; 
end;

procedure TForm_add_lsk.Button2Click(Sender: TObject);
begin
if (OD_reu.FieldByName('reu').AsString = null) or
   (OD_spul.FieldByName('id').AsString = null) or
   (DBEditEh1.Text = '') then
   begin
     msg2('”казаны не все параметры!',
          '¬нимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
     exit;
   end;

if DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.p_houses.create_house',
    [OD_reu.FieldByName('reu').asString, OD_spul.FieldByName('id').asString,
      DBEditEh1.Text]) = 0 then
    begin
     msg2('”казан существующий адрес!',
          '¬нимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
    end
    else
    begin
     msg2('”казанный дом создан!',
          '¬нимание!', MB_ICONINFORMATION+MB_OK+MB_APPLMODAL);
     Close;
    end;
end;

end.
