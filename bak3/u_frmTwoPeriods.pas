unit u_frmTwoPeriods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbedit, OracleData, DB, 
  cxControls, cxContainer, cxEdit,
  
  
  
  
  
  
  
  
  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmTwoPeriods = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbb1: TcxLookupComboBox;
    cbb2: TcxLookupComboBox;
    chk1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chk1Click(Sender: TObject);
    procedure set_rep(Acd: String);
  private
    { Private declarations }
  public
  //  aDt1, aDt2: TDateTime;
  end;

var
  frmTwoPeriods: TfrmTwoPeriods;
  str_: String;
implementation

uses DM_module1;

{$R *.dfm}

procedure TfrmTwoPeriods.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action:=caFree;
end;

procedure TfrmTwoPeriods.set_rep(Acd: String);
begin
  DataModule1.OD_dat1.SetVariable('cd', Acd);
  DataModule1.OD_dat2.SetVariable('cd', Acd);
  DataModule1.OD_mg1.SetVariable('cd', Acd);
  DataModule1.OD_mg2.SetVariable('cd', Acd);
  DataModule1.OD_dat1.Active:=true;
  DataModule1.OD_dat2.Active:=true;
  DataModule1.OD_mg1.Active:=true;
  DataModule1.OD_mg2.Active:=true;

  if chk1.Checked = true then
  begin
    DataModule1.DS_period1.DataSet := DataModule1.OD_dat1;
    DataModule1.DS_period2.DataSet := DataModule1.OD_dat2;
  end
  else
  begin
    DataModule1.DS_period1.DataSet := DataModule1.OD_mg1;
    DataModule1.DS_period2.DataSet := DataModule1.OD_mg2;
  end;

end;

procedure TfrmTwoPeriods.chk1Click(Sender: TObject);
begin
  if chk1.Checked = true then
  begin
    DataModule1.DS_period1.DataSet := DataModule1.OD_dat1;
    DataModule1.DS_period2.DataSet := DataModule1.OD_dat2;
  end
  else
  begin
    DataModule1.DS_period1.DataSet := DataModule1.OD_mg1;
    DataModule1.DS_period2.DataSet := DataModule1.OD_mg2;
  end;

end;

end.
