unit Unit_print_saldo_houses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, OracleData,
  frxClass, frxDMPExport,
  frxExportXLS, frxDBSet;

type
  TForm_print_saldo_houses = class(TForm)
    OD_data: TOracleDataSet;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    OracleDataSet2: TOracleDataSet;
    DataSource2: TDataSource;
    OD_reu_trest: TOracleDataSet;
    DS_reu: TDataSource;
    DS_data: TDataSource;
    OracleDataSet1: TOracleDataSet;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Button4: TButton;
    Button1: TButton;
    frxDBData3: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    OD_uslm: TOracleDataSet;
    DS_uslm: TDataSource;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_saldo_houses: TForm_print_saldo_houses;
  clr_: Integer;
  clr1_: Integer;

implementation

uses Unit_status, Unit_sel_houses, Unit_Mainform, Utils;

{$R *.dfm}

procedure TForm_print_saldo_houses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_saldo_houses.Button1Click(Sender: TObject);
begin
  Close;
end;


procedure TForm_print_saldo_houses.Button4Click(Sender: TObject);
var
  rep_file_:string;
begin
  if (DBLookupComboBox5.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('�� ������ ������ ������, ������');
    Exit;
  end;

  if (DBLookupComboBox2.KeyValue = null) or (DBLookupComboBox1.KeyValue = null) then
  begin
    ShowMessage('�� ������ �������� ������, ������');
    Exit;
  end;

  if (DBLookupComboBox1.KeyValue = 1) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('�� ������ �����, ������');
    Exit;
  end;

  if (DBLookupComboBox1.KeyValue = 2) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('�� ������ ���, ������');
    Exit;
  end;

  if (DBLookupComboBox5.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('�� ������ ������ ������, ������');
    Exit;
  end;

  OD_data.Active := false;
  //�������� ������
  rep_file_:='���������_��_�����1.fr3';
  try
    frxReport1.LoadFromFile(Form_main.exepath_+rep_file_, True);
  except
    msg2('�� ������ ���� ������: '+Form_main.exepath_+rep_file_,'��������!', 16);
    exit;
  end;

  frxReport1.Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
  frxReport1.Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
  if OD_uslm.FieldByName('uslm').AsString = '000' then
    frxReport1.Variables['str_']:=''''+' �� ���� ������� '+''''
  else
    frxReport1.Variables['str_']:=''''+' �� ������: '+OD_uslm.FieldByName('nm1').AsString+'''';

    OD_data.SetVariable('uslm_', DBLookupComboBox2.KeyValue);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);

  if (DBLookupComboBox1.KeyValue = 3) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('var_', 4);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', null);
    OD_data.Active := true;

    frxReport1.PrepareReport(true);
    Form_status.Close;
    frxReport1.ShowPreparedReport;
  end
  else if (DBLookupComboBox1.KeyValue = 2) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('var_', 3);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_data.Active := true;

    frxReport1.PrepareReport(true);
    Form_status.Close;
    frxReport1.ShowPreparedReport;
  end
  else if (DBLookupComboBox1.KeyValue = 1) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('var_', 2);
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', DBLookupComboBox7.KeyValue);
    OD_data.Active := true;

    frxReport1.PrepareReport(true);
    Form_status.Close;
    frxReport1.ShowPreparedReport;
  end
  else if (DBLookupComboBox1.KeyValue = 0) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('var_', 1);
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', null);

    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;
    frxReport1.Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
    frxReport1.Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';

    frxReport1.PrepareReport(true);
    Form_status.Close;
    frxReport1.ShowPreparedReport;
  end
  else
  begin
    ShowMessage('�� ������ �����/���, ������');
    Exit;
  end;
end;
procedure TForm_print_saldo_houses.DBLookupComboBox1CloseUp(
  Sender: TObject);
begin
  if DBLookupComboBox1.KeyValue = 3 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
   if clr_=0 then
   begin
    Application.CreateForm(TForm_sel_houses, Form_sel_houses);
    Form_sel_houses.OD_list_choice.Active := false;
    Form_sel_houses.OD_list_choice.SetVariable('clr_',1);
    Form_sel_houses.OD_list_choice.Active := true;
    clr_:=1;
   end
   else
   begin
    Application.CreateForm(TForm_sel_houses, Form_sel_houses);
   end;
  end
  else if DBLookupComboBox1.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, name_reu as reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := DBLookupComboBox1.Text;
  end
  else if DBLookupComboBox1.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := DBLookupComboBox1.Text;
  end
  else if DBLookupComboBox1.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
end;

end.
