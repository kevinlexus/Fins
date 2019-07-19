unit Unit_load_files;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, Oracle, Utils;

type
  TForm_load_files = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    wwDBComboBox1: TwwDBComboBox;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_load_files: TForm_load_files;

implementation

uses DM_module1;

{$R *.dfm}

procedure TForm_load_files.Button2Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'DBF файлы (*.dbf)|*.dbf|Все файлы (*.*)|*.*';
  OpenDialog1.FilterIndex:=1;
  OpenDialog1.Execute;

  if wwDBComboBox1.Value='1' then
  begin
    if OpenDialog1.FileName <> '' then
    begin
    DataModule1.OraclePackage1.CallProcedure
      ('scott.dbase_pkg.load_other_file_dbf',['LOAD_FILE_DIR',
                            OpenDialog1.FileName]);
    try
      DataModule1.OraclePackage1.CallProcedure
        ('scott.agent.load_subs_inf',[parNone]);
      msg2('Файл успешно загружен!', 'Внимание!',
        MB_OK+MB_ICONINFORMATION);
    except
    on E: EOracleError do
    begin
      msg2(E.Message, 'Внимание!',
        MB_OK+MB_ICONEXCLAMATION);
    end;
    end;
    end;
  end;
end;

procedure TForm_load_files.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Add(DataModule1.OraclePackage1.CallStringFunction
    ('scott.init.get_load_dir', [parNone]));
end;

procedure TForm_load_files.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_load_files.Button3Click(Sender: TObject);
begin
  Close;
end;

end.
