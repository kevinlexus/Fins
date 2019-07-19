unit Unit_add_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, wwclearbuttongroup, wwradiogroup, DB,
  OracleData, Utils;

type
  TForm_add_usl = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    CheckBox2: TCheckBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label6: TLabel;
    Edit6: TEdit;
    CheckBox3: TCheckBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label7: TLabel;
    Edit7: TEdit;
    CheckBox4: TCheckBox;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label8: TLabel;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwRadioGroup1: TwwRadioGroup;
    OD_usl: TOracleDataSet;
    OD_usl2: TOracleDataSet;
    OD_usl3: TOracleDataSet;
    OD_t_org: TOracleDataSet;
    Edit4: TEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwRadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_add_usl: TForm_add_usl;

implementation

uses DM_module1, Unit_spr_usl;

{$R *.dfm}

procedure TForm_add_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_add_usl.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_add_usl.Button1Click(Sender: TObject);
var
  org_ : Integer;
  norm_, koeff_: Double;
  usl_koeff_ :String;
  usl_norm_ :String;
  usl_org_ :String;
begin
  usl_koeff_:='';
  usl_norm_:='';
  usl_org_:='';

 if CheckBox2.Checked = True then
 begin
   usl_koeff_:=OD_usl.FieldByName('usl').AsString;
 end
 else
 begin
  if Edit6.Text <> '' then
    koeff_:=StrToFloat(Edit6.Text)
  else
    koeff_:=0;
 end;

 if CheckBox3.Checked = True then
 begin
   usl_norm_:=OD_usl2.FieldByName('usl').AsString;
 end
 else
 begin
  if Edit7.Text <> '' then
    norm_:=StrToFloat(Edit7.Text)
  else
    norm_:=0;
 end;

 if CheckBox4.Checked = True then
 begin
   usl_org_:=OD_usl3.FieldByName('usl').AsString;
 end
 else
 begin
    org_:=OD_t_org.FieldByName('id').AsInteger;
 end;

 if wwRadioGroup1.ItemIndex = 0 then
begin
    DataModule1.OraclePackage1.CallProcedure(
        'scott.utils.add_usl',
        ['',
         Edit1.Text,
         Edit2.Text,
         Edit4.Text,
         Edit3.Text,
         StrToFloat(Edit5.Text),
         org_,
         koeff_,
         norm_,
         usl_koeff_,
         usl_norm_,
         usl_org_
        ]);
end
else
begin
    DataModule1.OraclePackage1.CallProcedure(
        'scott.utils.add_usl',
        [Form_spr_usl.OD_usl.FieldByName('uslm').AsString,
         Edit1.Text,
         Edit2.Text,
         Edit4.Text,
         Edit3.Text,
         StrToFloat(Edit5.Text),
         org_,
         koeff_,
         norm_,
         usl_koeff_,
         usl_norm_,
         usl_org_
        ]);
end;
with Form_spr_usl do
begin
  OD_uslm.Active:=false;
  OD_uslm.Active:=true;
  OD_usl.Active:=false;
  OD_usl.Active:=true;
end;

 msg2('Услуга добавлена!', 'Внимание!', MB_OK+MB_ICONINFORMATION);
end;

procedure TForm_add_usl.wwRadioGroup1Click(Sender: TObject);
begin
{  if wwRadioGroup1.ItemIndex = 0 then
  begin
    Edit3.Enabled:=true;
  end
  else
  begin
    Edit3.Enabled:=false;
  end;}
end;

procedure TForm_add_usl.FormCreate(Sender: TObject);
begin
  OD_usl.Active:=True;
  OD_usl2.Active:=True;
  OD_usl3.Active:=True;
  OD_t_org.Active:=True;
end;

procedure TForm_add_usl.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then
  begin
     Edit6.Enabled:=False;
     wwDBLookupCombo1.Enabled:=True;
  end
   else
  begin
     Edit6.Enabled:=True;
     wwDBLookupCombo1.Enabled:=False;
  end;

end;

procedure TForm_add_usl.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = True then
  begin
     Edit7.Enabled:=False;
     wwDBLookupCombo2.Enabled:=True;
  end
   else
  begin
     Edit7.Enabled:=True;
     wwDBLookupCombo2.Enabled:=False;
  end;

end;

procedure TForm_add_usl.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked = True then
  begin
     wwDBLookupCombo4.Enabled:=False;
     wwDBLookupCombo3.Enabled:=True;
  end
   else
  begin
     wwDBLookupCombo4.Enabled:=True;
     wwDBLookupCombo3.Enabled:=False;
  end;

end;

procedure TForm_add_usl.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

procedure TForm_add_usl.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

procedure TForm_add_usl.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

end.
