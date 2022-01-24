unit Unit_spr_rep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  OracleData,
  ExtCtrls, StdCtrls,
  Menus, Grids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TForm_spr_rep = class(TForm)
    OD_spr: TOracleDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DS_spr: TDataSource;
    cxGrid1DBTableView1NP: TcxGridDBColumn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1MAXLEVEL: TcxGridDBColumn;
    cxGrid1DBTableView1FK_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPAND_ROW: TcxGridDBColumn;
    cxGrid1DBTableView1EXPAND_COL: TcxGridDBColumn;
    cxGrid1DBTableView1CAN_DETAIL: TcxGridDBColumn;
    cxGrid1DBTableView1SHOW_SEL_ORG: TcxGridDBColumn;
    cxGrid1DBTableView1SHOW_SEL_OPER: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1SEL_MANY: TcxGridDBColumn;
    cxGrid1DBTableView1HAVE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1FNAME: TcxGridDBColumn;
    cxGrid1DBTableView1ISCNT: TcxGridDBColumn;
    cxGrid1DBTableView1ISSUM: TcxGridDBColumn;
    cxGrid1DBTableView1FLDSUM: TcxGridDBColumn;
    cxGrid1DBTableView1ISHEAD: TcxGridDBColumn;
    cxGrid1DBTableView1SHOW_PAYCHK: TcxGridDBColumn;
    cxGrid1DBTableView1SHOW_DEB: TcxGridDBColumn;
    cxGrid1DBTableView1FRX_FNAME: TcxGridDBColumn;
    cxGrid1DBTableView1ISOEM: TcxGridDBColumn;
    cxGrid1DBTableView1FRM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SHOW_TOTAL_ROW: TcxGridDBColumn;
    cxGrid1DBTableView1SHOW_TOTAL_COL: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_spr_rep: TForm_spr_rep;

implementation

uses DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_spr_rep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
