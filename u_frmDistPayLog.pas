unit u_frmDistPayLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridDBTableView,
  cxGridLevel, cxClasses, cxGrid, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView;

type
  TfrmDistPayLog = class(TForm)
    OD_kwtp_day_log: TOracleDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DS_kwtp_day_log: TDataSource;
    cxGrid1DBTableView1TEXT: TcxGridDBColumn;
    cxGrid1DBTableView1NPP: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDistPayLog: TfrmDistPayLog;

implementation

{$R *.dfm}

procedure TfrmDistPayLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmDistPayLog.FormCreate(Sender: TObject);
begin
  OD_kwtp_day_log.Active:=true;
end;

end.
