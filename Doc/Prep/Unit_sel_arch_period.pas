unit Unit_sel_arch_period;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  wwdblook, Utils, DBCtrlsEh, DBLookupEh, DBGridEh;

type
  TForm_sel_arch_period = class(TForm)
    OD_mg: TOracleDataSet;
    Button2: TButton;
    Button3: TButton;
    OD_mgMG: TStringField;
    OD_mgMG1: TStringField;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DS_mg: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    mg_: String;
  public
    { Public declarations }
  end;

var
  Form_sel_arch_period: TForm_sel_arch_period;

implementation

uses Unit_Mainform, Unit_list_kart, Unit_form_kart, Unit_form_kart_pr,
  Unit_changes_lsk, Unit_month_payments, Unit_chargepay, Unit_changes_list,
  Unit_form_saldo, Unit_det_chrg, Unit_house_vvod, Unit_inkass_print,
  Unit_spr_prices, Unit_list_set;

{$R *.dfm}

procedure TForm_sel_arch_period.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_sel_arch_period.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  //Работа с архивом
end;

procedure TForm_sel_arch_period.Button2Click(Sender: TObject);
var
 mgold_: String;
 lsk_: String;
begin
  mg_:=OD_mg.FieldByName('mg').AsString;
  mgold_:=Form_main.arch_mg_;
  if mg_ ='999999' then
  begin
    Form_main.arch_mg_:='';  //текущий период
    Form_main.Panel1.Visible:=false;
  end
  else
  begin
    Form_main.arch_mg_:=mg_; //архивный период
    Form_main.Label1.Caption:='Архив, период: '+OD_mg.FieldByName('mg1').AsString;
    Form_main.Panel1.Visible:=true;
  end;

  Form_main.Update;
  if FF('Form_list_kart', 0) = 1 then
   begin
    lsk_:=Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
    Form_list_kart.state_arch2(mgold_);
    Form_list_kart.setAllowEdit_list;
    Form_list_kart.setAllowEdit_kart;
    Form_list_kart.OD_list_kart.SearchRecord('lsk', lsk_, [srFromBeginning]);
   end;

  if FF('Form_kart', 0) = 1 then
  begin
    Form_kart.state_arch2(mgold_);
    Form_kart.setAllowEdit(0);
    Form_kart.calcFooter;
  end;

  if FF('Form_kart_pr', 0) = 1 then
  begin
    Form_kart_pr.state_arch2(mgold_);
    Form_kart_pr.setAllowEdit;
  end;

  if FF('Form_changes_lsk', 0) = 1 then
  begin
    Form_changes_lsk.state_arch2(mgold_);
    Form_changes_lsk.setAllowEdit;
  end;

  if FF('Form_changes_list', 0) = 1 then
  begin
    Form_changes_list.state_arch2(mgold_);
  end;

  if FF('Form_month_payments', 0) = 1 then
  begin
    Form_month_payments.state_arch2(mgold_);
  end;

  if FF('Form_chargepay', 0) = 1 then
  begin
    Form_chargepay.state_arch2(mgold_);
  end;

  if FF('Form_det_chrg', 0) = 1 then
  begin
    Form_det_chrg.state_arch2(mgold_);
  end;

  if FF('Form_saldo', 0) = 1 then
  begin
    Form_saldo.state_arch2(mgold_);
  end;

  if FF('Form_house_vvod', 0) = 1 then
  begin
    Form_house_vvod.state_arch2(mgold_);
  end;

  if FF('Form_inkass_print', 0) = 1 then
  begin
    Form_inkass_print.state_arch2(mgold_);
  end;

  if FF('Form_spr_prices', 0) = 1 then
  begin
    Form_spr_prices.state_arch2(mgold_);
  end;

  if FF('Form_list_set', 0) = 1 then
  begin
    Form_list_set.state_arch2(mgold_);
  end;

  Close;
end;

procedure TForm_sel_arch_period.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_sel_arch_period.FormCreate(Sender: TObject);
begin
  if Form_main.arch_mg_ <> '' then
     DBLookupComboboxEh1.KeyValue:=Form_main.arch_mg_
   else
     DBLookupComboboxEh1.KeyValue:='999999';
end;

end.
