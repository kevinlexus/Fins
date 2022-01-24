unit Unit_about;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, DBGrids,
  cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridLevel, 
  cxGridDBTableView, cxClasses, cxGrid, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, Grids;

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
