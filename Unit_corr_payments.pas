unit Unit_corr_payments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, ExtCtrls, DBCtrls, StdCtrls, DBGridEh,
  Buttons, Oracle, GridsEh;

type
  TForm_corr_payments = class(TForm)
    SpeedButton1: TSpeedButton;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    OD_data: TOracleDataSet;
    OD_dataLSK: TStringField;
    OD_dataSUMMA: TFloatField;
    OD_dataUSER_ID: TFloatField;
    OD_datausl_nm: TStringField;
    OD_dataorg_nm: TStringField;
    OD_dataDAT: TDateTimeField;
    OD_dataUSERNAME: TStringField;
    DS_data: TDataSource;
    OD_usl: TOracleDataSet;
    DS_uslm: TDataSource;
    OD_org: TOracleDataSet;
    DS_org: TDataSource;
    OD_dataUSL: TStringField;
    OD_dataORG: TFloatField;
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_corr_payments: TForm_corr_payments;

implementation

uses DM_module1;

{$R *.dfm}

procedure TForm_corr_payments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_corr_payments.FormCreate(Sender: TObject);
begin
  OD_data.Active:=false;
  OD_data.Active:=true;
end;

procedure TForm_corr_payments.SpeedButton1Click(Sender: TObject);
var
  lsk_: String;
  summa_: Currency;
  usl_: String;
  org_: Integer;
begin
  lsk_:=OD_data.FieldByName('lsk').AsString;
  summa_:=OD_data.FieldByName('summa').AsCurrency;
  usl_:=OD_data.FieldByName('usl').AsString;
  org_:=OD_data.FieldByName('org').AsInteger;
  if (lsk_ <> '') and (usl_ <> '') then
    OD_data.InsertRecord([lsk_, usl_, org_, summa_*-1]);
  OD_data.RefreshRecord;
end;

procedure TForm_corr_payments.Button1Click(Sender: TObject);
begin
    try
      if (OD_data.State = dsEdit) or (OD_data.State = dsInsert) then
         OD_data.Post;
    except
       Application.MessageBox('������ ��� ������!',
        '��������!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
       OD_data.Cancel;
       exit;
    end;
      DataModule1.OraclePackage1.CallProcedure('scott.trg.trg_corr_pay_chk_mirror', [parInteger]);
      if DataModule1.OraclePackage1.GetParameter(0) > 0 then
        begin
         Application.MessageBox('��������������! ���������� ���������� �������� �� �����!',
          '��������!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
        end;
      DataModule1.OracleSession1.Commit;
end;

procedure TForm_corr_payments.Button2Click(Sender: TObject);
begin
  DataModule1.OracleSession1.Rollback;
  OD_data.Refresh;
  Close;
end;

procedure TForm_corr_payments.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  OD_data.Active:=false;
  OD_data.SetVariable('mg_', DBLookupComboBox1.KeyValue);
  OD_data.Active:=true;
end;

end.
