unit u_frmMeteGisConnect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, 
  
  DB, ExtCtrls, cxGridLevel, 
  cxGridDBTableView, cxClasses, cxGrid,
  OracleData, StdCtrls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridCustomView;

type
  TfrmMeteGisConnect = class(TForm)
    OD_eolink_meter: TOracleDataSet;
    DS_eolink_meter: TDataSource;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cxGridDBTableView3EOLINK_ID: TcxGridDBColumn;
    cxGridDBTableView3FK_KLSK_OBJ: TcxGridDBColumn;
    cxGridDBTableView3NAME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMeteGisConnect: TfrmMeteGisConnect;

implementation

uses Unit_list_kart, Unit_sch_history, DM_module1;

{$R *.dfm}

procedure TfrmMeteGisConnect.FormCreate(Sender: TObject);
begin
  OD_eolink_meter.SetVariable('FK_KLSK_PREMISE',
    Form_list_kart.OD_list_kart.FieldByName('FK_KLSK_PREMISE').AsInteger);
  OD_eolink_meter.SetVariable('USL',
    Form_sch_history.OD_meter.FieldByName('FK_USL').AsString);
  OD_eolink_meter.Active:=True;

end;

procedure TfrmMeteGisConnect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmMeteGisConnect.Button1Click(Sender: TObject);
begin
  // привязать счетчик
    DataModule1.OraclePackage1.CallProcedure
      ('scott.p_meter.connect_meter_gis',
      [Form_sch_history.OD_meter.FieldByName('K_LSK_ID').AsInteger,
       OD_eolink_meter.FieldByName('eolink_id').AsInteger,
       0]);
    DataModule1.OracleSession1.Commit;
    Form_sch_history.OD_eolink_meter.Refresh;
    Form_sch_history.OD_meter.RefreshRecord;
end;

procedure TfrmMeteGisConnect.Button3Click(Sender: TObject);
begin
  // отвязать счетчик
    DataModule1.OraclePackage1.CallProcedure
      ('scott.p_meter.connect_meter_gis',
      [null,
       OD_eolink_meter.FieldByName('eolink_id').AsInteger,
       1]);
    DataModule1.OracleSession1.Commit;
    Form_sch_history.OD_eolink_meter.Refresh;
    Form_sch_history.OD_meter.RefreshRecord;
end;

end.
