unit Unit_sel_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, DBGridEh, 
  DB, OracleData, Wwdbgrid, ImgList, Grids, Wwdbigrd;

type
  TForm_sel_usl = class(TForm)
    OD_list_choice: TOracleDataSet;
    DS_list_choice: TDataSource;
    ImageList1: TImageList;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_sel_usl: TForm_sel_usl;

implementation

uses DM_module1;

{$R *.dfm}

procedure TForm_sel_usl.BitBtn1Click(Sender: TObject);
begin
  DataModule1.OraclePackage1.CallProcedure
         ('scott.generator.list_choice_usl_set', [0]);
  OD_list_choice.Active := false;
  OD_list_choice.SetVariable('clr_',0);
  OD_list_choice.Active := true;
end;

procedure TForm_sel_usl.BitBtn2Click(Sender: TObject);
begin
  DataModule1.OraclePackage1.CallProcedure
         ('scott.generator.list_choice_usl_set', [1]);
  OD_list_choice.Active := false;
  OD_list_choice.SetVariable('clr_',0);
  OD_list_choice.Active := true;
end;

procedure TForm_sel_usl.Button1Click(Sender: TObject);
begin
 if (OD_list_choice.State = dsEdit) then
   OD_list_choice.Post;

   Close;
end;

procedure TForm_sel_usl.DBGridEh1DblClick(Sender: TObject);
begin
    if (OD_list_choice.State = dsBrowse) then
      OD_list_choice.Edit;
    if (OD_list_choice.FieldByName('sel').AsInteger = 0) then
      OD_list_choice.FieldByName('sel').AsInteger := 1
    else
      OD_list_choice.FieldByName('sel').AsInteger := 0;
end;

procedure TForm_sel_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_sel_usl.FormShow(Sender: TObject);
begin
  OD_list_choice.Active := true;
end;

end.
