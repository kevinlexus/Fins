unit Unit_print_status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, OracleData, StdCtrls, DBCtrls;

type
  TForm_print_status = class(TForm)
    OD_data: TOracleDataSet;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_status: TForm_print_status;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_print_status.Button1Click(Sender: TObject);
begin
   Application.CreateForm(TForm_status, Form_status);
   OD_data.Active:=false;
   OD_data.Active:=true;

   frxReport1.PrepareReport;
   Form_status.Close;
   frxReport1.ShowReport(True);
end;

procedure TForm_print_status.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_status.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
