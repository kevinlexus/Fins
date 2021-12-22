unit Unit_par_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, wwdbdatetimepicker, Mask,
  DBCtrls, ExtCtrls, DB, OracleData, cxControls,
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxDBLookupComboBox, cxGraphics, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  Uni, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, MemDS,
  DBAccess, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, StdCtrls;

type
  TForm_par_edit = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    TabSheet3: TTabSheet;
    DBEdit2: TDBEdit;
    DS_value: TDataSource;
    Panel2: TPanel;
    TabSheet4: TTabSheet;
    DS_list: TDataSource;
    cbb2: TcxLookupComboBox;
    Uni_List: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure SetData(od_par: TUniQuery;
                      od_par_value: TUniQuery; l_key: String);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBDateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cbb1KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet4Show(Sender: TObject);
    procedure cbb1PropertiesCloseUp(Sender: TObject);
    procedure cbb2PropertiesChange(Sender: TObject);
  private
    l_od_par, l_od_par_value: TUniQuery;
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
var
  id_: Integer;
begin
  //��������� ��������
  with l_od_par_value do
  begin
   if not (State in [dsBrowse]) then
     Post;
   id_:=FieldByName('id').AsInteger;
   Active:=False;
   Active:=True;
   Locate('id', id_, []);
  end;
  with l_od_par do
  begin
   id_:=FieldByName('id').AsInteger;
   Active:=False;
   Active:=True;
   Locate('id', id_, []);
  end;

  Action:=caFree;
end;

procedure TForm_par_edit.Button1Click(Sender: TObject);
var
  id_: Integer;
begin
end;

procedure TForm_par_edit.SetData(od_par: TUniQuery;
  od_par_value: TUniQuery; l_key: String);
begin
  l_od_par:=od_par;
  l_od_par_value:=od_par_value;
  DS_value.DataSet:=l_od_par_value;

  //������������� ���� ������ ��� ����������!
  cbb2.EditValue:=VarArrayOf([l_od_par_value.FieldByName('FK_VAL').AsString, l_od_par_value.FieldByName('S1').AsString]);

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
      TabSheet4.TabVisible:=false;
      if l_key <>'' then
        l_od_par_value.FieldByName('S1').AsString:=l_key;
    end
    else if FieldByName('VAL_TP').AsString='DT' then
    begin
      PageControl1.ActivePageIndex:=0;
      TabSheet2.TabVisible:=false;
      TabSheet3.TabVisible:=false;
      TabSheet4.TabVisible:=false;
    end
    else if FieldByName('VAL_TP').AsString='NM' then
    begin
      PageControl1.ActivePageIndex:=2;
      TabSheet1.TabVisible:=false;
      TabSheet2.TabVisible:=false;
      TabSheet4.TabVisible:=false;
{      if l_key <>'' then
      begin
        if not (State in [dsEdit]) then
            Edit;
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
      end;}
    end
    else if FieldByName('VAL_TP').AsString='ID' then
    begin
      //������� ������������ ������ ��� ������ ��������
      PageControl1.ActivePageIndex:=3;
      TabSheet1.TabVisible:=false;
      TabSheet2.TabVisible:=false;
      TabSheet3.TabVisible:=false;
      TabSheet4.TabVisible:=true;
      Uni_list.Params.ParamByName('P_PAR_ID').AsInteger:=
        FieldByName('PAR_ID').AsInteger;
      Uni_list.Active:=true;
    end
  end;

end;

procedure TForm_par_edit.TabSheet1Show(Sender: TObject);
begin
//  wwDBDateTimePicker1.SetFocus;
Windows.SetFocus(wwDBDateTimePicker1.Handle);
end;

procedure TForm_par_edit.TabSheet2Show(Sender: TObject);
begin
//  DBEdit1.SetFocus;
Windows.SetFocus(DBEdit1.Handle);
  if g_key <> Chr(13) then
  begin
  DBEdit1.SelStart := Length( DBEdit1.Text );
  DBEdit1.SelLength := 0;
  end;
end;

procedure TForm_par_edit.TabSheet3Show(Sender: TObject);
begin
//  DBEdit2.SetFocus;
Windows.SetFocus(DBEdit2.Handle);
  if g_key <> Chr(13) then
  begin
  DBEdit2.SelStart := Length( DBEdit2.Text );
  DBEdit2.SelLength := 0;
  end;
end;

procedure TForm_par_edit.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(13) then
    close;
end;

procedure TForm_par_edit.wwDBDateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = Chr(13) then
    close;
end;

procedure TForm_par_edit.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(13) then
    close;
end;

procedure TForm_par_edit.cbb1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Chr(13) then
    close;
end;

procedure TForm_par_edit.TabSheet4Show(Sender: TObject);
begin
//  cbb2.SetFocus;
Windows.SetFocus(cbb2.Handle);
end;

procedure TForm_par_edit.cbb1PropertiesCloseUp(Sender: TObject);
begin
{  setStrIdPar(l_od_par.FieldByName('FK_K_LSK').AsInteger, '', l_od_par.FieldByName('CD').AsString,
     cbb1.EditValue);
}
end;

procedure TForm_par_edit.cbb2PropertiesChange(Sender: TObject);
var
  v : Variant;
begin
  if l_od_par_value.State <> dsEdit then
    l_od_par_value.Edit;
  v := cbb2.EditValue;
  l_od_par_value.FieldByName('FK_VAL').AsInteger:= StrToIntDef(VarToStr(v[0]), -1);
  l_od_par_value.FieldByName('S1').AsString:= VarToStr(v[1]);
  l_od_par_value.Post;

end;

end.
