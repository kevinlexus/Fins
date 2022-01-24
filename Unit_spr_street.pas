unit Unit_spr_street;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls,
  OracleData, DBCtrls, Utils, cxGraphics,
  cxControls, 
  
  cxGridDBTableView,
  cxGridLevel, cxClasses, cxGrid, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView;

type
  TForm_spr_street = class(TForm)
    OD_street: TOracleDataSet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_streetID: TStringField;
    OD_streetNAME: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    OD_streetFK_SETTLEMENT: TFloatField;
    OD_cities: TOracleDataSet;
    cxGrid1DBTableView1SETTLEMENT: TcxGridDBColumn;
    DS_cities: TDataSource;
    DS_streets: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure OD_streetFK_SETTLEMENTValidate(Sender: TField);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_spr_street: TForm_spr_street;

implementation

{$R *.dfm}
procedure exit_ok;
begin
 with Form_spr_street do
 begin
   exit_:=1;
   if not (OD_street.State in [dsBrowse]) then
     OD_street.Post;
   OD_street.Session.Commit;
   Close;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_street do
 begin
  exit_:=0;
  OD_street.Session.Rollback;
  Close;
 end;
end;

procedure TForm_spr_street.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_street.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;

end;

procedure TForm_spr_street.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;

end;

procedure TForm_spr_street.FormCreate(Sender: TObject);
begin
  exit_:=2;  //Выход через закрытие окна
  OD_street.Active:=true;
  OD_cities.Active:=true;
end;

procedure TForm_spr_street.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbDelete) and (msg3('Удалить улицу?',
     'Подверждение', MB_YESNO+MB_ICONQUESTION) <> IDYES) then
  begin
   Abort();
  end;
end;

procedure TForm_spr_street.OD_streetFK_SETTLEMENTValidate(Sender: TField);
begin
{   if Sender.Text='' then
     Application.MessageBox('Заполните наименование населенного пункта', 
       'Внимание!', MB_OK + MB_ICONSTOP + MB_TOPMOST);
 }      
end;

end.
