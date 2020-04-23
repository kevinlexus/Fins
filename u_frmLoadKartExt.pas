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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoadKartExt: TfrmLoadKartExt;

implementation

uses DM_module1, Unit_status;

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
  // ��������� ���� � ���.�������
  OpenDialog1.Filter := 'TXT ����� (*.txt)|*.txt|��� ����� (*.*)|*.*';
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
          msg2('����������� �������� �����!', '��������!',
            MB_OK + MB_ICONERROR)
        else if l_res = 'ERROR' then
          msg2('��������� ������ �� ����� �������� �����!', '��������!',
            MB_OK + MB_ICONERROR)
        else
        begin
          OD_loadKartExt.Active := False;
          OD_loadKartExt.Active := True;
          msg2('��������� ' + l_res + ' �������', '��������!',
            MB_OK + MB_ICONINFORMATION);
        end;
      except
        on E: EOracleError do
        begin
          msg2(E.Message, '��������!',
            MB_OK + MB_ICONEXCLAMATION);
        end;
      end;
    end;
  end;
end;

procedure TfrmLoadKartExt.Button3Click(Sender: TObject);
begin
  // ��������� ������� ������������ ���.����� � ����
  if Application.MessageBox('��������� ���.����� � �������=0 � ����?',
    '��������!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
      ['/loadApprovedKartExt', null, 'GET']);
    Form_status.Close;
    Application.MessageBox('���.����� ������� ���������!', '��������!', MB_OK
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
  // ���� ������
  col := cxGrid1DBTableView1.GetColumnByFieldName('STATUS');
  s := AViewInfo.GridRecord.DisplayTexts[col.Index];
  if s = '0' then
  begin
    // ������� � ��������
  end
  else if s = '2' then
  begin
    // ������
    ACanvas.Font.Color := clRed;
  end
  else if s = '1' then
  begin
    // ��� �������� (���������� ������)
    ACanvas.Font.Color := clGray;
  end;
end;

// �������� �������� �� ������� ���.������

procedure TfrmLoadKartExt.Button2Click(Sender: TObject);
var
  l_res: string;
  fileName: string;
  cnt: Integer;
begin
  try
    if
      Application.MessageBox('��������� ������ �������� �� ������� ���.������?',
      '��������!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
      Application.CreateForm(TForm_status, Form_status);
      Form_status.Update;
      l_res :=
        DataModule1.OraclePackage1.CallStringFunction('SCOTT.P_JAVA.HTTP_REQ',
        ['/unloadPaymentFileKartExt/' + Edit1.Text, null,
        'GET']);
      Form_status.Close;
      if l_res = 'PROCESS' then
        msg2('����������� �������� �����!', '��������!',
          MB_OK + MB_ICONERROR)
      else if l_res = 'ERROR' then
        msg2('��������� ������ �� ����� �������� �����!', '��������!',
          MB_OK + MB_ICONERROR)
      else
      begin
        OD_loadKartExt.Active := False;
        OD_loadKartExt.Active := True;
        // �������� ���-�� ������� � ��� ����� �� ����������
        cnt := StrToInt(Copy(l_res, 0, Pos('_', l_res) - 1));
        fileName := Copy(l_res, Pos('_', l_res) + 1, Length(l_res) - Pos('_',
          l_res) + 1);

        msg2('��������� ' + IntToStr(cnt) + ' ������� � ����:' + fileName,
          '��������!',
          MB_OK + MB_ICONINFORMATION);
      end;
    end;
  except
    on E: EOracleError do
    begin
      msg2(E.Message, '��������!',
        MB_OK + MB_ICONEXCLAMATION);
    end;
  end;
end;

end.

