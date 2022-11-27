unit Unit_reg_sch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, 
  ExtCtrls, 
  Utils, cxControls,
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGridLevel, cxClasses, 
  cxGridDBTableView, cxGrid,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxDBLookupComboBox, cxCalendar, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, dxSkinsCore, dxSkinsDefaultPainters,
  dxDateRanges;

type
  TForm_reg_sch = class(TForm)
    OD_data: TOracleDataSet;
    Panel2: TPanel;
    Panel1: TPanel;
    OD_usl: TOracleDataSet;
    OD_state: TOracleDataSet;
    OD_tp: TOracleDataSet;
    Button1: TButton;
    Button2: TButton;
    OD_meter: TOracleDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DT1: TcxGridDBColumn;
    cxGrid1DBTableView1TEXT: TcxGridDBColumn;
    cxGrid1DBTableView1ACTION: TcxGridDBColumn;
    DS_usl: TDataSource;
    DS_tp: TDataSource;
    DS_state: TDataSource;
    DS_meter: TDataSource;
    DS_data: TDataSource;
    cxGrid1DBTableView1STATE: TcxGridDBColumn;
    cxGrid1DBTableView1METER: TcxGridDBColumn;
    OD_dataID: TFloatField;
    OD_dataDT1: TDateTimeField;
    OD_dataFK_TP: TFloatField;
    OD_dataFK_STATE: TFloatField;
    OD_dataTEXT: TStringField;
    OD_dataFK_USL: TStringField;
    OD_dataLSK: TStringField;
    OD_dataFK_METER: TFloatField;
    cxGrid1DBTableView1USL: TcxGridDBColumn;
    OD_dataDTF: TDateTimeField;
    OD_dataUSERNAME: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OD_dataBeforeInsert(DataSet: TDataSet);
    procedure OD_dataBeforePost(DataSet: TDataSet);
    procedure OD_dataBeforeDelete(DataSet: TDataSet);
    procedure OD_dataAfterInsert(DataSet: TDataSet);
    procedure OD_dataBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_reg_sch: TForm_reg_sch;

implementation

uses Unit_list_kart;

{$R *.dfm}

procedure TForm_reg_sch.FormCreate(Sender: TObject);
begin
  OD_data.Active:=true;
  OD_usl.Active:=true;
  OD_state.Active:=true;
  OD_tp.Active:=true;
  OD_meter.Active:=true;
  Button2.Enabled:=false;
end;

procedure TForm_reg_sch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure exit_ok;
begin
 with Form_reg_sch do
 begin
  if not (OD_data.State in [dsBrowse]) then
   OD_data.Post;
   OD_data.Session.ApplyUpdates([OD_data], True);
   OD_data.Session.Commit;
   Button2.Enabled:=False;
 end;
end;

procedure exit_cancel;
begin
 with Form_reg_sch do
 begin
  if not (OD_data.State in [dsBrowse]) then
   OD_data.Post;
  if (OD_data.UpdatesPending=true) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      exit_ok;
    end
    else
    begin
    if not (OD_data.State in [dsBrowse]) then
      OD_data.Cancel;
    OD_data.CancelUpdates;
    OD_data.Session.Rollback;
    end;
  end;
  end;
end;


procedure TForm_reg_sch.Button1Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_reg_sch.Button2Click(Sender: TObject);
begin
  exit_ok;
end;

procedure TForm_reg_sch.OD_dataBeforeInsert(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

procedure TForm_reg_sch.OD_dataBeforePost(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

procedure TForm_reg_sch.OD_dataBeforeDelete(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

procedure TForm_reg_sch.OD_dataAfterInsert(DataSet: TDataSet);
begin
  OD_data.FieldByName('lsk').AsString:=
    Form_list_kart.OD_list_kart.FieldByName('lsk').AsString;
end;

procedure TForm_reg_sch.OD_dataBeforeEdit(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

end.
