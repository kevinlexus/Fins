unit u_frmMeteGisConnect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  OracleData, StdCtrls;

type
  TfrmMeteGisConnect = class(TForm)
    OD_eolink_meter: TOracleDataSet;
    DS_eolink_meter: TDataSource;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3FK_KLSK_OBJ: TcxGridDBColumn;
    cxGridDBTableView3NAME: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMeteGisConnect: TfrmMeteGisConnect;

implementation

uses Unit_list_kart, Unit_sch_history;

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

end.
