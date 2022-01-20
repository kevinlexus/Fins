unit Unit_change_house_status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TForm_change_house_status = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_status: TOracleDataSet;
    StringField4: TStringField;
    FloatField2: TFloatField;
    DS_status: TDataSource;
    Label3: TLabel;
    cbbStatus: TcxLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_change_house_status: TForm_change_house_status;

implementation

uses DM_module1, Unit_houses_nabor, Unit_status;

{$R *.dfm}

procedure TForm_change_house_status.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_change_house_status.Button1Click(Sender: TObject);
begin
  //изменение статуса в квартирах выбранного дома
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  DataModule1.OraclePackage1.CallProcedure
       ('scott.p_houses.change_house_status',
       [Form_houses_nabor.OD_house_status.FieldByName('house_id').AsInteger,
       OD_status.FieldByName('id').AsInteger,
       Form_houses_nabor.OD_house_status.FieldByName('status').AsInteger
       ]);
  Form_houses_nabor.OD_house_status.Active:=false;
  Form_houses_nabor.OD_house_status.Active:=true;
  Form_status.Close;
  Close;

end;

procedure TForm_change_house_status.FormCreate(Sender: TObject);
begin
  OD_status.Active:=True;
  cbbStatus.EditValue:=
    Form_houses_nabor.OD_house_status.FieldByName('status').AsString;
end;

procedure TForm_change_house_status.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
