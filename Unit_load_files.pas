unit Unit_load_files;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Oracle, Utils, 
  cxGraphics, cxControls, cxLookAndFeelPainters,
  
  DB, OracleData,
  cxCheckBox, cxCheckComboBox, ExtCtrls, 
  
  cxGridDBTableView, cxGridLevel, cxClasses,
  cxGrid, Menus, cxLookAndFeels, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Mask, cxImageComboBox;

type
  TForm_load_files = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    cxCheckComboBox1: TcxCheckComboBox;
    OD_uk: TOracleDataSet;
    DS_uk: TDataSource;
    Panel1: TPanel;
    OD_docxpar: TOracleDataSet;
    DS_docxpar: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DT_CRT: TcxGridDBColumn;
    cxGrid1DBTableView1COMM: TcxGridDBColumn;
    cxGrid1DBTableView1IS_SET_PREV_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1USER_NAME: TcxGridDBColumn;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    cxGrid1DBTableView1V: TcxGridDBColumn;
    imgSel: TcxImageComboBox;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure selTypeFile;
    procedure fillUk();
    function getStrUk(): string;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure OD_docxparAfterScroll(DataSet: TDataSet);
    procedure cxImageComboBox1PropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_load_files: TForm_load_files;

implementation

uses DM_module1, Unit_status, Unit_Mainform;

{$R *.dfm}

procedure TForm_load_files.Button2Click(Sender: TObject);
var
  l_res, l_tmp, isSetPrev: string;
begin
  if OpenDialog1.Execute then
  begin
    if LowerCase(ExtractFileDir(OpenDialog1.FileName)) <> 'c:\temp' then
    begin
      Application.MessageBox('Необходимо выбрать файл в директории c:\temp\',
        'Внимание!', MB_OK + MB_ICONWARNING + MB_TOPMOST);
      exit;
    end;

    if imgSel.ItemIndex = 0 then
    begin
      // субсидии
      if OpenDialog1.FileName <> '' then
      begin
        DataModule1.OraclePackage1.CallProcedure
          ('scott.dbase_pkg.load_other_file_dbf', ['LOAD_FILE_DIR',
          OpenDialog1.FileName]);
        try
          DataModule1.OraclePackage1.CallProcedure
            ('scott.agent.load_subs_inf', [parNone]);
          msg2('Файл загружен!', 'Внимание!',
            MB_OK + MB_ICONINFORMATION);
        except
          on E: EOracleError do
          begin
            msg2(E.Message, 'Внимание!',
              MB_OK + MB_ICONEXCLAMATION);
          end;
        end;
      end;
    end
    else if imgSel.ItemIndex = 1 then
    begin
      // загрузка показаний счетчиков
      if OpenDialog1.FileName <> '' then
      begin
        try
          Application.CreateForm(TForm_status, Form_status);
          Form_status.Update;
          isSetPrev := '0';
          if (CheckBox1.Checked) then
          begin
            isSetPrev := '1';
          end;
          l_res :=
            DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
            ['loadFileMeterVal', ExtractFileName(OpenDialog1.FileName) + '/' +
            isSetPrev, null, 'GET', Form_main.javaServer]);
          Form_status.Close;
          OD_docxpar.Active := False;
          OD_docxpar.Active := True;
          OD_docxpar.Last;
          if l_res = 'PROCESS' then
            msg2('Выполняется загрузка файла!', 'Внимание!',
              MB_OK + MB_ICONERROR)
          else if l_res = 'ERROR' then
            msg2('Произошла ошибка во время загрузки файла!!', 'Внимание!',
              MB_OK + MB_ICONERROR)
          else
              msg2('Загружено '+l_RES+' записей', 'Внимание!',
              MB_OK + MB_ICONINFORMATION);
        except
          on E: EOracleError do
          begin
            msg2(E.Message, 'Внимание!',
              MB_OK + MB_ICONEXCLAMATION);
          end;
        end;
      end;
    end
    else if imgSel.ItemIndex = 2 then
    begin
      // выгрузка показаний счетчиков
      if OpenDialog1.FileName <> '' then
      begin
        try
          Application.CreateForm(TForm_status, Form_status);
          Form_status.Update;
          isSetPrev := '0';
          if (CheckBox1.Checked) then
          begin
            isSetPrev := '1';
          end;
          l_res :=
            DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
            ['unloadFileMeterVal', ExtractFileName(OpenDialog1.FileName) + '/' +
            getStrUk, null, 'GET', Form_main.javaServer]);
          Form_status.Close;
          if l_res = 'PROCESS' then
            msg2('Выполняется выгрузка файла!', 'Внимание!',
              MB_OK + MB_ICONERROR)
          else if l_res = 'ERROR' then
            msg2('Произошла ошибка во время выгрузки файла!', 'Внимание!',
              MB_OK + MB_ICONERROR)
          else
              msg2('Выгружено '+l_RES+' записей', 'Внимание!',
              MB_OK + MB_ICONINFORMATION);

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
end;

procedure TForm_load_files.FormCreate(Sender: TObject);
begin
  fillUk;
  selTypeFile;
  Memo1.Lines.Add(DataModule1.OraclePackage1.CallStringFunction
    ('scott.init.get_load_dir', [parNone]));
end;

procedure TForm_load_files.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_load_files.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_load_files.selTypeFile();
begin
  cxGrid1.Visible := False;
  if imgSel.ItemIndex = 0 then
  begin
    OpenDialog1.Filter := 'DBF файлы (*.dbf)|*.dbf|Все файлы (*.*)|*.*';
    OpenDialog1.FilterIndex := 1;
    cxCheckComboBox1.Visible := false;
    CheckBox1.Visible := false;
    Label2.Visible := False;
  end
  else if (imgSel.ItemIndex = 1) or (imgSel.ItemIndex = 2) then
  begin
    if imgSel.ItemIndex = 2 then
    begin
      OpenDialog1.Options := [];
      Button2.Caption := 'Выгрузить файл';
      cxCheckComboBox1.Visible := true;
      CheckBox1.Visible := false;
      Label2.Visible := True;
    end
    else
    begin
      OpenDialog1.Options := [ofFileMustExist];
      Button2.Caption := 'Загрузить файл';
      cxCheckComboBox1.Visible := false;
      CheckBox1.Visible := True;
      Label2.Visible := False;
      cxGrid1.Visible := True;
      OD_docxpar.Active := False;
      OD_docxpar.Active := True;
      OD_docxpar.Last;
    end;
    OpenDialog1.Filter := 'CSV файлы (*.csv)|*.csv|Все файлы (*.*)|*.*';
    OpenDialog1.FilterIndex := 1;
  end;
end;

// наполнить checkComboBox значениями УК

procedure TForm_load_files.fillUk();
var
  i: Integer;
begin
  OD_uk.Active := True;
  while not OD_uk.Eof do
  begin
    with cxCheckComboBox1.Properties.Items.Add do
    begin
      Description := OD_uk.FieldByName('reu').AsString + ' '
        + OD_uk.FieldByName('name').AsString;
    end;
    OD_uk.Next;
  end;
end;

// получить список УК

function TForm_load_files.getStrUk(): string;
var
  APCheckStates: ^TcxCheckStates;
  I: Integer;
  AEditProp: TcxCheckComboBoxProperties;
  str: string;
begin
  New(APCheckStates);
  AEditProp := cxCheckComboBox1.Properties;
  str := '0';
  try
    CalculateCheckStates(cxCheckComboBox1.Value,
      AEditProp.Items, AEditProp.EditValueFormat, APCheckStates^);
    for i := 0 to AEditProp.Items.Count - 1 do
      if APCheckStates^[I] = cbsChecked then
        str := str + '''' + copy(AEditProp.Items[I].Description, 1, 3) + ''';';
  finally
    Dispose(APCheckStates)
  end;
  Result := str;
end;

procedure TForm_load_files.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_load_files.N1Click(Sender: TObject);
var
  l_res: Integer;
begin
  if Application.MessageBox('Отменить выбранный реестр?', 'Внимание!',
    MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    Application.CreateForm(TForm_status, Form_status);
    l_res :=
      DataModule1.OraclePackage1.CallIntegerFunction('SCOTT.P_METER.REVERT_DATA_METER',
      [OD_docxpar.FieldByName('id').AsInteger]);
    DataModule1.OraclePackage1.Session.Commit;
    Form_status.Close;
    OD_docxpar.Active := False;
    OD_docxpar.Active := True;
    OD_docxpar.Last;
//    if l_res > 0 then
      msg2('Реестр отменен! Удалено строк:' + IntToStr(l_res), 'Внимание!',
        MB_OK + MB_ICONINFORMATION)
{    else
      msg2('Реестр был отменён, но кол-во отменённых показаний = 0', 'Внимание!',
        MB_OK + MB_ICONERROR);}
  end;
end;

procedure TForm_load_files.OD_docxparAfterScroll(DataSet: TDataSet);
begin
  // действующий - отменённый реестр
  if OD_docxpar.FieldByName('v').AsInteger = 1 then
    N1.Enabled := True
  else
    N1.Enabled := False;
end;

procedure TForm_load_files.cxImageComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
 selTypeFile;
end;

end.

