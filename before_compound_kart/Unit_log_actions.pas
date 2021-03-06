unit Unit_log_actions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, ComCtrls, wwriched, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TForm_log_actions = class(TForm)
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TEXT: TcxGridDBColumn;
    cxGrid1DBTableView1TS: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_log_actions: TForm_log_actions;

implementation

{$R *.dfm}

procedure TForm_log_actions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_log_actions.FormCreate(Sender: TObject);
begin
  OD_data.Active:=False;
  OD_data.Active:=True;
end;

end.
