unit Unit_new_lsk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Oracle, OracleData, DB,
  cxControls, 

  
  cxMaskEdit, 
  cxDBLookupComboBox, cxGraphics, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  ExtCtrls, Utils, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TForm_new_lsk = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    OD_lsk_tp: TOracleDataSet;
    DS_lsk_tp: TDataSource;
    cbb2: TcxLookupComboBox;
    Button3: TButton;
    OD_reu: TOracleDataSet;
    DS_reu: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbb2PropertiesCloseUp(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_new_lsk: TForm_new_lsk;
  str_: string;
implementation

uses DM_module1, Unit_list_kart, Unit_Mainform;

{$R *.dfm}

procedure TForm_new_lsk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm_new_lsk.FormCreate(Sender: TObject);
begin
  OD_lsk_tp.Active := true;
  OD_reu.Active := true;
  cbb2.EditValue := 'LSK_TP_MAIN';
  str_ := Form_list_kart.OD_list_kart.FieldByName('lsk').asString;
  cxMaskEdit2.Text := DataModule1.OraclePackage1.CallStringFunction(
    'scott.UTILS.get_new_lsk', [str_, null]);
end;

procedure TForm_new_lsk.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_new_lsk.Button2Click(Sender: TObject);
var
  lGetUslFromSrc, lDelUslFromSrc, lCloseSrc, cnt_: Integer;
begin
  if ((RadioGroup1.ItemIndex = 2) or (RadioGroup1.ItemIndex = 3)) and
    (CheckBox4.Checked = False) 
     and (getDoublePar(Form_main.paramList, 'CHECK_ADD_LSK')=1) // защита от дурака, чтобы не надобавляли кучу лиц счетов, как разные помещения (Полыс.)
     then
  begin
    Application.MessageBox('Ошибка, обратиться к разработчику!',
      'Внимание!', MB_ICONSTOP + MB_OK + MB_APPLMODAL);
    Exit;
  end;
  if CheckBox1.Checked = True then
    lGetUslFromSrc := 1
  else
    lGetUslFromSrc := 0;
  if CheckBox2.Checked = True then
    lDelUslFromSrc := 1
  else
    lDelUslFromSrc := 0;
  if CheckBox3.Checked = True then
    lCloseSrc := 1
  else
    lCloseSrc := 0;

  if RadioGroup1.ItemIndex = 3 then
  begin
    // новое помещение
    // скопировать все субсчета (Основной, РСО и т.п.) при создании помещения
    cnt_ := DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.P_HOUSES.kart_lsk_group_add',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString,
      cbb2.EditValue, cxMaskEdit2.Text,
        lGetUslFromSrc,
        lDelUslFromSrc,
        cxMaskEdit1.Text,
        cxLookupComboBox1.EditValue,
        lCloseSrc,
        RadioGroup1.ItemIndex
        ]);
  end
  else if RadioGroup1.ItemIndex = 4 then
  begin
    // новый фин.лиц.счет
    // скопировать все субсчета (Основной, РСО и т.п.) при разделении финансового лиц.счета клиента
    cnt_ := DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.P_HOUSES.kart_lsk_group_add',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').asString,
      cbb2.EditValue, cxMaskEdit2.Text,
        lGetUslFromSrc,
        lDelUslFromSrc,
        cxMaskEdit1.Text,
        cxLookupComboBox1.EditValue,
        lCloseSrc,
        RadioGroup1.ItemIndex
        ]);
  end
  else
  begin
    // создать счет / финансовый лиц.счет / помещение
    cnt_ := DataModule1.OraclePackage1.CallIntegerFunction(
      'scott.P_HOUSES.kart_lsk_add',
      [cbb2.EditValue, 
        Form_list_kart.OD_list_kart.FieldByName('lsk').asString,
        cxMaskEdit2.Text,
        lGetUslFromSrc,
        lDelUslFromSrc,
        RadioGroup1.ItemIndex,
        cxMaskEdit1.Text,
        cxLookupComboBox1.EditValue,                                  
        null,
        lCloseSrc,
        null
        ]);
  end;
  if cnt_ = 0 then
  begin
    DataModule1.OraclePackage1.Session.Commit;
    Form_list_kart.OD_list_kart.Refresh;
    Form_list_kart.OD_list_kart.SearchRecord('lsk', cxMaskEdit2.Text,
      [srFromBeginning]);
    Form_new_lsk.Visible := false;
    Application.MessageBox('Выполнено успешно!',
      'Внимание!', MB_ICONINFORMATION + MB_OK + MB_APPLMODAL);
    Close;
  end
  else if cnt_ = 1 then
  begin
    Application.MessageBox('Формат лицевого счета не соответствует требованиям!',
      'Внимание!', MB_ICONINFORMATION + MB_OK + MB_APPLMODAL);
  end
  else if cnt_ = 2 then
  begin
    Application.MessageBox('Невозможно добавить услуги по лиц.счету!',
      'Внимание!', MB_ICONINFORMATION + MB_OK + MB_APPLMODAL);
  end
  else if cnt_ = 3 then
  begin
    Application.MessageBox('Добавление произошло неудачно, лиц.счет не добавлен!',
      'Внимание!', MB_ICONINFORMATION + MB_OK + MB_APPLMODAL);
  end
  else if cnt_ = 4 then
  begin
    Application.MessageBox('По данному лиц.счету уже существует дополнительный!',
      'Внимание!', MB_ICONINFORMATION + MB_OK + MB_APPLMODAL);
  end
  else
    Application.MessageBox('Ошибка создания лицевого счета!',
      'Внимание!', MB_ICONSTOP + MB_OK + MB_APPLMODAL);

  if cnt_ <> 0 then
  begin
    DataModule1.OraclePackage1.Session.Rollback;
  end;

end;

procedure TForm_new_lsk.Button3Click(Sender: TObject);
begin
  cxMaskEdit2.Text := DataModule1.OraclePackage1.CallStringFunction(
    'scott.UTILS.get_new_lsk', [str_, cxMaskEdit2.Text]);
end;

procedure TForm_new_lsk.cbb2PropertiesCloseUp(Sender: TObject);
begin
  if (cbb2.EditValue = 'LSK_TP_RSO') or (cbb2.EditValue = 'LSK_TP_ADDIT') then
  begin
    CheckBox2.Enabled := True
  end
  else
  begin
    CheckBox2.Checked := False;
    CheckBox2.Enabled := False;
  end;
end;

procedure TForm_new_lsk.RadioGroup1Click(Sender: TObject);
begin
  // показать/скрыть поле ввода № квартиры
  if (RadioGroup1.ItemIndex = 2) or (RadioGroup1.ItemIndex = 3) then
  begin
    Label3.Enabled := True;
    cxMaskEdit1.Enabled := True;
  end
  else
  begin
    Label3.Enabled := False;
    cxMaskEdit1.Enabled := False;
  end;

  if (RadioGroup1.ItemIndex = 4) or (RadioGroup1.ItemIndex = 3) then
  begin
    Label1.Enabled := False;
    cbb2.Enabled := False;
  end
  else
  begin
    Label1.Enabled := True;
    cbb2.Enabled := True;
  end;
end;

end.

