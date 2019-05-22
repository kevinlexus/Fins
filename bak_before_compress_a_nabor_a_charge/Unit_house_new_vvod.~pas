unit Unit_house_new_vvod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrlsEh, DBGridEh, DB,
  OracleData, wwdblook, wwdbedit, Wwdbspin, ImgList;

type
  TForm_house_new_vvod = class(TForm)
    Label1: TLabel;
    OD_c_vvod_usl: TOracleDataSet;
    DS_c_vvod_type: TDataSource;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label6: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_houses: TOracleDataSet;
    OD_streets: TOracleDataSet;
    DS_houses: TDataSource;
    DS_streets: TDataSource;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBSpinEdit1: TwwDBSpinEdit;
    Label3: TLabel;
    OD_c_vvod_uslUSL: TStringField;
    OD_c_vvod_uslNM: TStringField;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure wwDBLookupCombo3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_house_new_vvod: TForm_house_new_vvod;

implementation

uses DM_module1, Utils, Unit_house_vvod, Unit_list_kart;

{$R *.dfm}

procedure TForm_house_new_vvod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_house_new_vvod.Button1Click(Sender: TObject);
var
  house_id_, fk_vvod_: Integer;
begin
 if wwDBLookupCombo2.Text = '' then
 begin
   msg2('Не указан тип ввода!',
          'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
 end
 else if wwDBLookupCombo3.Text = '' then
 begin
   msg2('Не указан адрес дома!',
          'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
 end
 else
 begin
   house_id_:=OD_houses.FieldByName('house_id').asInteger;
   fk_vvod_:=DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.UTILS.create_vvod', [house_id_,
           OD_c_vvod_usl.FieldByName('usl').AsString,
           StrToInt(wwDBSpinEdit1.Text)]);
   if fk_vvod_ <> -1 then
   begin
      if FF('Form_house_vvod',0) =1 then
      begin
        Form_house_vvod.OD_vvod.Refresh;
        Form_house_vvod.OD_vvod.Locate('id', fk_vvod_, [loCaseInsensitive]);
      end;

      msg2('Ввод добавлен!',
           'Внимание!', MB_ICONINFORMATION +MB_OK+MB_APPLMODAL);
   end
   else
     msg2('Данный ввод уже существует в доме!',
           'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
 end;
end;

procedure TForm_house_new_vvod.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_house_new_vvod.wwDBLookupCombo1KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
    wwDBLookupCombo3.SetFocus;
  except
  end;
end;

procedure TForm_house_new_vvod.wwDBLookupCombo1Change(Sender: TObject);
begin
  wwDBLookupCombo3.Text:='';
end;

procedure TForm_house_new_vvod.wwDBLookupCombo3KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
    wwDBLookupCombo2.SetFocus;
  except
  end;
end;

procedure TForm_house_new_vvod.wwDBLookupCombo2KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
    wwDBSpinEdit1.SetFocus;
  except
  end;
end;

procedure TForm_house_new_vvod.FormCreate(Sender: TObject);
begin
  OD_houses.Active:=true;
  OD_streets.Active:=true;
  OD_c_vvod_usl.Active:=true;
  wwDBLookupCombo1.LookupValue:=
     Form_house_vvod.OD_vvod.FieldByName('name').AsString;
  wwDBLookupCombo2.LookupValue:=
     Form_house_vvod.OD_vvod.FieldByName('vvod').AsString;
  OD_houses.Locate('house_id',
    Form_house_vvod.OD_vvod.FieldByName('house_id').AsInteger,[]);
  wwDBLookupCombo3.LookupValue:=OD_houses.FieldByName('nd').AsString;
end;

end.
