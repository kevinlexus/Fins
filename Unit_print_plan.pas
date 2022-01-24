unit Unit_print_plan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, frxClass, frxDBSet, StdCtrls, DBCtrls, Unit_mainform;

type
  TForm_print_plan = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    OD_data: TOracleDataSet;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    OD_reu_trest: TOracleDataSet;
    DS_reu: TDataSource;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    OracleDataSet2: TOracleDataSet;
    OracleDataSet1: TOracleDataSet;
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button2: TButton;
    frxReport1: TfrxReport;
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_plan: TForm_print_plan;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_print_plan.DBLookupComboBox3CloseUp(Sender: TObject);
begin
  if DBLookupComboBox3.KeyValue = 3 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
  else if DBLookupComboBox3.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '���:';
  end
  else if DBLookupComboBox3.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '�����:';
  end
  else if DBLookupComboBox3.KeyValue = 0 then
  begin
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
end;

procedure TForm_print_plan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_plan.Button4Click(Sender: TObject);
begin
  if (DBLookupComboBox5.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('�� ������ ������ ������, ������');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = null) then
  begin
    ShowMessage('�� ������ �������� ������, ������');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = 1) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('�� ������ �����, ������');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('�� ������ ���, ������');
    Exit;
  end;

  OD_data.Active := false;
  //�� ���
  if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_data.SetVariable('dat1_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('dat2_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;
    Form_status.Close;
  end
  //�� ������
  else if (DBLookupComboBox3.KeyValue = 1) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', DBLookupComboBox7.KeyValue);

    OD_data.SetVariable('dat1_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('dat2_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;
    Form_status.Close;
  end
  //�� ������
  else if (DBLookupComboBox3.KeyValue = 0) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('dat1_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('dat2_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;
    Form_status.Close;
  end;
  frxReport1.Variables['dat1_']:=DBLookupComboBox5.KeyValue;
  frxReport1.Variables['dat2_']:=DBLookupComboBox6.KeyValue;
  frxReport1.Variables['dat3_']:=Form_Main.OD_params.FieldByName('agent_time').AsDateTime;
  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
end;

procedure TForm_print_plan.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
