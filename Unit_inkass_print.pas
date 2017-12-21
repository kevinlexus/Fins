unit Unit_inkass_print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, frxClass,
  frxDBSet, Oracle, Utils, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TForm_inkass_print = class(TForm)
    OD_ink: TOracleDataSet;
    DS_ink: TDataSource;
    OD_inkass: TOracleDataSet;
    frxDBDataset1: TfrxDBDataset;
    OD_inkass2: TOracleDataSet;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    OD_inkass_det: TOracleDataSet;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1DAT_INK: TcxGridDBColumn;
    cxGrid1DBTableView1NINK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1ITOG: TcxGridDBColumn;
    OD_inkDAT_INK: TDateTimeField;
    OD_inkNINK: TFloatField;
    OD_inkSUMMA: TFloatField;
    OD_inkPENYA: TFloatField;
    OD_inkITOG: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure state_arch2(mgold_: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_inkass_print: TForm_inkass_print;

implementation

uses DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_inkass_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TForm_inkass_print.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_inkass_print.Button1Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
     frxDBDataset1.DataSet:=OD_inkass_det
     else
     frxDBDataset1.DataSet:=OD_inkass;

  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
  frxReport2.PrepareReport(true);
  frxReport2.ShowPreparedReport;
end;

procedure TForm_inkass_print.FormCreate(Sender: TObject);
begin
    if DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.INIT.get_show_exp_pay', [parNone])=1 then
          CheckBox1.Checked:=true
          else
          CheckBox1.Checked:=false;
  state_arch2('');
//  TForm(Sender).AutoSize:=true;
end;

procedure TForm_inkass_print.state_arch2(mgold_: String);
begin // смена состояний формы
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
    Caption:='Печать инкассаций - Архив';
    change_alias([OD_inkass, OD_inkass2, OD_inkass_det],'scott.c_kwtp_mg',
      '(select * from scott.a_kwtp_mg where mg='''+Form_main.arch_mg_+''')');
    change_alias([OD_ink, OD_inkass],'scott.c_kwtp',
      '(select * from scott.a_kwtp where mg='''+Form_main.arch_mg_+''')');
    change_alias([OD_inkass, OD_inkass_det],'scott.kart',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
    Caption:='Печать инкассаций';
    change_alias([OD_inkass, OD_inkass2, OD_inkass_det],
      '(select * from scott.a_kwtp_mg where mg='''+mgold_+''')',
      'scott.c_kwtp_mg');
    change_alias([OD_ink, OD_inkass],
      '(select * from scott.a_kwtp where mg='''+mgold_+''')',
      'scott.c_kwtp');
    change_alias([OD_inkass, OD_inkass_det],
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      'scott.kart');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
    Caption:='Печать инкассаций - Архив';
    change_alias([OD_inkass, OD_inkass2, OD_inkass_det],
      '(select * from scott.a_kwtp_mg where mg='''+mgold_+''')',
      '(select * from scott.a_kwtp_mg where mg='''+Form_main.arch_mg_+''')');
    change_alias([OD_ink, OD_inkass],
      '(select * from scott.a_kwtp where mg='''+mgold_+''')',
      '(select * from scott.a_kwtp where mg='''+Form_main.arch_mg_+''')');
    change_alias([OD_inkass, OD_inkass_det],
      '(select * from scott.arch_kart where mg='''+mgold_+''')',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
  end;
end;

end.
