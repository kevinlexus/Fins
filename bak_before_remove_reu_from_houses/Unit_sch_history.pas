unit Unit_sch_history;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, wwclearpanel, StdCtrls, wwdblook, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator;

type
  TForm_sch_history = class(TForm)
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    OD_tp: TOracleDataSet;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl1: TPanel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Panel3: TPanel;
    OD_c_charge_prep: TOracleDataSet;
    DS_c_charge_prep: TDataSource;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1NM: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1VOL: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1VOL_NRM: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1VOL_SV_NRM: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1KPR: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1KPRZ: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1KPRO: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1SCH: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1DT: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1USL: TcxGridDBColumn;
    lbl1: TLabel;
    OD_usl: TOracleDataSet;
    DS_usl: TDataSource;
    lbl2: TLabel;
    cbb2: TcxLookupComboBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NAME_TP: TcxGridDBColumn;
    cxGridDBTableView1NAME_ACT: TcxGridDBColumn;
    cxGridDBTableView1TS: TcxGridDBColumn;
    cxGridDBTableView1NAME_USER: TcxGridDBColumn;
    cxGridDBTableView1VOL: TcxGridDBColumn;
    cxGridDBTableView1NAME_USL: TcxGridDBColumn;
    OD_tp2: TOracleDataSet;
    DS_tp2: TDataSource;
    cbb1: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure cbb2PropertiesCloseUp(Sender: TObject);
    procedure cbb1PropertiesCloseUp(Sender: TObject);
  private
    procedure select;
  public
    { Public declarations }
  end;

var
  Form_sch_history: TForm_sch_history;

implementation

{$R *.dfm}

procedure TForm_sch_history.FormCreate(Sender: TObject);
begin
  //Выбрать текущее отображение грида
  OD_tp2.Active:=True;
  cbb1.EditValue:=OD_tp2.FieldByName('id').AsString;

  OD_usl.Active:=True;
  cbb2.EditValue:=OD_usl.FieldByName('usl').AsString;

  select;

  OD_tp.Locate('cd', 'ins_vol_sch', []);
  OD_tp.Active:=True;
  OD_data.SetVariable('var',
    OD_tp.FieldByName('id').AsInteger);
  OD_data.Active:=True;
  wwDBLookupCombo1.LookupValue:=OD_tp.FieldByName('id').AsString;
end;

procedure TForm_sch_history.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_sch_history.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_sch_history.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_data.SetVariable('var',
    OD_tp.FieldByName('id').AsInteger);
  OD_data.Active:=False;
  OD_data.Active:=True;
end;

procedure TForm_sch_history.select;
begin
  //выбор представления грида
  OD_c_charge_prep.SetVariable('usl',
    cbb2.EditValue);
  OD_c_charge_prep.SetVariable('tp',
    cbb1.EditValue);
  OD_c_charge_prep.Active:=False;
  OD_c_charge_prep.Active:=True;
end;

procedure TForm_sch_history.cbb1PropertiesCloseUp(Sender: TObject);
begin
  select;
end;

procedure TForm_sch_history.cbb2PropertiesCloseUp(Sender: TObject);
begin
  select;
end;

end.
