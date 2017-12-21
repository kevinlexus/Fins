unit Unit_print_opl_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, OracleData, Oracle,
  frxClass, frxDBSet;

type
  TForm_opl_usl = class(TForm)
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    CheckBox5: TCheckBox;
    DS_reu_trest: TDataSource;
    OD_reu_trest: TOracleDataSet;
    Label1: TLabel;
    OD_uslm: TOracleDataSet;
    DS_uslm: TDataSource;
    OD_data: TOracleDataSet;
    DBLookupComboBox1: TDBLookupComboBox;
    DS_data: TDataSource;
    DataSource1: TDataSource;
    OracleDataSet2: TOracleDataSet;
    OracleDataSet3: TOracleDataSet;
    DataSource5: TDataSource;
    OracleDataSet1: TOracleDataSet;
    OracleDataSet4: TOracleDataSet;
    GroupBox1: TGroupBox;
    Button5: TButton;
    Button4: TButton;
    frxDBData_opl_usl: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_opl_usl: TForm_opl_usl;

implementation

uses Unit_status;

{$R *.dfm}

procedure Change_date;
begin
with Form_opl_usl do
 begin
     if ComboBox1.ItemIndex = 0 then
      begin
          Label6.Caption:='';
          DBLookupComboBox7.KeyValue:=null;
          DBLookupComboBox7.Enabled:=false;
      end
     else if ComboBox1.ItemIndex = 1 then
      begin
          Label6.Caption:='Трест:';
          OD_reu_trest.Active:=false;
          OD_reu_trest.SQL.Text:='select distinct s.trest as kod, s.name_tr as name from scott.s_reu_trest s';
          OD_reu_trest.Active:=true;
          DBLookupComboBox7.Enabled:=true;
      end
     else if ComboBox1.ItemIndex = 2 then
      begin
          Label6.Caption:='РЭУ:';
          OD_reu_trest.Active:=false;
          OD_reu_trest.SQL.Text:='select s.reu as kod, s.reu as name from scott.s_reu_trest s';
          OD_reu_trest.Active:=true;
          DBLookupComboBox7.Enabled:=true;
      end;
 end;
end;

procedure TForm_opl_usl.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_opl_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_opl_usl.CheckBox5Click(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue:=null;
  DBLookupComboBox6.KeyValue:=null;

  if CheckBox5.Checked = true then
   begin
   DataSource1.DataSet := OracleDataSet1;
   DataSource5.DataSet := OracleDataSet4;
   DBLookupComboBox7.KeyValue:=null;
   DBLookupComboBox7.Enabled:=false;
   end
  else
   begin
   DataSource1.DataSet := OracleDataSet3;
   DataSource5.DataSet := OracleDataSet2;
   DBLookupComboBox7.Enabled:=true;
   end;
end;

procedure TForm_opl_usl.FormShow(Sender: TObject);
begin
      DBLookupComboBox1.KeyValue:=null;
end;


procedure TForm_opl_usl.Button4Click(Sender: TObject);
Var
  mp_: Integer;
  trest_: String;
  reu_: String;
  SqlStr1: String;
begin
  if (DBLookupComboBox5.KeyValue=null) or (DBLookupComboBox5.KeyValue=null) or
     (DBLookupComboBox6.KeyValue=null) or (DBLookupComboBox6.KeyValue=null)  then
    begin
     Application.MessageBox('Не указан период!', 'Внимание!', MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
     exit
    end;

  if (DBLookupComboBox1.KeyValue=null) or (DBLookupComboBox1.KeyValue=null)  then
    begin
     Application.MessageBox('Не указана услуга!', 'Внимание!', MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
     exit
    end;

    mp_:=1;

  if ComboBox1.ItemIndex = 0 then
    mp_:=1
  else if ComboBox1.ItemIndex = 1 then
   begin
    mp_:=0;
    if (DBLookupComboBox7.KeyValue=null) or (DBLookupComboBox7.KeyValue=null) then
      begin
       Application.MessageBox('Не указан номер треста!', 'Внимание!', MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
       exit
      end
    else
      trest_:=DBLookupComboBox7.KeyValue;
   end
  else if ComboBox1.ItemIndex = 2 then
   begin
    mp_:=0;
    if (DBLookupComboBox7.KeyValue=null) or (DBLookupComboBox7.KeyValue=null) then
      begin
       Application.MessageBox('Не указан номер РЭУ!', 'Внимание!', MB_OK + MB_ICONEXCLAMATION+MB_APPLMODAL);
       exit
      end
    else
      reu_:=DBLookupComboBox7.KeyValue;
   end;

OD_data.Active:=false;
OD_data.DeleteVariables;
OD_data.DeclareVariable('MG1', otString);
OD_data.DeclareVariable('MG2', otString);
OD_data.DeclareVariable('USL', otString);

if mp_ =1 then
 begin
 end
else if trest_ <> '' then
 begin
  SqlStr1:=' and x.trest=:TREST ';
  OD_data.DeclareVariable('TREST', otString);
  OD_data.SetVariable('TREST', trest_);
 end
else if reu_ <> '' then
 begin
  SqlStr1:=' and x.forreu=:REU ';
  OD_data.DeclareVariable('REU', otString);
  OD_data.SetVariable('REU', reu_);
 end;

 if CheckBox5.Checked=false then
  begin
   OD_data.SQL.Text:='select sum(summa) as summa, u.uslm, u.nm1, x.forreu, s.name_tr, '+
     'SUBSTR(MIN(mg),5,2)||'+chr(39)+'/'+chr(39)+'||SUBSTR(MIN(mg),1,4) mg1, '+
     'SUBSTR(MAX(mg),5,2)||'+chr(39)+'/'+chr(39)+'||SUBSTR(MAX(mg),1,4) mg2 '+
     'from scott.xxito10 x, scott.usl u, scott.s_reu_trest s '+
     'where mg between :mg1 and :mg2 and x.usl=u.usl and x.forreu=s.reu and u.uslm=:USL '+SqlStr1+
     'group by u.uslm, u.nm1, s.name_tr, x.forreu '+
     'order by s.name_tr, x.forreu ';
  end
  else
  begin
   OD_data.SQL.Text:='select sum(summa) as summa, u.uslm, u.nm1, x.forreu, s.name_tr, '+
     'MIN(dat) mg1, MAX(dat) mg2 '+
     'from scott.xxito10 x, scott.usl u, scott.s_reu_trest s  '+
     'where dat between TO_DATE(:mg1,'+CHR(39)+'DD/MM/YY'+CHR(39)+') '+
     'and TO_DATE(:mg2,'+CHR(39)+'DD/MM/YY'+CHR(39)+') and x.forreu=s.reu and x.usl=u.usl and u.uslm=:USL '+SqlStr1+
     'group by u.uslm, u.nm1, s.name_tr, x.forreu '+
     'order by s.name_tr, x.forreu ';
  end;

OD_data.SetVariable('MG1', DBLookupComboBox5.KeyValue);
OD_data.SetVariable('MG2', DBLookupComboBox6.KeyValue);
OD_data.SetVariable('USL', DBLookupComboBox1.KeyValue);

Application.CreateForm(TForm_status, Form_status);
Form_status.Update;
OD_data.Active:=true;

frxReport1.Variables['nm1']:=''''+OD_data.FieldByName('nm1').AsString+'''';
if CheckBox5.Checked then
begin
  frxReport1.Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
  frxReport1.Variables['mg2']:=''''+OracleDataSet4.FieldByName('mg1').AsString+'''';
end
else
begin
  frxReport1.Variables['mg1']:=''''+OracleDataSet3.FieldByName('mg1').AsString+'''';
  frxReport1.Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
end;

frxReport1.PrepareReport(true);
Form_status.Close;
frxReport1.ShowPreparedReport;


end;

procedure TForm_opl_usl.ComboBox1CloseUp(Sender: TObject);
begin
  Change_date();
end;

end.
