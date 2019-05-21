unit u_frmPenCorr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPropertiesStore, cxMaskEdit;

type
  TfrmPenCorr = class(TForm)
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1DOPL: TcxGridDBColumn;
    cxGrid1DBTableView1DTEK: TcxGridDBColumn;
    cxGrid1DBTableView1TS: TcxGridDBColumn;
    cxGrid1DBTableView1USER_NAME: TcxGridDBColumn;
    OD_dataID: TFloatField;
    OD_dataLSK: TStringField;
    OD_dataPENYA: TFloatField;
    OD_dataDOPL: TStringField;
    OD_dataDTEK: TDateTimeField;
    OD_dataTS: TDateTimeField;
    OD_dataFK_USER: TFloatField;
    OD_dataUSER_NAME: TStringField;
    cxprprtstr1: TcxPropertiesStore;
    OD_dataREU: TStringField;
    OD_dataSTREET_NAME: TStringField;
    OD_dataND: TStringField;
    OD_dataKW: TStringField;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1STREET_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ND: TcxGridDBColumn;
    cxGrid1DBTableView1KW: TcxGridDBColumn;
    OD_dataUSL: TStringField;
    cxGrid1DBTableView1USL: TcxGridDBColumn;
    OD_dataORG: TFloatField;
    cxGrid1DBTableView1ORG: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1LSKPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBTableView1DOPLPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
  public
    procedure state_arch2(mgold_: String);
  end;

var
  frmPenCorr: TfrmPenCorr;

implementation

uses Unit_list_kart, Unit_Mainform, Utils;

{$R *.dfm}

procedure TfrmPenCorr.FormCreate(Sender: TObject);
begin
  state_arch2('');
  if FF('Form_list_kart', 0) =1 then
  begin
     frmPenCorr.OD_data.SetVariable('k_lsk_id',
       Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger);
     frmPenCorr.OD_data.Active:=false;
     frmPenCorr.OD_data.Active:=true;
  end;
  OD_data.Active;
end;



procedure TfrmPenCorr.state_arch2(mgold_: String);
begin // смена состояний формы
with frmPenCorr do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
    change_alias(frmPenCorr.OD_data,'scott.kart',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
    change_alias(frmPenCorr.OD_data, 'scott.c_pen_corr',
      '(select * from scott.a_pen_corr where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
    change_alias(frmPenCorr.OD_data,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      'scott.kart');
    change_alias(frmPenCorr.OD_data,
      '(select * from scott.a_pen_corr where mg='''+mgold_+''')',
      'scott.c_pen_corr');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
    change_alias(frmPenCorr.OD_data,
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
    change_alias(frmPenCorr.OD_data,
      '(select * from scott.a_pen_corr where mg='''+mgold_+''')',
      '(select * from scott.a_pen_corr where mg='''+Form_main.arch_mg_+''')'
      );
  end;

end;
end;


procedure TfrmPenCorr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (OD_data.State in [dsEdit, dsInsert]) then
   OD_data.Post;
  Action:=caFree;
end;

procedure TfrmPenCorr.cxGrid1DBTableView1LSKPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if Error then
  begin
    msg2('Не корректное значение поля "Лиц.счет"',
     'Внимание', MB_OK+MB_ICONERROR);
    Abort;
  end;
end;

procedure TfrmPenCorr.cxGrid1DBTableView1DOPLPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if Error then
  begin
    msg2('Не корректное значение поля "Период"',
     'Внимание', MB_OK+MB_ICONERROR);
    Abort;
  end;
end;

end.
