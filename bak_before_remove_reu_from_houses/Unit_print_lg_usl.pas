unit Unit_print_lg_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, DBCtrls,
  frxClass, frxDBSet, frxDMPExport, frxCross,
  DBCtrlsEh, ExtCtrls, frxDesgn,
  frxExportXLS;

type
  TForm_print_lg_usl = class(TForm)
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button1: TButton;
    OD_reu_trest: TOracleDataSet;
    OD_data: TOracleDataSet;
    OracleDataSet2: TOracleDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DS_reu: TDataSource;
    DS_data: TDataSource;
    OracleDataSet1: TOracleDataSet;
    OD_perm_menu: TOracleDataSet;
    DS_perm_menu: TDataSource;
    frxDBData3: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxCrossObject1: TfrxCrossObject;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    OD_sprorg: TOracleDataSet;
    DS_sprorg: TDataSource;
    frxDesigner1: TfrxDesigner;
    frxXLSExport1: TfrxXLSExport;
    OD_list_choice: TOracleDataSet;
    OD_itog: TOracleDataSet;
    frxDBData_Itog: TfrxDBDataset;
    frxReport8: TfrxReport;
    frxReport5: TfrxReport;
    frxReport6: TfrxReport;
    frxReport7: TfrxReport;
    frxReport1: TfrxReport;
    frxDBData1: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBData2: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form_print_lg_usl: TForm_print_lg_usl;
  clr_: Integer;
  frxReportSel: TComponent;

implementation

uses Unit_status, Unit_sel_houses;

{$R *.dfm}

procedure TForm_print_lg_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_lg_usl.Button4Click(Sender: TObject);
var a: Integer;
    s: String;
begin
  if (DBLookupComboBox5.KeyValue = null) or (DBLookupComboBox6.KeyValue = null) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
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

  if (ComboBox1.ItemIndex = 2) and (DBLookupComboBox2.KeyValue = null) then
  begin
    ShowMessage('Не выбрана организация, Отмена');
    Exit;
  end;

  if (ComboBox2.ItemIndex = 0) and
     ((ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 1)) then //возмещение льгот
  begin
    frxReportSel := FindComponent('frxReport5');
//    TfrxReport(frxReportSel).Variables['var_']:=''''+ComboBox1.Text+IntToStr(ComboBox2.ItemIndex+1)+'''';
  end
  else if (ComboBox2.ItemIndex = 1) and
    ((ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 1)) then //кол-во льготников
  begin
    frxReportSel := FindComponent('frxReport6');

//    TfrxReport(frxReportSel).Variables['var_']:=''''+ComboBox1.Text+IntToStr(ComboBox2.ItemIndex+1)+'''';
  end
  else if ComboBox1.ItemIndex = 2 then //выбранная организация
  begin
    frxReportSel := FindComponent('frxReport7');

    TfrxReport(frxReportSel).Variables['org_']:=''''+DBLookupComboBox2.Text+'''';
  end
  else if ComboBox1.ItemIndex = 3 then //в совокупности
  begin
    frxReportSel := FindComponent('frxReport8');

  OD_itog.Active := false; //Итоги, только для этой ведомости
  OD_itog.SetVariable('var_', 6);
  OD_itog.SetVariable('var1_', null);
  end
  else if (ComboBox1.ItemIndex = 5) and (ComboBox2.ItemIndex = 0) then //возмещение льгот организации+услуги
  begin
    frxReportSel := FindComponent('frxReport1');
    TfrxReport(frxReportSel).Variables['var_']:=''''+ComboBox1.Text+IntToStr(ComboBox2.ItemIndex+1)+'''';
  end
  else if (ComboBox1.ItemIndex = 5) and (ComboBox2.ItemIndex = 1) then //возмещение льгот организации+услуги
  begin
    frxReportSel := FindComponent('frxReport2');
    TfrxReport(frxReportSel).Variables['var_']:=''''+ComboBox1.Text+IntToStr(ComboBox2.ItemIndex+1)+'''';
  end;


  OD_data.Active := false;
  OD_data.SetVariable('var_', ComboBox1.ItemIndex);
  OD_data.SetVariable('var1_', ComboBox2.ItemIndex);

  if DBLookupComboBox3.KeyValue = 0 then  // По МП Уезжку
  begin
    TfrxReport(frxReportSel).Variables['obj_']:=''''+OD_perm_menu.FieldByName('name1').AsString+'''';
  end
  else if DBLookupComboBox3.KeyValue = 3 then  // По Домам
  begin
    OD_list_choice.Refresh;
    s:='';
    OD_list_choice.First;
    for a:=1 to OD_list_choice.RecordCount do
    begin
      s:=s+' РЭУ:'+OD_list_choice.FieldByName('REU').AsString+' '+OD_list_choice.FieldByName('NAME').AsString+', д.'
        +OD_list_choice.FieldByName('ND').AsString;
      OD_list_choice.Next;
    end;
    TfrxReport(frxReportSel).Variables['obj_']:=''''+s+'''';
  end
  else    //По Трестам и РЭУ
  begin
    TfrxReport(frxReportSel).Variables['obj_']:=''''+OD_perm_menu.FieldByName('name1').AsString+' '+OD_reu_trest.FieldByName('reu').AsString+'''';
  end;

  OD_data.SetVariable('org_', null);
  if ComboBox1.ItemIndex=2 then
  begin
    OD_data.SetVariable('org_', DBLookupComboBox2.KeyValue);
  end;

  //По Дому
  if (DBLookupComboBox3.KeyValue = 3) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('houses_', 1);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;
   if ComboBox1.ItemIndex = 3 then //в совокупности - итоги
   begin
    OD_itog.SetVariable('trest_', null);
    OD_itog.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_itog.SetVariable('houses_', 1);
    OD_itog.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_itog.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_itog.Active := true;
   end;
  end
  //По РЭУ
  else if (DBLookupComboBox3.KeyValue = 2) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_data.SetVariable('houses_', null);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;
   if ComboBox1.ItemIndex = 3 then //в совокупности - итоги
   begin
    OD_itog.SetVariable('trest_', null);
    OD_itog.SetVariable('reu_', DBLookupComboBox7.KeyValue);
    OD_itog.SetVariable('houses_', null);
    OD_itog.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_itog.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_itog.Active := true;
   end
  end
  //По Тресту
  else if (DBLookupComboBox3.KeyValue = 1) and (DBLookupComboBox7.KeyValue <> null) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', DBLookupComboBox7.KeyValue);
    OD_data.SetVariable('houses_', null);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;
   if ComboBox1.ItemIndex = 3 then //в совокупности - итоги
   begin
    OD_itog.SetVariable('reu_', null);
    OD_itog.SetVariable('trest_', DBLookupComboBox7.KeyValue);
    OD_itog.SetVariable('houses_', null);
    OD_itog.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_itog.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_itog.Active := true;
   end
  end
  //По УЕЗЖКУ
  else if (DBLookupComboBox3.KeyValue = 0) then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    OD_data.SetVariable('reu_', null);
    OD_data.SetVariable('trest_', null);
    OD_data.SetVariable('houses_', null);
    OD_data.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_data.Active := true;
   if ComboBox1.ItemIndex = 3 then //в совокупности - итоги
   begin
    OD_itog.SetVariable('reu_', null);
    OD_itog.SetVariable('trest_', null);
    OD_itog.SetVariable('houses_', null);
    OD_itog.SetVariable('mg_', DBLookupComboBox5.KeyValue);
    OD_itog.SetVariable('mg1_', DBLookupComboBox6.KeyValue);
    OD_itog.Active := true;
   end
  end;

  if OD_data.RecordCount =0 then
  begin
   Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
   Form_status.Close;
  end
  else
  begin
    if (ComboBox1.ItemIndex = 0) then //заоловок номера отчеты (форма номер ...)
      TfrxReport(frxReportSel).Variables['type_']:=''''+'Форма.7.1.'+IntToStr(ComboBox2.ItemIndex+1)+''''
    else if (ComboBox1.ItemIndex = 1) then
      TfrxReport(frxReportSel).Variables['type_']:=''''+'Форма.7.2.'+IntToStr(ComboBox2.ItemIndex+1)+''''
    else if (ComboBox1.ItemIndex = 2) then
      TfrxReport(frxReportSel).Variables['type_']:=''''+'Форма.7.3'+''''
    else if (ComboBox1.ItemIndex = 3) then
      TfrxReport(frxReportSel).Variables['type_']:=''''+'Форма.7.4'+''''
    else if (ComboBox1.ItemIndex = 4) then
      TfrxReport(frxReportSel).Variables['type_']:=''''+'Форма.7.5'+''''
    else if (ComboBox1.ItemIndex = 5) then
      TfrxReport(frxReportSel).Variables['type_']:=''''+'Форма.7.6.'+IntToStr(ComboBox2.ItemIndex+1)+'''';

    if (ComboBox2.ItemIndex = 0) and
     ((ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 1)) then //возмещение льгот
    begin
      TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).PrepareReport(true);
      Form_status.Close;
      TfrxReport(frxReportSel).ShowPreparedReport;
    end
    else if (ComboBox2.ItemIndex = 1) and
     ((ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 1)) then //кол-во льготников
    begin
      TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).PrepareReport(true);
      Form_status.Close;
      TfrxReport(frxReportSel).ShowPreparedReport;
    end
    else if ComboBox1.ItemIndex = 2 then //выбранная организация
    begin
      TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).PrepareReport(true);
      Form_status.Close;
      TfrxReport(frxReportSel).ShowPreparedReport;
    end
    else if ComboBox1.ItemIndex = 3 then //в совокупности
    begin
      TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).PrepareReport(true);
      Form_status.Close;
      TfrxReport(frxReportSel).ShowPreparedReport;
    end
    else if (ComboBox1.ItemIndex = 5) and (ComboBox2.ItemIndex = 0) then //возмещение льгот организации+услуги
    begin
      TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).PrepareReport(true);
      Form_status.Close;
      TfrxReport(frxReportSel).ShowPreparedReport;
    end
    else if (ComboBox1.ItemIndex = 5) and (ComboBox2.ItemIndex = 1) then //возмещение льгот организации+услуги
    begin
      TfrxReport(frxReportSel).Variables['mg1']:=''''+OracleDataSet1.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).Variables['mg2']:=''''+OracleDataSet2.FieldByName('mg1').AsString+'''';
      TfrxReport(frxReportSel).PrepareReport(true);
      Form_status.Close;
      TfrxReport(frxReportSel).ShowPreparedReport;
    end;

   end;
end;

procedure TForm_print_lg_usl.DBLookupComboBox3CloseUp(Sender: TObject);
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
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end
end;

procedure TForm_print_lg_usl.FormShow(Sender: TObject);
begin
  clr_ := 0;
end;

procedure TForm_print_lg_usl.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_lg_usl.DBLookupComboBox3KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = VK_SPACE then
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
  end
  else if DBLookupComboBox3.KeyValue = 2 then
  begin
   OD_reu_trest.Active:=false;
   OD_reu_trest.SQL.Text := 'select reu as key, reu from scott.v_permissions_reu';
   OD_reu_trest.Active:=true;
   DBLookupComboBox7.Enabled := true;
   DBLookupComboBox7.KeyValue := null;
   Label6.Caption := 'РЭУ:';
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
   DBLookupComboBox7.KeyValue := null;
   DBLookupComboBox7.Enabled := false;
   Label6.Caption := '';
  end;
 end;
end;

procedure TForm_print_lg_usl.ComboBox1CloseUp(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 2 then//если выбран отчет по предприятиям
  begin
    OD_sprorg.Active:=true;
    Label2.Visible:=true;
    DBLookupComboBox2.Visible:=true;
    ComboBox2.Visible:=false;

    OracleDataSet1.Active:=false;
    OracleDataSet2.Active:=false;
    OracleDataSet1.SetVariable('id_', 8);
    OracleDataSet2.SetVariable('id_', 8);
    OracleDataSet1.Active:=true;
    OracleDataSet2.Active:=true;
  end
  else if ComboBox1.ItemIndex = 3 then//если выбран совокупный отчет
  begin
    Label2.Visible:=false;
    DBLookupComboBox2.Visible:=false;
    ComboBox2.Visible:=false;

    OracleDataSet1.Active:=false;
    OracleDataSet2.Active:=false;
    OracleDataSet1.SetVariable('id_', 8);
    OracleDataSet2.SetVariable('id_', 8);
    OracleDataSet1.Active:=true;
    OracleDataSet2.Active:=true;
  end
  else if ComboBox1.ItemIndex = 4 then//если выбран отчет по детализированным услугам
  begin
    Label2.Visible:=false;
    DBLookupComboBox2.Visible:=false;
    ComboBox2.Visible:=false;
    ComboBox2.ItemIndex:=0;
    ComboBox2.Enabled:=false;

    OracleDataSet1.Active:=false;
    OracleDataSet2.Active:=false;
    OracleDataSet1.SetVariable('id_', 20);
    OracleDataSet2.SetVariable('id_', 20);
    OracleDataSet1.Active:=true;
    OracleDataSet2.Active:=true;
  end
  else
  begin
    Label2.Visible:=false;
    DBLookupComboBox2.Visible:=false;
    ComboBox2.Visible:=true;
    ComboBox2.Enabled:=true;

    OracleDataSet1.Active:=false;
    OracleDataSet2.Active:=false;
    OracleDataSet1.SetVariable('id_', 8);
    OracleDataSet2.SetVariable('id_', 8);
    OracleDataSet1.Active:=true;
    OracleDataSet2.Active:=true;
  end;
end;

procedure TForm_print_lg_usl.FormActivate(Sender: TObject);
begin
  ComboBox1.Perform(CB_SETDROPPEDWIDTH,180, 0);
end;

procedure TForm_print_lg_usl.Button2Click(Sender: TObject);
begin
  TfrxReport(frxReportSel).DesignReport;
end;

end.
