unit Unit_form_admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxBarBuiltInMenu, cxPC, DB, OracleData, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, Menus;

type
  TForm_admin = class(TForm)
    Button2: TButton;
    cxpgcntrl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    mmo1: TMemo;
    lbl3: TLabel;
    edt2: TEdit;
    edt1: TEdit;
    lbl2: TLabel;
    lbl1: TLabel;
    edt3: TEdit;
    cxTabSheet2: TcxTabSheet;
    OD_sess: TOracleDataSet;
    DS_sess: TDataSource;
    pnl2: TPanel;
    btn1: TButton;
    OD_sess2: TOracleDataSet;
    DS_sess2: TDataSource;
    grp1: TGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1SID: TcxGridDBColumn;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1SERIAL: TcxGridDBColumn;
    cxGridDBTableView1BLOCKING_STATUS: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    grp2: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SID: TcxGridDBColumn;
    cxGrid1DBTableView1SERIAL: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1USERNAME: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1OSUSER: TcxGridDBColumn;
    cxGrid1DBTableView1MACHINE: TcxGridDBColumn;
    cxGrid1DBTableView1PROGRAM: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pm1: TPopupMenu;
    pm2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure k_session(aSid, aSerial: Integer);
  private
  public
    { Public declarations }
  end;

var
  Form_admin: TForm_admin;

implementation

uses DM_module1;

{$R *.dfm}

function crypt(ATxt: String):String;
Var
  I: Integer;
  P: PChar;
begin
    I := Length(Atxt);
    Result:='';
    while I > 0 do
     begin
       Result :=  IntToHex(Ord(Atxt[I]),3) + Result;
       I := I - 1;
     end;
end;

procedure TForm_admin.btn1Click(Sender: TObject);
begin
  mmo1.Clear;
  mmo1.Lines.Add('[Application]');
  mmo1.Lines.Add('User='+crypt(edt3.Text));
  mmo1.Lines.Add('Pass='+crypt(edt1.Text));
  mmo1.Lines.Add('SID='+crypt(edt2.Text));
  mmo1.Lines.Add('');

{    User2:='';
    P := PChar(Edit4.Text);
    I:=0;
    while I < Length(P) do
     begin
         User2 := User2 + CHR( StrToInt('$'+string(P[I])+string(P[I+1])+string(P[I+2])));
         I := I + 3;
     end;
    Edit3.Text:=User2;}


//[Application]
//# User=06C065076
//#Pass=073074075066066
//# SID=04804F05404F052041


end;

procedure TForm_admin.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_admin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_admin.k_session(aSid, aSerial: Integer);
begin
  //kill session
  DataModule1.OraclePackage1.CallProcedure
         ('sys.k_session', [aSid, aSerial]);
  OD_sess.Active:=False;
  OD_sess2.Active:=False;
  OD_sess.Active:=True;
  OD_sess2.Active:=True;
end;

procedure TForm_admin.N1Click(Sender: TObject);
begin
  //kill session
  k_session(OD_sess.FieldByName('SID').AsInteger,
            OD_sess.FieldByName('SERIAL#').AsInteger);
end;

procedure TForm_admin.N2Click(Sender: TObject);
begin
  //kill session
  k_session(OD_sess2.FieldByName('SID').AsInteger,
            OD_sess2.FieldByName('SERIAL#').AsInteger);

end;

procedure TForm_admin.FormCreate(Sender: TObject);
begin
  OD_sess.Active:=True;
  OD_sess2.Active:=True;
end;

end.
