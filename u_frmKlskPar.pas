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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
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
  OD_objxpar.SetVariable('K_LSK_ID', Form_list_kart.OD_list_kart.FieldByName('K_LSK_ID').AsInteger);
  OD_objxpar.Active:=True;
  OD_u_list.Active:=True;
end;

procedure TfrmKlskPar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmKlskPar.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  formLkPar: TForm_lk_par;
begin
  with OD_objxpar do
  begin
    if (FieldByName('VAL_TP').AsString='ST')
    or (FieldByName('VAL_TP').AsString='DT')
    or (FieldByName('VAL_TP').AsString='NM') then
    begin
      formLkPar:=TForm_lk_par.Create(frmKlskPar, DS_objxpar);
      formLkPar.ShowModal;

      //Application.CreateForm(TForm_lk_par, Form_lk_par);
      //Form_lk_par.ShowModal;
    end;
  end;

end;

end.
