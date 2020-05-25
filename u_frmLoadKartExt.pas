unit u_frmLoadKartExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Utils, Oracle, cxContainer,
  ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, DateUtils;

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
    Button3: TButton;
    OD_loadKartExtID: TFloatField;
    OD_loadKartExtEXT_LSK: TStringField;
    OD_loadKartExtGUID: TStringField;
    OD_loadKartExtFIO: TStringField;
    OD_loadKartExtADDRESS: TStringField;
    OD_loadKartExtCODE: TFloatField;
    OD_loadKartExtNM: TStringField;
    OD_loadKartExtPERIOD_DEB: TStringField;
    OD_loadKartExtSUMMA: TFloatField;
    OD_loadKartExtCOMM: TStringField;
    OD_loadKartExtSTATUS: TFloatField;
    OD_loadKartExtLSK: TStringField;
    Memo1: TMemo;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    cxDateEdit1: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDateEdit2: TcxDateEdit;
    OD_loadKartExtFK_KLSK_PREMISE: TFloatField;
    cxGrid1DBTableView1FK_KLSK_PREMISE: TcxGridDBColumn;
    OD_loadKartExtFK_KLSK_ID: TFloatField;
    cxGrid1DBTableView1FK_KLSK_ID: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure cxDateEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxDateEdit2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoadKartExt: TfrmLoadKartExt;

implementation

uses DM_module1, Unit_status, Unit_Mainform;

{$R *.dfm}

procedure TfrmLoadKartExt.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Form_Main.cur_dt;
  cxDateEdit2.Date := Form_Main.cur_dt;
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
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName <> '' then
    begin
      try
        Application.CreateForm(TForm_status, Form_status);
        Form_status.Update;
        l_res :=
          DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
          ['/loadFileKartExt/' + ExtractFileName(OpenDialog1.FileName), null,
          'GET']);
        Form_status.Close;
        if l_res = 'PROCESS' then
          msg2('Выполняется загрузка файла!', 'Внимание!',
            MB_OK + MB_ICONERROR)
        else if l_res = 'ERROR' then
          msg2('Произошла ошибка во время загрузки файла!', 'Внимание!',
            MB_OK + MB_ICONERROR)
        else
        begin
          OD_loadKartExt.Active := False;
          OD_loadKartExt.Active := True;
          msg2('Загружено ' + l_res + ' записей', 'Внимание!',
            MB_OK + MB_ICONINFORMATION);
        end;
      except
        on E: EOracleError do
        begin
          msg2(E.Message, 'Внимание!',
            MB_OK + MB_ICONEXCLAMATION);
        end;
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
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    if not (OD_loadKartExt.State in [dsBrowse]) then
      OD_loadKartExt.Post;
    DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
      ['/loadApprovedKartExt', null, 'GET']);
    Form_status.Close;
    Application.MessageBox('Лиц.счета успешно сохранены!', 'Внимание!', MB_OK
      + MB_ICONINFORMATION + MB_TOPMOST);
  end;
end;

procedure TfrmLoadKartExt.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col: TcxGridDBColumn;
  s: string;
begin
  // цвет записи
  col := cxGrid1DBTableView1.GetColumnByFieldName('STATUS');
  s := AViewInfo.GridRecord.DisplayTexts[col.Index];
  if s = '0' then
  begin
    // принять к загрузке
  end
  else if s = '2' then
  begin
    // ошибка
    ACanvas.Font.Color := clRed;
  end
  else if s = '1' then
  begin
    // уже загружен (неактивная запись)
    ACanvas.Font.Color := clGray;
  end;
end;

// выгрузка платежей по внешним лиц.счетам

procedure TfrmLoadKartExt.Button2Click(Sender: TObject);
var
  l_res: string;
  fileName: string;
  cnt: Integer;
begin
  try
    if
      Application.MessageBox('Выгрузить реестр платежей по внешним лиц.счетам?',
      'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      l_res :=
        DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
        ['/unloadPaymentFileKartExt/' + Edit1.Text
         +'/'+ cxDateEdit1.Text +'/'+ cxDateEdit2.Text, null,
        'GET']);
      Form_status.Close;
      if l_res = 'PROCESS' then
        msg2('Выполняется выгрузка файла!', 'Внимание!',
          MB_OK + MB_ICONERROR)
      else if l_res = 'ERROR' then
        msg2('Произошла ошибка во время выгрузки файла!', 'Внимание!',
          MB_OK + MB_ICONERROR)
      else
      begin
        OD_loadKartExt.Active := False;
        OD_loadKartExt.Active := True;
        // получить кол-во записей и имя файла из результата
        cnt := StrToInt(Copy(l_res, 0, Pos('_', l_res) - 1));
        fileName := Copy(l_res, Pos('_', l_res) + 1, Length(l_res) - Pos('_',
          l_res) + 1);

        msg2('Выгружено ' + IntToStr(cnt) + ' записей в файл:' + fileName,
          'Внимание!',
          MB_OK + MB_ICONINFORMATION);
      end;
    end;
  except
    on E: EOracleError do
    begin
      msg2(E.Message, 'Внимание!',
        MB_OK + MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure TfrmLoadKartExt.cxDateEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  year, month: Integer;
  curYear, curMonth: Integer;
begin
{  if DisplayValue = '' then
  begin
    Error := True;
    ErrorText := 'Ошибка в дате!';
  end
  else
  begin
    year := YearOf(TcxDateEdit(Sender).Date);
    month := MonthOfTheYear(TcxDateEdit(Sender).Date);
    curYear := YearOf(Form_main.cur_dt);
    curMonth := MonthOfTheYear(Form_main.cur_dt);
    if (year <> curYear) or (month <> curMonth) then
    begin
      Error := True;
      ErrorText := 'Дата не находится в текущем периоде!';
    end;
  end;}

end;

procedure TfrmLoadKartExt.cxDateEdit2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  year, month: Integer;
  curYear, curMonth: Integer;
begin
{  if DisplayValue = '' then
  begin
    Error := True;
    ErrorText := 'Ошибка в дате!';
  end
  else
  begin
    year := YearOf(TcxDateEdit(Sender).Date);
    month := MonthOfTheYear(TcxDateEdit(Sender).Date);
    curYear := YearOf(Form_main.cur_dt);
    curMonth := MonthOfTheYear(Form_main.cur_dt);
    if (year <> curYear) or (month <> curMonth) then
    begin
      Error := True;
      ErrorText := 'Дата не находится в текущем периоде!';
    end;
  end;}
end;

end.

