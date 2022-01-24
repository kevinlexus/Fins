unit Unit_spr_proc_pay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridLevel, cxClasses, 
  cxGridDBTableView, cxGrid,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxDBLookupComboBox, cxMaskEdit, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView;

type
  TForm_spr_proc_pay = class(TForm)
    OD_spr_proc_pay: TOracleDataSet;
    DS_spr_proc_pay: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1USL: TcxGridDBColumn;
    cxGrid1DBTableView1ORG: TcxGridDBColumn;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1MG1: TcxGridDBColumn;
    cxGrid1DBTableView1MG2: TcxGridDBColumn;
    OD_usl: TOracleDataSet;
    DS_usl: TDataSource;
    cxGrid1DBTableView1USL_NAME: TcxGridDBColumn;
    OD_org: TOracleDataSet;
    DS_org: TDataSource;
    cxGrid1DBTableView1ORG_NAME: TcxGridDBColumn;
    OD_uk: TOracleDataSet;
    DS_uk: TDataSource;
    cxGrid1DBTableView1UK_NAME: TcxGridDBColumn;
    OD_spr_proc_payUSL: TStringField;
    OD_spr_proc_payORG: TFloatField;
    OD_spr_proc_payREU: TStringField;
    OD_spr_proc_payMG1: TStringField;
    OD_spr_proc_payMG2: TStringField;
    OD_spr_proc_payID: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_spr_proc_pay: TForm_spr_proc_pay;

implementation

{$R *.dfm}

procedure TForm_spr_proc_pay.FormCreate(Sender: TObject);
begin
  OD_spr_proc_pay.Active:=True;
  OD_usl.Active:=True;
  OD_org.Active:=True;
  OD_uk.Active:=True;
end;

procedure TForm_spr_proc_pay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not (OD_spr_proc_pay.State in [dsBrowse]) then
    OD_spr_proc_pay.Post;
  Action:=caFree;
end;

end.
