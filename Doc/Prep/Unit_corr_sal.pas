unit Unit_corr_sal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, Wwdbigrd, Wwdbgrid, OracleData, wwdblook,
  Menus, Utils, Oracle;

type
  TForm_corr_sal = class(TForm)
    OD_saldo: TOracleDataSet;
    GroupBox1: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    DS_saldo: TDataSource;
    ComboBox2: TComboBox;
    Label1: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    OD_usl: TOracleDataSet;
    OD_sprorg: TOracleDataSet;
    Label4: TLabel;
    Label3: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_reu: TOracleDataSet;
    Button1: TButton;
    GroupBox2: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    Edit1: TEdit;
    Label2: TLabel;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Button4: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2CloseUp(Sender: TObject);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_corr_sal: TForm_corr_sal;

implementation

uses Unit_status, DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_corr_sal.FormCreate(Sender: TObject);
begin
  OD_saldo.SetVariable('var_',0);
  OD_saldo.Active:=true;
  OD_usl.Active:=true;

  OD_reu.Active:=true;
  OD_sprorg.Active:=true;
  OD_data.Active:=true;
  wwDBLookupCombo1.LookupValue:='000';
  wwDBLookupCombo2.LookupValue:='000';
end;

procedure TForm_corr_sal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_corr_sal.ComboBox2CloseUp(Sender: TObject);
begin
  OD_saldo.Active:=False;
  if ComboBox2.ItemIndex=0 then
  begin
    OD_saldo.SetVariable('var_',0);
    wwDBLookupCombo3.Enabled:=false;
  end
  else
  begin
    OD_saldo.SetVariable('var_',1);
    wwDBLookupCombo3.Enabled:=True;
  end;
  OD_saldo.Active:=True;

end;

procedure TForm_corr_sal.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_saldo.Active:=False;
  OD_saldo.SetVariable('reu_',
    wwDBLookupCombo3.LookupValue);
  OD_saldo.Active:=True;
end;

procedure TForm_corr_sal.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_corr_sal.Button2Click(Sender: TObject);
begin
  if msg3('Подтвердите выполнение формирования, процедура продолжительная по времени',
     'Внимание!',
     MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;

  //удаление корректировок
   DataModule1.OraclePackage1.CallProcedure
       ('scott.c_gen_pay.dist_pay_del_corr', [parNone]);
  //добавление корректировок ДО формирования
   DataModule1.OraclePackage1.CallProcedure
       ('scott.c_gen_pay.dist_pay_add_corr', [0]);
  //добавление корректировок ПОСЛЕ формирования
   DataModule1.OraclePackage1.CallProcedure
       ('scott.c_gen_pay.dist_pay_add_corr', [1]);
  //Сальдо
  DataModule1.OraclePackage1.CallProcedure
     ('scott.gen.gen_saldo', [null]);

  DataModule1.OraclePackage1.CallProcedure
    ('scott.gen.GEN_SALDO', [null]);
  //  Формирование сальдо по домам (xito1)
  DataModule1.OraclePackage1.CallProcedure
    ('scott.gen.GEN_SALDO_HOUSES', [parNone]);
  DataModule1.OraclePackage1.CallProcedure
    ('scott.gen.gen_xito13', parNone);
  OD_saldo.Active:=False;
  OD_saldo.Active:=True;
  Form_status.Close;
  end;
  msg2('Проверка выполнена, результаты отображены в блоке "Сальдо"!',
    'Внимание!', MB_ICONINFORMATION+MB_OK);
end;

procedure TForm_corr_sal.Button1Click(Sender: TObject);
var
  dst_usl_: String;
  dst_org_: Integer;
begin
  if Edit1.Text = '' then
  begin
    msg2('Заполните поле "Примечание"!',
      'Внимание!', MB_ICONSTOP+MB_OK);
  end
  else
  begin
  if wwDBLookupCombo1.LookupValue = '000' then
    dst_usl_:=''
    else
    dst_usl_:=wwDBLookupCombo1.LookupValue;
  if wwDBLookupCombo2.LookupValue = '000' then
    dst_org_:=-1
    else
    dst_org_:=StrToInt(wwDBLookupCombo2.LookupValue);

  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  if ComboBox2.ItemIndex=0 then
  begin
  DataModule1.OraclePackage1.CallProcedure
     ('scott.C_CHANGES.gen_corrects',
      [OD_saldo.FieldByName('usl').AsString,
       OD_saldo.FieldByName('fk_org').AsInteger,
       dst_usl_,
       dst_org_,
       null,
       Edit1.Text
      ]);
  end
  else
  begin
  DataModule1.OraclePackage1.CallProcedure
     ('scott.C_CHANGES.gen_corrects',
      [OD_saldo.FieldByName('usl').AsString,
       OD_saldo.FieldByName('fk_org').AsInteger,
       dst_usl_,
       dst_org_,
       OD_reu.FieldByName('reu').AsString,
       Edit1.Text
      ]);
  end;
  OD_data.Active:=false;
  OD_data.Active:=true;
  Form_status.Close;
  msg2('Проводка успешно выполнена!',
    'Внимание!', MB_ICONINFORMATION+MB_OK);

  end;

end;

procedure TForm_corr_sal.N1Click(Sender: TObject);
begin
  if msg3('Подтвердите удаление проводки с кодом '+
    OD_data.FieldByName('fk_doc').AsString,
     'Внимание!',
     MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
     DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CHANGES.del_corr',
          [OD_data.FieldByName('fk_doc').AsInteger]);
     OD_data.Active:=False;
     OD_data.Active:=True;
     msg2('Проводка успешно удалена!',
        'Внимание!',
     MB_OK+MB_ICONINFORMATION)
  end;

end;

end.
