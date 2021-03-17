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
    OpenDialog1: TOpenDialog;
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
    OD_loadKartExtFK_KLSK_PREMISE: TFloatField;
    OD_loadKartExtFK_KLSK_ID: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1EXT_LSK: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1FK_KLSK_ID: TcxGridDBColumn;
    cxGrid1DBTableView1FK_KLSK_PREMISE: TcxGridDBColumn;
    cxGrid1DBTableView1GUID: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1ADDRESS: TcxGridDBColumn;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1NM: TcxGridDBColumn;
    cxGrid1DBTableView1PERIOD_DEB: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1COMM: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    OD_not_linked: TOracleDataSet;
    DS_not_linked: TDataSource;
    cxGridDBTableView1LSK: TcxGridDBColumn;
    cxGridDBTableView1CHARGES: TcxGridDBColumn;
    cxGridDBTableView1PAYMENT: TcxGridDBColumn;
    cxGridDBTableView1KUL: TcxGridDBColumn;
    cxGridDBTableView1STREET: TcxGridDBColumn;
    cxGridDBTableView1ND: TcxGridDBColumn;
    cxGridDBTableView1KW: TcxGridDBColumn;
    Memo1: TMemo;
    Memo2: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Edit1: TEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Panel2: TPanel;
    Button4: TButton;
    cxDateEdit3: TcxDateEdit;
    Label4: TLabel;
    OD_loadKartExtINSAL: TFloatField;
    OD_loadKartExtCHRG: TFloatField;
    OD_loadKartExtPAYMENT: TFloatField;
    OD_loadKartExtKW: TStringField;
    cxGrid1DBTableView1INSAL: TcxGridDBColumn;
    cxGrid1DBTableView1CHRG: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT: TcxGridDBColumn;
    Panel3: TPanel;
    Button5: TButton;
    Button6: TButton;
    OD_loadKartExtRASCHET_SCHET: TStringField;
    cxGrid1DBTableView1RASCHET_SCHET: TcxGridDBColumn;
    Memo3: TMemo;
    OD_loadKartExtAPPROVE_RESULT: TStringField;
    cxGrid1DBTableView1APPROVE_RESULT: TcxGridDBColumn;
    pnl1: TPanel;
    Timer1: TTimer;
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
    procedure TabSheet2Show(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cxDateEdit3PropertiesCloseUp(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoadKartExt: TfrmLoadKartExt;

implementation

uses DM_module1, Unit_status, Unit_Mainform,
 cxGridExportLink, cxExport, ShellAPI;

{$R *.dfm}

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
          ['/loadFileKartExt/' + ExtractFileName(OpenDialog1.FileName), null, null,
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
  if Application.MessageBox('Сохранить обработанные успешно лиц.счета в базу?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    if not (OD_loadKartExt.State in [dsBrowse]) then
      OD_loadKartExt.Post;
    DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
      ['/loadApprovedKartExt', null, null, 'GET']);
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
    if getDoublePar(Form_main.paramList, 'EXT_LSK_LOAD_TP') = 0 then
    begin
      // Полыс
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
    end
    else
    begin
      // Кис
      if s = '1' then
      begin
        // не обрабатывать (отмечено пользователем, как неактивная запись)
        ACanvas.Font.Color := clGray;
      end
      else if (s = '2') or (s = '10') then
      begin
        // ошибка
        ACanvas.Font.Color := clRed;
      end
      else if (s = '0') then
      begin
        // одобрено на загрузку в БД пользователем
        ACanvas.Font.Color := clGreen;
      end
      else if (s = '7') or (s = '8') or (s = '5') then
      begin
        // необходимо привязать лиц.счет вручную, или проверить привязку к лиц.счету
        ACanvas.Font.Color := clBlue;
      end;

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
         +'/'+ cxDateEdit1.Text +'/'+ cxDateEdit2.Text, null, null,
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

procedure TfrmLoadKartExt.TabSheet2Show(Sender: TObject);
begin
   OD_not_linked.SetVariable('dt1', cxDateEdit1.Date);
   OD_not_linked.Active:=false;
   OD_not_linked.Active:=true;
end;

procedure TfrmLoadKartExt.Button4Click(Sender: TObject);
var
  szFilename : string;
begin
 szFilename := 'C:\temp\без_привязки.xlsx';

 ExportGridToXLSX(szFilename , cxGrid2, true, true, true);
 ShellExecute(Self.Handle, 'open', PChar(szFilename), nil, nil, SW_SHOWMAXIMIZED);

end;

procedure TfrmLoadKartExt.cxDateEdit3PropertiesCloseUp(Sender: TObject);
begin
   OD_not_linked.SetVariable('dt1', cxDateEdit1.Date);
   OD_not_linked.Active:=false;
   OD_not_linked.Active:=true;
end;

procedure TfrmLoadKartExt.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=false;
  
  pnl1.Visible:=True;
  Refresh;
  OD_loadKartExt.Active := True;
  pnl1.Visible:=False;

  OD_not_linked.SetVariable('dt1', cxDateEdit1.Date);
  OD_not_linked.Active:=false;
  OD_not_linked.Active:=true;

end;

procedure TfrmLoadKartExt.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Form_Main.cur_dt;
  cxDateEdit2.Date := Form_Main.cur_dt;
  cxDateEdit3.Date := Form_Main.cur_dt;

  PageControl1.ActivePageIndex:=0;

  if getDoublePar(Form_main.paramList, 'EXT_LSK_LOAD_TP') = 0 then
    begin
      // Полыс
      cxGrid1DBTableView1INSAL.Visible:=false;
      cxGrid1DBTableView1CHRG.Visible:=false;
      cxGrid1DBTableView1PAYMENT.Visible:=false;
      cxGrid1DBTableView1SUMMA.Visible:=false;
      Panel3.Visible:=False;
      Memo1.Visible:=False;
    end
    else
    begin
      // Кис
      Memo3.Visible:=False;
      TabSheet2.TabVisible:=False;
      Panel1.Visible:=False;
    end;

end;

end.

