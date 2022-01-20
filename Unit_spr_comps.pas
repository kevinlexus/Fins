unit Unit_spr_comps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, ExtCtrls,
  Grids, 
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TForm_spr_comps = class(TForm)
    OD_c_comps: TOracleDataSet;
    DS_c_comps: TDataSource;
    OD_org: TOracleDataSet;
    DS_org: TDataSource;
    OD_oper: TOracleDataSet;
    DS_oper: TDataSource;
    OD_c_compsNKOM: TStringField;
    OD_c_compsNINK: TFloatField;
    OD_c_compsNKVIT: TFloatField;
    OD_c_compsCD: TStringField;
    OD_c_compsFK_OPER: TStringField;
    OD_c_compsFK_ORG: TFloatField;
    OD_c_compsNAME_OPER: TStringField;
    OD_c_compsNAME_ORG: TStringField;
    OD_c_compsPERIOD: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1NKOM: TcxGridDBColumn;
    cxGrid1DBTableView1NINK: TcxGridDBColumn;
    cxGrid1DBTableView1NKVIT: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1NAME_OPER: TcxGridDBColumn;
    cxGrid1DBTableView1NAME_ORG: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_spr_comps: TForm_spr_comps;

implementation

{$R *.dfm}

procedure TForm_spr_comps.FormCreate(Sender: TObject);
begin
  OD_c_comps.Active:=True;
  OD_org.Active:=True;
  OD_oper.Active:=True;
end;

procedure TForm_spr_comps.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TForm_spr_comps.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
