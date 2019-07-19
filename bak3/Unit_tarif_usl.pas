unit Unit_tarif_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Utils, Menus,
  wwcheckbox, ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel;

type
  TForm_tarif_usl = class(TForm)
    wwDBGrid2: TwwDBGrid;
    PopupMenu3: TPopupMenu;
    mnu1: TMenuItem;
    mnu2: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    wwExpandButton4: TwwExpandButton;
    wwDBGrid1IButton: TwwIButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Panel2: TPanel;
    Panel1: TPanel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure wwExpandButton4AfterExpand(Sender: TObject);
    procedure wwExpandButton4AfterCollapse(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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
  Form_main.Panel2.Width:=2;
  Action:=caFree;
end;

procedure TForm_tarif_usl.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm_tarif_usl.wwDBGrid2DblClick(Sender: TObject);
var
  bm_: TBookmark;
begin
if DM_Olap.OD_mg1.FieldByName('mg').AsString=Form_main.cur_mg_ then
begin
  //Выбран текущий период
  bm_:=DM_Olap.OD_data.GetBookmark;
  if FF('Form_change_house_nabor2', 1) = 0 then
    Application.CreateForm(TForm_change_house_nabor2,
      Form_change_house_nabor2);
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  Form_change_house_nabor2.setState(
    DM_Olap.MemTableEh2.FieldByName('obj_level').AsInteger, '', 2,
    DM_Olap.OD_data.FieldByName('sptarn').AsInteger);
  Form_status.Close;
  if Form_change_house_nabor2.ShowModal = mrOk then
  begin
    Form_tree_objects.prepData;
    DM_Olap.OD_data.GotoBookmark(bm_);
  end;
end;
end;

procedure TForm_tarif_usl.mnu1Click(Sender: TObject);
var
  bm_: TBookmark;
begin
  bm_:=DM_Olap.OD_data.GetBookmark;
    if FF('Form_change_house_nabor2', 1) = 0 then
      Application.CreateForm(TForm_change_house_nabor2,
        Form_change_house_nabor2);
    Form_change_house_nabor2.setState(
      DM_Olap.MemTableEh2.FieldByName('OBJ_LEVEL').AsInteger,
      '', 1, 0);
  if Form_change_house_nabor2.ShowModal = mrOk then
  begin
    Form_tree_objects.prepData;
    DM_Olap.OD_data.GotoBookmark(bm_);
  end;
end;

procedure TForm_tarif_usl.mnu2Click(Sender: TObject);
var
  l_lvl: Integer;
  bm_: TBookmark;
  l_chrg: Integer;
begin
  if Checkbox1.checked = true then
   l_chrg:=1
   else
   l_chrg:=0;
  bm_:=DM_Olap.OD_data.GetBookmark;
  l_lvl:=DM_Olap.MemTableEh2.FieldByName('OBJ_LEVEL').AsInteger;
  if (msg3('Удалить услугу: '+
      DM_Olap.OD_data.FieldByName('NM').AsString+' по орг: '+
      DM_Olap.OD_data.FieldByName('NAME').AsString+' с коэфф:'+
      DM_Olap.OD_data.FieldByName('KOEFF').AsString+' и норм:'+
      DM_Olap.OD_data.FieldByName('NORM').AsString+
      '?',
     'Подверждение', MB_YESNO+MB_ICONQUESTION) = IDYES) then
  begin
    if (((l_lvl = 0) or (l_lvl = 1)) and
      (msg3('Услуга будет удалена по большому кол-ву л/c, продолжить?', 'Внимание!', MB_YESNO+MB_ICONQUESTION) = ID_YES))
      or ((l_lvl <> 0) and (l_lvl <> 1)) then
    begin
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      DataModule1.OraclePackage1.CallProcedure
           ('scott.p_houses.house_del_usl',
           [DM_Olap.MemTableEh2.FieldByName('OBJ_LEVEL').AsInteger,
           null,
           DM_Olap.MemTableEh2.FieldByName('fk_house').AsInteger,
           DM_Olap.MemTableEh2.FieldByName('reu').AsString,
           DM_Olap.MemTableEh2.FieldByName('trest').AsString,
           DM_Olap.OD_data.FieldByName('usl').AsString,
           DM_Olap.OD_data.FieldByName('org').AsInteger,
           DM_Olap.OD_data.FieldByName('koeff').AsFloat,
           DM_Olap.OD_data.FieldByName('norm').AsFloat,
           l_chrg]);
      DM_Olap.OD_data.Refresh;
      //начисление
      //ред.23.10.12-зачем здесь делать начисление, если оно будет сделано выше, в процедуре oracle??

      {      DataModule1.OraclePackage1.CallProcedure
           ('scott.c_charges.gen_chrg_all',
            [l_lvl,
             DM_Olap.MemTableEh2.FieldByName('fk_house').AsInteger,
             DM_Olap.MemTableEh2.FieldByName('reu').AsString,
             DM_Olap.MemTableEh2.FieldByName('trest').AsString]);}
      Form_status.Close;
      Form_tree_objects.prepData;
      try
        DM_Olap.OD_data.GotoBookmark(bm_);
      except
      end;
      msg2('Услуга удалена', 'Внимание!', MB_OK+MB_ICONINFORMATION);
  end;
  end;
end;

procedure TForm_tarif_usl.wwExpandButton4AfterExpand(Sender: TObject);
begin
  wwDBNavigator1.Top:=wwDBGrid1.Top+wwDBGrid1.Height;
  wwDBNavigator1.Left:=wwDBGrid1.Left;
  wwDBNavigator1.Visible:=True;
end;

procedure TForm_tarif_usl.wwExpandButton4AfterCollapse(Sender: TObject);
begin
  wwDBNavigator1.Visible:=False;

end;

procedure TForm_tarif_usl.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=False then
  begin
    msg2('В случае отключения расчета начисления, его нужно будет сформировать в "Итоговом" формировании!', 'Внимание!', MB_OK+MB_ICONINFORMATION);
  end;
end;

end.
