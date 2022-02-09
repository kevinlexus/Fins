unit Unit_corr_sal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, 
  Menus, Utils, Oracle, cxControls,
  cxLookAndFeelPainters,

  
  cxGridDBTableView,
  cxGridLevel, cxClasses, cxGrid, ComCtrls, 
  
  cxCheckBox, cxCheckComboBox, cxGraphics, cxLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, Grids, 
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_corr_sal = class(TForm)
    OD_saldo: TOracleDataSet;
    GroupBox1: TGroupBox;
    DS_saldo: TDataSource;
    ComboBox2: TComboBox;
    Label1: TLabel;
    OD_usl: TOracleDataSet;
    OD_sprorg: TOracleDataSet;
    Label4: TLabel;
    Label3: TLabel;
    OD_reu: TOracleDataSet;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Button4: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NAME_REU: TcxGridDBColumn;
    cxGrid1DBTableView1NAME_USL: TcxGridDBColumn;
    cxGrid1DBTableView1NAME_ORG: TcxGridDBColumn;
    cxGrid1DBTableView1INDEBET: TcxGridDBColumn;
    cxGrid1DBTableView1INKREDIT: TcxGridDBColumn;
    cxGrid1DBTableView1CHARGES: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT: TcxGridDBColumn;
    cxGrid1DBTableView1PN: TcxGridDBColumn;
    cxGrid1DBTableView1OUTDEBET: TcxGridDBColumn;
    cxGrid1DBTableView1OUTKREDIT: TcxGridDBColumn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1FK_DOC: TcxGridDBColumn;
    cxGridDBTableView1TEXT: TcxGridDBColumn;
    cxGridDBTableView1NAME_REU: TcxGridDBColumn;
    cxGridDBTableView1NAME_USL: TcxGridDBColumn;
    cxGridDBTableView1NAME_ORG: TcxGridDBColumn;
    cxGridDBTableView1SUMMA: TcxGridDBColumn;
    DS_reu: TDataSource;
    cxCheckComboBox1: TcxCheckComboBox;
    cxGridDBTableView1DTEK: TcxGridDBColumn;
    cbbUsl: TcxLookupComboBox;
    DS_usl: TDataSource;
    DS_sprorg: TDataSource;
    cbbOrg: TcxLookupComboBox;
    cbbReu: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2CloseUp(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure fillUk();
    function getStrUk(): string;
    procedure selAllUk();
    procedure cxReuPropertiesCloseUp(Sender: TObject);
  private
    tp: Integer;
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
  tp := 0;
  OD_saldo.SetVariable('var_', 0);
  OD_saldo.Active := true;
  OD_usl.Active := true;

  OD_reu.Active := true;
  OD_sprorg.Active := true;
  OD_data.Active := true;
  cbbUsl.EditValue := '000';
  cbbOrg.EditValue := '000';
  cxCheckComboBox1.Enabled := False;
  // наполнить списком УК
  fillUk();
end;

procedure TForm_corr_sal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_corr_sal.ComboBox2CloseUp(Sender: TObject);
begin
  OD_saldo.Active := False;
  if ComboBox2.ItemIndex = 0 then
  begin
    OD_saldo.SetVariable('var_', 0);
    cbbReu.Enabled := false;
  end
  else
  begin
    OD_saldo.SetVariable('var_', 1);
    cbbReu.Enabled := True;
  end;
  OD_saldo.Active := True;

end;

procedure TForm_corr_sal.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_corr_sal.Button2Click(Sender: TObject);
begin
  if
    msg3('Подтвердите выполнение формирования, процедура продолжительная по времени',
    'Внимание!',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
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
    OD_saldo.Active := False;
    OD_saldo.Active := True;
    Form_status.Close;
  end;
  msg2('Проверка выполнена, результаты отображены в блоке "Сальдо"!',
    'Внимание!', MB_ICONINFORMATION + MB_OK);
end;

procedure TForm_corr_sal.Button1Click(Sender: TObject);
var
  dst_usl_: string;
  dst_org_: Integer;
begin
  if (tp = 0) and (Edit1.Text = '') then
  begin
    msg2('Заполните поле "Примечание"!',
      'Внимание!', MB_ICONSTOP + MB_OK);
  end
  else
  begin
    if cbbUsl.EditValue = '000' then
      dst_usl_ := ''
    else
      dst_usl_ := cbbUsl.EditValue;
    if cbbOrg.EditValue = '000' then
      dst_org_ := -1
    else
      dst_org_ := StrToInt(cbbOrg.EditValue);

    Application.CreateForm(TForm_status, Form_status);
    Form_status.Update;
    if tp = 0 then
    begin
      if ComboBox2.ItemIndex = 0 then
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
    end
    else if tp = 2 then
    begin
      if ComboBox2.ItemIndex = 0 then
      begin
        DataModule1.OraclePackage1.CallProcedure
          ('scott.C_CHANGES.gen_pay_corrects',
          [OD_saldo.FieldByName('usl').AsString,
          OD_saldo.FieldByName('fk_org').AsInteger,
            dst_usl_,
            dst_org_,
            null,
            tp
            ]);
      end
      else
      begin
        DataModule1.OraclePackage1.CallProcedure
          ('scott.C_CHANGES.gen_pay_corrects',
          [OD_saldo.FieldByName('usl').AsString,
          OD_saldo.FieldByName('fk_org').AsInteger,
            dst_usl_,
            dst_org_,
            OD_reu.FieldByName('reu').AsString,
            tp
            ]);
      end;
    end
    else if tp = 3 then
    begin
      // 1-ая корректировка сальдо
      DataModule1.OraclePackage1.CallProcedure
        ('scott.P_JAVA.correct',
        [1, Form_Main.cur_dt, getStrUk, Form_main.javaServer]);
    end
    else if tp = 4 then
    begin
      // 2-ая корректировка сальдо
      DataModule1.OraclePackage1.CallProcedure
        ('scott.P_JAVA.correct',
        [2, Form_Main.cur_dt, getStrUk, Form_main.javaServer]);
    end
    else if tp = 5 then
    begin
      if
        Application.MessageBox(
        'До выполнения, необходимо удалить текущую корректировку, выполнить формирование'
        + #13#10 + '"Расчет сальдо по пене", "Оборотная ведомость",'
        + #13#10 + 'либо итоговое' + #13#10 + 'Продолжить?', 'Внимание!',
        MB_YESNO + MB_ICONQUESTION +
        MB_TOPMOST) = IDYES then
      begin
        // корректировка сальдо по пене
        DataModule1.OraclePackage1.CallProcedure
          ('scott.C_CHANGES.dist_saldo_pen',
          [parNone]);
      end
      else
      begin
        Form_status.Close;
        Exit;
      end;

    end;

    OD_data.Active := false;
    OD_data.Active := true;
    Form_status.Close;
    if tp = 1 then
      msg2('Поступление оплаты успешно перенесено!',
        'Внимание!', MB_ICONINFORMATION + MB_OK)
    else if tp = 2 then
      msg2('Поступление пени успешно перенесено!',
        'Внимание!', MB_ICONINFORMATION + MB_OK)
    else
      msg2('Успешно выполнено!',
        'Внимание!', MB_ICONINFORMATION + MB_OK)

  end;

end;

procedure TForm_corr_sal.N1Click(Sender: TObject);
begin
  if msg3('Подтвердите удаление проводки с № ' +
    OD_data.FieldByName('fk_doc').AsString,
    'Внимание!',
    MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    DataModule1.OraclePackage1.CallProcedure
      ('scott.C_CHANGES.del_corr',
      [OD_data.FieldByName('fk_doc').AsInteger]);
    OD_data.Active := False;
    OD_data.Active := True;
  end;

end;

procedure TForm_corr_sal.ComboBox1CloseUp(Sender: TObject);
begin
  tp := ComboBox1.ItemIndex;
  if tp = 0 then
  begin
    //Коррекция сальдо
    Label2.Enabled := True;
    Edit1.Enabled := True;

    Label1.Enabled := true;
    Label3.Enabled := true;
    Label4.Enabled := true;
    Label5.Enabled := true;
    ComboBox2.Enabled := true;
    cbbReu.Enabled := true;
    cbbUsl.Enabled := true;
    cbbOrg.Enabled := true;
    cxCheckComboBox1.Enabled := False;
  end
  else if tp = 1 then
  begin
    //Коррекция поступлений оплаты
    Label2.Enabled := False;
    Edit1.Enabled := False;

    Label1.Enabled := true;
    Label3.Enabled := true;
    Label4.Enabled := true;
    Label5.Enabled := true;
    ComboBox2.Enabled := true;
    cbbReu.Enabled := true;
    cbbUsl.Enabled := true;
    cbbOrg.Enabled := true;
    cxCheckComboBox1.Enabled := False;
  end
  else if tp = 2 then
  begin
    //Коррекция поступлений пени
    Label2.Enabled := False;
    Edit1.Enabled := False;

    Label1.Enabled := true;
    Label3.Enabled := true;
    Label4.Enabled := true;
    Label5.Enabled := true;
    ComboBox2.Enabled := true;
    cbbReu.Enabled := true;
    cbbUsl.Enabled := true;
    cbbOrg.Enabled := true;
    cxCheckComboBox1.Enabled := False;
  end
  else if tp = 3 then
  begin
    // Коррекция сальдо - 1-ая проводка
    Label2.Enabled := False;
    Edit1.Enabled := False;

    Label1.Enabled := False;
    Label3.Enabled := False;
    Label4.Enabled := False;
    Label5.Enabled := False;
    ComboBox2.Enabled := False;
    cbbReu.Enabled := False;
    cbbUsl.Enabled := False;
    cbbOrg.Enabled := False;
    cxCheckComboBox1.Enabled := True;
  end
  else if tp = 4 then
  begin
    // Коррекция сальдо - 2-ая проводка
    Label2.Enabled := False;
    Edit1.Enabled := False;

    Label1.Enabled := False;
    Label3.Enabled := False;
    Label4.Enabled := False;
    Label5.Enabled := False;
    ComboBox2.Enabled := False;
    cbbReu.Enabled := False;
    cbbUsl.Enabled := False;
    cbbOrg.Enabled := False;
    cxCheckComboBox1.Enabled := True;
  end
  else if tp = 5 then
  begin
    // Коррекция сальдо по пене
    Label2.Enabled := False;
    Edit1.Enabled := False;

    Label1.Enabled := False;
    Label3.Enabled := False;
    Label4.Enabled := False;
    Label5.Enabled := false;
    ComboBox2.Enabled := false;
    cbbReu.Enabled := False;
    cbbUsl.Enabled := False;
    cbbOrg.Enabled := False;
    cxCheckComboBox1.Enabled := False;
  end;

end;
// наполнить checkComboBox значениями УК

procedure TForm_corr_sal.fillUk();
var
  i: Integer;
begin
  OD_reu.Active := True;
  while not OD_reu.Eof do
  begin
    with cxCheckComboBox1.Properties.Items.Add do
    begin
      Description := OD_reu.FieldByName('reu').AsString + ' '
        + OD_reu.FieldByName('name').AsString;
    end;
    OD_reu.Next;
  end;
  selAllUk;
end;

// отметить все элементы cxCheckComboBox

procedure TForm_corr_sal.selAllUk();
var
  i: Integer;
  ComboProp: TcxCheckComboBoxProperties;
begin
  ComboProp := cxCheckComboBox1.Properties;
  for i := 0 to ComboProp.Items.Count - 1 do
    cxCheckComboBox1.States[i] := cbsChecked;
end;

// получить список УК

function TForm_corr_sal.getStrUk(): string;
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

procedure TForm_corr_sal.cxReuPropertiesCloseUp(Sender: TObject);
begin
  OD_saldo.Active := False;
  OD_saldo.SetVariable('reu_',
    cbbReu.EditValue);
  OD_saldo.Active := True;
end;

end.

