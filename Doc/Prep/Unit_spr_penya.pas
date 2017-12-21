unit Unit_spr_penya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, DB, OracleData, StdCtrls, wwdbdatetimepicker;

type
  TForm_spr_penya = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_spr_penya: TForm_spr_penya;

implementation

uses Utils;
{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_penya do
 begin
   exit_:=1;
   if not (OD_data.State in [dsBrowse]) then
     OD_data.Post;
   OD_data.Session.Commit;
   Close;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_penya do
 begin
  exit_:=0;
  OD_data.Session.Rollback;
  Close;
 end;
end;

procedure TForm_spr_penya.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;

end;

procedure TForm_spr_penya.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_spr_penya.FormCreate(Sender: TObject);
begin
  TForm(Sender).AutoSize:=true;

end;

procedure TForm_spr_penya.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_spr_penya.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';

end;

end.
