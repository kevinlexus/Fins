unit Unit_new_lsk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Oracle, OracleData, DB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TForm_new_lsk = class(TForm)
    GroupBox1: TGroupBox;
    wwDBEdit3: TwwDBEdit;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    OD_lsk_tp: TOracleDataSet;
    DS_lsk_tp: TDataSource;
    cbb2: TcxLookupComboBox;
    Button3: TButton;
    OD_reu: TOracleDataSet;
    DS_reu: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbb2PropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_new_lsk: TForm_new_lsk;
  str_: String;
implementation

uses DM_module1, Unit_list_kart;

{$R *.dfm}

procedure TForm_new_lsk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_new_lsk.FormCreate(Sender: TObject);
begin
  OD_lsk_tp.Active:=true;
  OD_reu.Active:=true;
  cbb2.EditValue:='LSK_TP_MAIN';
  str_:=Form_list_kart.OD_list_kart.FieldByName('lsk').asString;
  wwDBEdit3.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.UTILS.get_new_lsk', [str_, null]);
  cxLookupComboBox1.Enabled:=False;
end;

procedure TForm_new_lsk.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_new_lsk.Button2Click(Sender: TObject);
var
cnt_: Integer;
begin
  if DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.UTILS.allow_cr_new_lsk',
    [str_]) = 0 then
    begin
     Application.MessageBox('Лицевой счет запрещено создавать!',
      'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
    end
  else
    begin

    if cbb2.EditValue='LSK_TP_MAIN' then
    begin
    cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.UTILS.create_lsk',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString,
       wwDBEdit3.Text, null, null]);
    end
    else if cbb2.EditValue='LSK_TP_ADDIT' then
    begin
    cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.P_HOUSES.kart_lsk_ext_add',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString,
       wwDBEdit3.Text]);
    end
    else if cbb2.EditValue='LSK_TP_RSO' then
    begin
    cnt_:=DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.P_HOUSES.kart_lsk_special_add',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString,
       cbb2.EditValue, wwDBEdit3.Text, 0, 0, cxLookupComboBox1.EditValue
       ]);
    end;

    if cnt_ =0 then
    begin
      DataModule1.OraclePackage1.Session.Commit;
      Form_list_kart.OD_list_kart.Refresh;
      Form_list_kart.OD_list_kart.SearchRecord('lsk', wwDBEdit3.Text, [srFromBeginning]);
      Form_new_lsk.Visible:=false;
       Application.MessageBox('Лицевой счет создан!',
        'Внимание!', MB_ICONINFORMATION+MB_OK+MB_APPLMODAL);
      Close;
    end
    else if cnt_ =1 then
    begin
       Application.MessageBox('Формат лицевого счета не соответствует требованиям!',
        'Внимание!', MB_ICONINFORMATION+MB_OK+MB_APPLMODAL);
    end
    else if cnt_ =2 then
    begin
       Application.MessageBox('Невозможно добавить услуги по лиц.счету!',
        'Внимание!', MB_ICONINFORMATION+MB_OK+MB_APPLMODAL);
    end
    else if cnt_ =3 then
    begin
       Application.MessageBox('Добавление произошло неудачно, лиц.счет не добавлен!',
        'Внимание!', MB_ICONINFORMATION+MB_OK+MB_APPLMODAL);
    end
    else if cnt_ =4 then
    begin
       Application.MessageBox('По данному лиц.счету уже существует дополнительный!',
        'Внимание!', MB_ICONINFORMATION+MB_OK+MB_APPLMODAL);
    end
    else
     Application.MessageBox('Ошибка создания лицевого счета!',
      'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);

  end;
end;

procedure TForm_new_lsk.Button3Click(Sender: TObject);
begin
  wwDBEdit3.Text:=DataModule1.OraclePackage1.CallStringFunction(
    'scott.UTILS.get_new_lsk', [str_, wwDBEdit3.Text]);
end;

procedure TForm_new_lsk.cbb2PropertiesCloseUp(Sender: TObject);
begin
  if cbb2.EditValue ='LSK_TP_RSO' then
     cxLookupComboBox1.Enabled:=True
  else
     cxLookupComboBox1.Enabled:=False;

end;

end.
