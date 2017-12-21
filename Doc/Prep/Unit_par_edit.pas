unit Unit_par_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, wwdbdatetimepicker, Mask,
  DBCtrls, ExtCtrls, DB, OracleData, Utils;

type
  TForm_par_edit = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    TabSheet3: TTabSheet;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DS_value: TDataSource;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SetData(od_par: TOracleDataset;
                      od_par_value: TOracleDataset; l_key: String);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBDateTimePicker1KeyPress(Sender: TObject; var Key: Char);
  private
    l_od_par, l_od_par_value: TOracleDataset;
    g_key: String;
  public
    { Public declarations }
  end;

var
  Form_par_edit: TForm_par_edit;

implementation

{$R *.dfm}

procedure TForm_par_edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_par_edit.Button1Click(Sender: TObject);
var
  id_: Integer;
begin
  with l_od_par do
  begin
   if not (State in [dsBrowse]) then
     Post;
   id_:=FieldByName('id').AsInteger;
   Active:=False;
   Active:=True;
   Locate('id', id_, []);
  end;
  close;
end;

procedure TForm_par_edit.Button2Click(Sender: TObject);
begin
   if not (l_od_par_value.State in [dsBrowse]) then
     l_od_par_value.Cancel;
   close;
end;

procedure TForm_par_edit.SetData(od_par: TOracleDataset;
  od_par_value: TOracleDataset; l_key: String);
begin
  l_od_par:=od_par;
  l_od_par_value:=od_par_value;
  DS_value.DataSet:=l_od_par_value;
  g_key:=l_key;
  if l_key=Chr(13) then
  begin
    l_key:='';
  end;

  with l_od_par do
  begin
    if FieldByName('VAL_TP').AsString='ST' then
    begin
      PageControl1.ActivePageIndex:=1;
      TabSheet1.TabVisible:=false;
      TabSheet3.TabVisible:=false;
      if l_key <>'' then
        l_od_par_value.FieldByName('S1').AsString:=l_key;
    end
    else if FieldByName('VAL_TP').AsString='DT' then
    begin
      PageControl1.ActivePageIndex:=0;
      TabSheet2.TabVisible:=false;
      TabSheet3.TabVisible:=false;
    end
    else if FieldByName('VAL_TP').AsString='NM' then
    begin
      PageControl1.ActivePageIndex:=2;
      TabSheet1.TabVisible:=false;
      TabSheet2.TabVisible:=false;
      if l_key <>'' then 
      begin
        try
          l_od_par_value.FieldByName('N1').AsFloat:=strTofloat(l_key);
        except
           on E:EConvertError do
           begin
             null;
           end
           else
            raise;
        end;
      end;
    end;
  end;

end;

procedure TForm_par_edit.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
  if Key=Chr(13) then
     Button1.SetFocus;
end;

procedure TForm_par_edit.TabSheet1Show(Sender: TObject);
begin
  wwDBDateTimePicker1.SetFocus;
end;

procedure TForm_par_edit.TabSheet2Show(Sender: TObject);
begin
  DBEdit1.SetFocus;
  if g_key <> Chr(13) then
  begin
  DBEdit1.SelStart := Length( DBEdit1.Text );
  DBEdit1.SelLength := 0;
  end;
end;

procedure TForm_par_edit.TabSheet3Show(Sender: TObject);
begin
  DBEdit2.SetFocus;
  if g_key <> Chr(13) then
  begin
  DBEdit2.SelStart := Length( DBEdit2.Text );
  DBEdit2.SelLength := 0;
  end;
end;

procedure TForm_par_edit.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=Chr(13) then
     Button1.SetFocus;
end;

procedure TForm_par_edit.wwDBDateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=Chr(13) then
     Button1.SetFocus;
end;

end.
