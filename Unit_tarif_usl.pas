unit Unit_tarif_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls,  DB, Utils, Menus,
  ExtCtrls,
  cxGraphics, cxControls,

  cxGridLevel, cxClasses,
  cxGridDBTableView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView, Grids, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_tarif_usl = class(TForm)
    PopupMenu3: TPopupMenu;
    mnu1: TMenuItem;
    mnu2: TMenuItem;
    Panel2: TPanel;
    Panel1: TPanel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Panel3: TPanel;
    Label1: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1USL: TcxGridDBColumn;
    cxGridDBTableView1NM: TcxGridDBColumn;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1NAME2: TcxGridDBColumn;
    cxGridDBTableView1KOEFF: TcxGridDBColumn;
    cxGridDBTableView1NORM: TcxGridDBColumn;
    cxGridDBTableView1DT1: TcxGridDBColumn;
    cxGridDBTableView1DT2: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1KW: TcxGridDBColumn;
    cxGrid2DBTableView1LSK: TcxGridDBColumn;
    cxGrid2DBTableView1ORG: TcxGridDBColumn;
    cxGrid2DBTableView1KOEFF: TcxGridDBColumn;
    cxGrid2DBTableView1NORM: TcxGridDBColumn;
    cxGrid2DBTableView1DT1: TcxGridDBColumn;
    cxGrid2DBTableView1DT2: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure wwExpandButton4AfterCollapse(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure setType(l_lvl: Integer; name: String);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  end;

var
  Form_tarif_usl: TForm_tarif_usl;

implementation

uses Unit_tree_objects, Unit_change_house_nabor2, Unit_status,
  Unit_Mainform, DM_module1, ufDataModuleOlap;

{$R *.dfm}

procedure TForm_tarif_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_main.Panel2.Width := 2;
  Action := caFree;
end;

procedure TForm_tarif_usl.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_tarif_usl.mnu1Click(Sender: TObject);
var
  bm_: TBookmark;
begin
  bm_ := DM_Olap.Uni_data.GetBookmark;
  if FF('Form_change_house_nabor2', 1) = 0 then
    Application.CreateForm(TForm_change_house_nabor2,
      Form_change_house_nabor2);
  Form_change_house_nabor2.setState(
    DM_Olap.Uni_tree_objects.FieldByName('OBJ_LEVEL').AsInteger,
    '', 1, 0);
  if Form_change_house_nabor2.ShowModal = mrOk then
  begin
    Form_tree_objects.prepData;
    try
    DM_Olap.Uni_data.GotoBookmark(bm_);
          except
      end;

  end;
end;

procedure TForm_tarif_usl.mnu2Click(Sender: TObject);
var
  l_lvl: Integer;
  bm_: TBookmark;
  l_chrg: Integer;
begin
  if Checkbox1.checked = true then
    l_chrg := 1
  else
    l_chrg := 0;
  bm_ := DM_Olap.Uni_data.GetBookmark;
  l_lvl := DM_Olap.Uni_tree_objects.FieldByName('OBJ_LEVEL').AsInteger;
  if (msg3('Удалить услугу: ' +
    DM_Olap.Uni_data.FieldByName('NM').AsString + ' по орг: ' +
    DM_Olap.Uni_data.FieldByName('NAME').AsString + ' с коэфф:' +
    DM_Olap.Uni_data.FieldByName('KOEFF').AsString + ' и норм:' +
    DM_Olap.Uni_data.FieldByName('NORM').AsString +
    '?',
    'Подверждение', MB_YESNO + MB_ICONQUESTION) = IDYES) then
  begin
    if (((l_lvl = 0) or (l_lvl = 1)) and
      (msg3('Услуга будет удалена по большому кол-ву л/c, продолжить?',
        'Внимание!', MB_YESNO + MB_ICONQUESTION) = ID_YES))
      or ((l_lvl <> 0) and (l_lvl <> 1)) then
    begin
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      DataModule1.UniStoredProc1.StoredProcName :=
        'scott.p_houses.house_del_usl';
      with DataModule1.UniStoredProc1.Params do
      begin
        Clear;
        CreateParam(ftInteger, 'p_lvl', ptInput).AsInteger :=
          DM_Olap.Uni_tree_objects.FieldByName('OBJ_LEVEL').AsInteger;
        CreateParam(ftString, 'lsk_', ptInput).AsString;
        CreateParam(ftInteger, 'house_id_', ptInput).AsInteger :=
          DM_Olap.Uni_tree_objects.FieldByName('fk_house').AsInteger;
        CreateParam(ftString, 'p_reu', ptInput).AsString :=
          DM_Olap.Uni_tree_objects.FieldByName('reu').AsString;
        CreateParam(ftString, 'p_trest', ptInput).AsString :=
          DM_Olap.Uni_tree_objects.FieldByName('trest').AsString;
        CreateParam(ftString, 'usl_', ptInput).AsString :=
          DM_Olap.Uni_data.FieldByName('usl').AsString;
        CreateParam(ftInteger, 'org_', ptInput).AsInteger :=
          DM_Olap.Uni_data.FieldByName('org').AsInteger;
        CreateParam(ftFloat, 'koeff_', ptInput).AsFloat :=
          DM_Olap.Uni_data.FieldByName('koeff').AsFloat;
        CreateParam(ftFloat, 'norm_', ptInput).AsFloat :=
          DM_Olap.Uni_data.FieldByName('norm').AsFloat;
        CreateParam(ftInteger, 'p_chrg', ptInput).AsFloat :=
          l_chrg;
        CreateParam(ftDate, 'p_dt1', ptInput).AsDateTime :=
          DM_Olap.Uni_data.FieldByName('dt1').AsDateTime;
        CreateParam(ftDate, 'p_dt2', ptInput).AsDateTime :=
          DM_Olap.Uni_data.FieldByName('dt2').AsDateTime;
      end;
      DataModule1.UniStoredProc1.ExecProc;

      DM_Olap.Uni_data.Refresh;
      Form_status.Close;
      Form_tree_objects.prepData;
      try
        DM_Olap.Uni_data.GotoBookmark(bm_);
      except
      end;
      msg2('Услуга удалена', 'Внимание!', MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure TForm_tarif_usl.wwExpandButton4AfterCollapse(Sender: TObject);
begin
//  wwDBNavigator1.Visible := False;

end;

procedure TForm_tarif_usl.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = False then
  begin
    msg2('В случае отключения расчета начисления, его нужно будет сформировать в "Итоговом" формировании!', 'Внимание!', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TForm_tarif_usl.setType(l_lvl: Integer; name: String);
begin
  if (l_lvl= 4) or (l_lvl=-1) then
  begin
    // по лс не поддерживается
    mnu1.Caption:='Не поддерживается';
    mnu2.Caption:='Не поддерживается';
    Label1.Caption:='Не поддерживается';
  end
  else if l_lvl= 3 then
  begin
    mnu1.Caption:='Добавить услугу по дому';
    mnu2.Caption:='Удалить услугу по дому';
    Label1.Caption:='Работа с тарифом по дому '+name;
  end
  else if l_lvl=2 then
  begin
    mnu1.Caption:='Добавить услугу по УК';
    mnu2.Caption:='Удалить услугу по УК';
    Label1.Caption:='Работа с тарифом по УК '+name;
  end
  else if l_lvl=1 then
  begin
    mnu1.Caption:='Добавить услугу по Фонду';
    mnu2.Caption:='Удалить услугу по Фонду';
    Label1.Caption:='Работа с тарифом по Фонду '+name;
  end
  else if l_lvl=0 then
  begin
    mnu1.Caption:='Добавить услугу по Городу';
    mnu2.Caption:='Удалить услугу по Городу';
    Label1.Caption:='Работа с тарифом по Городу';
  end;
end;

procedure TForm_tarif_usl.cxGrid2DBTableView1DblClick(Sender: TObject);
var
  bm_: TBookmark;
begin
  if DM_Olap.OD_mg1.FieldByName('mg').AsString = Form_main.cur_mg_ then
  begin
    //Выбран текущий период
    bm_ := DM_Olap.Uni_data.GetBookmark;
    if FF('Form_change_house_nabor2', 1) = 0 then
      Application.CreateForm(TForm_change_house_nabor2,
        Form_change_house_nabor2);
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    Form_change_house_nabor2.setState(
      DM_Olap.Uni_tree_objects.FieldByName('obj_level').AsInteger, '', 2,
      DM_Olap.Uni_data.FieldByName('sptarn').AsInteger);
    Form_status.Close;
    if Form_change_house_nabor2.ShowModal = mrOk then
    begin
      Form_tree_objects.prepData;
      try
      DM_Olap.Uni_data.GotoBookmark(bm_);
            except
      end;

    end;
  end;
end;

end.

