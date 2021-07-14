unit u_frmProject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridLevel, cxClasses, 
  cxGridDBTableView, cxGrid,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView;

type
  TfrmProject = class(TForm)
    OD_proj: TOracleDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DS_proj: TDataSource;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1OUTER_ID: TcxGridDBColumn;
    cxGrid1DBTableView1SHORT_TXT: TcxGridDBColumn;
    cxGrid1DBTableView1TP: TcxGridDBColumn;
    cxGrid1DBTableView1DT1: TcxGridDBColumn;
    cxGrid1DBTableView1PAGE: TcxGridDBColumn;
    cxGrid1DBTableView1STRDT1: TcxGridDBColumn;
    cxGrid1DBTableView1CHK: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProject: TfrmProject;

implementation

{$R *.dfm}

procedure TfrmProject.FormCreate(Sender: TObject);
begin
  update;
  OD_proj.Active:=true;
end;

procedure TfrmProject.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action:=caFree;
end;

end.
