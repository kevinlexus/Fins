unit Unit_spr_works;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, wwcheckbox, 
  wwDataInspector, DBGridEh, GRTreeView, MemTableDataEh,
  DataDriverEh, GridsEh, ExtCtrls, DBCtrls, wwdblook,
  Buttons;

type
  TForm_spr_works = class(TForm)
    DBGridEh1: TDBGridEh;
    OD_reu: TOracleDataSet;
    OD_reuREU: TStringField;
    OD_reuNAME_REU: TStringField;
    DS_reu: TDataSource;
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure exit_ok;
    procedure exit_cancel;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_spr_works: TForm_spr_works;

implementation

uses DM_module1, Unit_status, Utils, Unit_form_edit_price, Unit_Mainform;

{$R *.dfm}

procedure TForm_spr_works.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_main.MemTableEh1.Filtered:=false;
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;

  //возвращаем период по умолчанию в расценках по расходу по домам...
  if Form_main.OD_params.FieldByName('period').AsString
    <> Form_main.OD_prices_works.GetVariable('mg') then
  begin
    Form_main.loadPricesWorks;
  end;

  Action:=caFree;
end;

procedure TForm_spr_works.exit_ok;
begin
  exit_:=1;
  if not (Form_main.MemTableEh1.State in [dsBrowse]) then
  begin
   Form_main.MemTableEh1.Post;
  end;
  if not (Form_main.OD_prices_works.State in [dsBrowse]) then
  begin
    Form_main.MemTableEh1.Post;
    Form_main.OD_prices_works.Post;
  end;
  Form_main.OD_prices_works.Session.Commit;
end;

procedure TForm_spr_works.exit_cancel;
begin
  exit_:=0;
  Form_main.OD_prices_works.Session.Rollback;
end;

procedure TForm_spr_works.Button2Click(Sender: TObject);
begin
  exit_ok;
  Close;
end;

procedure TForm_spr_works.Button1Click(Sender: TObject);
begin
  exit_cancel;
  Close;
end;

procedure TForm_spr_works.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  DBLookupComboBox1.KeyValue:=OD_mg.FieldByName('mg').AsString;
  Form_main.OD_prices_works.SetVariable('mg', OD_mg.FieldByName('mg').AsString);
  Form_main.OD_prices_works.Active:=false;
  Form_main.OD_prices_works.Active:=true;
  Form_main.MemTableEh1.Active:=false;
  Form_main.MemTableEh1.Active:=true;
  Form_main.MemTableEh1.Last;

  if FF('Form_status', 0) = 1 then
    Form_status.Close;
end;

procedure TForm_spr_works.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  Form_main.MemTableEh1.Active:=false;
  Form_main.MemTableEh1.Active:=true;
  Form_main.MemTableEh1.Last;

  if FF('Form_status', 0) = 1 then
    Form_status.Close;
end;

procedure TForm_spr_works.DBGridEh1DblClick(Sender: TObject);
begin
  if Form_main.MemTableEh1.FieldByName('is_parent').AsInteger = 0 then
  begin
    Application.CreateForm(TForm_edit_price, Form_edit_price);
    Form_edit_price.ShowModal;
  end;
end;

procedure TForm_spr_works.FormCreate(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue:=Form_main.default_reu_;
  Form_main.OD_prices_works.SetVariable('reu_id', Form_main.default_reu_);

  DBLookupComboBox1.KeyValue:=OD_mg.FieldByName('mg').AsString;

  if Form_main.isloadedspr_ = 0 then
    Form_main.loadPricesWorks;
end;

procedure TForm_spr_works.FormResize(Sender: TObject);
begin
  Button1.Left:=GroupBox1.Width - Button1.Width - 10 ;
  Button2.Left:=GroupBox1.Width - Button1.Width - Button2.Width - 17 ;
end;

procedure TForm_spr_works.Edit2Change(Sender: TObject);
begin
  Form_main.strSearch_:=Edit2.Text;
  if Form_main.strSearch_ <> '' then
  begin
    Form_main.MemTableEh1.FilterOptions:=[foCaseInsensitive];
    Form_main.MemTableEh1.Filtered:=false;
    Form_main.MemTableEh1.Filtered:=true;
  end
  else
  begin
    Form_main.MemTableEh1.Filtered:=false;
  end;
end;

procedure TForm_spr_works.BitBtn3Click(Sender: TObject);
begin
  Form_main.MemTableEh1.Filtered:=false;
end;

end.
