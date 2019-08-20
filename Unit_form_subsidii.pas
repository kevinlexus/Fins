unit Unit_form_subsidii;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_form_kart, StdCtrls, Mask, DBCtrls, DB, wwdbdatetimepicker;

type
  TForm_subsidii = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Button3: TButton;
    Button2: TButton;
    Label7: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure setAllowEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_subsidii: TForm_subsidii;

implementation

uses Unit_list_kart, Unit_Mainform;

{$R *.dfm}

procedure TForm_subsidii.setAllowEdit;
begin
  if (Form_list_kart.isAllowEdit_ = 0) and (Form_main.arch_mg_ = '') then
    begin
      Caption:='Субсидия - Редактирование запрещено';
      Button2.Enabled:=false;
    end
  else if Form_main.arch_mg_ <> '' then
    begin
      Caption:='Субсидия - Архив';
      Button2.Enabled:=false;
    end
  else
    begin
      Caption:='Субсидия';
      Button2.Enabled:=true;
    end;
end;

procedure TForm_subsidii.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_kart.recalc_kart;
  Action:=caFree;
end;

procedure TForm_subsidii.Button2Click(Sender: TObject);
begin
  Form_kart.recalc_kart;
  Close;
end;

procedure TForm_subsidii.Button3Click(Sender: TObject);
begin
  Form_kart.recalc_kart;
  Close;
end;

procedure TForm_subsidii.FormCreate(Sender: TObject);
begin
  setAllowEdit;
  TForm(sender).AutoSize:=true;
end;

end.
