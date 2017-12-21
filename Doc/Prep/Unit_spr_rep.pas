unit Unit_spr_rep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, OracleData,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, StdCtrls,
  wwcheckbox, Menus;

type
  TForm_spr_rep = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    OD_spr: TOracleDataSet;
    wwDBGrid1: TwwDBGrid;
    DS_spr: TwwDataSource;
    OD_par: TOracleDataSet;
    wwDBGrid2: TwwDBGrid;
    DS_par: TwwDataSource;
    wwExpandButton1: TwwExpandButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure wwDBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure wwDBGrid2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure wwDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_spr_rep: TForm_spr_rep;

implementation

uses DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_spr_rep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TForm_spr_rep.Button1Click(Sender: TObject);
begin
  if not (OD_spr.State in [dsBrowse]) then
    OD_spr.Post;
  Close;
end;

procedure TForm_spr_rep.FormCreate(Sender: TObject);
begin
  OD_spr.Active:=true;
  OD_par.Active:=true;
end;

procedure TForm_spr_rep.wwDBGrid1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Form_spr_rep.SetFocus;
//  Form_spr_rep.Activate;
  Accept:=True;
end;

procedure TForm_spr_rep.wwDBGrid1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  //добавление параметра в отчет
  DataModule1.OraclePackage1.CallProcedure(
     'scott.Utils.rep_add_param',
      [OD_spr.FieldByName('ID').AsInteger,
      Form_main.fk_par_]);
  OD_par.Active:=false;
  OD_par.Active:=True;
end;

procedure TForm_spr_rep.N1Click(Sender: TObject);
begin
  //удаление параметра из отчета
  DataModule1.OraclePackage1.CallProcedure(
     'scott.Utils.rep_del_param',
      [OD_par.FieldByName('fk_rep').AsInteger,
      OD_par.FieldByName('fk_par').AsInteger]);
  OD_par.Active:=false;
  OD_par.Active:=True;

end;

procedure TForm_spr_rep.wwDBGrid2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  //добавление параметра в отчет
  DataModule1.OraclePackage1.CallProcedure(
     'scott.Utils.rep_add_param',
      [OD_spr.FieldByName('ID').AsInteger,
      Form_main.fk_par_]);
  OD_par.Active:=false;
  OD_par.Active:=True;

end;

procedure TForm_spr_rep.wwDBGrid2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Form_spr_rep.SetFocus;
//  Form_spr_rep.Activate;
  Accept:=True;
end;

end.
