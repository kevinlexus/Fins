unit Unit_sel_houses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, ExtCtrls, DBCtrls, Grids, DBGrids,
  ImgList, StdCtrls, DM_module1, Buttons, Utils;

type
  TForm_sel_houses = class(TForm)
    OD_list_choice: TOracleDataSet;
    DS_list_choice: TDataSource;
    DBNavigator1: TDBNavigator;
    ImageList1: TImageList;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    id_: Integer;
  end;

var
  Form_sel_houses: TForm_sel_houses;

implementation

uses Unit_status;

{$R *.dfm}

procedure TForm_sel_houses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_sel_houses.Button1Click(Sender: TObject);
var
  sqlStr: String;
begin
 if (OD_list_choice.State = dsEdit) then
   OD_list_choice.Post;
  try
  if id_=1 then
    id_:=1;
  except
    id_:=0;
  end;

  if id_ = 1 then
  begin
    sqlStr:=OD_list_choice.Filter;
    OD_list_choice.Filter:=' (sel = 0) ';
    OD_list_choice.Filtered:=true;
    if OD_list_choice.RecordCount > 1 then
    begin
      Application.MessageBox('����� ������� ������ ���� ���', '��������!', 16+MB_APPLMODAL);
      exit;
    end;
    OD_list_choice.Filter:=sqlStr;
    OD_list_choice.Filtered:=true;
  end;

   Close;
end;

procedure TForm_sel_houses.Button2Click(Sender: TObject);
begin
 OD_list_choice.SearchRecord('reu;name;nd',
        VarArrayOf([AnsiUpperCase(Edit1.Text+'*'), AnsiUpperCase(Edit2.Text+'*'),
        AnsiUpperCase(Edit3.Text+'*')]),
        [srFromBeginning, srWildCards]);
end;


procedure TForm_sel_houses.SpeedButton1Click(Sender: TObject);
begin
  DataModule1.OraclePackage1.CallProcedure
         ('scott.generator.list_choice_set', [0]);
  OD_list_choice.First;
  while not OD_list_choice.Eof do
  begin
    OD_list_choice.FieldByName('sel').AsInteger:=0;
    OD_list_choice.Next;
  end;
//  OD_list_choice.Active := false;
//  OD_list_choice.SetVariable('clr_',0);
//  OD_list_choice.Active := true;
end;

procedure TForm_sel_houses.BitBtn1Click(Sender: TObject);
begin
Application.CreateForm(TForm_status, Form_status);
Form_status.Update;
LockWindowUpdate(handle);
  OD_list_choice.First;
  while not OD_list_choice.Eof do
  begin
  if (OD_list_choice.State = dsBrowse) then
      OD_list_choice.Edit;
    OD_list_choice.FieldByName('sel').AsInteger:=0;
    OD_list_choice.Next;
  end;
LockWindowUpdate(0);
Form_status.Close;
end;

procedure TForm_sel_houses.BitBtn2Click(Sender: TObject);
begin
Application.CreateForm(TForm_status, Form_status);
Form_status.Update;
LockWindowUpdate(handle);
  OD_list_choice.First;
  while not OD_list_choice.Eof do
  begin
  if (OD_list_choice.State = dsBrowse) then
      OD_list_choice.Edit;
    OD_list_choice.FieldByName('sel').AsInteger:=1;
    OD_list_choice.Next;
  end;
LockWindowUpdate(0);
Form_status.Close;
end;

procedure TForm_sel_houses.Edit1Change(Sender: TObject);
var
  sqlStr: String;
begin
    sqlStr:=' (reu ='''+AnsiUpperCase(Edit1.Text)+'*'' )';
    sqlStr:=sqlStr+' and (name = '''+AnsiUpperCase(Edit2.Text)+'*'')';
    sqlStr:=sqlStr+' and (nd = '''+AnsiUpperCase(Edit3.Text)+'*'')';
   if (OD_list_choice.State = dsEdit) then
    OD_list_choice.Post;
    OD_list_choice.Filter:=sqlStr;
    OD_list_choice.Filtered:=true;
end;

procedure TForm_sel_houses.BitBtn3Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
end;

procedure TForm_sel_houses.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
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

procedure TForm_sel_houses.FormShow(Sender: TObject);
begin
  OD_list_choice.Active := true;
end;

procedure TForm_sel_houses.DBGridEh1DblClick(Sender: TObject);
begin
    if (OD_list_choice.State = dsBrowse) then
      OD_list_choice.Edit;
    if (OD_list_choice.FieldByName('sel').AsInteger = 0) then
      OD_list_choice.FieldByName('sel').AsInteger := 1
    else
      OD_list_choice.FieldByName('sel').AsInteger := 0;
end;

end.
