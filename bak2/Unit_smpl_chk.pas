unit Unit_smpl_chk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, ExtCtrls,
  cxControls, 
  
  cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Menus, cxGridExportLink, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxDBData;

type
  TForm_smpl_chk = class(TForm)
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    pm1: TPopupMenu;
    N1: TMenuItem;
    dlgSave1: TSaveDialog;
    pnl1: TPanel;
    btn1: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_dataAfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    l_ignore: Integer;
  end;

var
  Form_smpl_chk: TForm_smpl_chk;

implementation

{$R *.dfm}

procedure TForm_smpl_chk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_smpl_chk.OD_dataAfterOpen(DataSet: TDataSet);
begin
  if DataSet.RecordCount = 0 then
    close;
end;

procedure TForm_smpl_chk.N1Click(Sender: TObject);
begin
  dlgSave1.Execute;
  ExportGridToExcel(dlgSave1.FileName, cxGrid1);
end;

procedure TForm_smpl_chk.btn1Click(Sender: TObject);
begin
  l_ignore:=1;
  Close;
end;

procedure TForm_smpl_chk.Button1Click(Sender: TObject);
begin
  l_ignore:=0;
  Close;
end;

procedure TForm_smpl_chk.FormCreate(Sender: TObject);
begin
  l_ignore:=0;
end;

end.
