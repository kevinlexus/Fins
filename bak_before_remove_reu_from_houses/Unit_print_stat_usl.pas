unit Unit_print_stat_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DBCtrls, StdCtrls, frxClass, frxDBSet, frxCross,
  Buttons,
  ExtCtrls, 
  PivotMap_SRC, PivotGrid_SRC, PivotCube_SRC, OleCtrls, ADODB,
  PivotPaintner_SRC, 
  Oracle;
type
  TForm_print_stat_usl = class(TForm)
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    OD_reu_trest: TOracleDataSet;
    GroupBox3: TGroupBox;
    Button2: TButton;
    frxDBDataset1: TfrxDBDataset;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    DS_reu: TDataSource;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    CheckBox5: TCheckBox;
    DataSource5: TDataSource;
    OracleQuery1: TOracleQuery;
    PivotCube18: TPivotCube;
    PivotMap18: TPivotMap;
    OD_adr: TOracleDataSet;
    OracleDataSet2: TOracleDataSet;
    OracleDataSet4: TOracleDataSet;
    PivotCube22: TPivotCube;
    PivotMap22: TPivotMap;
    PivotMap35: TPivotMap;
    PivotCube35: TPivotCube;
    PivotCube36: TPivotCube;
    PivotMap36: TPivotMap;
    PivotMap1: TPivotMap;
    PivotCube1: TPivotCube;
    PivotCube37: TPivotCube;
    PivotMap37: TPivotMap;
    PivotCube59: TPivotCube;
    PivotMap59: TPivotMap;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure PivotMap18AfterRefresh(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    id_: Integer;
    rep_name_: String;
    Cube_: TComponent;
    Map_: TComponent;
    level_: Integer;
    id_two_periods_: Integer;
    procedure Select_form(id1_: Integer; havecurrent_: Integer; id_two_per_: Integer);
  end;

var
  Form_print_stat_usl: TForm_print_stat_usl;
  clr_: Integer;  //Селектор для домов
  noask_: Integer;  //Не спрашивать о выборе всех параметров формы

implementation

uses Unit_sel_houses, Unit_sel_usl, Unit_status, Unit_form_olap,
  DM_module1;

{$R *.dfm}

procedure TForm_print_stat_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_stat_usl.DBLookupComboBox3CloseUp(Sender: TObject);
begin
  if DBLookupComboBox3.KeyValue = 3 then
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
    Form_sel_houses.id_:=1;
  end
  else if DBLookupComboBox3.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, name_reu as reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := 'ЖЭО:';
  end
  else if DBLookupComboBox3.KeyValue = 1 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select trest as key, name_tr as reu from scott.v_permissions_trest';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := 'Трест:';
  end
  else if DBLookupComboBox3.KeyValue = 0 then
  begin
   DBLookupComboBox7.Enabled := false;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := '';
  end

end;

procedure TForm_print_stat_usl.Select_form(id1_: Integer; havecurrent_: Integer; id_two_per_: Integer);
begin
  id_:=id1_;
  id_two_periods_:=id_two_per_;

  noask_:=0;
  //два комбобокса с периодами
  if id_two_periods_ = 1 then
  begin
    DBLookupComboBox6.Visible:=true;
  //  CheckBox5.Enabled:=false;
  end;
  clr_ := 0;

  // возможность включенной галки - текущий период
  if havecurrent_ = 0 then
  begin
    CheckBox5.Checked := false;
    CheckBox5.Enabled := false;
    Label7.Caption:='Период отчета С:';
    Label8.Visible:=false;
  end;

  // форма без комбобоксов
  if havecurrent_ = 2 then
  begin
    noask_:=1;
    GroupBox2.Caption:='';
    CheckBox5.Checked := false;
    CheckBox5.Visible := false;
    Label7.Visible:=false;
    Label8.Visible:=false;
    DBLookupComboBox5.Visible:=false;
    DBLookupComboBox6.Visible:=false;
    DBLookupComboBox3.Visible:=false;
    DBLookupComboBox7.Visible:=false;
    DBLookupComboBox3.KeyValue:=0;
  end;

  OracleDataSet1.Active:=false;
  OracleDataSet1.SetVariable('id_', id_);
  OracleDataSet1.Active:=true;

  OracleDataSet2.Active:=false;
  OracleDataSet2.SetVariable('id_', id_);
  OracleDataSet2.Active:=true;

  OracleDataSet4.Active:=false;
  OracleDataSet4.SetVariable('id_', id_);
  OracleDataSet4.Active:=true;
end;

procedure TForm_print_stat_usl.FormShow(Sender: TObject);
begin
  clr_ := 0;
end;


procedure TForm_print_stat_usl.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_stat_usl.BitBtn1Click(Sender: TObject);
begin

  if ((DBLookupComboBox5.KeyValue = null) or
      ((DBLookupComboBox6.KeyValue = null) and (CheckBox5.Checked=false))) and
       (noask_ = 0)  then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = null) then
  begin
    ShowMessage('Не выбран параметр отчета, Отмена');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = 1) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('Не выбран трест, Отмена');
    Exit;
  end;

  if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue = null) then
  begin
    ShowMessage('Не выбран РЭУ, Отмена');
    Exit;
  end;

  if id_two_periods_ =1 then
    Form_print_stat_usl.rep_name_:=DataModule1.OraclePackage1.CallStringFunction
         ('scott.UTILS.get_report_name', [id_])+
          ' за период с '+DBLookupComboBox5.Text+' по '+DBLookupComboBox6.Text
  else
    Form_print_stat_usl.rep_name_:=DataModule1.OraclePackage1.CallStringFunction
         ('scott.UTILS.get_report_name', [id_])+
          ' за '+DBLookupComboBox5.Text;


  OD_data.Active := false;
  //Конвертация к новой нотации вызова процедуры id_ --> cd_
  OD_data.SetVariable('cd_', IntToStr(id_));

  OD_data.SetVariable('mg_', null);
  OD_data.SetVariable('mg1_', null);
  OD_data.SetVariable('dat_', null);
  OD_data.SetVariable('dat1_', null);

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  // Выбор варианта OLAP-а
  if  CheckBox5.Checked = true then
  begin
    OD_data.SetVariable('dat_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('dat1_', DBLookupComboBox6.KeyValue);
  end
  else
  begin
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
  end;

  //По РЭУ
  if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
   end
  //По Тресту
  else if (DBLookupComboBox3.KeyValue = 1) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', DBLookupComboBox7.KeyValue);
  end
  //По УЕЗЖКУ
  else if (DBLookupComboBox3.KeyValue = 0) then
  begin
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', null);
  end
  //По Домам
  else if (DBLookupComboBox3.KeyValue = 3) then
  begin
    OD_adr.Active:=false;
    OD_adr.Active:=true;
    OD_data.SetVariable('reu_', OD_adr.FieldByname('reu').AsString);
    OD_data.SetVariable('kul_', OD_adr.FieldByname('kul').AsString);
    OD_data.SetVariable('nd_', OD_adr.FieldByname('nd').AsString);
  end;

  OD_data.SetVariable('var_', DBLookupComboBox3.KeyValue);
  Cube_ := FindComponent('PivotCube'+IntToStr(id_));
  Map_ := FindComponent('PivotMap'+IntToStr(id_));
  OD_data.Active := true;

  Form_status.Close;
  if OD_data.RecordCount = 0 then
  begin
    Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
  end
  else
  begin
    Form_status.Close;
    Application.CreateForm(TForm_olap, Form_olap);

    //Включение OLAP панелей
    LockWindowUpdate(handle);
    Form_olap.BitBtn1.Visible:=false;
    Form_olap.PVDimToolBar1.Visible:=true;
    Form_olap.PVColToolBar1.Visible:=true;
    Form_olap.PVRowToolBar1.Visible:=true;
    Form_olap.PivotGrid1.Visible:=true;
    Form_olap.PVMeasureToolBar1.Visible:=true;
//    Form_olap.Panel1.Visible:=false;

    TPivotCube(Cube_).Active:=false;
    Form_olap.PivotGrid1.Map := TPivotMap(Map_);
    Form_olap.PVDimToolBar1.Map := TPivotMap(Map_);
    Form_olap.PVColToolBar1.Map := TPivotMap(Map_);
    Form_olap.PVRowToolBar1.Map := TPivotMap(Map_);
    Form_olap.PVMeasureToolBar1.Map := TPivotMap(Map_);

    TPivotCube(Cube_).Active := True;
    LockWindowUpdate(0);
  end;
end;


procedure TForm_print_stat_usl.BitBtn2Click(Sender: TObject);
begin
   if clr_=0 then
   begin
    Application.CreateForm(TForm_sel_usl, Form_sel_usl);
    Form_sel_usl.OD_list_choice.Active := false;
    Form_sel_usl.OD_list_choice.SetVariable('clr_',1);
    Form_sel_usl.OD_list_choice.Active := true;
    clr_:=1;
   end
   else
   begin
    Application.CreateForm(TForm_sel_usl, Form_sel_usl);
   end;
end;

procedure TForm_print_stat_usl.CheckBox5Click(Sender: TObject);
begin
  DBLookupComboBox5.KeyValue:=null;
  DBLookupComboBox6.KeyValue:=null;

  if (CheckBox5.Checked = true) and (id_two_periods_ = 0) then
   begin
   DataSource1.DataSet := OracleDataSet4;
   DBLookupComboBox6.Visible:=false;
   Label8.Visible:=false;
   Label7.Caption:='Период отчета:';
   end
  else if (CheckBox5.Checked = true) and (id_two_periods_ = 1) then
   begin
   DataSource1.DataSet := OracleDataSet4;
   DataSource5.DataSet := OracleDataSet4;
   Label7.Caption:='Период отчета С:';
   end
  else
   begin
   DataSource1.DataSet := OracleDataSet1;
   DataSource5.DataSet := OracleDataSet2;
   DBLookupComboBox6.Visible:=true;
   Label8.Visible:=true;
   Label7.Caption:='Период отчета С:';
   end;

end;


procedure TForm_print_stat_usl.PivotMap18AfterRefresh(Sender: TObject);
begin
//  Form_olap.init_:=1;
end;

procedure TForm_print_stat_usl.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

end.
