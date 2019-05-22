unit Unit_corrects;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBGridEh, OracleData, StdCtrls, Oracle, ExtCtrls,
  DBCtrls, Buttons, GridsEh;

type
  TForm_corrects = class(TForm)
    OD_data: TOracleDataSet;
    DBGridEh1: TDBGridEh;
    DS_data: TDataSource;
    Button1: TButton;
    Button2: TButton;
    OD_uslm: TOracleDataSet;
    DBNavigator1: TDBNavigator;
    DS_uslm: TDataSource;
    OD_dataLSK: TStringField;
    OD_dataUSLM: TStringField;
    OD_dataORG: TFloatField;
    OD_dataSUMMA: TFloatField;
    OD_dataUSER_ID: TFloatField;
    OD_datausl_nm: TStringField;
    OD_org: TOracleDataSet;
    DS_org: TDataSource;
    OD_dataorg_nm: TStringField;
    OD_dataDAT: TDateTimeField;
    OD_dataUSERNAME: TStringField;
    SpeedButton1: TSpeedButton;
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure OD_dataPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_corrects: TForm_corrects;

implementation

uses DM_module1;

{$R *.dfm}

procedure TForm_corrects.Button1Click(Sender: TObject);
begin
    try
      if (OD_data.State = dsEdit) or (OD_data.State = dsInsert) then
         OD_data.Post;
    except
       ShowMessage('Ошибки при записи!');
       OD_data.Cancel;
       exit;
    end;
      DataModule1.OraclePackage1.CallProcedure('scott.trg.trg_corr_chk_mirror', [parInteger]);
      if DataModule1.OraclePackage1.GetParameter(0) > 0 then
        begin
         ShowMessage('Предупреждение! Отсутсвует зеркальная операция по счёту!');
        end;
      DataModule1.OracleSession1.Commit;
end;

procedure TForm_corrects.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_corrects.Button2Click(Sender: TObject);
begin
  DataModule1.OracleSession1.Rollback;
//  OD_data.Refresh;
  Close;
end;

procedure TForm_corrects.OD_dataPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  if DataSet.FieldByName('lsk').Value = null then
   ShowMessage('Необходимо набрать лицевой счет')
  else if DataSet.FieldByName('org').Value = null then
   ShowMessage('Необходимо выбрать организацию!')
  else if DataSet.FieldByName('uslm').Value = null then
   ShowMessage('Необходимо выбрать услугу!')
  else
   ShowMessage(E.Message);
  Action := daAbort;
end;

procedure TForm_corrects.FormCreate(Sender: TObject);
begin
  OD_data.Active:=false;
  OD_data.Active:=true;
end;

procedure TForm_corrects.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbCancel then
  begin
    OD_data.Cancel;
  end;

  if Button = nbRefresh then
  begin
   DataModule1.OracleSession1.Rollback;
   OD_data.Refresh;
  end;
end;

procedure TForm_corrects.SpeedButton1Click(Sender: TObject);
var
  lsk_: String;
  summa_: Currency;
  uslm_: String;
  org_: Integer;
begin
  lsk_:=OD_data.FieldByName('lsk').AsString;
  summa_:=OD_data.FieldByName('summa').AsCurrency;
  uslm_:=OD_data.FieldByName('uslm').AsString;
  org_:=OD_data.FieldByName('org').AsInteger;
  if (lsk_ <> '') and (uslm_ <> '') then
    OD_data.InsertRecord([lsk_, uslm_, org_, summa_*-1]);
  OD_data.RefreshRecord;
end;

procedure TForm_corrects.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  OD_data.Active:=false;
  OD_data.SetVariable('mg_', DBLookupComboBox1.KeyValue);
  OD_data.Active:=true;
end;

end.
