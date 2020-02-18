unit u_frmLoadKartExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Utils, Oracle;

type
  TfrmLoadKartExt = class(TForm)
    OD_loadKartExt: TOracleDataSet;
    DS_loadKartExt: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxGrid1DBTableView1EXT_LSK: TcxGridDBColumn;
    cxGrid1DBTableView1GUID: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1ADDRESS: TcxGridDBColumn;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1NM: TcxGridDBColumn;
    cxGrid1DBTableView1PERIOD_DEB: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1COMM: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoadKartExt: TfrmLoadKartExt;

implementation

uses DM_module1;

{$R *.dfm}

procedure TfrmLoadKartExt.FormCreate(Sender: TObject);
begin
  OD_loadKartExt.Active := True;
end;

procedure TfrmLoadKartExt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLoadKartExt.Button1Click(Sender: TObject);
var
  l_res: string;
begin
  // загрузить файл с лиц.счетами
  OpenDialog1.Filter := 'TXT файлы (*.txt)|*.txt|Все файлы (*.*)|*.*';
  OpenDialog1.FilterIndex := 1;
  OpenDialog1.Execute;

  if OpenDialog1.FileName <> '' then
  begin
    try
      l_res :=
        DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
        ['/loadFileKartExt/' + ExtractFileName(OpenDialog1.FileName), 'GET']);
      if l_res = 'OK' then
      begin
        OD_loadKartExt.Active := False;
        OD_loadKartExt.Active := True;
        msg2('Файл успешно загружен!', 'Внимание!',
          MB_OK + MB_ICONINFORMATION)
      end
      else
        msg2('Произошла ошибка во время загрузки файла!', 'Внимание!',
          MB_OK + MB_ICONERROR);
    except
      on E: EOracleError do
      begin
        msg2(E.Message, 'Внимание!',
          MB_OK + MB_ICONEXCLAMATION);
      end;
    end;
  end;

end;

procedure TfrmLoadKartExt.Button3Click(Sender: TObject);
begin
  // сохранить успешно обработанные лиц.счета в базу
  if Application.MessageBox('Сохранить лиц.счета в статусе=0 в базу?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
      ['/loadApprovedKartExt', 'GET']);
    Application.MessageBox('Лиц.счета успешно сохранены!', 'Внимание!', MB_OK 
      + MB_ICONINFORMATION + MB_TOPMOST);
  end;
end;

procedure TfrmLoadKartExt.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 col: TcxGridDBColumn;
 s : string;
begin
  // цвет записи
  col:=cxGrid1DBTableView1.GetColumnByFieldName('STATUS');
  s := AViewInfo.GridRecord.DisplayTexts[col.Index];
  if s = '0' then
  begin
    // принять к загрузке
  end
  else if s = '2' then
  begin
    // ошибка
    ACanvas.Font.Color:= clRed;
  end
  else if s = '1' then
  begin
    // уже загружен (неактивная запись)
    ACanvas.Font.Color:= clGray;
  end;
end;

end.

