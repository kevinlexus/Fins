unit Unit_par_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, wwdbdatetimepicker, Mask,
  DBCtrls, ExtCtrls, DB, OracleData, Utils, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

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
    cbb1: TcxDBLookupComboBox;
    OD_list: TOracleDataSet;
    DS_list: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure SetData(od_par: TOracleDataset;
                      od_par_value: TOracleDataset; l_key: String);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBDateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cbb1KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet4Show(Sender: TObject);
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
var
  id_: Integer;
begin
  //сохранить значение
  with l_od_par do
  begin
   if not (State in [dsBrowse]) then
     Post;
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
    end
    else if FieldByName('VAL_TP').AsString='ID' then
    begin
      //парметр использующий запрос как список значений
      PageControl1.ActivePageIndex:=3;
      TabSheet1.TabVisible:=false;
      TabSheet2.TabVisible:=false;
      TabSheet3.TabVisible:=false;
      TabSheet4.TabVisible:=true;
      OD_list.SetVariable('P_PAR_ID', FieldByName('PAR_ID').AsInteger);
      OD_list.Active:=true;
    end
  end;

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
  cbb1.SetFocus;
end;

end.
