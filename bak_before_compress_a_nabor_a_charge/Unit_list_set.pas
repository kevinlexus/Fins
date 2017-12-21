unit Unit_list_set;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwSpeedButton, wwDBNavigator, wwclearpanel, StdCtrls, ExtCtrls,
  Buttons, Mask, wwdbedit, Grids, Wwdbigrd, Wwdbgrid, DB, OracleData,
  wwdblook, StrUtils, Utils, ImgList;

type
  TForm_list_set = class(TForm)
    OD_list_kart: TOracleDataSet;
    DS_list_kart: TDataSource;
    wwDBGrid1: TwwDBGrid;
    OD_usl: TOracleDataSet;
    OD_uslNM: TStringField;
    OD_uslUSL: TStringField;
    DS_usl: TDataSource;
    Panel1: TPanel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    wwDBEdit1: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel4: TPanel;
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
    Button1: TButton;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure SetFilter(var_:Integer);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure state_arch2(mgold_: String);
  end;

var
  Form_list_set: TForm_list_set;

implementation

uses Unit_Mainform, DM_module1, Unit_find_adr;

{$R *.dfm}

procedure TForm_list_set.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not (OD_list_kart.State in [dsBrowse]) then
   OD_list_kart.Post;
 Action:=caFree;
end;

procedure TForm_list_set.state_arch2(mgold_: String);
begin // смена состояний формы
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
      Caption:='Ввод объемных показателей по л/с - Архив';
      change_alias(OD_list_kart,'scott.kart',
        '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
      change_alias(OD_list_kart,'scott.nabor',
        '(select * from scott.a_nabor where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
      Caption:='Ввод объемных показателей по л/с';
      change_alias(OD_list_kart,
        '(select * from scott.arch_kart where mg='''+mgold_+''')',
        'scott.kart');
      change_alias(OD_list_kart,
        '(select * from scott.a_nabor where mg='''+mgold_+''')',
        'scott.nabor');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
      Caption:='Ввод объемных показателей по л/с - Архив';
      change_alias(OD_list_kart,
        '(select * from scott.arch_kart where mg='''+mgold_+''')',
        '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
      change_alias(OD_list_kart,
        '(select * from scott.a_nabor where mg='''+mgold_+''')',
        '(select * from scott.a_nabor where mg='''+Form_main.arch_mg_+''')');
  end;
end;


procedure TForm_list_set.FormCreate(Sender: TObject);
begin
  state_arch2('');
  wwDBLookupCombo1.LookupValue:=OD_usl.FieldByName('USL').AsString;
  Form_Main.cl_flt;
  SetFilter(0);
  OD_usl.Active:=True;
  wwDBLookupCombo1.LookupValue:=
    OD_usl.FieldByName('USL').AsString;
  with OD_list_kart do
  begin
    Active:=false;
    SetVariable('var_', 0);
    SetVariable('usl_',
      OD_usl.FieldByName('usl').AsString);
    Active:=true;
  end;
end;

procedure TForm_list_set.SpeedButton1Click(Sender: TObject);
begin
{    Form_main.k_lsk_id_:=DataModule1.OraclePackage1.CallIntegerFunction(
     'scott.utils.get_k_lsk_id_by_lsk',
      [RightStr('00000000'+wwDBEdit1.Text, 8)]);}
    Form_Main.cl_flt;
    Form_Main.flt_k_lsk_id_:=DataModule1.OraclePackage1.CallIntegerFunction(
     'scott.utils.get_k_lsk_id_by_lsk',
      [RightStr('00000000'+wwDBEdit1.Text, 8)]);
    SetFilter(1);
{    OD_list_kart.active:=false;
    OD_list_kart.SetVariable('k_lsk_id_', Form_main.k_lsk_id_);
    OD_list_kart.SetVariable('var_', 4);
    OD_list_kart.active:=true;}
    wwDBEdit1.Text:=RightStr('00000000'+wwDBEdit1.Text, 8);
end;

procedure TForm_list_set.SpeedButton2Click(Sender: TObject);
begin
  OD_list_kart.SetVariable('var_', 0);
  Form_Main.cl_flt;
  SetFilter(1);
end;

procedure TForm_list_set.SpeedButton4Click(Sender: TObject);
begin
  if not (OD_list_kart.State in [dsBrowse]) then
     OD_list_kart.Post;

 Application.CreateForm(TForm_find_adr, Form_find_adr);
 Form_find_adr.SetAccess(1,1,1,1);
 Form_find_adr.ShowModal;
 SetFilter(1);
end;

procedure TForm_list_set.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
   OD_list_kart.Next;
  end;
end;

procedure TForm_list_set.SetFilter(var_:Integer);
begin
//Фильтр по дому
//Просто установить фильтр, без смены свойства Active=False,True
 with OD_list_kart do
  begin
    SetVariable('flt_reu_', Form_Main.flt_reu_);
    SetVariable('flt_kul_', Form_Main.flt_kul_);
    SetVariable('flt_nd_', Form_Main.flt_nd_);
    SetVariable('flt_kw_', Form_Main.flt_kw_);
    SetVariable('flt_house_', Form_Main.flt_house_);
    SetVariable('flt_k_lsk_id_', Form_Main.flt_k_lsk_id_);

    if Form_Main.search_type_ <> 0 then
    begin
       //удаляем последнюю строчку
       SQL.Delete(OD_list_kart.SQL.Count-1);
       //устанавливаем порядок
       SQL.Add('order by s.name, k.nd, k.kw, decode(k.psch,8,1,9,1,0)');
    end;
    if var_=1 then
    begin
      Active:=False;
      Active:=True;
    end;
 end;

end;


procedure TForm_list_set.Button1Click(Sender: TObject);
begin
 //Метод Post вызывается в закрытии формы - onClose
 Close;
end;

procedure TForm_list_set.wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
{    Form_main.k_lsk_id_:=DataModule1.OraclePackage1.CallIntegerFunction(
     'scott.utils.get_k_lsk_id_by_lsk',
      [RightStr('00000000'+wwDBEdit1.Text, 8)]);}
    Form_Main.cl_flt;
    Form_Main.flt_k_lsk_id_:=DataModule1.OraclePackage1.CallIntegerFunction(
     'scott.utils.get_k_lsk_id_by_lsk',
      [RightStr('00000000'+wwDBEdit1.Text, 8)]);

    SetFilter(1);
    wwDBEdit1.Text:=RightStr('00000000'+wwDBEdit1.Text, 8);
  end;
end;

procedure TForm_list_set.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  with OD_list_kart do
  begin
    Active:=false;
    SetVariable('usl_',
      OD_usl.FieldByName('usl').AsString);
    Active:=true;
  end;
end;

procedure TForm_list_set.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

end.
