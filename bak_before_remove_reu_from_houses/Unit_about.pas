unit Unit_about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DM_module1, StdCtrls, Grids, DBGrids,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TForm_about = class(TForm)
    OD_roles: TOracleDataSet;
    DS_roles: TDataSource;
    Button1: TButton;
    DBGrid1: TDBGrid;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NUM: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1VALUE: TcxGridDBColumn;
    cxGrid1DBTableView1DISPLAY_VALUE: TcxGridDBColumn;
    cxGrid1DBTableView1ISDEFAULT: TcxGridDBColumn;
    cxGrid1DBTableView1ISSES_MODIFIABLE: TcxGridDBColumn;
    cxGrid1DBTableView1ISSYS_MODIFIABLE: TcxGridDBColumn;
    cxGrid1DBTableView1ISINSTANCE_MODIFIABLE: TcxGridDBColumn;
    cxGrid1DBTableView1ISMODIFIED: TcxGridDBColumn;
    cxGrid1DBTableView1ISADJUSTED: TcxGridDBColumn;
    cxGrid1DBTableView1ISDEPRECATED: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_COMMENT: TcxGridDBColumn;
    cxGrid1DBTableView1HASH: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_about: TForm_about;

implementation

{$R *.dfm}

procedure TForm_about.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_about.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_about.FormCreate(Sender: TObject);
begin
  OD_roles.Active:=true;
  OracleDataSet1.Active:=true;
end;

end.
