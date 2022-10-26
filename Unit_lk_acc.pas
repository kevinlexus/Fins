unit Unit_lk_acc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, ExtCtrls, DB, OracleData,
  frxDBSet, Grids, Oracle, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters,
  dxDateRanges;

type
  TForm_lk_acc = class(TForm)
    frxReport1: TfrxReport;
    Panel1: TPanel;
    Button3: TButton;
    Button1: TButton;
    Label1: TLabel;
    OD_pass: TOracleDataSet;
    OD_rnd: TOracleDataSet;
    frxDB_rnd: TfrxDBDataset;
    frxDB_pass: TfrxDBDataset;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    OD_objxpar: TOracleDataSet;
    DS_objxpar: TDataSource;
    Button2: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1VAL: TcxGridDBColumn;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure OD_passAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure setLabel;
    procedure SetLoginPass;
    procedure CreateTelegramAccess;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OD_objxparAfterEdit(DataSet: TDataSet);
    procedure set_state(p_upd: Integer);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    exit_: Integer;
    l_upd: Integer;
  public
    procedure exit_ok;
    procedure exit_cancel;
  end;

var
  Form_lk_acc: TForm_lk_acc;

implementation

uses Unit_Mainform, Unit_list_kart, Utils, DM_module1, Unit_lk_par;

{$R *.dfm}

procedure TForm_lk_acc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  if exit_ <> 2 then
  if l_upd <> 0 then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_lk_acc.FormCreate(Sender: TObject);
begin
  set_state(0);
  exit_:=2;
  OD_pass.Active:=True;
  OD_objxpar.Active:=True;
  setLabel;

  frxReport1.LoadFromFile(Form_main.exepath_+'\lk_acc.fr3', True);
end;

procedure TForm_lk_acc.Button3Click(Sender: TObject);
begin
  exit_cancel;
  Close;
end;

procedure TForm_lk_acc.OD_passAfterScroll(DataSet: TDataSet);
begin
  setLabel;
end;

procedure TForm_lk_acc.setLabel;
begin
 if OD_pass.FieldByName('pass').AsString <> '' then
  begin
    Label2.Caption:='Внимание! Пароль уже был определен!';
    Label2.Font.Color:=clRed;
  end
  else
  begin
    Label2.Caption:='Пароль не определен';
    Label2.Font.Color:=clBlack;
  end;
end;

procedure TForm_lk_acc.Button1Click(Sender: TObject);
begin
  if OD_pass.FieldByName('pass').AsString <> '' then
  begin
    if msg3('Пароль уже был определен, записать новый?', 'Внимание!', MB_YESNO+MB_ICONEXCLAMATION) =
     ID_YES then
    begin
      SetLoginPass;
    end
  end
  else
  begin
    if msg3('Создать пароль для личного кабинета?', 'Внимание!', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
     begin
      SetLoginPass;
     end;
  end;
end;

procedure TForm_lk_acc.SetLoginPass;
var
  l_cnt: Integer;
begin
  //Установить логин/пароль
  OD_rnd.Active:=False;
  OD_rnd.Active:=True;
  DataModule1.OraclePackage1.ParameterMode:=pmPositional;

  l_cnt:=DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.c_obj_par.set_str_param',
             [Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger,
              null, 'login',
              OD_rnd.FieldByName('cd').AsString+
                Form_list_kart.OD_list_kart.FieldByName('lsk').AsString
             ]);
  l_cnt:=DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.c_obj_par.set_md5_param',
             [Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger,
              null, 'pass', OD_rnd.FieldByName('rnd_val').AsString
             ]);
  l_cnt:=DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.c_obj_par.set_str_param',
             [Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger,
              null, 'email_lk', null
             ]);
  l_cnt:=DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.c_obj_par.set_date_param',
             [Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger,
              null, 'Дата создания', null, 1
             ]);
  OD_pass.Active:=False;
  OD_pass.Active:=True;
  OD_objxpar.Active:=False;
  OD_objxpar.Active:=True;
  setLabel;
  frxReport1.PrepareReport(true);
  frxReport1.ShowPreparedReport;
  OD_rnd.Active:=False;
  set_state(1);
  msg2('Пароль создан, необходимо установить e-mail клиента', 'Внимание!', MB_OK+MB_ICONINFORMATION);
end;


procedure TForm_lk_acc.set_state(p_upd: Integer);
begin
 l_upd:=p_upd;
 if l_upd = 0 then
 begin
   Button2.Enabled:=False;
 end
 else
 begin
   Button2.Enabled:=True;
 end;

end;

procedure TForm_lk_acc.Button4Click(Sender: TObject);
begin
if msg3('Создать доступ к приложению Telegram?', 'Внимание!', MB_YESNO+MB_ICONQUESTION) =
 ID_YES then
 begin
  CreateTelegramAccess;
 end;

end;

procedure TForm_lk_acc.CreateTelegramAccess;
var
  l_cnt: Integer;
begin
  DataModule1.OraclePackage1.ParameterMode:=pmPositional;

  l_cnt:=DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.c_obj_par.set_str_param',
             [Form_list_kart.OD_list_kart.FieldByName('k_lsk_id').AsInteger,
              null, 'TelegramId', null
             ]);
  OD_pass.Active:=False;
  OD_pass.Active:=True;
  OD_objxpar.Active:=False;
  OD_objxpar.Active:=True;
  set_state(1);
  msg2('Доступ к Telegram предоставлен, необходимо ввести код, можно через запятую, несколько', 'Внимание!', MB_OK+MB_ICONINFORMATION);
end;

procedure TForm_lk_acc.exit_ok;
var
  l_id: Integer;
begin
//  exit_:=1;
  with OD_objxpar do
  begin
    if not (State in [dsBrowse]) then
     Post;
    Session.ApplyUpdates([OD_objxpar], True);
    Session.Commit;
    set_state(0);
    l_id:=FieldByName('id').AsInteger;
    Active:=False;
    Active:=True;
    Locate('id', l_id, []);
  end;
end;

procedure TForm_lk_acc.exit_cancel;
begin
//  exit_:=0;
  with OD_objxpar do
  begin
    if not (State in [dsBrowse]) then
     Post;
    if (l_upd=1) then
    begin
      if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
       ID_YES then
      begin
        exit_ok;
      end
      else
      begin
        if not (State in [dsBrowse]) then
          Cancel;
        CancelUpdates;
        Session.Rollback;
        set_state(0);
      end;
    end;
  end;

end;

procedure TForm_lk_acc.Button2Click(Sender: TObject);
begin
  exit_ok;
end;

procedure TForm_lk_acc.OD_objxparAfterEdit(DataSet: TDataSet);
begin
  set_state(1);
end;

procedure TForm_lk_acc.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  formLkPar: TForm_lk_par;
begin
  with OD_objxpar do
  begin
    if (FieldByName('VAL_TP').AsString='ST')
    or (FieldByName('VAL_TP').AsString='DT')
    or (FieldByName('VAL_TP').AsString='NM') then
    begin
      formLkPar:=TForm_lk_par.Create(Form_lk_acc, DS_objxpar);
      formLkPar.ShowModal;
    end;
  end;
end;

end.
