unit Unit_form_saldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, DBGridEh, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, ComCtrls, Utils;

type
  TForm_saldo = class(TForm)
    OD_sal: TOracleDataSet;
    GroupBox1: TGroupBox;
    Button3: TButton;
    DS_sal: TDataSource;
    Timer1: TTimer;
    Button1: TButton;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    OD_deb_usl: TOracleDataSet;
    DS_deb_usl: TDataSource;
    wwDBGrid2: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure state_arch2(mgold_: String);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure OD_salAfterRefresh(DataSet: TDataSet);
    procedure OD_salAfterOpen(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
   procedure calcFooter;
  public
    { Public declarations }
  end;

var
  Form_saldo: TForm_saldo;

implementation

uses Unit_Mainform, DM_module1, Unit_list_kart;

{$R *.dfm}

procedure TForm_saldo.state_arch2(mgold_: String);
begin // смена состояний формы
  OD_sal.Active:=false;
  OD_deb_usl.Active:=false;

  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
    Caption:='Сальдо по Л/С - Архив';
    OD_sal.SetVariable('mg', Form_main.arch_mg_);
    OD_deb_usl.SetVariable('mg', Form_main.arch_mg_);
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
    Caption:='Сальдо по Л/С';
    OD_sal.SetVariable('mg', mgold_);
    OD_deb_usl.SetVariable('mg', mgold_);
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
    Caption:='Сальдо по Л/С - Архив';
    OD_sal.SetVariable('mg', Form_main.arch_mg_);
    OD_deb_usl.SetVariable('mg', Form_main.arch_mg_);
  end
  else  // по умолчанию
  begin
    Caption:='Сальдо по Л/С';
    OD_sal.SetVariable('mg', Form_main.cur_mg_);
    OD_deb_usl.SetVariable('mg', Form_main.cur_mg_);
  end;

  if PageControl1.ActivePageIndex= 0 then
  begin
    OD_sal.Active:=true;
  end
  else if PageControl1.ActivePageIndex= 1 then
  begin
    OD_deb_usl.Active:=true;
  end;

end;

procedure TForm_saldo.calcFooter;
var
  l_bm:TBookmark;
  l_sum, l_sum2 : Double;
begin
  l_sum :=0;
  l_sum2 :=0;

  if (PageControl1.ActivePageIndex= 0) and (OD_sal.Active=true) then
  begin
    l_bm:=OD_sal.GetBookmark;
    OD_sal.First;
    while not OD_sal.Eof do
    begin
      l_sum:=l_sum+OD_sal.FieldByName('summa').AsFloat;
      l_sum2:=l_sum2+OD_sal.FieldByName('summa2').AsFloat;
      OD_sal.Next;
    end;
    try
    OD_sal.GotoBookmark(l_bm);
          except
      end;

    wwDBGrid1.ColumnByName('NAME_ORG').FooterValue :='Итого:';
    wwDBGrid1.ColumnByName('SUMMA').FooterValue :=FloatToStrF(l_sum, ffFixed, 10, 2);
    wwDBGrid1.ColumnByName('SUMMA2').FooterValue :=FloatToStrF(l_sum2, ffFixed, 10, 2);
  end
  else if (PageControl1.ActivePageIndex= 1) and (OD_deb_usl.Active=true) then
  begin
    l_bm:=OD_deb_usl.GetBookmark;
    OD_deb_usl.First;
    while not OD_deb_usl.Eof do
    begin
      l_sum:=l_sum+OD_deb_usl.FieldByName('summa').AsFloat;
      l_sum2:=l_sum2+OD_deb_usl.FieldByName('summa2').AsFloat;
      OD_deb_usl.Next;
    end;
    try
    OD_deb_usl.GotoBookmark(l_bm);
          except
      end;

    wwDBGrid2.ColumnByName('NAME_ORG').FooterValue :='Итого:';
    wwDBGrid2.ColumnByName('SUMMA').FooterValue :=FloatToStrF(l_sum, ffFixed, 10, 2);
    wwDBGrid2.ColumnByName('SUMMA2').FooterValue :=FloatToStrF(l_sum2, ffFixed, 10, 2);
  end;
end;

procedure TForm_saldo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_saldo.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_saldo.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;

  if have_rights('drx_Просмотр_долг_период') <> 0 then
    Tabsheet2.TabVisible:=False
    else
    Tabsheet2.TabVisible:=True;

  state_arch2('');
  Timer1.Enabled:=true;
end;

procedure TForm_saldo.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (Field<>Nil) and ((Field.FieldName='SUMMA') or (Field.FieldName='SUMMA2')) then
   begin
    ABrush.Color:= clSkyBlue;
    AFont.Color:=clBlack;
   end;

end;

procedure TForm_saldo.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (Field<>Nil) and ((Field.FieldName='SUMMA') or (Field.FieldName='SUMMA2')) then
   begin
    ABrush.Color:= clSkyBlue;
    AFont.Color:=clBlack;
   end;

end;

procedure TForm_saldo.OD_salAfterRefresh(DataSet: TDataSet);
begin
  calcFooter;
end;

procedure TForm_saldo.OD_salAfterOpen(DataSet: TDataSet);
begin
  calcFooter;
end;


procedure TForm_saldo.Timer1Timer(Sender: TObject);
begin
  calcFooter;
  Timer1.Enabled:=False;
end;

procedure TForm_saldo.Button1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
  Refresh;
  if (PageControl1.ActivePageIndex= 0) then
  begin
    DataModule1.OraclePackage1.CallProcedure
     ('scott.GEN.prepare_arch_lsk',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 0]);
    OD_sal.Active:=false;
    OD_sal.Active:=true;
  end
  else if (PageControl1.ActivePageIndex= 1) then
  begin
    DataModule1.OraclePackage1.CallProcedure
     ('scott.c_dist_pay.gen_deb_usl',
      [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString, 1]);
    OD_deb_usl.Active:=false;
    OD_deb_usl.Active:=true;
  end;

  Panel1.Visible:=False;
end;

procedure TForm_saldo.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.checked then
      Form_saldo.FormStyle:=fsStayOnTop
    else
      Form_saldo.FormStyle:=fsMDIChild;
end;

procedure TForm_saldo.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex= 0 then
  begin
    OD_sal.Active:=true;
    OD_deb_usl.Active:=false;
  end
  else if PageControl1.ActivePageIndex= 1 then
  begin
    OD_sal.Active:=false;
    OD_deb_usl.Active:=true;
  end;
  calcFooter;
end;

end.
