unit Unit_sel_lsk_contr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, Wwdbgrid, StdCtrls, Mask,
  wwdbedit, Grids, Wwdbigrd;

type
  TForm_sel_lsk_contr = class(TForm)
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    wwDBGrid1: TwwDBGrid;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    wwDBEdit1: TwwDBEdit;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_sel_lsk_contr: TForm_sel_lsk_contr;

implementation

uses Unit_list_kart;

{$R *.dfm}

procedure TForm_sel_lsk_contr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_sel_lsk_contr.FormCreate(Sender: TObject);
begin
  OD_data.Active:=false;
  OD_data.SetVariable('kul_',
    Form_list_kart.OD_list_kart.FieldByName('kul').AsString);
  OD_data.SetVariable('nd_',
    Form_list_kart.OD_list_kart.FieldByName('nd').AsString);
  OD_data.SetVariable('kw_',
    Form_list_kart.OD_list_kart.FieldByName('kw').AsString);
  OD_data.Active:=true;

  wwDBEdit1.Text:=Form_list_kart.OD_list_kart.FieldByName('polis').AsString;
end;

procedure exit_ok;
begin
  with Form_list_kart.OD_list_kart do
  begin
  if State <> dsEdit then
    Edit;
    FieldByName('polis').AsString:=
     Form_sel_lsk_contr.wwDBEdit1.Text;
  end;
end;

procedure TForm_sel_lsk_contr.Button1Click(Sender: TObject);
begin
  exit_ok;
  Close;
end;

procedure TForm_sel_lsk_contr.Button2Click(Sender: TObject);
begin

  Close;
end;

procedure TForm_sel_lsk_contr.wwDBGrid1DblClick(Sender: TObject);
begin
  wwDBEdit1.Text:=OD_data.FieldByName('lsk').AsString;
end;

procedure TForm_sel_lsk_contr.Button3Click(Sender: TObject);
begin
  wwDBEdit1.Text:='';
end;

end.
