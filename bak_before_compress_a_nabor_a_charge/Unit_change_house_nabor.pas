unit Unit_change_house_nabor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, DB, OracleData, Mask, wwdbedit;

type
  TForm_change_house_nabor = class(TForm)
    DS_usl: TDataSource;
    OD_usl: TOracleDataSet;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    DS_sprorg: TDataSource;
    OD_sprorg: TOracleDataSet;
    wwDBEdit3: TwwDBEdit;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure setState(p_lvl: Integer; ls_: string; st_: Integer; sptarn_: Integer);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure set_sptarn(st_: Integer);
    procedure CheckBox1Click(Sender: TObject);
  private
    old_org_, state_ :Integer;
    old_koeff_, old_norm_ :Double;

  public
    var_ :Integer;
    lsk_: String;
  end;

var
  Form_change_house_nabor: TForm_change_house_nabor;

implementation

uses DM_module1, Unit_houses_nabor, Unit_Mainform, Unit_status, Utils,
  Unit_form_kart;

{$R *.dfm}

procedure TForm_change_house_nabor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_change_house_nabor.setState(p_lvl: Integer; ls_: string; st_: Integer; sptarn_: Integer);
begin
  state_:=st_;
  lsk_:=ls_;

  set_sptarn(sptarn_);

  if (state_ = 0) then
  begin
    Caption:='Добавление услуги по лс';
    wwDBLookupCombo1.Enabled:=True;
    wwDBLookupCombo2.Enabled:=True;
  end
  else if (state_ = 1) then
  begin
    Caption:='Добавление услуги по дому';
    wwDBLookupCombo1.Enabled:=True;
    wwDBLookupCombo2.Enabled:=True;
  end
  else if (state_ = 2) then
  begin
    Caption:='Изменение услуги по дому';
    old_org_:=Form_houses_nabor.OD_nabor.FieldByName('org').AsInteger;
    old_koeff_:=Form_houses_nabor.OD_nabor.FieldByName('koeff').AsFloat;
    old_norm_:=Form_houses_nabor.OD_nabor.FieldByName('norm').AsFloat;
    wwDBLookupCombo1.Enabled:=False;
    wwDBLookupCombo1.Value:=
      Form_houses_nabor.OD_nabor.FieldByName('usl').AsString;
    wwDBLookupCombo2.Value:=
      Form_houses_nabor.OD_nabor.FieldByName('org').AsString;
    wwDBEdit3.Text:=Form_houses_nabor.OD_nabor.FieldByName('koeff').AsString;
    wwDBEdit1.Text:=Form_houses_nabor.OD_nabor.FieldByName('norm').AsString;
  end;

  end;

procedure TForm_change_house_nabor.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_change_house_nabor.Button1Click(Sender: TObject);
begin
  if (wwDBLookupCombo1.LookupValue = '') then
  begin
    msg2('Не выбрана услуга', 'Внимание!', MB_OK+MB_ICONEXCLAMATION);
    Exit;
  end;
  if (wwDBLookupCombo2.LookupValue = '') then
  begin
    msg2('Не выбрана организация', 'Внимание!', MB_OK+MB_ICONEXCLAMATION);
    Exit;
  end;

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  if state_ = 4 then
  begin
  //добавление новой услуги на л/с
    DataModule1.OraclePackage1.CallProcedure
         ('scott.p_houses.house_add_usl',
         [state_, lsk_,
         0,
         OD_usl.FieldByName('usl').AsString,
         OD_sprorg.FieldByName('kod').AsInteger,
         StrToFloat(NvlStr(wwDBEdit3.Text, '0')),
         StrToFloat(NvlStr(wwDBEdit1.Text, '0'))]);
    Form_kart.updates_:=1;
    Form_kart.OD_charge.Refresh;
  end
  else if state_ = 3 then
  begin
  //добавление новой услуги на дом
    DataModule1.OraclePackage1.CallProcedure
         ('scott.p_houses.house_add_usl',
         [state_, lsk_,
         Form_houses_nabor.OD_houses.FieldByName('id').AsInteger,
         OD_usl.FieldByName('usl').AsString,
         OD_sprorg.FieldByName('kod').AsInteger,
         StrToFloat(NvlStr(wwDBEdit3.Text, '0')),
         StrToFloat(NvlStr(wwDBEdit1.Text, '0'))]);
    Form_houses_nabor.OD_nabor.Refresh;
  end
  else if state_ = 2 then
  begin
  //изменение существующей на доме услуги
    DataModule1.OraclePackage1.CallProcedure
         ('scott.p_houses.house_chng_usl',
         [Form_houses_nabor.OD_houses.FieldByName('id').AsInteger,
         OD_usl.FieldByName('usl').AsString,
         old_org_,
         OD_sprorg.FieldByName('kod').AsInteger,
         old_koeff_, old_norm_,
         StrToFloat(NvlStr(wwDBEdit3.Text,'0')),
         StrToFloat(NvlStr(wwDBEdit1.Text,'0'))]);
    Form_houses_nabor.OD_nabor.Refresh;
  end;
  Form_status.Close;
  Close;
end;

procedure TForm_change_house_nabor.wwDBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

  if Key = #13 then
    Button1.SetFocus;
end;

procedure TForm_change_house_nabor.wwDBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_change_house_nabor.FormCreate(Sender: TObject);
begin
  OD_sprorg.Active:=false;
  OD_sprorg.SetVariable('var_', 1);
  OD_sprorg.Active:=true;
  OD_usl.Active:=true;

  if Form_main.org_var_ = 0 then
  begin
  //ЖКХ
    Label5.Caption:='Коэфф';
    Label1.Caption:='Норм.';
  end
  else
  begin
    Label5.Caption:='Расц.';
    Label1.Caption:='Объём';
  //Прочие организации
  end;
end;

procedure TForm_change_house_nabor.set_sptarn(st_: Integer);
begin
  if st_ = 0 then
  begin
    //коэфф
    wwDBEdit1.Visible:=false;
    Label1.Visible:=false;

    wwDBEdit3.Visible:=true;
    Label5.Visible:=true;
  end
  else if st_ = 1 then
  begin
    //норматив
    wwDBEdit3.Visible:=false;
    Label5.Visible:=false;

    wwDBEdit1.Visible:=true;
    Label1.Visible:=true;
  end
  else if (st_ = 2) or (st_ = 3) then
  begin
    //норматив и коэфф
    wwDBEdit3.Visible:=true;
    Label5.Visible:=true;

    wwDBEdit1.Visible:=true;
    Label1.Visible:=true;
  end;
end;


procedure TForm_change_house_nabor.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  set_sptarn(OD_usl.FieldByName('sptarn').AsInteger);
end;

procedure TForm_change_house_nabor.CheckBox1Click(Sender: TObject);
begin
 with OD_sprorg do
 begin
 Active:=False;
 if CheckBox1.Checked = True then
   SetVariable('var_', 0)
 else
   SetVariable('var_', 1);
 Active:=True;
 end;
end;

end.
