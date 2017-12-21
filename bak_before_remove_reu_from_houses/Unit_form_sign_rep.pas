unit Unit_form_sign_rep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DBGridEh, ImgList, StdCtrls,
  ExtCtrls, DBCtrls, Oracle, GridsEh;

type
  TForm_sign_rep = class(TForm)
    OD_list: TOracleDataSet;
    DS_data: TDataSource;
    ImageList1: TImageList;
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
  public
    btn_: Integer;
  end;

var
  Form_sign_rep: TForm_sign_rep;

implementation

uses DM_module1;

{$R *.dfm}

procedure TForm_sign_rep.DBGridEh1DblClick(Sender: TObject);
begin
    if (OD_list.State = dsBrowse) then
      OD_list.Edit;
    if (OD_list.FieldByName('signed').AsInteger = 0) then
      OD_list.FieldByName('signed').AsInteger := 1
    else
      OD_list.FieldByName('signed').Value := null;
end;

procedure TForm_sign_rep.Button1Click(Sender: TObject);
begin
   btn_:=1; // не спрашивать сохранение
   if (OD_list.State = dsEdit) then
     OD_list.Post;
   DataModule1.OracleSession1.Commit;
   Close;
end;

procedure TForm_sign_rep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	if (btn_ <> 1) then
  begin
   if (Application.MessageBox('Сохранить изменения?', 'Внимание!',
        MB_YESNO+MB_APPLMODAL) = IDYES) then
     if (OD_list.State = dsEdit) then
       OD_list.Post;
     DataModule1.OracleSession1.Commit;
  end;
  Action:=caFree;
end;

procedure TForm_sign_rep.Button2Click(Sender: TObject);
begin
   btn_:=1; // не спрашивать сохранение
   DataModule1.OracleSession1.Rollback;
   Close;
end;

procedure TForm_sign_rep.FormCreate(Sender: TObject);
begin
  btn_:=0;
end;

procedure TForm_sign_rep.Button3Click(Sender: TObject);
begin
    DataModule1.OraclePackage1.CallProcedure
      ('scott.admin.sign_reports', parNone);
    OD_list.Refresh;
end;

end.
