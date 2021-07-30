unit u_frmKlskPar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  OracleData, cxDBLookupComboBox;

type
  TfrmKlskPar = class(TForm)
    OD_objxpar: TOracleDataSet;
    DS_objxpar: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1VAL: TcxGridDBColumn;
    OD_u_list: TOracleDataSet;
    DS_u_list: TDataSource;
    cxGrid1DBTableView1ULIST: TcxGridDBColumn;
    OD_objxparID: TFloatField;
    OD_objxparFK_LIST: TFloatField;
    OD_objxparVAL: TStringField;
    OD_objxparVAL_TP: TStringField;
    OD_objxparS1: TStringField;
    OD_objxparN1: TFloatField;
    OD_objxparD1: TDateTimeField;
    OD_objxparFK_K_LSK: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure OD_objxparNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKlskPar: TfrmKlskPar;

implementation

uses Unit_lk_par, Unit_list_kart;

{$R *.dfm}

procedure TfrmKlskPar.FormCreate(Sender: TObject);
begin
  OD_objxpar.SetVariable('K_LSK_ID',
    Form_list_kart.OD_list_kart.FieldByName('K_LSK_ID').AsInteger);
  OD_objxpar.Active := True;
  OD_u_list.Active := True;
end;

procedure TfrmKlskPar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmKlskPar.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  formLkPar: TForm_lk_par;
begin
  if (OD_objxpar.State = dsEdit) or (OD_objxpar.State = dsInsert) then
    OD_objxpar.Post;

  formLkPar := TForm_lk_par.Create(frmKlskPar, DS_objxpar);
  formLkPar.ShowModal;

end;

procedure TfrmKlskPar.OD_objxparNewRecord(DataSet: TDataSet);
begin
  OD_objxpar.FieldByName('FK_K_LSK').AsInteger :=
    Form_list_kart.OD_list_kart.FieldByName('K_LSK_ID').AsInteger;
end;

end.

