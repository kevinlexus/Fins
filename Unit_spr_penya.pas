unit Unit_spr_penya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwSpeedButton, wwDBNavigator, ExtCtrls, 
  DB, OracleData, wwdbdatetimepicker,
  cxControls, Oracle, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridDBTableView,
  cxGridLevel, cxClasses, cxGrid, cxSplitter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, StdCtrls,
  cxCalendar;

type
  TForm_spr_penya = class(TForm)
    OD_stav_r: TOracleDataSet;
    DS_stav_r: TDataSource;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PROC: TcxGridDBColumn;
    cxGrid1DBTableView1DAYS1: TcxGridDBColumn;
    cxGrid1DBTableView1DAYS2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    OD_spr_pen: TOracleDataSet;
    DS_spr_pen: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1MG: TcxGridDBColumn;
    cxGridDBTableView1DAT: TcxGridDBColumn;
    OD_lsk_tp: TOracleDataSet;
    DS_lsk_tp: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1DAT1: TcxGridDBColumn;
    cxGrid1DBTableView1DAT2: TcxGridDBColumn;
    cxGrid1DBTableView1RATE: TcxGridDBColumn;
    cxGrid1DBTableView1PARTRATE: TcxGridDBColumn;
    OD_spr_penMG: TStringField;
    OD_spr_penDAT: TDateTimeField;
    OD_spr_penFK_LSK_TP: TFloatField;
    OD_spr_penREU: TStringField;
    OD_stav_rPROC: TFloatField;
    OD_stav_rDAT1: TDateTimeField;
    OD_stav_rDAT2: TDateTimeField;
    OD_stav_rMONTH_PEN: TFloatField;
    OD_stav_rDAYS1: TFloatField;
    OD_stav_rDAYS2: TFloatField;
    OD_stav_rFK_LSK_TP: TFloatField;
    OD_stav_rRATE: TFloatField;
    OD_stav_rPARTRATE: TStringField;
    OD_stav_rID: TFloatField;
    cxSplitter1: TcxSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure OD_spr_penAfterPost(DataSet: TDataSet);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_spr_penya: TForm_spr_penya;

implementation

uses Utils, DM_module1, Unit_Mainform;
{$R *.dfm}

procedure TForm_spr_penya.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if not (OD_stav_r.State in [dsBrowse]) then
     OD_stav_r.Post;
   if not (OD_spr_pen.State in [dsBrowse]) then
     OD_spr_pen.Post;
  Action:=caFree;
end;

procedure TForm_spr_penya.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

end;

procedure TForm_spr_penya.FormCreate(Sender: TObject);
begin
  OD_stav_r.Active:=True;
  OD_spr_pen.Active:=True;
  OD_lsk_tp.Active:=True;
  DataModule1.OD_reu.Active:=True;
end;

procedure TForm_spr_penya.OD_spr_penAfterPost(DataSet: TDataSet);
begin
    DataModule1.OraclePackage1.CallProcedure
      ('scott.P_JAVA.reloadSprPen',
      [Form_main.javaServer]);
end;

end.
