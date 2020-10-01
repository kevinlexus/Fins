unit Unit_tree_objects;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DBCtrls, DB, OracleData, Buttons, Utils,
  Oracle, PivotCube_SRC, PivotMap_SRC, PivotGrid_SRC,
  PVMapBuilder_SRC, MSXML2_TLB, ComObj, Menus, frxClass,
  frxDBSet, wwdblook, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  ToolWin, ComCtrls, DataDriverEh, MemTableDataEh,
  MemTableEh, wwdbdatetimepicker, Mask, wwdbedit, Wwdotdot,
  Wwdbcomb, DBCtrlsEh, cxControls,
  cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Uni,
  cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL,
  cxTLData, cxCheckBox, cxImageComboBox;
type
  TForm_tree_objects = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
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
    Splitter1: TSplitter;
    GroupBox4: TGroupBox;
    wwDBLookupCombo3: TwwDBLookupCombo;
    GroupBox6: TGroupBox;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBComboBox1: TwwDBComboBox;
    CheckBox1: TCheckBox;
    pnl1: TPanel;
    cxm1: TcxMemo;
    dlgOpen1: TOpenDialog;
    Timer2: TTimer;
    wwDBGrid1: TwwDBGrid;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1NAME: TcxDBTreeListColumn;
    cxDBTreeList1ID: TcxDBTreeListColumn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    cxDBTreeList1SEL: TcxDBTreeListColumn;
    cxDBTreeList1EXIST1: TcxDBTreeListColumn;
    cxDBTreeList1OBJ_LEVEL: TcxDBTreeListColumn;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure saveXML;
    procedure saveMap;
    procedure SetXMLDocNode2;
    procedure LoadData(action_: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormEndDock(Sender, Target: TObject; X, Y: Integer);
    procedure FormStartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure setAccess(rep_: string; have_current_: Integer;
      two_periods_: Integer);
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
    procedure Timer2Timer(Sender: TObject);
    procedure repTypeOlap(action_: Integer);
    procedure repTypeFastRep(rep_cd_: string);
    procedure repTypeDBF(path, fname: string);
    procedure repTypeTXT(path, fname: string);
    procedure repTypeGrid;
    procedure sel_tree_obj(trnode: TMemRecViewEh; sel_: Integer);
    procedure deselObjects(curObjId: Integer);
    procedure cxDBTreeList1SELPropertiesEditValueChanged(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    Doc, Doc1: IXMLDomDocument;
    root, root1: IXMLDOMElement;
    flag2_: Integer;
    obj_: string;
    objexcel_: string;
    err_, issum_, iscnt_, ishead_, isoem_: Integer;
    l_edt1, l_edt2, l_edt3, fldsum_: string;
    curX_, curY_: Integer;
  public
    flag_: Integer;
    l_rep_name, l_frm_name, rep_cd_, period_str_, period_str2_, strr_, fname_,
      frx_fname_: string;
    allow_, max_level_, can_detail_, rep_id_, sel_many_, //have_date_,
    rep_type_, two_periods_, show_total_row, show_total_col,
      first_time_, expand_row_, expand_col_,
      show_paychk_, show_sel_org_, show_sel_oper_, show_deb_: Integer;
    OD_reports2: TOracleDataset;
    Cube_, Map_: TComponent;
    isAlreadyInPost, isTimerEvent: Boolean;
    prevRecNo, saveRecNo: Integer;
    // ����������� �� ���?
    isLoadingCube: Boolean;
  end;

var
  Form_tree_objects: TForm_tree_objects;

implementation

uses Unit_Form_olap, Unit_Mainform, Unit_status, DM_module1,
  Unit_tree_par_edit, Unit_tarif_usl, ObjPar, ufDataModuleOlap;

{$R *.dfm}

procedure TForm_tree_objects.prepData;
begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  DM_Olap.Uni_data.Active := false;
  //��������� ��������� ��������, ��� �������
  //����� ��� �������� �������

  if (rep_cd_ = '78') and
    (DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger
    = 3) then
  begin
    DM_Olap.Uni_nabor_lsk.Active := True;
  end
  else if (rep_cd_ <> '78') or ((rep_cd_ = '78') and
    (DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger <> 3)) then
  begin
    DM_Olap.Uni_nabor_lsk.Active := False;
  end;

  //��������� ��������� ��������, ��� �������
  //����� - ������ ��� ����
  if (rep_cd_ = '79') then
  begin
    DM_OLap.Uni_c_kart_pr.Active := True;
  end;

  // 05.09.2019 �� �� ����:
//  else if (rep_cd_ <> '78') then
//  begin
    //���������� ���� ������� Master, ����� ������� ���������� ���������, � �������...
    //DM_OLap.OD_c_kart_pr.Master := nil;
    //DM_OLap.Uni_c_kart_pr.Active := False;
//  end;

  //��������� ��������� ��������, ��� �������
  //����� - ������ ��� �������������
  if (rep_cd_ = '83') then
  begin
    DM_OLap.Uni_detail.Active := False;
    DM_OLap.Uni_detail.MasterSource := DM_Olap.Uni_data.DataSource;
    DM_OLap.Uni_detail.Active := True;
  end
  else if (rep_cd_ <> '83') then
  begin
    //���������� ���� ������� Master, ����� ������� ���������� ���������, � �������...
    //DM_OLap.Uni_detail.MasterSource := nil;
    DM_OLap.Uni_detail.Active := False;
  end;

  if wwDBLookupCombo4.LookupValue <> '' then
    DM_Olap.Uni_data.Params.ParamByName('org_').Value :=
      StrToInt(wwDBLookupCombo4.LookupValue)
  else
    DM_Olap.Uni_data.Params.ParamByName('org_').Value := null;

  if wwDBLookupCombo3.LookupValue <> '' then
    DM_Olap.Uni_data.Params.ParamByName('oper_').AsString :=
      wwDBLookupCombo3.LookupValue
  else
    DM_Olap.Uni_data.Params.ParamByName('oper_').Value := null;

  //����������� �����������
  if can_detail_ = 1 then
  begin
    DM_Olap.Uni_data.Params.ParamByName('det_').AsInteger :=
      StrToInt(wwDBLookupCombo2.LookupValue);

  end;

  DM_Olap.Uni_data.Params.ParamByName('cd_').AsString := rep_cd_;

  {  if rep_cd_ = '69' then
  begin
  //����������
    DM_Olap.Uni_data.SetVariable('n1_', ComboBox2.ItemIndex);
    if wwDBEdit1.Text <> '' then
      DM_Olap.Uni_data.SetVariable('n2_', StrToInt(wwDBEdit1.Text))
    else
      DM_Olap.Uni_data.SetVariable('n2_', 0);
  end;}

{  if rep_cd_ = '14' then
  begin
    //���������� �� ������������� ������ �� �������
    if CheckBox2.Checked = true then
    begin
      DM_Olap.Uni_data.SetVariable('show_sal_', 1);
    end
    else
    begin
      DM_Olap.Uni_data.SetVariable('show_sal_', 0);
    end;
  end;}

{  if rep_cd_ = '54' then
  begin
    //��������� �� ������� ������ � ��������� ���������� OLAP
    //���������� �� �� show_sal_
    if CheckBox3.Checked = true then
    begin
      DM_Olap.Uni_data.SetVariable('show_sal_', 1);
    end
    else
    begin
      DM_Olap.Uni_data.SetVariable('show_sal_', 0);
    end;
  end;}

  if CheckBox5.Checked = true then
  begin
    DM_Olap.Uni_data.Params.ParamByName('mg_').Value := null;
    DM_Olap.Uni_data.Params.ParamByName('mg1_').Value := null;
    DM_Olap.Uni_data.Params.ParamByName('dat_').AsDate :=
      DBLookupComboBox5.KeyValue;
    DM_Olap.Uni_data.Params.ParamByName('dat1_').AsDate :=
      DBLookupComboBox6.KeyValue;
  end
  else
  begin
    DM_Olap.Uni_data.Params.ParamByName('dat_').Value := null;
    DM_Olap.Uni_data.Params.ParamByName('dat1_').Value := null;
    DM_Olap.Uni_data.Params.ParamByName('mg_').AsString :=
      DBLookupComboBox5.KeyValue;
    if two_periods_ = 1 then
      DM_Olap.Uni_data.Params.ParamByName('mg1_').AsString :=
        DBLookupComboBox6.KeyValue
    else
      DM_Olap.Uni_data.Params.ParamByName('mg1_').AsString :=
        DBLookupComboBox5.KeyValue;
  end;

  {  if have_date_ = 1 then
    begin
      DM_Olap.Uni_data.SetVariable('dat2_',
         wwDBDateTimePicker1.Date);
      DM_Olap.Uni_data.SetVariable('dat3_',
         wwDBDateTimePicker2.Date);
    end;}

  if DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger = 3 then
  begin
    if sel_many_ = 0 then
    begin
      // ����� ������ �������
      DM_Olap.Uni_data.Params.ParamByName('reu_').AsString :=
        DM_Olap.Uni_tree_objects.FieldByName('reu').AsString;
      DM_Olap.Uni_data.Params.ParamByName('p_for_reu').AsString :=
        DM_Olap.Uni_tree_objects.FieldByName('for_reu').AsString;
      DM_Olap.Uni_data.Params.ParamByName('kul_').AsString :=
        DM_Olap.Uni_tree_objects.FieldByName('kul').AsString;
      DM_Olap.Uni_data.Params.ParamByName('nd_').AsString :=
        DM_Olap.Uni_tree_objects.FieldByName('nd').AsString;
      DM_Olap.Uni_data.Params.ParamByName('p_house').AsInteger :=
        DM_Olap.Uni_tree_objects.FieldByName('fk_house').AsInteger;
      DM_Olap.Uni_data.Params.ParamByName('var_').AsInteger := 3;
    end;
  end
  else if DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger = 2 then
  begin
    if sel_many_ = 0 then
    begin
      // ����� ������ �������
      DM_Olap.Uni_data.Params.ParamByName('reu_').AsString :=
        DM_Olap.Uni_tree_objects.FieldByName('reu').AsString;
      DM_Olap.Uni_data.Params.ParamByName('p_for_reu').AsString :=
        DM_Olap.Uni_tree_objects.FieldByName('for_reu').AsString;
      DM_Olap.Uni_data.Params.ParamByName('var_').AsInteger := 2;
    end;
  end
  else if DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger = 1 then
  begin
    if sel_many_ = 0 then
    begin
      // ����� ������ �������
      DM_Olap.Uni_data.Params.ParamByName('trest_').AsString :=
        DM_Olap.Uni_tree_objects.FieldByName('trest').AsString;
      DM_Olap.Uni_data.Params.ParamByName('var_').AsInteger := 1;
    end;
  end
  else if DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger = 0 then
  begin
    DM_Olap.Uni_data.Params.ParamByName('var_').AsInteger := 0;
  end;

  DM_Olap.Uni_Data.Active := False;
  DM_Olap.Uni_Data.Active := True;
  cxm1.Lines.Clear;
  cxm1.Lines.Text := '�������� �����:' + IntToStr(DM_Olap.Uni_Data.RecordCount);
  Form_status.Close;
end;

procedure TForm_tree_objects.saveXML;
begin
  OD_reports2 := TOracleDataset.Create(nil);
  with OD_reports2 do
  begin
    Session := DM_OLap.OD_dat1.Session;
    SQL.Text := 'select l.rowid, l.xmltext from scott.rep_levels l ' +
      'where l.fk_rep_id=:id_ and l.level_id=:level_id_';
    //���� �������� ���� ��� ������� �������, ���������� ������ ���������
    //� � ����!
    DeclareVariable('id_', otInteger);
    DeclareVariable('level_id_', otInteger);

    SetVariable('id_', Form_tree_objects.rep_id_);

    //����� �� ����������������?
    if can_detail_ = 0 then
      SetVariable('level_id_',
        DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger)
    else
      SetVariable('level_id_', StrToInt(wwDBLookupCombo2.LookupValue));
    Open;

    Active := true;
  end;
  Doc := CreateComObject(CLASS_DOMDOCUMENT30) as IXMLDomDocument;
  Doc.async := False;

  Map_ := Form_olap.FindComponent('PivotMap' + rep_cd_);
  root := Doc.createElement('PivotMap.' + TPivotMap(Map_).Name);
  TPivotMap(Map_).SavetoXML(root, True);
  Doc.appendChild(root);

  with OD_reports2 do
  begin
    Edit;
    FieldByName('xmltext').AsString := Doc.xml;
    Post;
    Active := false;
    Close;
    Free;
  end;
end;

procedure TForm_tree_objects.saveMap;
begin
  Doc1 := CreateComObject(CLASS_DOMDOCUMENT30) as IXMLDomDocument;
  Doc1.async := False;

  root1 := Doc1.createElement('PivotMap.' + TPivotMap(Map_).Name);
  try
    TPivotMap(Map_).SavetoXML(root1, True);
  except
  end;

end;

procedure TForm_tree_objects.SetXMLDocNode2;
var
  Node, Node2, NodeChild2: IXMLDOMNode;
  a: Integer;
begin
  Node := root1.SelectSingleNode('//Rows');
  with Node do
    while hasChildNodes do
      removeChild(firstChild);

  Node2 := root.SelectSingleNode('//Rows');
  for a := 0 to Node2.childNodes.length - 1 do
  begin
    NodeChild2 := Node2.childNodes.item[0];
    Node.appendChild(NodeChild2);
  end;
end;

procedure TForm_tree_objects.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_tree_objects.LoadData(action_: Integer);
var
  str1_: string;
  det, I, l_cnt: Integer;
begin
  // ��������� ������� �����������
  if wwDBLookupCombo2.LookupValue <> '' then
    det := StrToInt(wwDBLookupCombo2.LookupValue)
  else
    // �� ����������
    det := -1;

  // �������� ���-�� ��������� ��������
  if Form_tree_objects.sel_many_ = 0 then
  begin
    l_cnt := 0;
    for I := 0 to cxDBTreeList1.AbsoluteCount - 1 do
    begin
      if (cxDBTreeList1.AbsoluteItems[I].Values[2] <> 1) then
      begin
        l_cnt := l_cnt + 1;
        if l_cnt > 1 then
        begin
          Application.MessageBox('���������� ������� ������ ���� ������!',
            '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
          Exit;
        end;
      end;
    end;
  end;

  if sel_many_ = 0 then
  begin
    // ����� ��������� ������
    if DM_Olap.Uni_tree_objects.Locate('sel', 0, []) then
    begin
      // ��������� �������
      if (DM_Olap.Uni_tree_objects.FieldByName('FOR_REU').AsString <> '') and
        (DBLookupComboBox5.KeyValue < 201907) then
      begin
        Application.MessageBox('������ ������� �� �������� ��� ������� ������ �� 01.07.2019',
          '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
        Exit;
      end;
    end
    else
    begin
      Application.MessageBox('�� ������ ��������� ������',
        '��������!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
      Exit;
    end;
  end;

  //���� ��������
  str1_ := DataModule1.OraclePackage1.CallStringFunction
    ('scott.Utils.get_str_param', ['����1']);
  if allow_ = 0 then
  begin
    exit; //����������� �������� ����
  end;

  //��������� ����� ������������ �������� ��� ������ (����� � ���������)
  if DM_Olap.Uni_tree_objects.State <> dsBrowse then
    DM_Olap.Uni_tree_objects.Post;

  if (two_periods_ <> 2) and ((DBLookupComboBox5.KeyValue = null) or
    ((DBLookupComboBox6.KeyValue = null) and (two_periods_ = 1))) then
  begin
    msg2('�� ������ ������ ������!', '��������!',
      MB_OK + MB_ICONSTOP);
    SetSize(1);
    Exit;
  end;

  if CheckBox5.Checked = True then
  begin
    //������ - ����
    if DBLookupComboBox5.KeyValue = DBLookupComboBox6.KeyValue then
      period_str_ := '�� ' + DM_OLap.OD_dat1.FieldByName('mg1').AsString
    else
      period_str_ := '�� ������ � ' + DM_OLap.OD_dat1.FieldByName('mg1').AsString
        +
        ' �� ' +
        DM_OLap.OD_dat2.FieldByName('mg1').AsString;
  end
  else
  begin
    //������ - ������
    if DBLookupComboBox5.KeyValue = DBLookupComboBox6.KeyValue then
      period_str_ := '�� ' + DM_OLap.OD_mg1.FieldByName('mg2').AsString
    else if DBLookupComboBox6.KeyValue = null then
      period_str_ := '�� ' + DM_OLap.OD_mg1.FieldByName('mg2').AsString
    else
      period_str_ := '�� ������ � ' + DM_OLap.OD_mg1.FieldByName('mg1').AsString
        + ' �� '
        +
        DM_OLap.OD_mg2.FieldByName('mg1').AsString;
  end;

  if ((DBLookupComboBox5.KeyValue >
    DBLookupComboBox6.KeyValue) and (two_periods_ = 1)) then
  begin
    msg2('������������ ������ ������!', '��������!',
      MB_OK + MB_ICONSTOP);
    SetSize(1);
    Exit;
  end;

  if (can_detail_ = 1) and (det = -1) then
  begin
    msg2('�� ���������� ������� �����������!', '��������!',
      MB_OK + MB_ICONSTOP);
    SetSize(1);
    Exit;
  end;

  OD_reports2 := TOracleDataset.Create(nil);
  with OD_reports2 do
  begin
    Session := DM_OLap.OD_dat1.Session;
    SQL.Text := 'select l.rowid, l.xmltext, ' +
      'r.name, nvl(r.fk_type,0) as fk_type ' +
      'from scott.rep_levels l, scott.reports r ' +
      'where r.id=:id_ and r.id=l.fk_rep_id and l.level_id=:level_id_';
    DeclareVariable('id_', otInteger);
    DeclareVariable('level_id_', otInteger);
    try
      ClearVariables;
      SetVariable('id_', rep_id_);
      //����� �� ����������������?
      if can_detail_ = 0 then
        SetVariable('level_id_',
          DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger)
      else
        SetVariable('level_id_', det);
      Open;
      strr_ := FieldByName('xmltext').AsString;
    finally
      Close;
      Free;
    end;
  end;

  //����� ���������� ��������
  if sel_many_ = 0 then
  begin
    if DM_Olap.Uni_tree_objects.Locate('sel', 0, [loCaseInsensitive]) = False
      then
    begin
      msg2('�� ������ ��������� �������!', '��������!', MB_OK + MB_ICONERROR);
      Exit;
    end;
  end;

  //������� ����� ��� ������
  if rep_type_ = 4 then
  begin
    Prepdata;
    if l_frm_name = 'Form_tarif_usl' then
    begin
      with Form_tarif_usl do
      begin
        Form_tarif_usl.setType(DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger,
         DM_Olap.Uni_tree_objects.FieldByName('name').AsString);
        if DM_OLap.OD_mg1.FieldByName('mg').AsString = Form_main.cur_mg_ then
        begin
          //������ ������� ������
          mnu1.Enabled := true;
          mnu2.Enabled := true;
        end
        else
        begin
          //������ ������� ������
          mnu1.Enabled := false;
          mnu2.Enabled := false;
        end;
      end;

    end;
  end
  else
  begin
    Form_olap.rep_name_ := l_rep_name;
    //����� �������� �� ���������������� ���������� "star" (������ ������ �������)
    if two_periods_ = 1 then
    begin
      Form_olap.Caption := Form_olap.rep_name_ +
        ' �� ������ � ' + DBLookupComboBox5.Text + ' �� ' +
        DBLookupComboBox6.Text;
      Form_olap.rep_name_ := Form_olap.rep_name_ +
        ' �� ������ � ' + DBLookupComboBox5.Text + ' �� ' +
        DBLookupComboBox6.Text;
    end
    else
    begin
      Form_olap.Caption := Form_olap.rep_name_ +
        ' �� ' + DBLookupComboBox5.Text;
      Form_olap.rep_name_ := Form_olap.rep_name_ +
        ' �� ' + DBLookupComboBox5.Text;
    end;

    //������������ ������� � ������
    obj_ := '''' + ', �� ' +
      DM_Olap.Uni_tree_objects.FieldByName('name').AsString +
      '''';
    if DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger = 3 then
      objexcel_ := ', �� ���� ' +
        DM_Olap.Uni_tree_objects.FieldByName('name').AsString
    else if DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger in [0,
      1, 2] then
      objexcel_ := ', �� ����������� ' +
        DM_Olap.Uni_tree_objects.FieldByName('name').AsString;

    if (rep_type_ = 0) or (rep_type_ = 5) then
    begin
      Form_olap.Button3.Visible := true;
    end;

    if (DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_ = 0) then
    begin
      // OLAP �����
      repTypeOlap(action_);
    end
    else if (DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_ = 1) then
    begin
      //Fastreport �����
      repTypeFastrep(rep_cd_);
    end
    else if (DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_ = 2) then
    begin
      // DBF �����
      repTypeDBF(str1_, fname_);
    end
    else if (DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_ = 3) then
    begin
      // TXT �����
      repTypeTXT(str1_, fname_);
    end

    else if (DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger <=
      max_level_) and (rep_type_ = 5) then
    begin
      // GRID �����
      repTypeGrid;
    end
    else
    begin
      msg2('����������� ������� �����������!', '��������!',
        MB_OK + MB_ICONSTOP)
    end;

  end;
end;

// ��� ������ - OLAP

procedure TForm_tree_objects.repTypeOlap(action_: Integer);
var
  i: Integer;
begin
  if FF('Form_olap', 0) = 1 then
  begin
    //OLAP �����
    Form_olap.PVDimToolBar1.Visible := true;
    Form_olap.PVColToolBar1.Visible := true;
    Form_olap.PVRowToolBar1.Visible := true;
    Form_olap.PivotGrid1.Visible := true;
    Form_olap.PVMeasureToolBar1.Visible := true;
    if show_total_row = 1 then
      Form_olap.PivotGrid1.Settings.Specific.RowTotals := pvgtAtEnd
    else
      Form_olap.PivotGrid1.Settings.Specific.RowTotals := pvgtDisabled;

    if show_total_col = 1 then
      Form_olap.PivotGrid1.Settings.Specific.ColumnTotals := pvgtAtEnd
    else
      Form_olap.PivotGrid1.Settings.Specific.ColumnTotals := pvgtDisabled;

    Cube_ := Form_olap.FindComponent('PivotCube' + rep_cd_);
    Map_ := Form_olap.FindComponent('PivotMap' + rep_cd_);

    if action_ = 0 then
    begin
      //��������� ������
      TPivotCube(Cube_).Active := False;
    end
    else
    begin
      //�������� ������
      TPivotCube(Cube_).CanUpgrade := true;
    end;

    Form_olap.PivotGrid1.Map := TPivotMap(Map_);
    Form_olap.PVDimToolBar1.Map := TPivotMap(Map_);
    Form_olap.PVColToolBar1.Map := TPivotMap(Map_);
    Form_olap.PVRowToolBar1.Map := TPivotMap(Map_);
    Form_olap.PVMeasureToolBar1.Map := TPivotMap(Map_);

    //���������� ������
    Form_olap.Button4.Visible := true;
    Form_olap.Update;
    prepData;

    if DM_Olap.Uni_data.RecordCount = 0 then
      msg2('��� ����������!', '��������!',
        MB_OK + MB_ICONSTOP)
    else
    begin
      setSize(0);
      if action_ = 0 then
      begin
        // �������� ��� ���� �� �����, �� ����������� ����������
{        try
        for i:=0 to ComponentCount-1 do
        begin
          if (Components[i] is TPivotCube) then
          (Components[i] as TPivotCube).Active:=false;
        end;
        except
            ShowMessage('��������� ������ ��� ������� OLAP �����');
        end;
 }
        //��������� ������
        TPivotCube(Cube_).Active := True;
      end
      else
      begin
        //�������� ������
        TPivotCube(Cube_).Build;
      end;
    end;

    //���������� �� ����� PivotGrid-�
    if (expand_row_ = 1) and (expand_col_ = 1) then
      Form_olap.PivotGrid1.ExpandAll(True, True)
    else if (expand_row_ = 1) and (expand_col_ = 0) then
      Form_olap.PivotGrid1.ExpandAll(True, False)
    else if (expand_row_ = 0) and (expand_col_ = 1) then
      Form_olap.PivotGrid1.ExpandAll(False, True)
    else if (expand_row_ = 0) and (expand_col_ = 0) then
      Form_olap.PivotGrid1.ExpandAll(False, False);

  end;
  Form_olap.Button4.Visible := false;
  Form_olap.Update;
end;

procedure TForm_tree_objects.repTypeFastRep(rep_cd_: string);
var
  fr_: TComponent;
begin
  fr_ := Form_olap.FindComponent('frxReport' + rep_cd_);
  //���������� ������
  Form_olap.Button4.Visible := true;
  prepData;
  Form_olap.Button4.Visible := false;

  if DM_Olap.Uni_data.RecordCount = 0 then
  begin
    msg2('��� ����������!', '��������!',
      MB_OK + MB_ICONSTOP);
    SetSize(1);
  end
  else
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    if frx_fname_ <> '' then
    begin
      //�����, ������������ �� �����, ������������� ��������
      fr_ := Form_olap.FindComponent('frxReport_base');
      try
        TfrxReport(fr_).LoadFromFile(Form_main.exepath_ + '\' + frx_fname_,
          true);
      except
        msg2('�� ������ ���� ������ ' + frx_fname_, '��������!',
          MB_OK + MB_ICONSTOP);
        Exit;
      end;
    end;

    if fr_ = nil then
    begin
      msg2('�� ������ ����� ' + 'frxReport' + rep_cd_, '��������!',
        MB_OK + MB_ICONSTOP);
      Exit;
    end;

    //������������ ������� � ������
    TfrxReport(fr_).Variables['obj_'] := obj_;

    //���������� ������
    TfrxReport(fr_).Variables['period_'] := '''' + period_str_ + '''';

    if (rep_cd_ = '64') then
    begin
      //���������� ������
      TfrxReport(fr_).Variables['dt1_'] :=
        getS_date_param('REP_DT_BR1');
      TfrxReport(fr_).Variables['dt2_'] :=
        getS_date_param('REP_DT_BR2');

    end;

    if (rep_cd_ = '73') or (rep_cd_ = '74') then
    begin
      //���������� ������
      TfrxReport(fr_).Variables['dt1_'] :=
        getS_date_param('REP_DT_PROP1');
      TfrxReport(fr_).Variables['dt2_'] :=
        getS_date_param('REP_DT_PROP2');

      //���������� �������� ������
      if getS_list_param('REP_PROP_VAR') = 0 then
        TfrxReport(fr_).Variables['var_'] := QuotedStr('�����������')
      else
        TfrxReport(fr_).Variables['var_'] := QuotedStr('����������');
    end;

    if (rep_cd_ = '69') or (rep_cd_ = '82') then
    begin
      //���������� ���-�� ������� ��� ������
      if (getS_list_param('REP_DEB_VAR') = 0) then
        TfrxReport(fr_).Variables['txt_'] :=
          QuotedStr(FloatToStr(getS_double_param('REP_DEB_MONTH')) + ' ���')
      else
        TfrxReport(fr_).Variables['txt_'] :=
          QuotedStr(FloatToStr(getS_double_param('REP_DEB_SUMMA')) + ' ���.')
    end;

    if rep_cd_ = '61' then
    begin
      //������������ �������� � ������
      if wwDBLookupCombo4.LookupValue = '' then
      begin
        TfrxReport(fr_).Variables['oper_'] := '''' + ', �� ���� ���������' +
          '''';
      end
      else
      begin
        TfrxReport(fr_).Variables['oper_'] := '''' + ', �� ��������: ' +
          wwDBLookupCombo4.Text + '''';
      end;

      //������������ ����������� � ������
      if wwDBLookupCombo3.LookupValue <> '' then
      begin
        TfrxReport(fr_).Variables['org_'] := '''' + ', �� �����������: ' +
          wwDBLookupCombo3.Text + '''';
      end
      else
      begin
        TfrxReport(fr_).Variables['org_'] := '''' + ', �� ���� ������������'
          + '''';
      end;
    end;

    TfrxReport(fr_).PrepareReport(true);
    Form_status.close;
    Form_main.Panel2.Width := 0;
    TfrxReport(fr_).ShowPreparedReport;
    SetSize(1);

    if FF('Form_olap', 0) = 1 then
    begin
      Form_olap.PVDimToolBar1.Visible := false;
      Form_olap.PVColToolBar1.Visible := false;
      Form_olap.PVRowToolBar1.Visible := false;
      Form_olap.PivotGrid1.Visible := false;
      Form_olap.PVMeasureToolBar1.Visible := false;
      Form_olap.Button3.Visible := false;
    end;
  end;
end;

// ��� ������ - DBF

procedure TForm_tree_objects.repTypeDBF(path, fname: string);
begin
  //���������� ������
  Form_olap.Button4.Visible := true;
  prepData;
  Form_olap.Button4.Visible := false;

  if DM_Olap.Uni_data.RecordCount = 0 then
  begin
    msg2('��� ����������!', '��������!',
      MB_OK + MB_ICONSTOP);
    SetSize(1);
  end
  else
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    //�������� � DBF
    err_ := exp_to_dbf(DM_Olap.Uni_data, path + fname);
    Form_status.close;
    SetSize(1);
    if err_ = 0 then
      msg2('��������� � ' + path + fname, '��������', MB_OK +
        MB_ICONINFORMATION)
    else
      msg2('��������� ������ �� ����� �������� �����', '��������', MB_OK +
        MB_ICONINFORMATION);
  end;
end;

// ��� ������ - TXT

procedure TForm_tree_objects.repTypeTXT(path, fname: string);
begin
  //���������� ������
  Form_olap.Button4.Visible := true;
  prepData;
  Form_olap.Button4.Visible := false;

  if DM_Olap.Uni_data.RecordCount = 0 then
  begin
    msg2('��� ����������!', '��������!',
      MB_OK + MB_ICONSTOP);
    SetSize(1);
  end
  else
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    //�������� � TXT
    err_ := exp_to_txt(DM_Olap.Uni_data, path, fname, fldsum_, issum_,
      iscnt_,
      ishead_,
      isoem_, DM_Olap.Uni_tree_objects.FieldByName('bank_cd').AsString);
    Form_status.close;
    SetSize(1);
    if err_ = 0 then
      msg2('��������� � ' + path + fname, '��������', MB_OK +
        MB_ICONINFORMATION)
    else
      msg2('��������� ������ �� ����� �������� �����', '��������', MB_OK +
        MB_ICONINFORMATION);
  end;
end;

// ��� ������ - GRID

procedure TForm_tree_objects.repTypeGrid;
begin
  //���������� ������
  Form_olap.Button4.Visible := true;
  prepData;
  Form_olap.Button4.Visible := false;

  if DM_Olap.Uni_data.RecordCount = 0 then
  begin
    msg2('��� ����������!', '��������!',
      MB_OK + MB_ICONSTOP);
    SetSize(1);
  end
  else
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    Form_olap.cxGrid1.Align := alClient;
    Form_olap.cxGrid1.Visible := true;
    Form_olap.cxGrid1DBTableView1.DataController.CreateAllItems(False);
    Form_olap.cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := true;
    Form_status.close;
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
    DM_Olap.DS_mg1.DataSet := DM_Olap.OD_dat1;
    DM_Olap.DS_mg2.DataSet := DM_Olap.OD_dat2;
  end
  else
  begin
    DM_Olap.DS_mg1.DataSet := DM_Olap.OD_mg1;
    DM_Olap.DS_mg2.DataSet := DM_Olap.OD_mg2;
  end;
end;

procedure TForm_tree_objects.setAccess(rep_: string; have_current_: Integer;
  two_periods_: Integer);
begin
  DM_Olap.Uni_data.Active := false;

  //���� ����� �� ��������� � �� ��������� ����������, ���������
  if (Form_Main.flag3_ = 0) and (flag2_ = 0) then
    LoadSpr;

  //���������� ��������� ��������� �����
  setpsch;

  first_time_ := 1;
  allow_ := 1;
  Form_tree_objects.two_periods_ := two_periods_;
  Form_tree_objects.rep_cd_ := rep_;

  //��������� ������
  OD_reports2 := TOracleDataset.Create(nil);
  with OD_reports2 do
  begin
    Session := DM_Olap.OD_dat1.Session;
    SQL.Text := 'select r.id, r.maxlevel, nvl(r.can_detail,0) as can_detail,' +
      'r.name, nvl(r.fk_type,0) as fk_type, nvl(r.expand_row,0) as expand_row, ' +
      'nvl(r.expand_col,0) as expand_col, ' +
      'nvl(r.show_sel_org,0) as show_sel_org, nvl(r.show_sel_oper,0) as show_sel_oper, ' +
      'nvl(r.sel_many,0) as sel_many, ' +
      'nvl(r.show_paychk,0) as show_paychk, ' +
      'nvl(r.show_deb,0) as show_deb, ' +
      'nvl(r.have_date,0) as have_date, ' +
      'r.frx_fname, ' +
      'r.fname, nvl(r.iscnt,0) as iscnt, nvl(r.issum,0) as issum, nvl(r.ishead,0) as ishead, r.fldsum, nvl(r.isoem,0) as isoem,  ' +
      'r.frm_name, r.show_total_row, r.show_total_col ' +
      'from scott.reports r ' +
      'where r.cd=:cd_';
    DeclareVariable('cd_', otString);
    try
      ClearVariables;
      SetVariable('cd_', rep_);
      Open;
      can_detail_ := FieldByName('can_detail').AsInteger;
      max_level_ := FieldByName('maxlevel').AsInteger;
      sel_many_ := FieldByName('sel_many').AsInteger;
      //    have_date_:=FieldByName('have_date').AsInteger;
      rep_type_ := FieldByName('fk_type').AsInteger;
      expand_row_ := FieldByName('expand_row').AsInteger;
      expand_col_ := FieldByName('expand_col').AsInteger;
      show_sel_org_ := FieldByName('show_sel_org').AsInteger;
      show_sel_oper_ := FieldByName('show_sel_oper').AsInteger;
      show_paychk_ := FieldByName('show_paychk').AsInteger;
      show_total_row := FieldByName('show_total_row').AsInteger;
      show_total_col := FieldByName('show_total_col').AsInteger;
      show_deb_ := FieldByName('show_deb').AsInteger;
      iscnt_ := FieldByName('iscnt').AsInteger;
      issum_ := FieldByName('issum').AsInteger;
      ishead_ := FieldByName('ishead').AsInteger;
      fldsum_ := FieldByName('fldsum').AsString;
      rep_id_ := FieldByName('id').AsInteger;
      fname_ := FieldByName('fname').AsString;
      frx_fname_ := FieldByName('frx_fname').AsString;
      isoem_ := FieldByName('isoem').AsInteger;
      //����� ��� ������
      l_frm_name := FieldByName('frm_name').AsString;
      l_rep_name := FieldByName('name').AsString;
      //���������, ����� �����
      cxm1.Text := '�����:' + l_rep_name + ' CD:' + rep_ + ' frx:'
        + frx_fname_ + ' ����� �:' + fname_;
      cxm1.Hint := cxm1.Text;
    finally
      Close;
      Free;
    end;
  end;

  //������� ����� - ����� �� �������, ���� ��� �������
  //����� - ����� ������ (��� ��� ��� ������������ ��������� �
  //��-������� ����������� OD_data)
  if (l_frm_name <> 'Form_tarif_usl') and (FF('Form_tarif_usl', 1) = 1) then
  begin
    Form_tarif_usl.Close;
  end;
  
  //��������-�������� ����������� ����, � ����������� �� ���� ������
  if rep_type_ = 4 then
  begin
    if l_frm_name = 'Form_tarif_usl' then
      if FF(l_frm_name, 1) = 0 then
      begin
        Application.CreateForm(TForm_tarif_usl, Form_tarif_usl);
      end;
    if FF('Form_olap', 0) = 1 then
      Form_olap.Close;
  end
  else
  begin
    if FF('Form_tarif_usl', 1) = 1 then
      Form_tarif_usl.Close;
    if FF('Form_olap', 0) = 0 then
      Application.CreateForm(TForm_olap, Form_olap);

    //���� ��� ���, ��������� ������
    if rep_cd_ = '94' then
    begin
      Form_olap.btn4.Visible := true;
      Form_olap.btn2.Visible := true;
      Form_olap.btn3.Visible := true;
      Form_olap.chk1.Visible := true;
      Form_olap.chk2.Visible := true;
      Form_olap.cxComboBox1.Visible := true;
    end
    else
    begin
      Form_olap.btn4.Visible := false;
      Form_olap.btn2.Visible := false;
      Form_olap.btn3.Visible := false;
      Form_olap.chk1.Visible := false;
      Form_olap.chk2.Visible := false;
      Form_olap.cxComboBox1.Visible := false;
    end;

  end;

  SetSize(1);

  DM_Olap.Uni_tree_objects.Filter := 'obj_level<=' + inttostr(max_level_);
  DM_Olap.Uni_tree_objects.Filtered := true;

  //�������� ������������ ������ � ������������ � �-���� ������
  if (rep_type_ = 2) or (rep_type_ = 3) or (rep_type_ = 5) then
  begin
    Button3.Caption := '���������';
    Button2.Enabled := false;
  end
  else
  begin
    Button3.Caption := '�������';
    Button2.Enabled := true;
  end;

  //��������/������ ����� �� ������ ��� �����. ������ �������.
  if max_level_ >= 3 then
  begin
    Label3.Visible := True;
    Label4.Visible := True;
    Edit2.Visible := True;
    Edit3.Visible := True;
  end
  else
  begin
    Label3.Visible := False;
    Label4.Visible := False;
    Edit2.Visible := False;
    Edit3.Visible := False;
  end;

  //��������/������ ����� �����������
  if show_sel_org_ = 1 then
  begin
    //    Label10.Visible:=True;
    //    wwDBLookupCombo3.Visible:=True;
    GroupBox6.Visible := True;
  end
  else
  begin
    //    Label10.Visible:=False;
    //    wwDBLookupCombo3.Visible:=False;
    GroupBox6.Visible := False;
  end;

  //��������/������ ����� ��������������� ���� ����
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

  //��������/������ ����� ��������
  if show_sel_oper_ = 1 then
  begin
    GroupBox4.Visible := True;
    //    Label8.Visible:=True;
    //    wwDBLookupCombo4.Visible:=True;
  end
  else
  begin
    GroupBox4.Visible := False;
    //    Label8.Visible:=False;
    //    wwDBLookupCombo4.Visible:=False;
  end;

  //����������� �����������
  if can_detail_ = 1 then
  begin
    GroupBox5.Visible := True;
    //    Label6.Visible:=True;
    //    wwDBLookupCombo2.Visible:=True;

    with DM_Olap.OD_level do
    begin
      Active := false;
      SetVariable('id',
        DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger);
      SetVariable('max_level',
        max_level_);
      Active := true;
    end;
    wwDBLookupCombo2.LookupValue :=
      DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsString;
  end
  else
  begin
    GroupBox5.Visible := False;
  end;

  with DM_Olap.Uni_spr_params do
  begin
    Params.ParamByName('cd_').AsString := rep_;
    Active := False;
    Active := True;
  end;

  if DM_Olap.Uni_spr_params.RecordCount = 0 then
    GroupBox1.Visible := False
  else
    GroupBox1.Visible := True;

  //��� ������� � ������ (� ... ��)
  if two_periods_ = 1 then
  begin
    DBLookupComboBox6.Visible := true;
    Label1.Caption := '�';
    Label2.Visible := true;
    DBLookupComboBox5.ListField := 'MG1';
  end
  else
  begin
    DBLookupComboBox6.Visible := false;
    Label1.Caption := '��';
    Label2.Visible := false;
    DBLookupComboBox5.ListField := 'MG2';
  end;

  //��� �������� ���������� ����� �������������� ������
{  if rep_ = '14' then
    CheckBox2.Visible:=True
  else
    CheckBox2.Visible:=False;}

  //��� ����������� OLAP ���������� ����� ����.���.���
{  if show_paychk_ = 1 then
    CheckBox3.Visible:=True
  else
    CheckBox3.Visible:=False;}

  //��� ����������� FR ���������� ������� ������� �����������
{  if show_deb_ = 1 then
    GroupBox3.Visible:=True
  else
    GroupBox3.Visible:=False;}

  //������ ����������
{  if rep_ = '56' then
  begin
    GroupBox7.Visible := True;
    //    wwDBLookupCombo1.Visible:=True;
    //    Label5.Visible:=True;
    DM_Olap.OD_spk.Active := True;
  end
  else
  begin}
//    GroupBox7.Visible := False;
    //    wwDBLookupCombo1.Visible:=False;
    //    Label5.Visible:=False;
//    DM_Olap.OD_spk.Active := False;
//  end;

  if have_current_ = 1 then
  begin
    CheckBox5.Enabled := true;
  end
  else
  begin
    CheckBox5.Enabled := false;
    CheckBox5.Checked := false;
  end;

  with DM_Olap.OD_mg1 do
  begin
    active := false;
    SetVariable('id_', rep_id_);
    active := true;
  end;

  with DM_Olap.OD_mg2 do
  begin
    active := false;
    SetVariable('id_', rep_id_);
    active := true;
  end;

  with DM_Olap.OD_dat1 do
  begin
    active := false;
    SetVariable('id_', rep_id_);
    active := true;
  end;

  with DM_Olap.OD_dat2 do
  begin
    active := false;
    SetVariable('id_', rep_id_);
    active := true;
  end;

  Panel1.AutoSize := True;
end;

procedure TForm_tree_objects.FormCreate(Sender: TObject);
begin
  //���������� ����������� � ������
  flag_ := 0;
  allow_ := 1;
  DM_Olap.OD_oper.Active := True;
  DM_Olap.OD_org.Active := True;
  DM_Olap.OD_org_olap.Active := True;
  DM_Olap.OD_org2_olap.Active := True;
  DM_Olap.OD_usl_olap.Active := True;
  DM_Olap.OD_uslm_olap.Active := True;
  DM_Olap.OD_trest_olap.Active := True;
  DM_Olap.OD_reu_olap.Active := True;
  DM_Olap.OD_status_olap.Active := True;
  DM_Olap.OD_sch_olap.Active := True;
  DM_Olap.OD_psch_olap.Active := True;
  DM_Olap.OD_spul_olap.Active := True;
  DM_Olap.OD_lsk_tp_olap.Active := True;
end;

procedure TForm_tree_objects.BitBtn1Click(Sender: TObject);
begin
  Form_main.Panel2.Width := 4;
end;

procedure TForm_tree_objects.N1Click(Sender: TObject);
begin
  deselObjects(-1);
end;

procedure TForm_tree_objects.deselObjects(curObjId: Integer);
var
  l_recno: Integer;
begin
  // ����� ������� � �������� � ������
  with DM_Olap.Uni_tree_objects do
  begin
    DisableControls;
    l_recno := RecNo;
    if State = dsEdit then
      Post;
    First;
    while not Eof do
    begin
      if (FieldByName('sel').AsInteger = 0) and
        (FieldByName('id').AsInteger <> curObjId) then
      begin
        // ����� ������� � ������ ��������
        Edit;
        FieldByName('sel').AsInteger := 1;
        Post;
      end
      else if (FieldByName('id').AsInteger = curObjId) then
      begin
        // ���������� ������� �� ��������� �������
        Edit;
        FieldByName('sel').AsInteger := 0;
        Post;
      end;

      Next;
    end;
    RecNo := l_recno;
    EnableControls;
  end;
end;

procedure TForm_tree_objects.Button2Click(Sender: TObject);
begin
  isLoadingCube := True;
  LoadData(1);
  isLoadingCube := False;
end;

procedure TForm_tree_objects.Button3Click(Sender: TObject);
begin
  isLoadingCube := True;
  LoadData(0);
  isLoadingCube := False;
end;

procedure TForm_tree_objects.SetSize(var_: Integer);
begin
  //���� ����� �� ��� ��������� ����������, �����
  if flag2_ <> 0 then
  begin
    msg2('��� �������� ������������, �����', '', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  //������ ������ ������ ��������
  if var_ = 1 then
    Form_Main.Panel2.Width := 370
  else if var_ = 0 then
    Form_Main.Panel2.Width := 2
  else if var_ = 2 then
  begin
    if Form_Main.Panel2.Width <= 2 then
      Form_Main.Panel2.Width := 370
    else
      Form_Main.Panel2.Width := 2;
  end;
end;

procedure TForm_tree_objects.LoadSpr;
begin
  //���� �������� ������������
  flag2_ := 1;
  Panel2.Visible := True;
  Update;
  //DataModule1.OraclePackage1.CallProcedure('scott.utils.prep_users_tree',
  //  [parNone]);
  DataModule1.UniStoredProc1.StoredProcName := 'scott.utils.prep_users_tree';
  DataModule1.UniStoredProc1.Params.Clear;
  DataModule1.UniStoredProc1.ExecProc;

  Panel2.Visible := False;

  //�������� ���� �������� ������������
  flag2_ := 0;
  DM_Olap.Uni_data.Active := false;
  //����������� ���������
  Form_Main.flag3_ := 1;
end;

procedure TForm_tree_objects.MemTableEh2AfterScroll(DataSet: TDataSet);
var
  str_: string;
begin
end;

procedure TForm_tree_objects.sel_tree_obj(trnode: TMemRecViewEh; sel_: Integer);
var
  a: Integer;
begin
  //����������� ������� ������� ���� ���������� �� �������� ��������
  for a := 0 to trnode.NodesCount - 1 do
  begin
    trnode.NodeItems[a].Rec.DataValues['sel', dvvCurValueEh] := sel_;
    sel_tree_obj(trnode.NodeItems[a], sel_);
  end;
end;

{procedure TForm_tree_objects.desel_all_obj(tmem: TMemTableEh; id_: Integer);
var
  a: Integer;
begin
  //������� ������ ������� ���� ��������
  for a := 0 to tmem.rec.RecordsList.Count - 1 do
  begin
    if tmem.rec.RecordsList.Rec[a].DataValues['id', dvvCurValueEh] <> id_ then
      tmem.rec.RecordsList.Rec[a].DataValues['sel', dvvCurValueEh] := 1;
    //    ShowMessage(tmem.rec.RecordsList.Rec[a].DataValues['name', dvvCurValueEh]);
  end;
end;}

procedure TForm_tree_objects.MemTableEh2SetFieldValue(
  MemTable: TCustomMemTableEh; Field: TField; var Value: Variant);
begin
  {  if flag_ = 0 then
    begin
      flag_ := 1;
      //�������� ���� �������� � ����
      DM_Olap.Uni_tree_objects.FieldByName('sel').AsInteger := VarAsType(Value,
        varInteger);
      if Form_tree_objects.sel_many_ <> 0 then
      begin
        //�������� �������� � �������� ��������
        sel_tree_obj(DM_Olap.MemTableEh2.TreeNode, VarAsType(Value, varInteger));
      end
      else
      begin
        //�������� �������� � �� ���� �������� (�������� ����)
        desel_all_obj(DM_Olap.MemTableEh2,
          DM_Olap.MemTableEh2.FieldByName('id').AsInteger);
      end;
      DBGridEh1.Refresh;
      flag_ := 0;
    end;}
end;

procedure TForm_tree_objects.exp;
var
  Excel: OleVariant;
  i: Integer;
begin
  //������� � Excel
  if (rep_type_ = 1) or (rep_type_ = 0) then
  begin
    //�� OLAP
    Excel := CreateOleObject('Excel.Application');
    Form_olap.PivotGrid1.ExportToExcel(Excel, true, true, true,
      Form_olap.rep_name_ + objexcel_);
    i := Excel.WorkBooks[1].WorkSheets[1].UsedRange.Rows.Count;
    if DataModule1.OraclePackage1.CallIntegerFunction
      ('scott.Utils.get_int_param', ['REP_OLAP_SIGN_DIR']) = 1 then
    begin
      Excel.WorkBooks[1].WorkSheets[1].Cells[i + 3, 3] :=
        DataModule1.OD_rkc.FieldByName('head_name').AsString +
        ' _________________/' +
        DataModule1.OD_rkc.FieldByName('manager').AsString;
    end;
    Excel.Visible := true;
  end
  else if (rep_cd_ = '92') then
  begin
    //�������� � ����
    exp_uszn;
  end
  else if (rep_cd_ = '94') then
  begin
    //�������� ������ ������� ��-8.7.0.1 ��� ��� ���
    exp_gis1;
  end;

end;

procedure TForm_tree_objects.imp;
begin

end;

//�������� ������� ���.������ � ������, ����� ��������� �� ��� ���

procedure TForm_tree_objects.imp_gis_LS;
var
  lsXL: variant;
  path, houseFname: string;
  a, err: Integer;
  elsk, lsk: string;
begin
  // ������ EXCEL
  lsXL := CreateOleObject('Excel.Application');
  //����� ���� �������
  dlgOpen1.InitialDir := '\temp\';
  dlgOpen1.FileName := '';
  dlgOpen1.Title := '�������� ���� ������� ������� ���.������ - ���������';
  dlgOpen1.Filter := '*.xl* ����� (*.xl*)|*.xl*|��� ����� (*.*)|*.*';
  dlgOpen1.FilterIndex := 1;
  dlgOpen1.Execute;

  Form_olap.cxm1.Lines.Clear;
  if Form_olap.chk1.Checked then
    Form_olap.cxm1.visible := true
  else
    Form_olap.cxm1.visible := false;

  if dlgOpen1.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    Form_olap.cxm1.Lines.Add('�������������� ����:' + dlgOpen1.FileName);
  end;

  houseFname := ExtractFileName(dlgOpen1.FileName);
  path := ExtractFilePath(dlgOpen1.FileName);
  lsXL.WorkBooks.Open(path + houseFname);

  a := 3;
  //��������� ������ �.�.
  while true do
  begin
    //������ ������� ����
    elsk := lsXL.WorkBooks[1].WorkSheets[1].Cells[a, 2];
    // �������, ��� 21 ���.27.09.17
  //������ ���.���� (lsk)
    lsk := lsXL.WorkBooks[1].WorkSheets[1].Cells[a, 1];
    // �������, ��� 2 ���.27.09.17
    if elsk <> '' then
    begin
      //���� �������� ������ �.�.
      //���������� ELSK � ���� �������
      err := DataModule1.OraclePackage1.CallIntegerFunction
        ('scott.C_KART.set_elsk',
        [lsk, elsk]);
      if err = 0 then
        Form_olap.cxm1.Lines.Add('�� ���.�����:' + lsk + ' ���������� ����:' +
          elsk)
      else
        Form_olap.cxm1.Lines.Add('�� ���.�����:' + lsk + ' �� ���������� ����:'
          + elsk);

    end
    else if lsk = '' then
      Break;
    a := a + 1;
  end;
  DataModule1.OracleSession1.Commit;
  lsXL.Quit;
  lsXL := Unassigned;

  Form_olap.cxm1.Lines.Add('��������� ����:' + dlgOpen1.FileName);
  msg2('������ ����������!', '��������!', MB_OK + MB_ICONINFORMATION);
end;

//�������� ���.������ � ������, ����� ��������� �������� �� ��� ���

procedure TForm_tree_objects.imp_gis_ELS;
var
  lsXL: variant;
  path, houseFname: string;
  a, err: Integer;
  elsk, lsk: string;
begin
  // ������ EXCEL
  lsXL := CreateOleObject('Excel.Application');
  //����� ���� �������
  dlgOpen1.InitialDir := '\temp\';
  dlgOpen1.FileName := '';
  dlgOpen1.Title := '�������� ���� ��������� � ���';
  dlgOpen1.Filter := '*.xl* ����� (*.xl*)|*.xl*|��� ����� (*.*)|*.*';
  dlgOpen1.FilterIndex := 1;
  dlgOpen1.Execute;

  Form_olap.cxm1.Lines.Clear;
  if Form_olap.chk1.Checked then
    Form_olap.cxm1.visible := true
  else
    Form_olap.cxm1.visible := false;

  if dlgOpen1.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    Form_olap.cxm1.Lines.Add('�������������� ����:' + dlgOpen1.FileName);
  end;

  houseFname := ExtractFileName(dlgOpen1.FileName);
  path := ExtractFilePath(dlgOpen1.FileName);
  lsXL.WorkBooks.Open(path + houseFname);

  a := 2;
  //��������� ������ �.�.
  while true do
  begin
    //������ ������� ����
    elsk := lsXL.WorkBooks[1].WorkSheets[1].Cells[a, 2];
    //������ ���.���� (lsk)
    lsk := lsXL.WorkBooks[1].WorkSheets[1].Cells[a, 1];
    if elsk <> '' then
    begin
      //���� �������� ������ �.�.
      //���������� ELSK � ���� �������
      err := DataModule1.OraclePackage1.CallIntegerFunction
        ('scott.C_KART.set_elsk',
        [lsk, elsk]);
      if err = 0 then
        Form_olap.cxm1.Lines.Add('�� ���.�����:' + lsk + ' ���������� ����:' +
          elsk)
      else
        Form_olap.cxm1.Lines.Add('�� ���.�����:' + lsk + ' �� ���������� ����:'
          + elsk);

    end
    else if lsk = '' then
      Break;
    a := a + 1;
  end;
  DataModule1.OracleSession1.Commit;
  lsXL.Quit;
  lsXL := Unassigned;

  Form_olap.cxm1.Lines.Add('��������� ����:' + dlgOpen1.FileName);
  msg2('������ ����������!', '��������!', MB_OK + MB_ICONINFORMATION);
end;

//�������� ������� ��� � ������, ����� ������ � �� - 10 ������

procedure TForm_tree_objects.imp_gis_MKD_10;
var
  houseXL: variant;
  path, houseFname: string;
  a, b: Integer;
  entryDtS, houseAdr, entryAdr, kwAdr, kwNum, houseGUID: string;
  houseKlsk, entryKlsk, entryNum, entryEt, kwEntry, err: Integer;
  entryDt: TDateTime;
  flag: bool;
begin

  // ������ EXCEL
  houseXL := CreateOleObject('Excel.Application');

  //����� ���� �������
  dlgOpen1.InitialDir := '\temp\';
  dlgOpen1.FileName := '';
  dlgOpen1.Title := '�������� ���� ������� ������� ���';
  dlgOpen1.Filter := '*.xl* ����� (*.xl*)|*.xl*|��� ����� (*.*)|*.*';
  dlgOpen1.FilterIndex := 1;
  dlgOpen1.Execute;

  Form_olap.cxm1.Lines.Clear;
  if Form_olap.chk1.Checked then
    Form_olap.cxm1.visible := true
  else
    Form_olap.cxm1.visible := false;

  if dlgOpen1.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    Form_olap.cxm1.Lines.Add('�������������� ����:' + dlgOpen1.FileName);
  end;

  b := 3;
  houseFname := ExtractFileName(dlgOpen1.FileName);
  path := ExtractFilePath(dlgOpen1.FileName);
  houseXL.WorkBooks.Open(path + houseFname);

  try
    //��������� ���������� �����
    while true do
    begin
      houseAdr := houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 1];
      if houseAdr = '' then
        Break;
      houseGUID := houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 2];
      if (houseGUID <> '') then
      begin
        Form_olap.cxm1.Lines.Add('������ GUID ����:' + houseGUID);
        houseKlsk := DataModule1.OraclePackage1.CallFloatFunction
          ('scott.p_houses.get_klsk_by_guid',
          [houseGUID]);
        Form_olap.cxm1.Lines.Add('������ klsk ����:' + IntToStr(houseKlsk));
        if houseKlsk = -1 then
        begin
          Form_olap.cxm1.Lines.Add('������: �� ���������� GUID ' + houseGUID +
            ', �� ������ ���!');
        end
        else
        begin
          //��� ������, ���������� ���������
          setStrIdPar(houseKlsk, '', '���������',
            houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 4]);
          Form_olap.cxm1.Lines.Add('�������� �������� ���������');
          setNumPar(houseKlsk, '', '����� ������� ������',
            houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 5]);
          Form_olap.cxm1.Lines.Add('�������� �������� ����� ������� ������');
          //setNumPar(houseKlsk, '', '���.��.���.���.�� ����.', houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 6]);
          //Form_olap.cxm1.Lines.Add('�������� �������� ���.��.���.���.�� ����.');
          setNumPar(houseKlsk, '', '��� ����� � �����.',
            houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 6]);
          Form_olap.cxm1.Lines.Add('�������� �������� ��� ����� � �����.');
          setNumPar(houseKlsk, '', '���������',
            houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 7]);
          Form_olap.cxm1.Lines.Add('�������� �������� ���������');
          setNumPar(houseKlsk, '', '���-�� ��������� ������',
            houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 8]);
          Form_olap.cxm1.Lines.Add('�������� �������� ���-�� ��������� ������');
          setStrPar(houseKlsk, '', '������.�����',
            houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 12]);
          Form_olap.cxm1.Lines.Add('�������� �������� ������.�����');

          //����� �� ������ ����� �������� ����� ����, ���������� ������� ��, ��� �������� �� ��� ����������
          a := 3;
          while true do
          begin
            entryAdr := houseXL.WorkBooks[1].WorkSheets[7].Cells[a, 1];
            if entryAdr = '' then
              Break;
            if houseAdr = entryAdr then
            begin
              entryNum := houseXL.WorkBooks[1].WorkSheets[7].Cells[a, 2];
              entryDtS := houseXL.WorkBooks[1].WorkSheets[7].Cells[a, 4];
              entryDt := StrToDateTime(entryDtS);

              entryEt := houseXL.WorkBooks[1].WorkSheets[7].Cells[a, 3];
              entryKlsk := DataModule1.OraclePackage1.CallIntegerFunction
                ('scott.p_vvod.create_vvod_by_house_klsk',
                [houseKlsk, entryNum]);
              Form_olap.cxm1.Lines.Add('������ klsk ��������:' +
                IntToStr(entryKlsk) + ' �����:' + IntToStr(entryNum));
              setNumPar(entryKlsk, '', '���������', entryEt);
              Form_olap.cxm1.Lines.Add('�������� �������� ���������');
              setDtPar(entryKlsk, '', '���� ���������', entryDt);
              Form_olap.cxm1.Lines.Add('�������� �������� ���� ���������');
            end;

            a := a + 1;
          end;

          //����� �� ������ ����� ��������� ����� ����, �������� �� ��� ����������
          a := 3;
          flag := false;
          while true do
          begin
            kwAdr := houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 1];
            if kwAdr = '' then
              Break;
            if houseAdr = kwAdr then
            begin
              flag := true;
              kwNum := houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 2];
              kwEntry := houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 3];
              Form_olap.cxm1.Lines.Add('�������������� ���������:' + kwAdr + ', '
                + kwNum);
              err := DataModule1.OraclePackage1.CallIntegerFunction
                ('scott.C_KART.set_kw_par',
                [houseGUID, kwNum, kwEntry]);
              if err = 0 then
                Form_olap.cxm1.Lines.Add('�� ���������:' + kwAdr +
                  ' ������� ����������� ���������')
              else
                Form_olap.cxm1.Lines.Add('�� ���������:' + kwAdr +
                  ' �� ����������� ���������!');
            end
            else if ((flag) and (houseAdr <> kwAdr)) then
            begin
              //������� ��������� ����, �����
              break;
            end;

            a := a + 1;
          end;

        end;
      end;

      b := b + 1;
    end;

  finally
    Form_olap.cxm1.visible := true;
    houseXL.Quit;
    houseXL := Unassigned;
  end;
  DataModule1.OracleSession1.Commit;
  Form_olap.cxm1.visible := true;
  Form_olap.cxm1.Lines.Add('��������� ����:' + dlgOpen1.FileName);
  msg2('������ ����������!', '��������!', MB_OK + MB_ICONINFORMATION);
end;

//�������� ������ �������

procedure TForm_tree_objects.exp_gis1;
type
  PHeadList = ^AList;
  AList = record
    I: Integer;
    S: string;
  end;
var
  lskXL, houseXL: variant;
  suffix, reu, path, lskFname, houseFname, entr: string;
  a, b, c, e, f, g, i, houseId: Integer;
  d: TUniQuery;
  acceptLsk, debug: Boolean;
begin
  debug := Form_olap.chk1.Checked;
  if debug then
  begin
    Form_olap.cxm1.Visible := True;
  end;

  // ������ EXCEL
  lskXL := CreateOleObject('Excel.Application');
  // ���� �� ������� ������ � ���������� ���������
  lskXL.DisplayAlerts := false;

  houseXL := CreateOleObject('Excel.Application');
  // ���� �� ������� ������ � ���������� ���������
  houseXL.DisplayAlerts := false;

  //����� ���� ������� ������� ��
  dlgOpen1.InitialDir := '\temp\templates\';
  dlgOpen1.FileName := '';
  dlgOpen1.Title := '�������� ���� ������� ������� ��';
  dlgOpen1.Filter := '*.xl* ����� (*.xl*)|*.xl*|��� ����� (*.*)|*.*';
  dlgOpen1.FilterIndex := 1;
  dlgOpen1.Execute;

  if dlgOpen1.FileName = '' then
  begin
    msg2('���� ������� ������� �� �� ������!', '��������!', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
  Form_olap.cxm1.Lines.Add('Start log!');

  if (Form_olap.cxComboBox1.ItemIndex = 0) then
    suffix := '_MAIN'
  else if (Form_olap.cxComboBox1.ItemIndex = 1) then
    suffix := '_RSO'
  else if (Form_olap.cxComboBox1.ItemIndex = 2) then
    suffix := '_CAP';
  lskFname := ExtractFileName(dlgOpen1.FileName);

  path := ExtractFilePath(dlgOpen1.FileName);

  //����� ���� ������� ������� ���
  dlgOpen1.FileName := '';
  dlgOpen1.Title := '�������� ���� ������� ������� ���';
  dlgOpen1.Filter := '*.xl* ����� (*.xl*)|*.xl*|��� ����� (*.*)|*.*';
  dlgOpen1.FilterIndex := 1;
  dlgOpen1.Execute;

  if dlgOpen1.FileName = '' then
  begin
    msg2('���� ������� ������� ��� �� ������!', '��������!', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
  houseFname := ExtractFileName(dlgOpen1.FileName);
  Form_olap.Button4.Visible := true;
  Form_olap.Update;
  reu := 'xx';
  houseId := -1;
  a := 3;
  b := 3;
  c := 3;
  e := 3;
  f := 3;
  g := 1;

  d := DM_Olap.Uni_data;
  d.First;
  d.DisableControls;
  while not d.Eof do
  begin

    if debug then
    begin
      Form_olap.cxm1.Lines.Add('������� ������: ' + IntToStr(a));
    end;

    // ����������� ������� �����
    if ((Form_olap.chk2.checked = true) or (d.FieldByName('elsk').AsString <>
      '')) and
      ((Form_olap.cxComboBox1.ItemIndex = 0) and (d.FieldByName('tp').AsString =
      'LSK_TP_MAIN') or
      (Form_olap.cxComboBox1.ItemIndex = 1) and (d.FieldByName('tp').AsString =
      'LSK_TP_RSO') or
      (Form_olap.cxComboBox1.ItemIndex = 2) and (d.FieldByName('tp').AsString =
      'LSK_TP_ADDIT')) then
      acceptLsk := true
    else
      acceptLsk := false;

    if debug then
    begin
      Form_olap.cxm1.Lines.Add('������� cxComboBox1.ItemIndex='
        + IntToStr(Form_olap.cxComboBox1.ItemIndex));
      Form_olap.cxm1.Lines.Add('��� ���: ' + d.FieldByName('tp').AsString);
      if acceptLsk then
        Form_olap.cxm1.Lines.Add('�����������')
      else
        Form_olap.cxm1.Lines.Add('�� �����������')
    end;

    if (d.FieldByName('reu').AsString <> reu) then
    begin
      //������� ���������� ����
      if reu <> 'xx' then
      begin
        lskXL.ActiveWorkBook.SaveAs(path + reu + suffix + '_' + lskFname);
        lskXL.ActiveWorkBook.Close;

        houseXL.ActiveWorkBook.SaveAs(path + reu + suffix + '_' + houseFname);
        houseXL.ActiveWorkBook.Close;
        a := 3;
        b := 3;
        c := 3;
        e := 3;
        f := 3;
        g := 1;
      end;
      reu := d.FieldByName('reu').AsString;
      lskXL.WorkBooks.Open(path + lskFname);
      houseXL.WorkBooks.Open(path + houseFname);
    end;

    //������ ����� ���
    if (d.FieldByName('house_id').AsInteger <> houseId) then
    begin
      houseId := d.FieldByName('house_id').AsInteger;
      entr := '-1'; //�������

      //���
      //�������������� ���
      if debug then
        Form_olap.cxm1.Lines.Add('1. ���=' + IntToStr(houseId));
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 1] :=
        d.FieldByName('adr').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 2] :=
        d.FieldByName('houseguid').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 3] := '���';
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 4] := '���';
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 5] :=
        d.FieldByName('oktmo').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 6] :=
        d.FieldByName('cond').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 8] :=
        d.FieldByName('house_opl').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 9] :=
        d.FieldByName('house_year').AsFloat;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 10] :=
        d.FieldByName('house_et').AsFloat;
      //houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 11]:= d.FieldByName('house_unet').AsFloat;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 11] :=
        d.FieldByName('house_cult').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 12] :=
        d.FieldByName('clk_zone').AsString;
      houseXL.WorkBooks[1].WorkSheets[1].Cells[b, 13] :=
        d.FieldByName('house_cad_no').AsString;
      b := b + 1;
    end;

    if debug then
      Form_olap.cxm1.Lines.Add('1. ��=' + d.FieldByName('lsk').AsString);

    //���
    //������� ���������
    if acceptLsk then
    begin
      if (d.FieldByName('stat_cd').AsString = 'NLIV') then
      begin
        if debug then
          Form_olap.cxm1.Lines.Add('2');
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 1] :=
          d.FieldByName('adr').AsString;
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 2] :=
          d.FieldByName('kw').AsString;
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 3] :=
          d.FieldByName('comm_use').AsString;
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 4] :=
          d.FieldByName('opl').AsString;
        // �� ��������� ����������� ����� ����, ������� �����: INT004072 �������� � ��� �� �������.
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 5] := '���';
        // ���. ������������ �����������
        houseXL.WorkBooks[1].WorkSheets[5].Cells[e, 6] := '��';
        e := e + 1;
      end;
    end;

    //��������
    if (d.FieldByName('entr').AsString <> entr) then
    begin
      entr := d.FieldByName('entr').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('������ �������: ' + entr);
      end;
      houseXL.WorkBooks[1].WorkSheets[7].Cells[f, 1] :=
        d.FieldByName('adr').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.' + intToStr(f) + '.1');
        Form_olap.cxm1.Lines.Add('�����: ' + d.FieldByName('adr').AsString);
      end;
      houseXL.WorkBooks[1].WorkSheets[7].Cells[f, 2] :=
        d.FieldByName('entr').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.' + intToStr(f) + '.2');
        Form_olap.cxm1.Lines.Add('�����: ' + d.FieldByName('entr').AsString);
      end;
      houseXL.WorkBooks[1].WorkSheets[7].Cells[f, 3] :=
        d.FieldByName('ent_et').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.' + intToStr(f) + '.3');
        Form_olap.cxm1.Lines.Add('���������: ' +
          d.FieldByName('ent_et').AsString);
      end;
      houseXL.WorkBooks[1].WorkSheets[7].Cells[f, 4] :=
        d.FieldByName('ent_date').AsString;
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.' + intToStr(f) + '.4');
        Form_olap.cxm1.Lines.Add('���� ���������: ' +
          d.FieldByName('ent_date').AsString);
      end;
      // ���. ������������ �����������
      houseXL.WorkBooks[1].WorkSheets[7].Cells[e, 5] := '��';
      if debug then
      begin
        Form_olap.cxm1.Lines.Add('3.' + intToStr(f) + '.5');
        Form_olap.cxm1.Lines.Add('��� ������������: ��');
      end;

      f := f + 1;
    end;

    //����� ���������
    if acceptLsk then
    begin
      if debug then
        Form_olap.cxm1.Lines.Add('4');
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 1] :=
        d.FieldByName('adr').AsString;
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 2] :=
        d.FieldByName('kw').AsString;
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 3] :=
        d.FieldByName('entr').AsString;
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 4] :=
        d.FieldByName('charact').AsString;
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 5] :=
        Trim(d.FieldByName('opl').AsString);
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 6] :=
        Trim(d.FieldByName('opl').AsString);
      // �� ��������� ����������� ����� ����, ������� �����: INT004072 �������� � ��� �� �������.
      houseXL.WorkBooks[1].WorkSheets[10].Cells[a, 7] := '���';
      // ���. ������������ �����������
      houseXL.WorkBooks[1].WorkSheets[10].Cells[e, 8] := '��';

      // ������� ����
      // �������� ��������
      if debug then
        Form_olap.cxm1.Lines.Add('5.' + intToStr(i));
      // ������� "�������� ��������"
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 1] := IntToStr(g); // ����� ��
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 2] :=
        d.FieldByName('lsk').AsString;
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 3] :=
        d.FieldByName('serviceid').AsString;
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 4] :=
        d.FieldByName('tp2').AsString;
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 5] :=
        d.FieldByName('status').AsString;

      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 7] :=
        d.FieldByName('k_fam').AsString;
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 8] :=
        d.FieldByName('k_im').AsString;
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 9] :=
        d.FieldByName('k_ot').AsString;

      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 18] :=
        d.FieldByName('opl').AsString;
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 19] :=
        d.FieldByName('opl').AsString;
      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 20] :=
        d.FieldByName('opl').AsString;

      lskXL.WorkBooks[1].WorkSheets[1].Cells[c, 21] :=
        d.FieldByName('kpr').AsFloat;

      if debug then
        Form_olap.cxm1.Lines.Add('6');
      // ������� "���������"
      lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 1] := IntToStr(g);
      //����� ���������
      lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 2] :=
        d.FieldByName('adr').AsString;
      lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 3] :=
        d.FieldByName('houseguid').AsString;

      // ��� ���������
      if (d.FieldByName('stat_cd').AsString = 'NLIV') then
        lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 4] := '������� ���������'
      else
        lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 4] := '����� ���������';

      lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 5] :=
        d.FieldByName('kw').AsString;
      lskXL.WorkBooks[1].WorkSheets[2].Cells[a, 8] :=
        d.FieldByName('part').AsFloat;

      a := a + 1;
      g := g + 1;
      c := c + 1;
    end;

    d.Next;
  end;
  d.EnableControls;

  //��������� � ������� ������������ �����
  lskXL.ActiveWorkBook.SaveAs(path + reu + suffix + '_' + lskFname);
  lskXL.ActiveWorkBook.Close;

  houseXL.ActiveWorkBook.SaveAs(path + reu + suffix + '_' + houseFname);
  houseXL.ActiveWorkBook.Close;

  Form_olap.Button4.Visible := False;
  msg2('���������� ��������� � �����:' + path, '��������!', MB_OK +
    MB_ICONINFORMATION);

end;

//�������� � Excel

procedure TForm_tree_objects.exp_uszn;
type
  PHeadList = ^AList;
  AList = record
    I: Integer;
    S: string;
  end;
var
  XL: variant;
  a, x, y, i: Integer;
  HeadList: TList;
  ARecord: PHeadList;
  adr, str, str2, street, nd, korp, kw: string;
begin
  // ������ EXCEL
  XL := CreateOleObject('Excel.Application');
  // ���� �� ������� ������ � ���������� ���������
  XL.DisplayAlerts := false;

  //��������� ���
  dlgOpen1.Title := '�������� ���� ������';
  dlgOpen1.Filter := '*.xl* ����� (*.xl*)|*.xl*|��� ����� (*.*)|*.*';
  dlgOpen1.FilterIndex := 1;
  dlgOpen1.Execute;

  if dlgOpen1.FileName = '' then
  begin
    msg2('���� �� ������!', '��������!', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  XL.WorkBooks.Open(dlgOpen1.FileName);

  //��������� ������ ��������� ��������� XLS - �����
  HeadList := TList.Create;
  str := 'xx';
  str2 := '';
  x := 1;
  while True do
  begin
    str := XL.WorkBooks[1].WorkSheets[1].Cells[3, x];
    str2 := str2 + ',' + str;
    if str = '' then
      Break;
    New(ARecord);
    ARecord^.I := x;
    ARecord^.S := str;
    HeadList.Add(ARecord);
    x := x + 1;
  end;

  Application.MessageBox(PChar('� ������ ���������� � ���� ��������� ���������� ����' +
    #13#10 + ' SPUL.CD_USZN (������ ���� � �������� ��� � EXCEL �����!'),
    '��������!', MB_OK + MB_TOPMOST);

  Application.MessageBox(PChar('C����� ���������� EXCEL �����:' + #13#10 +
    str2), '��������!', MB_OK + MB_ICONQUESTION + MB_TOPMOST);

  //�������� ���� �� �����, ������� ������
  y := 4;
  street := 'xx';
  while True do
  begin
    street := XL.WorkBooks[1].WorkSheets[1].Cells[y, 4];
    if street = '' then
      Break;
    nd := XL.WorkBooks[1].WorkSheets[1].Cells[y, 5];
    korp := XL.WorkBooks[1].WorkSheets[1].Cells[y, 6];
    kw := XL.WorkBooks[1].WorkSheets[1].Cells[y, 7];
    adr := street + nd + korp + kw;

    //����� ������ � �������� ������
    try
      if DM_Olap.Uni_data.Locate('nylic;ndom;nkorp;nkw',
        VarArrayOf([street, nd, korp, kw]), [loCaseInsensitive]) then
      begin
        //������ �����
        //��� �� ��������� � ��������� ����������
        for i := 0 to HeadList.count - 1 do
        begin
          ARecord := HeadList.Items[i];
          str := XL.WorkBooks[1].WorkSheets[1].Cells[y, i + 1];
          //if (str = '') or (str = '0') then //���� ������ ������������� ����
          //begin            �������� �������� ���.01.08.2019

          if DM_Olap.Uni_data.FieldByName(ARecord.S).DataType
            = ftString then
            XL.WorkBooks[1].WorkSheets[1].Cells[y, i + 1] := '''' +
              DM_Olap.Uni_data.FieldByName(ARecord.S).AsString
          else if DM_Olap.Uni_data.FieldByName(ARecord.S).DataType
            = ftFloat then
            XL.WorkBooks[1].WorkSheets[1].Cells[y, i + 1] :=
              DM_Olap.Uni_data.FieldByName(ARecord.S).AsFloat
          else if DM_Olap.Uni_data.FieldByName(ARecord.S).DataType
            = ftInteger then
            XL.WorkBooks[1].WorkSheets[1].Cells[y, i + 1] :=
              DM_Olap.Uni_data.FieldByName(ARecord.S).AsInteger
          else if DM_Olap.Uni_data.FieldByName(ARecord.S).DataType
            = ftSmallInt then
            XL.WorkBooks[1].WorkSheets[1].Cells[y, i + 1] :=
              DM_Olap.Uni_data.FieldByName(ARecord.S).AsInteger
          else
            XL.WorkBooks[1].WorkSheets[1].Cells[y, i + 1] :=
              DM_Olap.Uni_data.FieldByName(ARecord.S).AsFloat;
          //end;
        end;
      end
      else
      begin
        ShowMessage('�� ������ �����:' + adr);
      end;

    except
      on E: Exception do
      begin
        ShowMessage('������ ��� �������� � EXCEL');
        ShowMessage(E.Message);
        ShowMessage(adr);
      end;
    end;

    y := y + 1;
  end;

  HeadList.Free;
  msg2('������ ��������, ��������� ���!', '��������!', MB_OK +
    MB_ICONINFORMATION);
  // ������ ��� �������
  XL.Visible := true;

end;

procedure TForm_tree_objects.FormPaint(Sender: TObject);
var
  height_: Integer;
begin
  //������ ������ ������ ����������
  height_ := 0;
  if Panel3.Visible then
    height_ := height_ + Panel3.Height;
  if GroupBox2.Visible then
    height_ := height_ + GroupBox2.Height;

  {  if GroupBox3.Visible then
      height_:=height_+GroupBox3.Height;
   }
  if GroupBox1.Visible then
    height_ := height_ + GroupBox1.Height;

  if GroupBox4.Visible then
    height_ := height_ + GroupBox4.Height;
  if GroupBox5.Visible then
    height_ := height_ + GroupBox5.Height;
  if GroupBox6.Visible then
    height_ := height_ + GroupBox6.Height;
  //  if GroupBox7.Visible then
  //    height_ := height_ + GroupBox7.Height;

  Panel1.Height := height_;
  Update;
end;

procedure TForm_tree_objects.edit_par;
var
  id_: Integer;
begin
  Application.CreateForm(TForm_tree_par_edit, Form_tree_par_edit);
  Form_tree_par_edit.Top := curY_ +
    Form_Main.Top + Panel1.Top + Form_tree_objects.Top +
    GroupBox1.Top + wwDBGrid1.Top;
  Form_tree_par_edit.Left := curX_ +
    Form_Main.Left + Panel1.Left + Form_tree_objects.Left +
    GroupBox1.Left + wwDBGrid1.Left;
  Form_tree_par_edit.SetAccess(DM_Olap.DS_spr_params);
  Form_tree_par_edit.ShowModal;

  id_ := DM_Olap.Uni_spr_params.FieldByName('id').AsInteger;
  DM_Olap.Uni_spr_params.Active := False;
  DM_Olap.Uni_spr_params.Active := True;
  DM_Olap.Uni_spr_params.Locate('id', id_, []);
  //  wwDBGrid1.SetFocus;
  Windows.SetFocus(wwDBGrid1.Handle);
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
    (wwDBGrid1.GetActiveCol = GetGridColumnByName(wwDBGrid1, 'Val') + 1) then
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
  //���������� ��������� ��������� �����
  setpsch;
end;

procedure TForm_tree_objects.setpsch;
var
  l_before: Integer;
begin
  l_before := DM_Olap.Uni_tree_objects.Params.ParamByName('set_psch').AsInteger;
  //���������� ��������� ��������� �����
  if CheckBox1.Checked = true then
  begin
    DM_Olap.Uni_tree_objects.Params.ParamByName('set_psch').AsInteger := 0;
  end
  else
  begin
    DM_Olap.Uni_tree_objects.Params.ParamByName('set_psch').AsInteger := 1;
  end;

  DM_Olap.Uni_tree_objects.Active := False;
  DM_Olap.Uni_tree_objects.Active := True;
end;

procedure TForm_tree_objects.Timer2Timer(Sender: TObject);
var
  sqlStr: string;

  function checkVisibleChild(ANode: TcxTreeListNode): Boolean;
  begin
    if not ANode.HasChildren then
      Result := False
    else
    begin
      if ANode.ChildVisibleCount = 0 then
        Result := False
      else
        Result := True;
    end;
  end;

  procedure removeNotVisibleNodes;
  var
    I: Integer;
    ANode: TcxTreeListNode;
    hasChild: Boolean;
  begin
    for I := 0 to cxDBTreeList1.AbsoluteCount - 1 do
    begin
      ANode := cxDBTreeList1.AbsoluteItems[I];

      if (ANode.Values[cxDBTreeList1OBJ_LEVEL.ItemIndex] <> 3) then
      begin
        // �������� ���� ��� ����� �����
        hasChild := checkVisibleChild(ANode);
        if (hasChild = false) then
        begin
          ANode.Visible := false;
        end
        else
        begin
          ANode.Visible := true;
        end;
      end
      else
      begin
        {    // �������� ���� �����, ������� ����� �������� = 0
            if ANode. .Parent.Values[cxDBTreeList1ID.ItemIndex] = 0 then
            begin
              ANode.Visible := false;
            end;}
      end;
    end;
    cxDBTreeList1.Root.Expand(true);
  end;

begin
  if (l_edt1 <> Edit1.Text) or (l_edt2 <> Edit2.Text) or (l_edt3 <> Edit3.Text)
    then
  begin
    l_edt1 := Edit1.Text;
    l_edt2 := Edit2.Text;
    l_edt3 := Edit3.Text;

    sqlStr := 'obj_level<=' + inttostr(max_level_);
    if (Edit1.Text = '') and (Edit2.Text = '') and (Edit3.Text = '') then
    begin
    end
    else
    begin
      if (Edit1.Text <> '') then
      begin
        sqlStr := sqlStr + ' and (name_tr LIKE ''%' + AnsiUpperCase(Edit1.Text)
          +
          '%'' or obj_level <> 2)';
      end;

      if (Edit2.Text <> '') then
      begin
        sqlStr := sqlStr + ' and (street LIKE ''%' + AnsiUpperCase(Edit2.Text) +
          '%'' or obj_level <> 3)';
      end;

      if (Edit3.Text <> '') then
      begin
        sqlStr := sqlStr + 'and (nd1 LIKE ''%' + AnsiUpperCase(Edit3.Text) +
          '%'' or obj_level <> 3)';
      end;
    end;
    DM_Olap.Uni_tree_objects.Filter := sqlStr;
    DM_Olap.Uni_tree_objects.Filtered := true;

    // ������� ������, ����� ������� ��� ���� � ������������ � �.�.
    removeNotVisibleNodes();
    removeNotVisibleNodes();

  end;
end;

procedure TForm_tree_objects.cxDBTreeList1SELPropertiesEditValueChanged(
  Sender: TObject);
var
  str_: string;
begin

  // ����� ������� � ������ ��������
  deselObjects(DM_Olap.Uni_tree_objects.FieldByName('ID').AsInteger);

  if (Form_tree_objects.isLoadingCube = false) and (Form_tree_objects.can_detail_
    = 1) then
  begin
    str_ := Form_tree_objects.wwDBLookupCombo2.LookupValue;
    if str_ <> '' then
    begin
      with DM_Olap.OD_level do
      begin
        Active := false;
        SetVariable('id',
          DM_Olap.Uni_tree_objects.FieldByName('OBJ_LEVEL').AsInteger);
        Active := true;
        SearchRecord('level_id', StrToInt(str_),
          [srFromBeginning]);
        Form_tree_objects.wwDBLookupCombo2.LookupValue :=
          FieldByName('level_id').AsString;
      end;
    end;
  end;
end;

procedure TForm_tree_objects.N3Click(Sender: TObject);
begin
  cxDBTreeList1.Root.Expand(true);
end;

procedure TForm_tree_objects.N2Click(Sender: TObject);
begin
  cxDBTreeList1.Root.Collapse(True);
end;

end.

