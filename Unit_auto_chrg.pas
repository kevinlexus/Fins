unit Unit_auto_chrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, ExtCtrls, StdCtrls,
  Menus, ComCtrls, Utils, Grids, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMemo, dxSkinsCore, dxSkinsDefaultPainters,
  dxDateRanges;

type
  TForm_auto_chrg = class(TForm)
    OD_usl: TOracleDataSet;
    Panel1: TPanel;
    DS_usl: TDataSource;
    Button1: TButton;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1USL: TcxGridDBColumn;
    cxGridDBTableView1NM: TcxGridDBColumn;
    cxMemo1: TcxMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_auto_chrg: TForm_auto_chrg;

implementation

uses DM_module1, Unit_status;

{$R *.dfm}

procedure TForm_auto_chrg.FormCreate(Sender: TObject);
begin
  OD_usl.Active:=True;
end;

procedure TForm_auto_chrg.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_auto_chrg.N1Click(Sender: TObject);
var
l_ret: Integer;
begin
  if msg3('Выполнить автоначисление по услуге '+
    OD_usl.FieldByName('nm').AsString+'?',
    'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
    ID_YES then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param', ['VER_METER1']) <> 0 then
    begin
      // новая версия
      l_ret:=DataModule1.OraclePackage1.CallIntegerFunction(
          'scott.P_METER.gen_auto_chrg_all', [1,
            OD_usl.FieldByName('usl').AsString]);
    end
    else
    begin
      // старая версия
      l_ret:=DataModule1.OraclePackage1.CallIntegerFunction(
          'scott.P_VVOD.gen_auto_chrg_all', [1,
            OD_usl.FieldByName('usl').AsString]);
    end;
    Form_status.Close;
    if l_ret = 0 then
      msg2('Автоначисление выполенено!',
          'Внимание!', MB_OK+MB_ICONINFORMATION)
    else
      msg2('Изменений не произведено!',
          'Внимание!', MB_OK+MB_ICONINFORMATION)
  end;

end;

procedure TForm_auto_chrg.N2Click(Sender: TObject);
var
  l_ret: Integer;
begin
  if msg3('Отменить автоначисление по услуге '+
    OD_usl.FieldByName('nm').AsString+'?',
    'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
    ID_YES then
  begin
    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;

    if DataModule1.OraclePackage1.CallIntegerFunction('scott.Utils.get_int_param', ['VER_METER1']) <> 0 then
    begin
      // новая версия
      l_ret:=DataModule1.OraclePackage1.CallIntegerFunction(
          'scott.P_METER.gen_auto_chrg_all', [0,
            OD_usl.FieldByName('usl').AsString]);
    end
    else
    begin
      // старая версия
      l_ret:=DataModule1.OraclePackage1.CallIntegerFunction(
          'scott.P_VVOD.gen_auto_chrg_all', [0,
            OD_usl.FieldByName('usl').AsString]);
    end;

    Form_status.Close;
    if l_ret = 0 then
      msg2('Автоначисление отменено!',
          'Внимание!', MB_OK+MB_ICONINFORMATION)
    else
      msg2('Изменений не произведено!',
          'Внимание!', MB_OK+MB_ICONINFORMATION)
  end;
end;

procedure TForm_auto_chrg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
