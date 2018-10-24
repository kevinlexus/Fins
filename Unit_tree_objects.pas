unit Unit_tree_objects;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DBCtrls, DB, OracleData, Buttons, Utils,
  Oracle, PivotCube_SRC, PivotMap_SRC, MSXML2_TLB, ComObj, Menus, frxClass,
  frxDBSet, frxDMPExport, wwdblook, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  OracleNavigator, ToolWin, ComCtrls, DataDriverEh, MemTableDataEh,
  MemTableEh, wwdbdatetimepicker, Mask, wwdbedit, Wwdotdot,
  Wwdbcomb, DBCtrlsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMemo, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxGridExportLink;
 type
  TForm_tree_objects = class(TForm)
    DBGridEh1: TDBGridEh;
    OD_mg1: TOracleDataSet;
    OD_mg2: TOracleDataSet;
    DS_mg1: TDataSource;
    DS_mg2: TDataSource;
    OD_dat2: TOracleDataSet;
    OD_dat1: TOracleDataSet;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    PopupMenu1: TPopupMenu;
    OD_empty: TOracleDataSet;
    N1: TMenuItem;
    OD_spk: TOracleDataSet;
    OD_level: TOracleDataSet;
    OD_levelNAME: TStringField;
    DS_org: TDataSource;
    OD_org: TOracleDataSet;
    DS_oper: TDataSource;
    OD_oper: TOracleDataSet;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    OD_tree_objects: TOracleDataSet;
    OD_tree_objectsID: TFloatField;
    OD_tree_objectsMAIN_ID: TFloatField;
    OD_tree_objectsNAME: TStringField;
    OD_tree_objectsREU: TStringField;
    OD_tree_objectsKUL: TStringField;
    OD_tree_objectsND: TStringField;
    OD_tree_objectsTREST: TStringField;
    OD_tree_objectsSTREET: TStringField;
    OD_tree_objectsND1: TStringField;
    OD_tree_objectsNAME_TR: TStringField;
    OD_tree_objectsSEL: TFloatField;
    DataSetDriverEh2: TDataSetDriverEh;
    MemTableEh2: TMemTableEh;
    DS_tree_objects: TDataSource;
    OD_levelLEVEL_ID: TFloatField;
    OD_tree_objectsOBJ_LEVEL: TFloatField;
    Panel3: TPanel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    CheckBox5: TCheckBox;
    Edit1: TEdit;
    Label7: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    GroupBox5: TGroupBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    GroupBox7: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Splitter1: TSplitter;
    OD_org_olap: TOracleDataSet;
    OD_usl_olap: TOracleDataSet;
    OD_trest_olap: TOracleDataSet;
    OD_reu_olap: TOracleDataSet;
    OD_status_olap: TOracleDataSet;
    OD_sch_olap: TOracleDataSet;
    OD_psch_olap: TOracleDataSet;
    OD_spul_olap: TOracleDataSet;
    OD_uslm_olap: TOracleDataSet;
    OD_spr_params: TOracleDataSet;
    DS_spr_params: TDataSource;
    wwDBGrid1: TwwDBGrid;
    GroupBox4: TGroupBox;
    wwDBLookupCombo3: TwwDBLookupCombo;
    GroupBox6: TGroupBox;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBComboBox1: TwwDBComboBox;
    OD_spr_paramsID: TFloatField;
    OD_spr_paramsGR_NAME: TStringField;
    OD_spr_paramsPARNAME: TStringField;
    OD_spr_paramsCDTP: TFloatField;
    OD_spr_paramsVAL: TStringField;
    OD_spr_paramsPARN1: TFloatField;
    OD_spr_paramsPARVC1: TStringField;
    OD_spr_paramsPARDT1: TDateTimeField;
    OD_org2_olap: TOracleDataSet;
    OD_tree_objectsBANK_CD: TStringField;
    OD_tree_objectsFK_HOUSE: TFloatField;
    OD_nabor_lsk: TOracleDataSet;
    DS_nabor_lsk: TDataSource;
    CheckBox1: TCheckBox;
    OD_c_kart_pr: TOracleDataSet;
    DS_c_kart_pr: TDataSource;
    OD_tree_objectsHOUSE_MG: TStringField;
    OD_detail: TOracleDataSet;
    DS_detail: TDataSource;
    pnl1: TPanel;
    cxm1: TcxMemo;
    OD_tree_objectsEXIST1: TFloatField;
    dlgOpen1: TOpenDialog;
    OD_lsk_tp_olap: TOracleDataSet;
    procedure saveXML;
    procedure saveMap;
    procedure SetXMLDocNode2;
    procedure LoadCube(action_: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormEndDock(Sender, Target: TObject; X, Y: Integer);
    procedure FormStartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure setAccess(rep_: String; have_current_: Integer;
      two_periods_: Integer);
    procedure Edit2Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure prepData;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SetSize(var_: Integer);
    procedure LoadSpr;
    procedure MemTableEh2AfterScroll(DataSet: TDataSet);
    procedure MemTableEh2SetFieldValue(MemTable: TCustomMemTableEh;
      Field: TField; var Value: Variant);
    procedure FormPaint(Sender: TObject);
    procedure edit_par;
    procedure wwDBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBComboBox1DropDown(Sender: TObject);
    procedure wwDBComboBox1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure setpsch;
    procedure exp;
    procedure exp_uszn;
    procedure exp_gis1;
    procedure imp;
    procedure imp_gis_MKD_10;
    procedure imp_gis_LS;
    procedure imp_gis_ELS;
  private
    Doc, Doc1 : IXMLDomDocument;
    root, root1 : IXMLDOMElement;
    flag_: Integer;
    flag2_: Integer;
    obj_: string;
    objexcel_: string;
    err_, issum_, iscnt_, ishead_, isoem_: Integer;
    fldsum_: String;
    curX_, curY_: Integer;
  public
    l_rep_name, l_frm_name, rep_cd_, period_str_, period_str2_, strr_, fname_, frx_fname_: String;
    allow_, max_level_, can_detail_, rep_id_, sel_many_, //have_date_,
      rep_type_, two_periods_,
      first_time_, expand_row_, expand_col_,
      show_paychk_, show_sel_org_, show_sel_oper_, show_deb_: Integer;
    OD_reports2: TOracleDataset;
    Cube_, Map_: TComponent;
    fr_: TComponent;
  end;

var
  Form_tree_objects: TForm_tree_objects;

implementation

uses Unit_Form_olap, Unit_Mainform, Unit_status, DM_module1,
  Unit_tree_par_edit, Unit_tarif_usl, ObjPar;

{$R *.dfm}

procedure TForm_tree_objects.prepData;
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  OD_data.Active:=false;
  //Открываем зависимые датасеты, для отчетов
  //форма для контроля тарифов
  if (rep_cd_ = '78') and (MemTableEh2.FieldByName('obj_level').AsInteger = 3) then
    begin
    OD_nabor_lsk.Master:=OD_data;
    OD_nabor_lsk.Active:=True;
    end
    else if (rep_cd_ <> '78') or ((rep_cd_ = '78') and (MemTableEh2.FieldByName('obj_level').AsInteger <> 3)) then
    begin
    //необходимо явно убирать Master, иначе датасет продолжает ссылаться, с ошибкой...
    OD_nabor_lsk.Master:=nil;
    OD_nabor_lsk.Active:=False;
    end;

  //Открываем зависимые датасеты, для отчетов
  //отчет - реестр для УСЗН
  if (rep_cd_ = '79') then
    begin
    OD_c_kart_pr.Master:=OD_data;
    OD_c_kart_pr.Active:=True;
    end
    else if (rep_cd_ <> '78') then
    begin
    //необходимо явно убирать Master, иначе датасет продолжает ссылаться, с ошибкой...
    OD_c_kart_pr.Master:=nil;
    OD_c_kart_pr.Active:=False;
    end;

  //Открываем зависимые датасеты, для отчетов
  //отчет - список для администрации
  if (rep_cd_ = '83') then
    begin
    OD_detail.Active:=False;
    OD_detail.Master:=OD_data;
    OD_detail.Active:=True;
    end
    else if (rep_cd_ <> '83') then
    begin
    //необходимо явно убирать Master, иначе датасет продолжает ссылаться, с ошибкой...
    OD_detail.Master:=nil;
    OD_detail.Active:=False;
    end;

  if wwDBLookupCombo4.LookupValue <> '' then
    OD_data.SetVariable('org_', wwDBLookupCombo4.LookupValue)
    else
    OD_data.SetVariable('org_', null);

  if wwDBLookupCombo3.LookupValue <> '' then
    OD_data.SetVariable('oper_', wwDBLookupCombo3.LookupValue)
    else
    OD_data.SetVariable('oper_', null);


  //Возможность детализации
  if can_detail_ = 1 then
    OD_data.SetVariable('det_', StrToInt(wwDBLookupCombo2.LookupValue));
  if rep_cd_ = '56' then
    OD_data.SetVariable('spk_id_', StrToInt(wwDBLookupCombo1.LookupValue));

  OD_data.SetVariable('cd_', rep_cd_);

  {  if rep_cd_ = '69' then
  begin
  //Задолжники
    OD_data.SetVariable('n1_', ComboBox2.ItemIndex);
    if wwDBEdit1.Text <> '' then
      OD_data.SetVariable('n2_', StrToInt(wwDBEdit1.Text))
    else
      OD_data.SetVariable('n2_', 0);
  end;}

{  if rep_cd_ = '14' then
  begin
    //показывать ли промежуточное сальдо по месяцам
    if CheckBox2.Checked = true then
    begin
      OD_data.SetVariable('show_sal_', 1);
    end
    else
    begin
      OD_data.SetVariable('show_sal_', 0);
    end;
  end;}

{  if rep_cd_ = '54' then
  begin
    //учитывать ли текущую оплату в ведомости задолжники OLAP
    //используем ту же show_sal_
    if CheckBox3.Checked = true then
    begin
      OD_data.SetVariable('show_sal_', 1);
    end
    else
    begin
      OD_data.SetVariable('show_sal_', 0);
    end;
  end;}

  if CheckBox5.Checked = true then
  begin
    OD_data.SetVariable('mg_', null);
    OD_data.SetVariable('mg1_', null);
    OD_data.SetVariable('dat_',
      DBLookupComboBox5.KeyValue);
    OD_data.SetVariable('dat1_',
      DBLookupComboBox6.KeyValue);
  end
  else
  begin
    OD_data.SetVariable('dat_', null);
    OD_data.SetVariable('dat1_', null);
    OD_data.SetVariable('mg_',
      DBLookupComboBox5.KeyValue);
    if two_periods_ = 1 then
      OD_data.SetVariable('mg1_',
        DBLookupComboBox6.KeyValue)
    else
      OD_data.SetVariable('mg1_',
        DBLookupComboBox5.KeyValue);
  end;

{  if have_date_ = 1 then
  begin
    OD_data.SetVariable('dat2_',
       wwDBDateTimePicker1.Date);
    OD_data.SetVariable('dat3_',
       wwDBDateTimePicker2.Date);
  end;}

  if MemTableEh2.FieldByName('obj_level').AsInteger = 3 then
  begin
  if sel_many_ = 0 then
  begin
  //Старый вызов процедуры (выбор одного объекта)
    OD_data.SetVariable('reu_',
      MemTableEh2.FieldByName('reu').AsString);
    OD_data.SetVariable('kul_',
      MemTableEh2.FieldByName('kul').AsString);
    OD_data.SetVariable('nd_',
      MemTableEh2.FieldByName('nd').AsString);
    OD_data.SetVariable('p_house',
      MemTableEh2.FieldByName('fk_house').AsInteger);
    OD_data.SetVariable('var_', 3);
  end;
  end
  else if MemTableEh2.FieldByName('obj_level').AsInteger = 2 then
  begin
  if sel_many_ = 0 then
  begin
  //Старый вызов процедуры (выбор одного объекта)
    OD_data.SetVariable('reu_',
      MemTableEh2.FieldByName('reu').AsString);
    OD_data.SetVariable('var_', 2);
  end;
  end
  else if MemTableEh2.FieldByName('obj_level').AsInteger = 1 then
  begin
  if sel_many_ = 0 then
  begin
  //Старый вызов процедуры (выбор одного объекта)
    OD_data.SetVariable('trest_',
      MemTableEh2.FieldByName('trest').AsString);
    OD_data.SetVariable('var_', 1);
  end;
  end
  else if MemTableEh2.FieldByName('obj_level').AsInteger = 0 then
  begin
    OD_data.SetVariable('var_', 0);
  end;

//  OD_data.Active:=false;
  OD_data.Active:=true;
  Form_status.Close;
end;

procedure TForm_tree_objects.saveXML;
begin
  OD_reports2:=TOracleDataset.Create(nil);
  with OD_reports2 do
  begin
    Session:=OD_dat1.Session;
    SQL.Text:='select l.rowid, l.xmltext from scott.rep_levels l '+
        'where l.fk_rep_id=:id_ and l.level_id=:level_id_';
    //Если поменять ниже две строчки местами, нарушиться логика программы
    //Я в шоке!
    DeclareVariable('id_', otInteger);
    DeclareVariable('level_id_', otInteger);

    SetVariable('id_', Form_tree_objects.rep_id_);

    //Может ли детализироваться?
    if can_detail_ = 0 then
      SetVariable('level_id_', MemTableEh2.FieldByName('obj_level').AsInteger)
    else
      SetVariable('level_id_', StrToInt(wwDBLookupCombo2.LookupValue));
    Open;

    Active:=true;
  end;
  Doc := CreateComObject(CLASS_DOMDOCUMENT30) as IXMLDomDocument;
  Doc.async := False;

  Map_ := Form_olap.FindComponent('PivotMap'+rep_cd_);
  root := Doc.createElement('PivotMap.'+TPivotMap(Map_).Name);
  TPivotMap(Map_).SavetoXML(root, True);
  Doc.appendChild(root);

  with OD_reports2 do
  begin
    Edit;
    FieldByName('xmltext').AsString:=Doc.xml;
    Post;
    Active:=false;
    Close;
    Free;
  end;
end;

procedure TForm_tree_objects.saveMap;
begin
  Doc1 := CreateComObject(CLASS_DOMDOCUMENT30) as IXMLDomDocument;
  Doc1.async := False;

  root1 := Doc1.createElement('PivotMap.'+TPivotMap(Map_).Name);
  try
    TPivotMap(Map_).SavetoXML(root1, True);
  except
  end;

end;

Procedure TForm_tree_objects.SetXMLDocNode2;
var
   Node, Node2, NodeChild2: IXMLDOMNode;
   a: Integer;
begin
   Node := root1.SelectSingleNode('//Rows');
   with Node do
   while hasChildNodes do
     removeChild( firstChild );

   Node2 := root.SelectSingleNode('//Rows');
   for a := 0 to Node2.childNodes.length-1 do
   begin
     NodeChild2 := Node2.childNodes.item[0];
     Node.appendChild(NodeChild2);
   end;
end;

procedure TForm_tree_objects.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_tree_objects.LoadCube(action_: Integer);
var
  str1_: String;
begin
  //Путь выгрузки
  str1_:=DataModule1.OraclePackage1.CallStringFunction
       ('scott.Utils.get_str_param', ['Путь1']);
 if allow_ = 0 then
  begin
   exit; //выполняется загрузка куба
  end;

 //Сохраняем выбор пользователя объектов для отчёта (домов в частности)
 if MemTableEh2.State <> dsBrowse then
    MemTableEh2.Post;

 if (two_periods_ <> 2) and ((DBLookupComboBox5.KeyValue = null) or
   ((DBLookupComboBox6.KeyValue = null) and (two_periods_ = 1))) then
 begin
  msg2('Не выбран период отчета!','Внимание!',
    MB_OK+MB_ICONSTOP);
  SetSize(1);
  Exit;
 end;

 if CheckBox5.Checked = True then
 begin
   //период - даты
   if DBLookupComboBox5.KeyValue = DBLookupComboBox6.KeyValue then
      period_str_:='за '+OD_dat1.FieldByName('mg1').AsString
    else
      period_str_:='за период с '+OD_dat1.FieldByName('mg1').AsString+' по '+
         OD_dat2.FieldByName('mg1').AsString;
 end
 else
 begin
   //период - месяцы
   if DBLookupComboBox5.KeyValue = DBLookupComboBox6.KeyValue then
      period_str_:='за '+OD_mg1.FieldByName('mg2').AsString
   else if DBLookupComboBox6.KeyValue = null then
      period_str_:='за '+OD_mg1.FieldByName('mg2').AsString
   else
      period_str_:='за период с '+OD_mg1.FieldByName('mg1').AsString+' по '+
         OD_mg2.FieldByName('mg1').AsString;
 end;

 if (rep_cd_='56') and (wwDBLookupCombo1.LookupValue = '')
    then
 begin
  msg2('Не выбрана категория льготы!','Внимание!',
    MB_OK+MB_ICONSTOP);
  SetSize(1);
  Exit;
 end;


 if ((DBLookupComboBox5.KeyValue >
   DBLookupComboBox6.KeyValue) and (two_periods_ = 1)) then
 begin
  msg2('Некорректный период отчета!','Внимание!',
    MB_OK+MB_ICONSTOP);
  SetSize(1);
  Exit;
 end;

 if (can_detail_ =1) and (wwDBLookupCombo2.LookupValue='') then
 begin
   msg2('Не установлен уровень детализации!','Внимание!',
    MB_OK+MB_ICONSTOP);
   SetSize(1);
   Exit;
 end;

  OD_reports2:=TOracleDataset.Create(nil);
  with OD_reports2 do
  begin
  Session:=OD_dat1.Session;
  SQL.Text:='select l.rowid, l.xmltext, '+
      'r.name, nvl(r.fk_type,0) as fk_type '+
      'from scott.rep_levels l, scott.reports r '+
      'where r.id=:id_ and r.id=l.fk_rep_id and l.level_id=:level_id_';
  DeclareVariable('id_', otInteger);
  DeclareVariable('level_id_', otInteger);
  try
    ClearVariables;
    SetVariable('id_', rep_id_);
    //Может ли детализироваться?
    if can_detail_ = 0 then
      SetVariable('level_id_', MemTableEh2.FieldByName('obj_level').AsInteger)
    else
      SetVariable('level_id_', StrToInt(wwDBLookupCombo2.LookupValue));
    Open;
    strr_ := FieldByName('xmltext').AsString;
  finally
    Close;
    Free;
  end;
  end;

  //поиск выбранного элемента
  if sel_many_ = 0 then
  begin
    if MemTableEh2.Locate('sel', 0, [loCaseInsensitive]) =False then
    begin
     msg2('Не найден выбранный элемент!', 'Внимание!', MB_OK+MB_ICONERROR);
     Exit;
    end;
  end;

  //Рабочая форма для вызова
  if rep_type_ =4 then
  begin
    Prepdata;
    if l_frm_name ='Form_tarif_usl' then
    begin
    with Form_tarif_usl do
    begin
      if OD_mg1.FieldByName('mg').AsString=Form_main.cur_mg_ then
      begin
      //Выбран текущий период
        mnu1.Enabled:=true;
        mnu2.Enabled:=true;
      end
      else
      begin
      //Выбран прошлый период
        mnu1.Enabled:=false;
        mnu2.Enabled:=false;
      end;
    end;

    end;
  end
  else
  begin
      Form_olap.rep_name_:=l_rep_name;
      //Отчет выполнен по оптимизированной технологии "star" (связка таблиц звездой)
      if two_periods_ =1 then
      begin
        Form_olap.Caption:=Form_olap.rep_name_+
            ' за период с '+DBLookupComboBox5.Text+' по '+DBLookupComboBox6.Text;
        Form_olap.rep_name_:=Form_olap.rep_name_+
            ' за период с '+DBLookupComboBox5.Text+' по '+DBLookupComboBox6.Text;
      end
      else
      begin
        Form_olap.Caption:=Form_olap.rep_name_+
            ' за '+DBLookupComboBox5.Text;
        Form_olap.rep_name_:=Form_olap.rep_name_+
            ' за '+DBLookupComboBox5.Text;
      end;

     //наименование Объекта в отчёте
     obj_:=''''+', по '+MemTableEh2.FieldByName('name').AsString+'''';
     if MemTableEh2.FieldByName('obj_level').AsInteger = 3 then
      objexcel_:=', по дому '+MemTableEh2.FieldByName('name').AsString
     else if MemTableEh2.FieldByName('obj_level').AsInteger in [0,1,2] then
      objexcel_:=', по Организации '+MemTableEh2.FieldByName('name').AsString;

     if (rep_type_=0) or (rep_type_=5) then
     begin
       Form_olap.Button3.Visible:=true;
     end;


     if (MemTableEh2.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_=0) then
     begin

     if FF('Form_olap', 0) =1 then
     begin
     //OLAP отчет
      Form_olap.PVDimToolBar1.Visible:=true;
      Form_olap.PVColToolBar1.Visible:=true;
      Form_olap.PVRowToolBar1.Visible:=true;
      Form_olap.PivotGrid1.Visible:=true;
      Form_olap.PVMeasureToolBar1.Visible:=true;

      Cube_ := Form_olap.FindComponent('PivotCube'+rep_cd_);
      Map_ := Form_olap.FindComponent('PivotMap'+rep_cd_);

      if action_ = 0 then
      begin
        //Загрузить данные
        TPivotCube(Cube_).Active := False;
      end
      else
      begin
        //Добавить данные
        TPivotCube(Cube_).CanUpgrade:=true;
      end;

      Form_olap.PivotGrid1.Map := TPivotMap(Map_);
      Form_olap.PVDimToolBar1.Map := TPivotMap(Map_);
      Form_olap.PVColToolBar1.Map := TPivotMap(Map_);
      Form_olap.PVRowToolBar1.Map := TPivotMap(Map_);
      Form_olap.PVMeasureToolBar1.Map := TPivotMap(Map_);

      //подготовка данных
      Form_olap.Button4.Visible:=true;
      Form_olap.Update;
      prepData;

      if OD_data.RecordCount = 0 then
          msg2('Нет информации!','Внимание!',
            MB_OK+MB_ICONSTOP)
      else
      begin
      setSize(0);
      if action_ = 0 then
        begin
          //Загрузить данные
          TPivotCube(Cube_).Active := True;
        end
        else
        begin
          //Добавить данные
          TPivotCube(Cube_).Build;
        end;
      end;

      //Раскрывать ли ветки PivotGrid-а
      if (expand_row_ = 1)  and (expand_col_ = 1) then
        Form_olap.PivotGrid1.ExpandAll(True, True)
      else if (expand_row_ = 1)  and (expand_col_ = 0) then
        Form_olap.PivotGrid1.ExpandAll(True, False)
      else if (expand_row_ = 0)  and (expand_col_ = 1) then
        Form_olap.PivotGrid1.ExpandAll(False, True)
      else if (expand_row_ = 0)  and (expand_col_ = 0) then
        Form_olap.PivotGrid1.ExpandAll(False, False);

      end;
      Form_olap.Button4.Visible:=false;
      Form_olap.Update;

      end
      else if (MemTableEh2.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_=1) then
     begin
       //Fastreport отчет
       fr_ := Form_olap.FindComponent('frxReport'+rep_cd_);

       //подготовка данных
       Form_olap.Button4.Visible:=true;
       prepData;
       Form_olap.Button4.Visible:=false;

       if OD_data.RecordCount = 0 then
       begin
          msg2('Нет информации!','Внимание!',
            MB_OK+MB_ICONSTOP);
       SetSize(1);
       end
       else
       begin
        Application.CreateForm(TForm_status, Form_status);
        Form_status.Update;
        if frx_fname_ <> '' then
        begin
          //отчет, базирующийся на одном, универсальном датасете
          fr_ := Form_olap.FindComponent('frxReport_base');
          try
            TfrxReport(fr_).LoadFromFile(Form_main.exepath_+'\'+frx_fname_, true);
          except
            msg2('Не найден файл отчета '+frx_fname_,'Внимание!',
              MB_OK+MB_ICONSTOP);
            Exit;
          end;
        end;

        if fr_ = nil then
        begin
          msg2('Не найден отчет '+'frxReport'+rep_cd_,'Внимание!',
            MB_OK+MB_ICONSTOP);
          Exit;
        end;

        //наименование Объекта в отчёте
        TfrxReport(fr_).Variables['obj_']:=obj_;

        //Установить период
        TfrxReport(fr_).Variables['period_']:=''''+period_str_+'''';

        if (rep_cd_ = '64') then
        begin
          //Установить период
          TfrxReport(fr_).Variables['dt1_']:=DataModule1.OraclePackage1.CallDateFunction
              ('scott.UTILS.getS_date_param', ['REP_DT_BR1']);;
          TfrxReport(fr_).Variables['dt2_']:=DataModule1.OraclePackage1.CallDateFunction
              ('scott.UTILS.getS_date_param', ['REP_DT_BR2']);;
        end;

        if (rep_cd_ = '73') or (rep_cd_ = '74') then
        begin
          //Установить период
          TfrxReport(fr_).Variables['dt1_']:=DataModule1.OraclePackage1.CallDateFunction
              ('scott.UTILS.getS_date_param', ['REP_DT_PROP1']);;
          TfrxReport(fr_).Variables['dt2_']:=DataModule1.OraclePackage1.CallDateFunction
              ('scott.UTILS.getS_date_param', ['REP_DT_PROP2']);;
          //Установить параметр отчета
          if DataModule1.OraclePackage1.CallIntegerFunction
               ('scott.UTILS.getS_list_param', ['REP_PROP_VAR']) = 0 then
            TfrxReport(fr_).Variables['var_']:=QuotedStr('прописанным')
          else
            TfrxReport(fr_).Variables['var_']:=QuotedStr('выписанным');
        end;

        if (rep_cd_ = '69') or (rep_cd_ = '82') then
        begin
          //Установить кол-во месяцев или рублей
          if (DataModule1.OraclePackage1.CallIntegerFunction
             ('scott.UTILS.getS_list_param', ['REP_DEB_VAR'])=0) then
            TfrxReport(fr_).Variables['txt_']:=QuotedStr(FloatToStr(DataModule1.OraclePackage1.CallFloatFunction
             ('scott.UTILS.getS_int_param', ['REP_DEB_MONTH']))+' мес')
          else
            TfrxReport(fr_).Variables['txt_']:=QuotedStr(FloatToStr(DataModule1.OraclePackage1.CallFloatFunction
             ('scott.UTILS.getS_int_param', ['REP_DEB_SUMMA']))+' руб.');
        end;

        if rep_cd_ = '61' then
        begin
          //наименование операции в отчёте
          if wwDBLookupCombo4.LookupValue='' then
          begin
            TfrxReport(fr_).Variables['oper_']:=''''+', по всем операциям'+'''';
          end
          else
          begin
            TfrxReport(fr_).Variables['oper_']:=''''+', по операции: '+wwDBLookupCombo4.Text+'''';
          end;

          //наименование организации в отчёте
          if wwDBLookupCombo3.LookupValue <> '' then
          begin
            TfrxReport(fr_).Variables['org_']:=''''+', по организации: '+wwDBLookupCombo3.Text+'''';
          end
          else
          begin
            TfrxReport(fr_).Variables['org_']:=''''+', по всем организациям'+'''';
          end;
        end;


        TfrxReport(fr_).PrepareReport(true);
        Form_status.close;
        Form_main.Panel2.Width:=0;
        TfrxReport(fr_).ShowPreparedReport;
        SetSize(1);


       if FF('Form_olap', 0) =1 then
       begin
         Form_olap.PVDimToolBar1.Visible:=false;
         Form_olap.PVColToolBar1.Visible:=false;
         Form_olap.PVRowToolBar1.Visible:=false;
         Form_olap.PivotGrid1.Visible:=false;
         Form_olap.PVMeasureToolBar1.Visible:=false;
         Form_olap.Button3.Visible:=false;
       end;
       end;

     end
     else if (MemTableEh2.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_=2) then
     begin
       //подготовка данных
       Form_olap.Button4.Visible:=true;
       prepData;
       Form_olap.Button4.Visible:=false;

       if OD_data.RecordCount = 0 then
       begin
          msg2('Нет информации!','Внимание!',
            MB_OK+MB_ICONSTOP);
          SetSize(1);
       end
       else
       begin
        Application.CreateForm(TForm_status, Form_status);
        Form_status.Update;
       //Выгрузка в DBF
        err_:=exp_to_dbf(OD_data, str1_+fname_);
        Form_status.close;
        SetSize(1);
        if err_ = 0 then
            msg2('Выгружено в '+str1_+fname_, 'Внимание', MB_OK+MB_ICONINFORMATION)
          else
            msg2('Произошли ошибки во время выгрузки файла', 'Внимание', MB_OK+MB_ICONINFORMATION);
       end;
     end
     else if (MemTableEh2.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_=3) then
     begin
       //подготовка данных
       Form_olap.Button4.Visible:=true;
       prepData;
       Form_olap.Button4.Visible:=false;

       if OD_data.RecordCount = 0 then
       begin
          msg2('Нет информации!','Внимание!',
            MB_OK+MB_ICONSTOP);
          SetSize(1);
       end
       else
       begin
        Application.CreateForm(TForm_status, Form_status);
        Form_status.Update;
       //Выгрузка в TXT
        err_:=exp_to_txt(OD_data, str1_, fname_, fldsum_, issum_, iscnt_, ishead_,
          isoem_, MemTableEh2.FieldByName('bank_cd').AsString);
        Form_status.close;
        SetSize(1);
        if err_ = 0 then
            msg2('Выгружено в '+str1_+fname_, 'Внимание', MB_OK+MB_ICONINFORMATION)
          else
            msg2('Произошли ошибки во время выгрузки файла', 'Внимание', MB_OK+MB_ICONINFORMATION);
       end;
     end

     else if (MemTableEh2.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_=5) then
     begin
       //подготовка данных
       Form_olap.Button4.Visible:=true;
       prepData;
       Form_olap.Button4.Visible:=false;

       if OD_data.RecordCount = 0 then
       begin
          msg2('Нет информации!','Внимание!',
            MB_OK+MB_ICONSTOP);
          SetSize(1);
       end
       else
       begin
        Application.CreateForm(TForm_status, Form_status);
        Form_status.Update;
        Form_olap.cxGrid1.Align:=alClient;
        Form_olap.cxGrid1.Visible:=true;
        Form_olap.cxGrid1DBTableView1.DataController.CreateAllItems(False);
        Form_olap.cxGrid1DBTableView1.OptionsView.ColumnAutoWidth:=true;
        Form_status.close;
       end;
     end

     else
     begin
        msg2('Отсутствует уровень детализации!','Внимание!',
          MB_OK+MB_ICONSTOP)
     end;
 end;
end;

procedure TForm_tree_objects.FormEndDock(Sender, Target: TObject; X,
  Y: Integer);
begin
  if Form_main.Panel2.DockClientCount = 0 then
    begin
     SetSize(0);
    end
    else
    begin
     SetSize(1);
    end;
end;

procedure TForm_tree_objects.FormStartDock(Sender: TObject;
  var DragObject: TDragDockObject);
begin
  SetSize(1);
end;

procedure TForm_tree_objects.CheckBox5Click(Sender: TObject);
begin
   DBLookupComboBox5.KeyValue := null;
   DBLookupComboBox6.KeyValue := null;
  if CheckBox5.Checked = true then
   begin
   DS_mg1.DataSet := OD_dat1;
   DS_mg2.DataSet := OD_dat2;
   end
  else
   begin
   DS_mg1.DataSet := OD_mg1;
   DS_mg2.DataSet := OD_mg2;
   end;
end;

procedure TForm_tree_objects.setAccess(rep_: String; have_current_: Integer;
    two_periods_: Integer);
begin
  OD_data.Active:=false;

  //Если форма не загружает и не загружала справочник, загрузить
  if (Form_Main.flag3_=0) and (flag2_ = 0) then
    LoadSpr;

  //установить видимость закрытого фонда
  setpsch;

  first_time_:=1;
  allow_:=1;
  Form_tree_objects.two_periods_:=two_periods_;
  Form_tree_objects.rep_cd_:=rep_;

  //Параметры отчета
  OD_reports2:=TOracleDataset.Create(nil);
  with OD_reports2 do
  begin
  Session:=OD_dat1.Session;
  SQL.Text:='select r.id, r.maxlevel, nvl(r.can_detail,0) as can_detail,'+
      'r.name, nvl(r.fk_type,0) as fk_type, nvl(r.expand_row,0) as expand_row, '+
      'nvl(r.expand_col,0) as expand_col, '+
      'nvl(r.show_sel_org,0) as show_sel_org, nvl(r.show_sel_oper,0) as show_sel_oper, '+
      'nvl(r.sel_many,0) as sel_many, '+
      'nvl(r.show_paychk,0) as show_paychk, '+
      'nvl(r.show_deb,0) as show_deb, '+
      'nvl(r.have_date,0) as have_date, '+
      'r.frx_fname, '+
      'r.fname, nvl(r.iscnt,0) as iscnt, nvl(r.issum,0) as issum, nvl(r.ishead,0) as ishead, r.fldsum, nvl(r.isoem,0) as isoem,  '+
      'r.frm_name '+
      'from scott.reports r '+
      'where r.cd=:cd_';
  DeclareVariable('cd_', otString);
  try
    ClearVariables;
    SetVariable('cd_', rep_);
    Open;
    can_detail_:=FieldByName('can_detail').AsInteger;
    max_level_:=FieldByName('maxlevel').AsInteger;
    sel_many_:=FieldByName('sel_many').AsInteger;
//    have_date_:=FieldByName('have_date').AsInteger;
    rep_type_:=FieldByName('fk_type').AsInteger;
    expand_row_:=FieldByName('expand_row').AsInteger;
    expand_col_:=FieldByName('expand_col').AsInteger;
    show_sel_org_:=FieldByName('show_sel_org').AsInteger;
    show_sel_oper_:=FieldByName('show_sel_oper').AsInteger;
    show_paychk_:=FieldByName('show_paychk').AsInteger;
    show_deb_:=FieldByName('show_deb').AsInteger;
    iscnt_:=FieldByName('iscnt').AsInteger;
    issum_:=FieldByName('issum').AsInteger;
    ishead_:=FieldByName('ishead').AsInteger;
    fldsum_:=FieldByName('fldsum').AsString;
    rep_id_:=FieldByName('id').AsInteger;
    fname_:=FieldByName('fname').AsString;
    frx_fname_:=FieldByName('frx_fname').AsString;
    isoem_:=FieldByName('isoem').AsInteger;
    //форма для вызова
    l_frm_name:=FieldByName('frm_name').AsString;
    l_rep_name:=FieldByName('name').AsString;
    //подсказка, какой отчет
    cxm1.Text:='Отчет:'+l_rep_name+' CD:'+rep_+' frx:'
       +frx_fname_+' вывод в:'+fname_;
    cxm1.Hint:=cxm1.Text;
  finally
    Close;
    Free;
  end;
  end;

  //закрыть форму - тариф по услугам, если она открыта
  //иначе - будет ошибка (так как она компонентами ссылается в
  //по-другому настроенный OD_data)
  if (l_frm_name <> 'Form_tarif_usl') and (FF('Form_tarif_usl',1)=1) then
  begin
   Form_tarif_usl.Close;
  end;

  //Открытие-закрытие необходимых форм, в зависимости от типа отчета
  if rep_type_ =4 then
  begin
    if l_frm_name ='Form_tarif_usl' then
     if FF(l_frm_name,1)=0 then
     begin
       Application.CreateForm(TForm_tarif_usl, Form_tarif_usl);
     end;
   if FF('Form_olap', 0) = 1 then
     Form_olap.Close;
  end
  else
  begin
   if FF('Form_tarif_usl',1)=1 then
     Form_tarif_usl.Close;
   if FF('Form_olap', 0) = 0 then
     Application.CreateForm(TForm_olap, Form_olap);

   //если ГИС ЖКХ, настроить кнопки
   if rep_cd_ = '94' then
    begin
     Form_olap.btn4.Visible:=true;
     Form_olap.btn2.Visible:=true;
     Form_olap.btn3.Visible:=true;
     Form_olap.chk1.Visible:=true;
    end
   else
    begin
     Form_olap.btn4.Visible:=false;
     Form_olap.btn2.Visible:=false;
     Form_olap.btn3.Visible:=false;
     Form_olap.chk1.Visible:=false;
    end;

  end;


  SetSize(1);

  MemTableEh2.Filter:='obj_level<='+inttostr(max_level_);
  MemTableEh2.Filtered:=true;

  //изменить наименование кнопки в соответствии с ф-цией отчета
  if (rep_type_ = 2) or (rep_type_ = 3) or (rep_type_ = 5) then
  begin
    Button3.Caption:='Выгрузить';
    Button2.Enabled:=false;
  end
  else
  begin
    Button3.Caption:='Выбрать';
    Button2.Enabled:=true;
  end;

  //показать/скрыть поиск по адресу при соотв. уровне детализ.
  if max_level_ >= 3 then
  begin
  Label3.Visible:=True;
  Label4.Visible:=True;
  Edit2.Visible:=True;
  Edit3.Visible:=True;
  end
  else
  begin
  Label3.Visible:=False;
  Label4.Visible:=False;
  Edit2.Visible:=False;
  Edit3.Visible:=False;
  end;

  //показать/скрыть выбор организации
  if show_sel_org_ = 1 then
  begin
//    Label10.Visible:=True;
//    wwDBLookupCombo3.Visible:=True;
    GroupBox6.Visible:=True;
  end
  else
  begin
//    Label10.Visible:=False;
//    wwDBLookupCombo3.Visible:=False;
    GroupBox6.Visible:=False;
  end;

  //показать/скрыть выбор дополнительного поля даты
{  if have_date_ = 1 then
  begin
    GroupBox1.Visible:=True;
    Label9.Visible:=True;
    Label11.Visible:=True;
    wwDBDateTimePicker1.Visible:=True;
    wwDBDateTimePicker2.Visible:=True;
  end
  else
  begin
    GroupBox1.Visible:=False;
    Label9.Visible:=False;
    Label11.Visible:=False;
    wwDBDateTimePicker1.Visible:=False;
    wwDBDateTimePicker2.Visible:=False;
  end;                                 }

  //показать/скрыть выбор операции
  if show_sel_oper_ = 1 then
  begin
    GroupBox4.Visible:=True;
//    Label8.Visible:=True;
//    wwDBLookupCombo4.Visible:=True;
  end
  else
  begin
    GroupBox4.Visible:=False;
//    Label8.Visible:=False;
//    wwDBLookupCombo4.Visible:=False;
  end;

  //Возможность детализации
  if can_detail_ = 1 then
  begin
  GroupBox5.Visible:=True;
//    Label6.Visible:=True;
//    wwDBLookupCombo2.Visible:=True;

    with OD_level do
    begin
    Active:=false;
    SetVariable('id',
      MemTableEh2.FieldByName('obj_level').AsInteger);
    SetVariable('max_level',
      max_level_);
    Active:=true;
    end;
    wwDBLookupCombo2.LookupValue:=
       MemTableEh2.FieldByName('obj_level').AsString;
  end
  else
  begin
    GroupBox5.Visible:=False;
//    Label6.Visible:=False;
//    wwDBLookupCombo2.Visible:=False;
  end;

  with OD_spr_params do
  begin
  Active:=false;
  SetVariable('cd_', rep_);
  Active:=true;
  end;
  if OD_spr_params.RecordCount=0 then
     GroupBox1.Visible:=False
   else
     GroupBox1.Visible:=True;


  //два периода в отчёте (с ... по)
  if two_periods_ = 1 then
  begin
    DBLookupComboBox6.Visible:=true;
    Label1.Caption:='С';
    Label2.Visible:=true;
    DBLookupComboBox5.ListField:='MG1';
  end
  else
  begin
    DBLookupComboBox6.Visible:=false;
    Label1.Caption:='За';
    Label2.Visible:=false;
    DBLookupComboBox5.ListField:='MG2';
  end;

  //для оборотки показываем галку промежуточного сальдо
{  if rep_ = '14' then
    CheckBox2.Visible:=True
  else
    CheckBox2.Visible:=False;}

  //для задолжников OLAP показываем галку учит.тек.опл
{  if show_paychk_ = 1 then
    CheckBox3.Visible:=True
  else
    CheckBox3.Visible:=False;}

  //для задолжников FR показываем условие выборки задолжности
{  if show_deb_ = 1 then
    GroupBox3.Visible:=True
  else
    GroupBox3.Visible:=False;}

  //Списки льготников
  if rep_ = '56' then
  begin
    GroupBox7.Visible:=True;
//    wwDBLookupCombo1.Visible:=True;
//    Label5.Visible:=True;
    OD_spk.Active:=True;
  end
  else
  begin
    GroupBox7.Visible:=False;
//    wwDBLookupCombo1.Visible:=False;
//    Label5.Visible:=False;
    OD_spk.Active:=False;
  end;

  if have_current_ = 1 then
  begin
    CheckBox5.Enabled:=true;
  end
  else
  begin
    CheckBox5.Enabled:=false;
    CheckBox5.Checked:=false;
  end;

  with OD_mg1 do
  begin
    active:=false;
    SetVariable('id_', rep_id_);
    active:=true;
  end;

  with OD_mg2 do
  begin
    active:=false;
    SetVariable('id_', rep_id_);
    active:=true;
  end;

  with OD_dat1 do
  begin
    active:=false;
    SetVariable('id_', rep_id_);
    active:=true;
  end;

  with OD_dat2 do
  begin
    active:=false;
    SetVariable('id_', rep_id_);
    active:=true;
  end;

  with OD_spr_params do
  begin
    active:=false;
//    SetVariable('id_', rep_id_);
    active:=true;
  end;

  Panel1.AutoSize:=True;
end;

procedure TForm_tree_objects.FormCreate(Sender: TObject);
begin
  //подготовка справочника к работе
  flag_:=0;
  allow_:=1;
  OD_oper.Active:=True;
  OD_org.Active:=True;
  OD_org_olap.Active:=True;
  OD_org2_olap.Active:=True;
  OD_usl_olap.Active:=True;
  OD_uslm_olap.Active:=True;
  OD_trest_olap.Active:=True;
  OD_reu_olap.Active:=True;
  OD_status_olap.Active:=True;
  OD_sch_olap.Active:=True;
  OD_psch_olap.Active:=True;
  OD_spul_olap.Active:=True;
  OD_lsk_tp_olap.Active:=True;
end;

procedure TForm_tree_objects.BitBtn1Click(Sender: TObject);
begin
  Form_main.Panel2.Width:=4;
end;

procedure TForm_tree_objects.Edit2Change(Sender: TObject);
var
  sqlStr: String;
begin
    sqlStr:='obj_level<='+inttostr(max_level_);
    if (Edit1.Text = '') and (Edit2.Text = '') and (Edit3.Text = '') then
    begin
      MemTableEh2.TreeList.FullCollapse();
    end
    else
    begin
      if (Edit1.Text <> '') then
      begin
        sqlStr:=sqlStr+' and (name_tr LIKE ''%'+AnsiUpperCase(Edit1.Text)+'%'')';
      end;

      if (Edit2.Text <> '') then
      begin
        sqlStr:=sqlStr+' and (street LIKE ''%'+AnsiUpperCase(Edit2.Text)+'%'')';
      end;

      if (Edit3.Text <> '') then
      begin
        sqlStr:=sqlStr+'and (nd1 LIKE ''%'+AnsiUpperCase(Edit3.Text)+'%'')';
      end;
      MemTableEh2.TreeList.FullExpand();
    end;
      MemTableEh2.Filter:=sqlStr;
      MemTableEh2.Filtered:=true;
end;

procedure TForm_tree_objects.N1Click(Sender: TObject);
begin
  MemTableEh2.TreeList.FullCollapse;
end;

procedure TForm_tree_objects.Button2Click(Sender: TObject);
begin
  LoadCube(1);
end;

procedure TForm_tree_objects.Button3Click(Sender: TObject);
begin
  LoadCube(0);
end;

procedure TForm_tree_objects.SetSize(var_: Integer);
begin
  //Если форма всё еще загружает справочник, выйти
  if flag2_ <> 0 then
  begin
    msg2('Идёт загрузка справочников, ждите', '', MB_OK+MB_ICONINFORMATION);
    Exit;
  end;

  //Размер панели дерева объектов
  if var_=1 then
    Form_Main.Panel2.Width:=340
  else if var_=0 then
    Form_Main.Panel2.Width:=2
  else if var_=2 then
  begin
    if Form_Main.Panel2.Width <= 2 then
      Form_Main.Panel2.Width:=340
    else
    Form_Main.Panel2.Width:=2;
  end;
end;

procedure TForm_tree_objects.LoadSpr;
begin
  //флаг загрузки справочников
  flag2_:=1;
  Panel2.Visible:=True;
  Update;
  DataModule1.OraclePackage1.CallProcedure('scott.utils.prep_users_tree',
   [parNone]);

  Panel2.Visible:=False;

  //сбросить флаг загрузки справочников
  flag2_:=0;
  OD_data.Active:=false;
  //Справочники загружены
  Form_Main.flag3_:=1;
end;

procedure TForm_tree_objects.MemTableEh2AfterScroll(DataSet: TDataSet);
var
  str_: String;
begin
  if FF('Form_tree_objects', 0) = 1 then
  begin
    if (Form_tree_objects.can_detail_ = 1) then
    begin
    str_:=wwDBLookupCombo2.LookupValue;
    with OD_level do
    begin
    Active:=false;
    SetVariable('id',
      MemTableEh2.FieldByName('OBJ_LEVEL').AsInteger);
    Active:=true;
    SearchRecord('level_id', StrToInt(str_),
      [srFromBeginning]);
    wwDBLookupCombo2.LookupValue:=
       FieldByName('level_id').AsString;
    end;
    end;
  end;
end;

procedure sel_tree_obj(trnode: TMemRecViewEh; sel_: Integer);
var
  a: Integer;
begin
  //Рекурсивная функция отметки всех нисходящих по иерархии объектов
  for a:=0 to trnode.NodesCount-1 do
  begin
    trnode.NodeItems[a].Rec.DataValues['sel', dvvCurValueEh]:=sel_;
    sel_tree_obj(trnode.NodeItems[a], sel_);
  end;
end;

procedure desel_all_obj(tmem: TMemTableEh; id_: Integer);
var
  a: Integer;
begin
  //функция снятия отметки всех объектов
  for a:=0 to tmem.rec.RecordsList.Count-1 do
  begin
    if tmem.rec.RecordsList.Rec[a].DataValues['id', dvvCurValueEh] <> id_ then
      tmem.rec.RecordsList.Rec[a].DataValues['sel', dvvCurValueEh]:=1;
//    ShowMessage(tmem.rec.RecordsList.Rec[a].DataValues['name', dvvCurValueEh]);
  end;
end;

procedure TForm_tree_objects.MemTableEh2SetFieldValue(
  MemTable: TCustomMemTableEh; Field: TField; var Value: Variant);
begin
  if flag_ = 0 then
  begin
  flag_:=1;
    //Обновить само значение в поле
    MemTableEh2.FieldByName('sel').AsInteger:=VarAsType(Value, varInteger);
    if Form_tree_objects.sel_many_ <> 0 then
    begin
      //Обновить значения в дочерних объектах
      sel_tree_obj(MemTableEh2.TreeNode, VarAsType(Value, varInteger));
    end
    else
    begin
      //Обновить значения в во всех объектах (деселект всех)
      desel_all_obj(MemTableEh2, MemTableEh2.FieldByName('id').AsInteger);
    end;
    DBGridEh1.Refresh;
  flag_:=0;
  end;
end;

procedure TForm_tree_objects.exp;
var
   Excel : OleVariant;
   i: Integer;
begin
//Экспорт в Excel
  if (rep_type_ = 1) or (rep_type_ = 0) then
  begin
    //из OLAP
    Excel := CreateOleObject('Excel.Application');
    Form_olap.PivotGrid1.ExportToExcel(Excel, true, true, true,
      Form_olap.rep_name_+objexcel_);
    i:=Excel.WorkBooks[1].WorkSheets[1].UsedRange.Rows.Count;
    if DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.Utils.get_int_param', ['REP_OLAP_SIGN_DIR']) = 1 then
    begin
      Excel.WorkBooks[1].WorkSheets[1].Cells[i+3, 3]:=
        DataModule1.OD_rkc.FieldByName('head_name').AsString+ ' _________________/'+
        DataModule1.OD_rkc.FieldByName('manager').AsString;
    end;
    Excel.Visible:=true;
  end
  else if (rep_cd_ = '92') then
  begin
    //выгрузка в УСЗН
    exp_uszn;
  end
  else if (rep_cd_ = '94') then
  begin
    //выгрузка Шаблон импорта ЛС-8.7.0.1 для ГИС ЖКХ
    exp_gis1;
  end;

end;

procedure TForm_tree_objects.imp;
begin

end;

//загрузка шаблона Лиц.счетов в Директ, после получения от ГИС ЖКХ
procedure TForm_tree_objects.imp_gis_LS;
var
   lsXL: variant;
   path, houseFname: String;
   a, err: Integer;
   elsk, lsk: string;
begin
  // Обьект EXCEL
  lsXL := CreateOleObject('Excel.Application');
  //найти файл шаблона
  dlgOpen1.InitialDir:='\temp\';
  dlgOpen1.FileName := '';
  dlgOpen1.Title:='Выберите файл шаблона импорта Лиц.счетов - Результат';
  dlgOpen1.Filter := '*.xl* файлы (*.xl*)|*.xl*|Все файлы (*.*)|*.*';
  dlgOpen1.FilterIndex:=1;
  dlgOpen1.Execute;

  Form_olap.cxm1.Lines.Clear;
  if Form_olap.chk1.Checked then
    Form_olap.cxm1.visible:=true
  else
    Form_olap.cxm1.visible:=false;

  if dlgOpen1.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    Form_olap.cxm1.Lines.Add('Обрабатывается файл:'+dlgOpen1.FileName);
  end;

  houseFname:=ExtractFileName(dlgOpen1.FileName);
  path:=ExtractFilePath(dlgOpen1.FileName);
  lsXL.WorkBooks.Open(path+houseFname);


  a:=3;
  //обработка списка Л.С.
  while true do
  begin
    //Единый лицевой счет
    elsk:=lsXL.WorkBooks[1].WorkSheets[1].Cells[a, 2]; // странно, был 21 ред.27.09.17
    //Узнать лиц.счет (lsk)
    lsk:=lsXL.WorkBooks[1].WorkSheets[1].Cells[a, 1];   // странно, был 2 ред.27.09.17
    if elsk <> '' then
    begin
      //если заполнен единый л.с.
      //проставить ELSK в базу Директа
      err:=DataModule1.OraclePackage1.CallIntegerFunction
               ('scott.C_KART.set_elsk',
                [lsk, elsk]);
      if err=0 then
        Form_olap.cxm1.Lines.Add('По лиц.счету:'+lsk+' установлен ЕЛСК:'+elsk)
      else
        Form_olap.cxm1.Lines.Add('По лиц.счету:'+lsk+' НЕ установлен ЕЛСК:'+elsk);

    end
    else if lsk = '' then
      Break;
    a:=a+1;
  end;
  DataModule1.OracleSession1.Commit;
  lsXL.Quit;
  lsXL:=Unassigned;

  Form_olap.cxm1.Lines.Add('Обработан файл:'+dlgOpen1.FileName);
  msg2('Данные обработаны!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
end;

//загрузка Лиц.счетов в Директ, после получения выгрузки от ГИС ЖКХ
procedure TForm_tree_objects.imp_gis_ELS;
var
   lsXL: variant;
   path, houseFname: String;
   a, err: Integer;
   elsk, lsk: string;
begin
  // Обьект EXCEL
  lsXL := CreateOleObject('Excel.Application');
  //найти файл шаблона
  dlgOpen1.InitialDir:='\temp\';
  dlgOpen1.FileName := '';
  dlgOpen1.Title:='Выберите файл Помещения и ЕЛС';
  dlgOpen1.Filter := '*.xl* файлы (*.xl*)|*.xl*|Все файлы (*.*)|*.*';
  dlgOpen1.FilterIndex:=1;
  dlgOpen1.Execute;

  Form_olap.cxm1.Lines.Clear;
  if Form_olap.chk1.Checked then
    Form_olap.cxm1.visible:=true
  else
    Form_olap.cxm1.visible:=false;

  if dlgOpen1.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    Form_olap.cxm1.Lines.Add('Обрабатывается файл:'+dlgOpen1.FileName);
  end;

  houseFname:=ExtractFileName(dlgOpen1.FileName);
  path:=ExtractFilePath(dlgOpen1.FileName);
  lsXL.WorkBooks.Open(path+houseFname);


  a:=2;
  //обработка списка Л.С.
  while true do
  begin
    //Единый лицевой счет
    elsk:=lsXL.WorkBooks[1].WorkSheets[1].Cells[a, 2];
    //Узнать лиц.счет (lsk)
    lsk:=lsXL.WorkBooks[1].WorkSheets[1].Cells[a, 1];
    if elsk <> '' then
    begin
      //если заполнен единый л.с.
      //проставить ELSK в базу Директа
      err:=DataModule1.OraclePackage1.CallIntegerFunction
               ('scott.C_KART.set_elsk',
                [lsk, elsk]);
      if err=0 then
        Form_olap.cxm1.Lines.Add('По лиц.счету:'+lsk+' установлен ЕЛСК:'+elsk)
      else
        Form_olap.cxm1.Lines.Add('По лиц.счету:'+lsk+' НЕ установлен ЕЛСК:'+elsk);

    end
    else if lsk = '' then
      Break;
    a:=a+1;
  end;
  DataModule1.OracleSession1.Commit;
  lsXL.Quit;
  lsXL:=Unassigned;

  Form_olap.cxm1.Lines.Add('Обработан файл:'+dlgOpen1.FileName);
  msg2('Данные обработаны!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
end;

//загрузка шаблона МКД в Директ, после правки в УК - 10 версия
procedure TForm_tree_objects.imp_gis_MKD_10;
var
   houseXL: variant;
   path, houseFname: String;
   a, b: Integer;
   entryDtS, houseAdr, entryAdr, kwAdr, kwNum, houseGUID: string;
   houseKlsk, entryKlsk, entryNum, entryEt, kwEntry, err: Integer;
   entryDt: TDateTime;
   flag: bool;
begin

  // Обьект EXCEL
  houseXL := CreateOleObject('Excel.Application');

  //найти файл шаблона
  dlgOpen1.InitialDir:='\temp\';
  dlgOpen1.FileName := '';
  dlgOpen1.Title:='Выберите файл шаблона импорта МКД';
  dlgOpen1.Filter := '*.xl* файлы (*.xl*)|*.xl*|Все файлы (*.*)|*.*';
  dlgOpen1.FilterIndex:=1;
  dlgOpen1.Execute;

  Form_olap.cxm1.Lines.Clear;
  if Form_olap.chk1.Checked then
    Form_olap.cxm1.visible:=true
  else
    Form_olap.cxm1.visible:=false;

  if dlgOpen1.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    Form_olap.cxm1.Lines.Add('Обрабатывается файл:'+dlgOpen1.FileName);
  end;

  b:=3;
  houseFname:=ExtractFileName(dlgOpen1.FileName);
  path:=ExtractFilePath(dlgOpen1.FileName);
  houseXL.WorkBooks.Open(path+houseFname);

  try
  //обработка параметров домов
  while true do
  begin
    houseAdr:=houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 1];
    if houseAdr ='' then
      Break;
    houseGUID:=houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 2];
    if (houseGUID <> '') then
    begin
      Form_olap.cxm1.Lines.Add('Найден GUID дома:'+houseGUID);
      houseKlsk:=DataModule1.OraclePackage1.CallFloatFunction
               ('scott.p_houses.get_klsk_by_guid',
                 [houseGUID]);
      Form_olap.cxm1.Lines.Add('Найден klsk дома:'+IntToStr(houseKlsk));
      if houseKlsk = -1 then
      begin
        Form_olap.cxm1.Lines.Add('ОШИБКА: По указанному GUID '+houseGUID+', не найден дом!');
      end
      else
      begin
      //дом найден, проставить параметры
      setStrIdPar(houseKlsk, '', 'Состояние', houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 4]);
      Form_olap.cxm1.Lines.Add('Добавлен параметр Состояние');
      setNumPar(houseKlsk, '', 'Общая площадь здания', houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 5]);
      Form_olap.cxm1.Lines.Add('Добавлен параметр Общая площадь здания');
      //setNumPar(houseKlsk, '', 'Общ.пл.жил.пом.по пасп.', houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 6]);
      //Form_olap.cxm1.Lines.Add('Добавлен параметр Общ.пл.жил.пом.по пасп.');
      setNumPar(houseKlsk, '', 'Год ввода в экспл.', houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 6]);
      Form_olap.cxm1.Lines.Add('Добавлен параметр Год ввода в экспл.');
      setNumPar(houseKlsk, '', 'Этажность', houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 7]);
      Form_olap.cxm1.Lines.Add('Добавлен параметр Этажность');
      setNumPar(houseKlsk, '', 'Кол-во подземных этажей', houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 8]);
      Form_olap.cxm1.Lines.Add('Добавлен параметр Кол-во подземных этажей');
      setStrPar(houseKlsk, '', 'Кадаст.номер', houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 12]);
      Form_olap.cxm1.Lines.Add('Добавлен параметр Кадаст.номер');

      //найти на другом листе подъезды этого дома, попытаться создать их, или обновить по ним информацию
      a:=3;
      while true do
      begin
        entryAdr:=houseXL.WorkBooks[1].WorkSheets[7].Cells[a, 1];
        if entryAdr ='' then
          Break;
        if houseAdr = entryAdr then
        begin
          entryNum:=houseXL.WorkBooks[1].WorkSheets[7].Cells[a, 2];
          entryDtS:=houseXL.WorkBooks[1].WorkSheets[7].Cells[a, 4];
          entryDt:=StrToDateTime(entryDtS);

          entryEt:=houseXL.WorkBooks[1].WorkSheets[7].Cells[a, 3];
          entryKlsk:=DataModule1.OraclePackage1.CallIntegerFunction
                   ('scott.p_vvod.create_vvod_by_house_klsk',
                     [houseKlsk, entryNum]);
          Form_olap.cxm1.Lines.Add('Найден klsk подъезда:'+IntToStr(entryKlsk)+' номер:'+IntToStr(entryNum));
          setNumPar(entryKlsk, '', 'Этажность', entryEt);
          Form_olap.cxm1.Lines.Add('Добавлен параметр Этажность');
          setDtPar(entryKlsk, '', 'Дата постройки', entryDt);
          Form_olap.cxm1.Lines.Add('Добавлен параметр Дата постройки');
        end;

        a:=a+1;
      end;

      //найти на другом листе помещения этого дома, обновить по ним информацию
      a:=3;
      flag:=false;
      while true do
      begin
        kwAdr:=houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 1];
        if kwAdr ='' then
          Break;
        if houseAdr = kwAdr then
        begin
          flag:=true;
          kwNum:=houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 2];
          kwEntry:=houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 3];
          Form_olap.cxm1.Lines.Add('Обрабатывается помещение:'+kwAdr+', '+kwNum);
          err:=DataModule1.OraclePackage1.CallIntegerFunction
                   ('scott.C_KART.set_kw_par',
                    [houseGUID, kwNum, kwEntry]);
          if err=0 then
            Form_olap.cxm1.Lines.Add('По помещению:'+kwAdr+' успешно установлены параметры')
          else
            Form_olap.cxm1.Lines.Add('По помещению:'+kwAdr+' НЕ установлены параметры!');
        end
        else if ((flag) and (houseAdr <> kwAdr)) then
        begin
          //найдено окончание дома, выход
          break;
        end;

        a:=a+1;
      end;

      end;
    end;

    b:=b+1;
  end;

  finally
    Form_olap.cxm1.visible:=true;
    houseXL.Quit;
    houseXL:=Unassigned;
  end;
  DataModule1.OracleSession1.Commit;
  Form_olap.cxm1.visible:=true;
  Form_olap.cxm1.Lines.Add('Обработан файл:'+dlgOpen1.FileName);
  msg2('Данные обработаны!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
end;


//выгрузка Шаблон импорта
procedure TForm_tree_objects.exp_gis1;
type
  PHeadList = ^AList;
  AList = record
    I: Integer;
    S: String;
  end;
var
 lskXL, houseXL: variant;
 reu, path, lskFname, houseFname, entr: String;
 a, b, c, e, f, g, i, houseId: Integer;
 d: TOracleDataSet;
 debug: Boolean;
begin

  debug:=Form_olap.chk1.Checked;
  if debug then
  begin
    Form_olap.cxm1.Visible:=True;
  end;

  // Обьект EXCEL
  lskXL := CreateOleObject('Excel.Application');
  // Чтоб не задавал вопрос о сохранении документа
  lskXL.DisplayAlerts := false;

  houseXL := CreateOleObject('Excel.Application');
  // Чтоб не задавал вопрос о сохранении документа
  houseXL.DisplayAlerts := false;

  //найти файл шаблона импорта ЛС
  dlgOpen1.InitialDir:='\temp\templates\';
  dlgOpen1.FileName := '';
  dlgOpen1.Title:='Выберите файл шаблона импорта ЛС';
  dlgOpen1.Filter := '*.xl* файлы (*.xl*)|*.xl*|Все файлы (*.*)|*.*';
  dlgOpen1.FilterIndex:=1;
  dlgOpen1.Execute;

  if dlgOpen1.FileName = '' then
  begin
    msg2('Файл шаблона импорта ЛС не выбран!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  Form_olap.cxm1.Lines.Add('Start log!');

  lskFname:=ExtractFileName(dlgOpen1.FileName);
  path:=ExtractFilePath(dlgOpen1.FileName);

  //найти файл шаблона импорта МКД
  dlgOpen1.FileName := '';
  dlgOpen1.Title:='Выберите файл шаблона импорта МКД';
  dlgOpen1.Filter := '*.xl* файлы (*.xl*)|*.xl*|Все файлы (*.*)|*.*';
  dlgOpen1.FilterIndex:=1;
  dlgOpen1.Execute;

  if dlgOpen1.FileName = '' then
  begin
    msg2('Файл шаблона импорта МКД не выбран!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  houseFname:=ExtractFileName(dlgOpen1.FileName);
  Form_olap.Button4.Visible:=true;
  Form_olap.Update;
  reu:='xx';
  houseId:=-1;
  a:=3;
  b:=3;
  c:=3;
  e:=3;
  f:=3;
  g:=1;

  d:=Form_tree_objects.OD_data;
  d.First;
  d.DisableControls;
  while not d.Eof do
  begin

    if debug then
    begin
      Form_olap.cxm1.Lines.Add('Текущая строка: '+IntToStr(a));
    end;

    if (d.FieldByName('reu').AsString <> reu) then
    begin
      //закрыть предыдущий файл
      if reu<>'xx' then
      begin
        lskXL.ActiveWorkBook.SaveAs(path+reu+'_'+lskFname);
        lskXL.ActiveWorkBook.Close;

        houseXL.ActiveWorkBook.SaveAs(path+reu+'_'+houseFname);
        houseXL.ActiveWorkBook.Close;
        a:=3;
        b:=3;
        c:=3;
        e:=3;
        f:=3;
        g:=1;
      end;
      reu:=d.FieldByName('reu').AsString;
      lskXL.WorkBooks.Open(path+lskFname);
      houseXL.WorkBooks.Open(path+houseFname);
    end;

    //найден новый дом
    if (d.FieldByName('house_id').AsInteger <> houseId) then
    begin
      houseId:=d.FieldByName('house_id').AsInteger;
      entr:='-1'; //подъезд

      //МКД
      //Характеристики МКД
      if debug then
        Form_olap.cxm1.Lines.Add('1. дом='+IntToStr(houseId));
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 1]:= d.FieldByName('adr').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 2]:= d.FieldByName('houseguid').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 3]:= 'Нет';
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 4]:= 'Нет';
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 5]:= d.FieldByName('oktmo').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 6]:= d.FieldByName('cond').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 8]:= d.FieldByName('house_opl').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 9]:= d.FieldByName('house_year').AsFloat;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 10]:= d.FieldByName('house_et').AsFloat;
      //houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 11]:= d.FieldByName('house_unet').AsFloat;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 11]:= d.FieldByName('house_cult').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 12]:= d.FieldByName('clk_zone').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 13]:= d.FieldByName('house_cad_no').AsString;
      b:=b+1;
    end;

    Form_olap.cxm1.Lines.Add('1. лс='+d.FieldByName('lsk').AsString);

    //МКД
    //Нежилые помещения
    //только если пусто в ELSK!!!
    if (d.FieldByName('elsk').AsString = '') then
    begin
      if (d.FieldByName('stat_cd').AsString = 'NLIV') then
      begin
        if debug then
          Form_olap.cxm1.Lines.Add('2');
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 1]:= d.FieldByName('adr').AsString;
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 2]:= d.FieldByName('kw').AsString;
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 3]:= d.FieldByName('comm_use').AsString;
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 4]:= d.FieldByName('opl').AsString;
        // НЕ выгружать кадастровый номер пока, система пишет: INT004072 Сведения в ГКН не найдены.
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 5]:= 'Нет';
        // инф. подтверждена поставщиком
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 6]:= 'Да';
        e:=e+1;
      end;
    end;

    //Подъезды
    if (d.FieldByName('entr').AsString <> entr) then
    begin
      entr:=d.FieldByName('entr').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('Найден подъезд: '+entr);
      end;
      houseXL.WorkBooks[1].WorkSheets[7].Cells[f, 1]:= d.FieldByName('adr').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.'+intToStr(f)+'.1');
        Form_olap.cxm1.Lines.Add('Адрес: '+d.FieldByName('adr').AsString);
      end;
      houseXL.WorkBooks[1].WorkSheets[7].Cells[f, 2]:= d.FieldByName('entr').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.'+intToStr(f)+'.2');
        Form_olap.cxm1.Lines.Add('Номер: '+d.FieldByName('entr').AsString);
      end;
      houseXL.WorkBooks[1].WorkSheets[7].Cells[f, 3]:= d.FieldByName('ent_et').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.'+intToStr(f)+'.3');
        Form_olap.cxm1.Lines.Add('Этажность: '+d.FieldByName('ent_et').AsString);
      end;
      houseXL.WorkBooks[1].WorkSheets[7].Cells[f, 4]:= d.FieldByName('ent_date').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.'+intToStr(f)+'.4');
        Form_olap.cxm1.Lines.Add('Дата постройки: '+d.FieldByName('ent_date').AsString);
      end;
      // инф. подтверждена поставщиком
      houseXL.WorkBooks[1].WorkSheets[7].Cells[e, 5]:= 'Да';
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.'+intToStr(f)+'.5');
        Form_olap.cxm1.Lines.Add('Инф подтверждена: Да');
      end;

      f:=f+1;
    end;

    //Жилые помещения
    //только если пусто в ELSK!!!
    if (d.FieldByName('elsk').AsString = '') then
    begin
      if debug then
        Form_olap.cxm1.Lines.Add('4');
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 1]:= d.FieldByName('adr').AsString;
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 2]:= d.FieldByName('kw').AsString;
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 3]:= d.FieldByName('entr').AsString;
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 4]:= d.FieldByName('charact').AsString;
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 5]:= Trim(d.FieldByName('opl').AsString);
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 6]:= Trim(d.FieldByName('opl').AsString);
      // НЕ выгружать кадастровый номер пока, система пишет: INT004072 Сведения в ГКН не найдены.
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 7]:= 'Нет';
      // инф. подтверждена поставщиком
      houseXL.WorkBooks[1].WorkSheets[10].Cells[e, 8]:= 'Да';
    end;

    // Лицевой счет
    // Основные сведения
    // Выгрузить все лиц.счета, новые - без GUID, старые (для обновления) - c GUID
    i:=1;
    while i<=2 do
    begin
      if i=1 then
      begin
        //основной
          if debug then
            Form_olap.cxm1.Lines.Add('5.'+intToStr(i));
          // вкладка "Основные сведения"
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 1]:= IntToStr(g);  // номер лс
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 2]:= d.FieldByName('lsk').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 3]:= d.FieldByName('serviceid').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 4]:= d.FieldByName('tp').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 5]:= d.FieldByName('status').AsString;

          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 7]:= d.FieldByName('k_fam').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 8]:= d.FieldByName('k_im').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 9]:= d.FieldByName('k_ot').AsString;

          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 18]:= d.FieldByName('opl').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 19]:= d.FieldByName('opl').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 20]:= d.FieldByName('opl').AsString;

          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 21]:= d.FieldByName('kpr').AsFloat;

          // вкладка "Основания"  - пока не стал заполнять, не понятно что писать сюда, возможен баг в шаблоне
          //lskXL.WorkBooks[1].WorkSheets[3].Cells[c, 1]:= IntToStr(g);  //номер помещения
          //lskXL.WorkBooks[1].WorkSheets[3].Cells[c, 2]:= '';

          c:=c+1;
      end
      else
      begin
        //дополнительный
        //только если пусто в ELSK!!!
        if (d.FieldByName('elsk2').AsString = '') then
        begin
          if debug then
            Form_olap.cxm1.Lines.Add('5.'+intToStr(i));
          {    ПОКА не выгружать счета капремонта - система пишет: INT008045 Отсутствует основание для создания лицевого счета для оплаты взноса на капитальный ремонт.

          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 1]:= IntToStr(g);  //номер помещения
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 2]:= d.FieldByName('lsk2').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 4]:= d.FieldByName('tp2').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 5]:= d.FieldByName('status').AsString;

          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 6]:= d.FieldByName('k_fam').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 7]:= d.FieldByName('k_im').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 8]:= d.FieldByName('k_ot').AsString;

          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 16]:= d.FieldByName('opl').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 17]:= d.FieldByName('opl').AsString;
          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 18]:= d.FieldByName('opl').AsString;

          lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 19]:= d.FieldByName('kpr').AsFloat;}
          //c:=c+1;
        end;
      end;

      i:=i+1;
    end;

    //Помещение
    //только если пусто в ELSK!!!
    //if (d.FieldByName('elsk').AsString = '') then
    //begin
    if debug then
     Form_olap.cxm1.Lines.Add('6');
    // вкладка "Помещение"
    lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 1]:= IntToStr(g);  //номер помещения
    lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 2]:= d.FieldByName('adr').AsString;
    lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 3]:= d.FieldByName('houseguid').AsString;

    //lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 7]:= d.FieldByName('premiseGUID').AsString;
    
    // тип помещения
    if (d.FieldByName('stat_cd').AsString = 'NLIV') then
      lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 4]:= 'Нежилое помещение'
    else
      lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 4]:= 'Жилое помещение';

    lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 5]:= d.FieldByName('kw').AsString;
    lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 8]:= d.FieldByName('part').AsFloat;
    //end;

    //if (d.FieldByName('elsk').AsString = '') then
    //begin
     a:=a+1;
     g:=g+1;
    //end;


    d.Next;
  end;
  d.EnableControls;

  //сохранить и закрыть обработанные файлы
  lskXL.ActiveWorkBook.SaveAs(path+reu+'_'+lskFname);
  lskXL.ActiveWorkBook.Close;

  houseXL.ActiveWorkBook.SaveAs(path+reu+'_'+houseFname);
  houseXL.ActiveWorkBook.Close;

  Form_olap.Button4.Visible:=False;
  msg2('Информация выгружена в папку:'+path, 'Внимание!', MB_OK+MB_ICONINFORMATION);

end;


//Выгрузка в Excel
procedure TForm_tree_objects.exp_uszn;
type
  PHeadList = ^AList;
  AList = record
    I: Integer;
    S: String;
  end;
var
 XL: variant;
 a, x, y, i: Integer;
 HeadList: TList;
 ARecord: PHeadList;
 adr, str, street, nd, korp, kw: String;
begin
  // Обьект EXCEL
  XL := CreateOleObject('Excel.Application');
  // Чтоб не задавал вопрос о сохранении документа
  XL.DisplayAlerts := false;

  //загружаем его
  dlgOpen1.Title:='Выберите файл обмена';
  dlgOpen1.Filter := '*.xl* файлы (*.xl*)|*.xl*|Все файлы (*.*)|*.*';
  dlgOpen1.FilterIndex:=1;
  dlgOpen1.Execute;

  if dlgOpen1.FileName = '' then
  begin
    msg2('Файл не выбран!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  XL.WorkBooks.Open(dlgOpen1.FileName);

  //заполнить массив индексами заголовка XLS - файла
  HeadList := TList.Create;
  str:='xx';
  x:=1;
  while True do
  begin
    str:=XL.WorkBooks[1].WorkSheets[1].Cells[3, x];
    if str = '' then
      Break;
    New(ARecord);
    ARecord^.I:=x;
    ARecord^.S:=str;
    HeadList.Add(ARecord);
    x:=x+1;
  end;

  //движемся вниз по файлу, находим адреса
  y:=4;
  street:='xx';
  while True do
  begin
  street:=XL.WorkBooks[1].WorkSheets[1].Cells[y, 4];
  if street ='' then
   Break;
  nd:=XL.WorkBooks[1].WorkSheets[1].Cells[y, 5];
  korp:=XL.WorkBooks[1].WorkSheets[1].Cells[y, 6];
  kw:=XL.WorkBooks[1].WorkSheets[1].Cells[y, 7];
  adr:=street+nd+korp+kw;

  //поиск адреса в датасете отчёта
//  try
  if Form_tree_objects.OD_data.Locate('nylic;ndom;nkorp;nkw',
    VarArrayOf([street, nd, korp, kw]), []) then
  begin
    //найден адрес
    //идём по заголовку и переносим информацию
    for i:=0 to HeadList.count-1 do
    begin
      ARecord:=HeadList.Items[i];
        str:=XL.WorkBooks[1].WorkSheets[1].Cells[y, i+1];
//        if ARecord.S='KPR' then
//         str:= str;

        if (str = '') or (str='0') then //берём только не заполненные поля
        begin


          if Form_tree_objects.OD_data.FieldByName(ARecord.S).DataType
                 =ftString then
          XL.WorkBooks[1].WorkSheets[1].Cells[y, i+1] :=''''+
            Form_tree_objects.OD_data.FieldByName(ARecord.S).AsString
          else if Form_tree_objects.OD_data.FieldByName(ARecord.S).DataType
                 =ftFloat then
          XL.WorkBooks[1].WorkSheets[1].Cells[y, i+1] :=
            Form_tree_objects.OD_data.FieldByName(ARecord.S).AsFloat
          else if Form_tree_objects.OD_data.FieldByName(ARecord.S).DataType
                 =ftInteger then
          XL.WorkBooks[1].WorkSheets[1].Cells[y, i+1] :=
            Form_tree_objects.OD_data.FieldByName(ARecord.S).AsInteger
          else if Form_tree_objects.OD_data.FieldByName(ARecord.S).DataType
                 =ftSmallInt then
          XL.WorkBooks[1].WorkSheets[1].Cells[y, i+1] :=
            Form_tree_objects.OD_data.FieldByName(ARecord.S).AsInteger
          else
          XL.WorkBooks[1].WorkSheets[1].Cells[y, i+1] :=
            Form_tree_objects.OD_data.FieldByName(ARecord.S).AsFloat;
        end;
    end;

  end;
{  except
      ShowMessage(adr);
  end;}


  y:=y+1;
  end;

  HeadList.Free;
  msg2('Реестр заполнен, сохраните его!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
  // Делаем его видимым
  XL.Visible := true;

end;


procedure TForm_tree_objects.FormPaint(Sender: TObject);
var
  height_:Integer;
begin
//Высота панели выбора параметров
  height_:=0;
  if Panel3.Visible then
    height_:=height_+Panel3.Height;
  if GroupBox2.Visible then
    height_:=height_+GroupBox2.Height;

{  if GroupBox3.Visible then
    height_:=height_+GroupBox3.Height;
 }
  if GroupBox1.Visible then
    height_:=height_+GroupBox1.Height;

  if GroupBox4.Visible then
    height_:=height_+GroupBox4.Height;
  if GroupBox5.Visible then
    height_:=height_+GroupBox5.Height;
  if GroupBox6.Visible then
    height_:=height_+GroupBox6.Height;
  if GroupBox7.Visible then
    height_:=height_+GroupBox7.Height;

 Panel1.Height:=height_;
 Update;
end;

procedure TForm_tree_objects.edit_par;
var
  id_: Integer;
begin
  Application.CreateForm(TForm_tree_par_edit, Form_tree_par_edit);
  Form_tree_par_edit.Top:=curY_+
    Form_Main.Top+Panel1.Top+Form_tree_objects.Top+
    GroupBox1.Top+wwDBGrid1.Top;
  Form_tree_par_edit.Left:=curX_+
    Form_Main.Left+Panel1.Left+Form_tree_objects.Left+
    GroupBox1.Left+wwDBGrid1.Left;
  Form_tree_par_edit.SetAccess(OD_spr_params);
  Form_tree_par_edit.ShowModal;

  id_:=OD_spr_params.FieldByName('id').AsInteger;
  OD_spr_params.Active:=False;
  OD_spr_params.Active:=True;
  OD_spr_params.Locate('id', id_, []);
  wwDBGrid1.SetFocus;
  wwDBGrid1.Repaint;

end;

procedure TForm_tree_objects.wwDBComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   edit_par;
end;

procedure TForm_tree_objects.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_Return) and
    (wwDBGrid1.GetActiveCol=GetGridColumnByName(wwDBGrid1, 'Val')+1) then
      edit_par;
end;

procedure TForm_tree_objects.wwDBGrid1DblClick(Sender: TObject);
begin
  edit_par;
end;

procedure TForm_tree_objects.wwDBComboBox1DropDown(Sender: TObject);
begin
  edit_par;
  Abort;
end;

procedure TForm_tree_objects.wwDBComboBox1DblClick(Sender: TObject);
begin
  edit_par;
end;

procedure TForm_tree_objects.CheckBox1Click(Sender: TObject);
begin
  //установить видимость закрытого фонда
  setpsch;
end;

procedure TForm_tree_objects.setpsch;
begin
  //установить видимость закрытого фонда
  if CheckBox1.Checked = true then
   begin
    OD_tree_objects.SetVariable('set_psch', 0);
   end
  else
   begin
    OD_tree_objects.SetVariable('set_psch', 1);
   end;
  OD_tree_objects.Active:=False;
  OD_tree_objects.Active:=true;
  MemTableEh2.Close;
  MemTableEh2.FetchRecords(4000);
  MemTableEh2.FetchRecords(4000);
  MemTableEh2.FetchRecords(4000);
  MemTableEh2.Open;
end;
end.
