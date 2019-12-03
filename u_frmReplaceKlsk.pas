unit u_frmReplaceKlsk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData;

type
  TfrmReplaceKlsk = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    OD_kart: TOracleDataSet;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReplaceKlsk: TfrmReplaceKlsk;

implementation

uses DM_module1, Unit_list_kart;

{$R *.dfm}

procedure TfrmReplaceKlsk.FormCreate(Sender: TObject);
begin
  OD_kart.Active := true;
  Edit1.Text := OD_kart.FieldByName('K_LSK_ID').AsString;
  Edit2.Text := OD_kart.FieldByName('HOUSE_ID').AsString;
  Edit3.Text := Form_list_kart.OD_list_kart.FieldByName('LSK').AsString;
end;

procedure TfrmReplaceKlsk.Button1Click(Sender: TObject);
var
  err: Integer;
begin
  if Application.MessageBox('Заменить KLSK Фин.лиц.счета?' + #13#10,
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    // замена klsk_id
    if Edit1.Text <> '' then
      err :=
        DataModule1.OraclePackage1.CallIntegerFunction('scott.C_KART.replace_klsk',
        [Edit3.Text, StrToInt(Edit1.Text)]);
    if err = 0 then
    begin
      DataModule1.OracleSession1.Commit;
      Form_list_kart.OD_list_kart.RefreshRecord;
      Application.MessageBox('Замена выполнена успешно!' + #13#10,
        'Внимание!', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    end
    else
      Application.MessageBox('Замена выполнена с ошибкой!' + #13#10,
        'Внимание!', MB_OK + MB_ICONERROR + MB_TOPMOST);
  end;
end;

procedure TfrmReplaceKlsk.Button2Click(Sender: TObject);
var
  err: Integer;
begin
  if Application.MessageBox('Заменить HOUSE_ID дома?' + #13#10,
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    // замена house_id
    if Edit2.Text <> '' then
      err :=
        DataModule1.OraclePackage1.CallIntegerFunction('scott.C_KART.replace_house_id', [Edit3.Text, StrToInt(Edit2.Text)]);

    if err = 0 then
    begin
      DataModule1.OracleSession1.Commit;
      Form_list_kart.OD_list_kart.RefreshRecord;
      Application.MessageBox('Замена выполнена успешно!' + #13#10,
        'Внимание!', MB_OK + MB_ICONINFORMATION + MB_TOPMOST)
    end
    else
      Application.MessageBox('Замена выполнена с ошибкой!' + #13#10,
        'Внимание!', MB_OK + MB_ICONERROR + MB_TOPMOST);

  end;

end;

procedure TfrmReplaceKlsk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

