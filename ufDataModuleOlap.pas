unit ufDataModuleOlap;

interface

uses
  SysUtils, Classes, DB, OracleData, 
  DBAccess, Uni, MemDS, DASQLMonitor, UniSQLMonitor;

type
  TDM_Olap = class(TDataModule)
    DS_spr_params: TDataSource;
    OD_oper: TOracleDataSet;
    DS_oper: TDataSource;
    OD_org: TOracleDataSet;
    DS_org: TDataSource;
    DS_mg1: TDataSource;
    DS_mg2: TDataSource;
    OD_org_olap: TOracleDataSet;
    OD_spul_olap: TOracleDataSet;
    OD_empty: TOracleDataSet;
    OD_usl_olap: TOracleDataSet;
    OD_lsk_tp_olap: TOracleDataSet;
    OD_trest_olap: TOracleDataSet;
    OD_org2_olap: TOracleDataSet;
    OD_reu_olap: TOracleDataSet;
    OD_status_olap: TOracleDataSet;
    OD_sch_olap: TOracleDataSet;
    OD_psch_olap: TOracleDataSet;
    DS_detail: TDataSource;
    OD_mg1: TOracleDataSet;
    OD_mg2: TOracleDataSet;
    DS_c_kart_pr: TDataSource;
    DS_nabor_lsk: TDataSource;
    OD_dat2: TOracleDataSet;
    OD_dat1: TOracleDataSet;
    OD_level: TOracleDataSet;
    OD_levelNAME: TStringField;
    OD_levelLEVEL_ID: TFloatField;
    OD_uslm_olap: TOracleDataSet;
    DS_tree_objects: TDataSource;
    Uni_Data: TUniQuery;
    UniSQLMonitor1: TUniSQLMonitor;
    Uni_tree_objects: TUniQuery;
    Uni_spr_params: TUniQuery;
    Uni_nabor_lsk: TUniQuery;
    Uni_c_kart_pr: TUniQuery;
    Uni_detail: TUniQuery;
    DS_data: TDataSource;
    DS_level: TDataSource;
    procedure Uni_tree_objectsAfterPost(DataSet: TDataSet);
    procedure Uni_tree_objectsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
  end;

var
  DM_Olap: TDM_Olap;

implementation



{$R *.dfm}

procedure TDM_Olap.Uni_tree_objectsAfterPost(DataSet: TDataSet);
var
  str_: string;
  l_id: Integer;
  l_flag: Boolean;
begin
  {if Form_tree_objects.isAlreadyInPost <> True then
  begin
    Form_tree_objects.isAlreadyInPost := True;
    // выбрать уровень детализации
    if (Form_tree_objects.can_detail_ = 1) then
    begin
      str_ := Form_tree_objects.wwDBLookupCombo2.LookupValue;
      with DM_Olap.OD_level do
      begin
        Active := false;
        SetVariable('id',
          Uni_tree_objects.FieldByName('OBJ_LEVEL').AsInteger);
        Active := true;
        SearchRecord('level_id', StrToInt(str_),
          [srFromBeginning]);
        Form_tree_objects.wwDBLookupCombo2.LookupValue :=
          FieldByName('level_id').AsString;
      end;
    end;

    // убрать отметки с других записей
    if Form_tree_objects.sel_many_ = 0 then
    begin
      with Uni_tree_objects do
      begin
        // выбран объект
        if FieldByName('sel').AsInteger = 0 then
        begin
          Form_tree_objects.saveRecNo := RecNo;
          if (Form_tree_objects.prevRecNo <> RecNo)
            and (Form_tree_objects.prevRecNo <> -1) then
          begin
            // отменить предыдущую отметку
            RecNo := Form_tree_objects.prevRecNo;
            Edit;
            FieldByName('sel').AsInteger := 1;
            Post;
            // вернуться назад
            RecNo := Form_tree_objects.saveRecNo;
            Form_tree_objects.prevRecNo := Form_tree_objects.saveRecNo;
          end
          else
          begin
            Form_tree_objects.prevRecNo := RecNo;
          end;
        end;
      end;
    end;
    Form_tree_objects.isAlreadyInPost := False;
  end;         }
end;

procedure TDM_Olap.Uni_tree_objectsAfterScroll(DataSet: TDataSet);
//var
//  str_: string;
begin
{  if (Form_tree_objects.isLoadingCube = false) and (Form_tree_objects.can_detail_ = 1) then
  begin
    str_ := Form_tree_objects.wwDBLookupCombo2.LookupValue;
    if str_ <> '' then
    begin
      with OD_level do
      begin
        Active := false;
        SetVariable('id',
          Uni_tree_objects.FieldByName('OBJ_LEVEL').AsInteger);
        Active := true;
        SearchRecord('level_id', StrToInt(str_),
          [srFromBeginning]);
        Form_tree_objects.wwDBLookupCombo2.LookupValue :=
          FieldByName('level_id').AsString;
      end;
    end;
  end;}   
end;

end.

