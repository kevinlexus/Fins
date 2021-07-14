unit Unit_sel_uch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, ExtCtrls, DBCtrls, DBGridEh,
  StdCtrls, DM_module1, Buttons, ImgList, GridsEh;

type
  TForm_sel_uch = class(TForm)
    OD_list_choice: TOracleDataSet;
    DS_list_choice: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGridEh1: TDBGridEh;
    ImageList1: TImageList;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_sel_uch: TForm_sel_uch;

implementation

{$R *.dfm}

procedure TForm_sel_uch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_sel_uch.Button1Click(Sender: TObject);
begin
 if (OD_list_choice.State = dsEdit) then
   OD_list_choice.Post;

   Close;
end;

procedure TForm_sel_uch.BitBtn1Click(Sender: TObject);
begin
  DataModule1.OraclePackage1.CallProcedure
         ('scott.generator.list_choice_set_uch', [0]);
  OD_list_choice.Active := false;
  OD_list_choice.SetVariable('clr_',0);
  OD_list_choice.Active := true;
end;

procedure TForm_sel_uch.BitBtn2Click(Sender: TObject);
begin
  DataModule1.OraclePackage1.CallProcedure
         ('scott.generator.list_choice_set_uch', [1]);
  OD_list_choice.Active := false;
  OD_list_choice.SetVariable('clr_',0);
  OD_list_choice.Active := true;
end;

procedure TForm_sel_uch.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_SPACE) then
   begin
    if (OD_list_choice.State = dsBrowse) then
      OD_list_choice.Edit;
    if (OD_list_choice.FieldByName('sel').AsInteger = 0) then
      OD_list_choice.FieldByName('sel').AsInteger := 1
    else
      OD_list_choice.FieldByName('sel').AsInteger := 0;
   end;
end;

procedure TForm_sel_uch.FormShow(Sender: TObject);
begin
  OD_list_choice.Active := true;
end;

procedure TForm_sel_uch.DBGridEh1DblClick(Sender: TObject);
begin
    if (OD_list_choice.State = dsBrowse) then
      OD_list_choice.Edit;
    if (OD_list_choice.FieldByName('sel').AsInteger = 0) then
      OD_list_choice.FieldByName('sel').AsInteger := 1
    else
      OD_list_choice.FieldByName('sel').AsInteger := 0;
end;

end.
