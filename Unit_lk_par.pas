unit Unit_lk_par;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, DB,
  Mask, OracleData, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TForm_lk_par = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    TabSheet3: TTabSheet;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    TabSheet4: TTabSheet;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exit_ok;
    procedure exit_cancel;
    constructor Create(AOwner: TComponent; DS: TDataSource); overload;
  private
    exit_: Integer;
  public
  end;

var
  Form_lk_par: TForm_lk_par;

implementation

uses Unit_lk_acc;

{$R *.dfm}

constructor TForm_lk_par.Create(AOwner: TComponent; DS: TDataSource);
begin
  inherited Create(AOwner);
  cxDBDateEdit1.DataBinding.DataSource := DS;
  DBEdit1.DataSource := DS;
  DBEdit2.DataSource := DS;
  cxDBCheckBox1.DataBinding.DataSource := DS;
end;

procedure TForm_lk_par.FormCreate(Sender: TObject);
begin
  exit_ := 2;
  //  with Form_lk_acc.OD_objxpar do
  with cxDBDateEdit1.DataBinding.DataSource.DataSet do
  begin
    if FieldByName('VAL_TP').AsString = 'ST' then
    begin
      PageControl1.ActivePageIndex := 1;
      TabSheet1.TabVisible := false;
      TabSheet3.TabVisible := false;
      TabSheet4.TabVisible := false;
    end
    else if FieldByName('VAL_TP').AsString = 'DT' then
    begin
      PageControl1.ActivePageIndex := 0;
      TabSheet2.TabVisible := false;
      TabSheet3.TabVisible := false;
      TabSheet4.TabVisible := false;
    end
    else if FieldByName('VAL_TP').AsString = 'NM' then
    begin
      PageControl1.ActivePageIndex := 2;
      TabSheet1.TabVisible := false;
      TabSheet2.TabVisible := false;
      TabSheet4.TabVisible := false;
    end
    else if FieldByName('VAL_TP').AsString = 'BL' then
    begin
      PageControl1.ActivePageIndex := 3;
      TabSheet1.TabVisible := false;
      TabSheet2.TabVisible := false;
      TabSheet3.TabVisible := false;
    end
    else
    begin
      TabSheet1.TabVisible := false;
      TabSheet2.TabVisible := false;
      TabSheet3.TabVisible := false;
      TabSheet4.TabVisible := false;
    end;
  end;
end;

procedure TForm_lk_par.exit_ok;
var
  id_: Integer;
begin
  exit_ := 1;
  //with Form_lk_acc.OD_objxpar do
  with TOracleDataSet(cxDBDateEdit1.DataBinding.DataSource.DataSet) do
  begin
    if not (State in [dsBrowse]) then
      Post;
    //Apply без коммита
    //Session.ApplyUpdates([Form_lk_acc.OD_objxpar], False);
    Session.ApplyUpdates([cxDBDateEdit1.DataBinding.DataSource.DataSet], False);
    id_ := FieldByName('id').AsInteger;
    Active := False;
    Active := True;
    Locate('id', id_, []);
  end;
end;

procedure TForm_lk_par.exit_cancel;
begin
  exit_ := 0;
  //if not (Form_lk_acc.OD_objxpar.State in [dsBrowse]) then
  //  Form_lk_acc.OD_objxpar.Cancel;
  if not (cxDBDateEdit1.DataBinding.DataSource.DataSet.State in [dsBrowse]) then
    cxDBDateEdit1.DataBinding.DataSource.DataSet.Cancel;
end;

procedure TForm_lk_par.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_lk_par.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_lk_par.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if exit_ = 2 then
    exit_cancel;
  Action := caFree;
end;

end.

