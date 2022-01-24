unit Unit_set_krt_psch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData,
  Utils, Oracle, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, ComCtrls,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TForm_set_krt_psch = class(TForm)
    GroupBox3: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    OD_psch1: TOracleDataSet;
    StringField2: TStringField;
    FloatField2: TFloatField;
    cxDateEdit1: TcxDateEdit;
    cbbStatus: TcxLookupComboBox;
    DS_psch1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_set_krt_psch: TForm_set_krt_psch;

implementation

uses DM_module1, Unit_list_kart, Unit_form_kart;

{$R *.dfm}

procedure TForm_set_krt_psch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// Action:=caFree;
end;

procedure TForm_set_krt_psch.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_set_krt_psch.FormCreate(Sender: TObject);
begin
  OD_psch1.Active:=false;
  OD_psch1.SetVariable('var_', 0);
  try
  DataModule1.OraclePackage1.CallProcedure
      ('scott.drx_���������_��������_��', [parNone]);
  except
    OD_psch1.SetVariable('var_', 1);
  end;

  OD_psch1.SetVariable('id_',
    Form_list_kart.OD_list_kart.FieldByName('psch').AsInteger);
  OD_psch1.Active:=true;
  cbbStatus.EditValue:=OD_psch1.FieldByName('id').AsString;
  cxDateEdit1.Date:=DataModule1.OraclePackage1.CallDateFunction
         ('scott.INIT.get_date', [parNone]);

end;

procedure TForm_set_krt_psch.Button3Click(Sender: TObject);
var
  cnt_: Integer;
begin
  OD_psch1.Active:=true;
    cnt_:=DataModule1.OraclePackage1.CallIntegerFunction
           ('scott.UTILS.set_krt_psch',
           [cxDateEdit1.Date,
           OD_psch1.FieldByName('id').AsInteger,
           Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]);
    Visible:=false;
    if cnt_ = 1 then
    begin
      Form_kart.updates_:=1;
    end
    else if cnt_ = 2 then
    begin
      msg2('���� �� ������������� �������� �������!',
       '��������!', MB_OK+MB_ICONSTOP);
    end
    else
    begin
      msg2('� ������� �����������, ������ �� �������� ����������, ���������� � ������ � ������� ��������!',
       '��������!', MB_OK+MB_ICONSTOP);
    end;
  OD_psch1.Active:=false;
end;

end.
