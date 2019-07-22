unit Unit_form_olap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PivotToolBar_SRC, ExtCtrls, PivotGrid_SRC, StdCtrls,
  PivotMap_SRC, PivotCube_SRC, PivotPaintner_SRC,
  Buttons, DB, Oracle, Menus, zCube_TLB, frxClass, frxDMPExport, frxDBSet,
  frxDesgnCtrls, frxExportRTF, frxExportXLS, frxCross,
  frxExportText, frxExportCSV, cxControls,







  
  
  
  
  
  
  
  
  cxEdit, 
  cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, 
  cxContainer, cxTextEdit, cxMemo, cxMaskEdit, cxDropDownEdit, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  ufDataModuleOlap;

type
  TForm_olap = class(TForm)
    PVRowToolBar1: TPVRowToolBar;
    PVColToolBar1: TPVColToolBar;
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button1: TButton;
    PivotGrid1: TPivotGrid;
    PVDimToolBar1: TPVDimToolBar;
    PVMeasureToolBar1: TPVMeasureToolBar;
    PivotMap14: TPivotMap;
    PivotCube14: TPivotCube;
    Button4: TButton;
    BitBtn1: TBitBtn;
    PivotCube54: TPivotCube;
    PivotMap54: TPivotMap;
    PivotCube35: TPivotCube;
    PivotMap35: TPivotMap;
    frxReport56: TfrxReport;
    frxDBDataset56: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    PivotCube57: TPivotCube;
    PivotMap57: TPivotMap;
    PivotCube58: TPivotCube;
    PivotMap58: TPivotMap;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    PivotCube60: TPivotCube;
    PivotMap60: TPivotMap;
    frxCrossObject1: TfrxCrossObject;
    frxDBDS_base: TfrxDBDataset;
    frxReport_base: TfrxReport;
    frxDBDataset65: TfrxDBDataset;
    frxReport65: TfrxReport;
    PivotCube36: TPivotCube;
    PivotMap36: TPivotMap;
    frxDB_c_kart_pr: TfrxDBDataset;
    PivotCube80: TPivotCube;
    PivotMap80: TPivotMap;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxDBDetail: TfrxDBDataset;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    chk1: TCheckBox;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    chk2: TCheckBox;
    cxComboBox1: TcxComboBox;
    cxm1: TcxMemo;
    PivotCube13: TPivotCube;
    PivotMap13: TPivotMap;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PivotGrid1FocusedCell(Sender: TObject; ColIndex, RowIndex,
      MeasureIndex, ViewIndex: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
  public
    rep_name_: String;
  end;

var
  Form_olap: TForm_olap;

implementation

{$R *.dfm}
uses Unit_print_stat_usl, DM_module1, Unit_tree_objects, Unit_Mainform, Utils;

procedure TForm_olap.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Cube_, Map_: TComponent;
begin
  if FF('Form_tree_objects', 0) = 1 then
  begin
    Cube_ := Form_olap.FindComponent('PivotCube'+IntToStr(Form_tree_objects.rep_id_));
    Map_ := Form_olap.FindComponent('PivotMap'+IntToStr(Form_tree_objects.rep_id_));
    try
      //может не существовать куб...(в случае доступа к форме по старому формату)
      TPivotMap(Map_).Destroy;
      TPivotCube(Cube_).Destroy;
    except
    end;

    //закрыть форму TreeObj, чтоб не жрала память
    Form_tree_objects.Close;
  end;

  Form_main.Panel2.Width:=2;
  //отключил - не удобно кис
  //  SetMenu(2);
  Action:=caFree;
end;

procedure TForm_olap.Button1Click(Sender: TObject);
begin
  //иногда после работы в OLAP, отваливается точка...(жаловался кис.)
  DecimalSeparator:='.';
  Close;
end;

procedure TForm_olap.Button3Click(Sender: TObject);
begin
  Form_tree_objects.exp;
end;

procedure TForm_olap.Button2Click(Sender: TObject);
begin
  if msg3('Сохранить шаблон?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
   ID_YES then
  begin
    Form_tree_objects.saveXML;
    msg2('Шаблон для данного представления успешно сохранен!',
    'Внимание', MB_OK+MB_ICONINFORMATION )
  end;
end;

procedure TForm_olap.FormPaint(Sender: TObject);
begin
  Button1.Left:=GroupBox1.Width-Button1.Width-15;
  Button3.Left:=Button1.Left-Button3.Width-15;
  Button4.Left:=round(Width/2-Button4.Width);
end;

procedure TForm_olap.FormCreate(Sender: TObject);
begin
  //отключил - не удобно кис
  //SetMenu(1);
  Form_olap.PVDimToolBar1.Visible:=false;
  Form_olap.PVColToolBar1.Visible:=false;
  Form_olap.PVRowToolBar1.Visible:=false;
  Form_olap.PivotGrid1.Visible:=false;
  Form_olap.PVMeasureToolBar1.Visible:=false;

{  try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drb1_Сохранить_шаблон', [parNone]);
  except
  begin
    Button2.Visible:=false;
  end
  end;}
end;

procedure TForm_olap.PivotGrid1FocusedCell(Sender: TObject; ColIndex,
  RowIndex, MeasureIndex, ViewIndex: Integer);
Var
   rCell,cCell : ICell;
   s,fn : _pvcstring;
   nink_, id_: Integer;
   nkom_: _pvcstring;
procedure FindCodeChng(cell : ICell; str_ : String);
begin
if Cell = nil then
   Exit;
while Cell.Owner <> nil do
      begin
      fn := Form_print_stat_usl.PivotMap37.Dimensions[Cell.DimensionItem.Dimension.Index].FieldName;
      if fn = str_ then
      begin
        s:=IntToStr(cell.Key);
        id_:=cell.Key;
      end;
      Cell := Cell.Owner;
      end;
end;

procedure FindCodeInk(cell : ICell);
begin
if Cell = nil then
   Exit;
while Cell.Owner <> nil do
      begin
      fn := Form_olap.PivotMap36.Dimensions[Cell.DimensionItem.Dimension.Index].FieldName;
      if cell.Key <> Null then
      begin
        if fn = 'NINK' then
        begin
          nink_:=cell.Key;
        end;
        if fn = 'NKOM' then
        begin
          nkom_:=cell.Key;
        end;
      end;
      Cell := Cell.Owner;
      end;
end;

begin
  //только для формы сверка разовых изменений
  if FF('Form_print_stat_usl', 0) = 1 then
  begin
    if Form_print_stat_usl.id_ = 37 then
    begin
    if isaccess('scott.drx2_удаление_перерасчетов')=1 then
    begin
      id_:=0;
      nink_:=0;
      nkom_:='';
      s := '';
      rCell := Form_print_stat_usl.PivotMap37.RowCells[RowIndex];
      cCell := Form_print_stat_usl.PivotMap37.ColumnCells[ColIndex];
      FindCodeChng(rCell, 'ID');
      FindCodeChng(cCell, 'ID');
      if id_ <> 0 then
      begin
        if msg3('Удалить документ с кодом '+s+' ?',
           'Внимание!',
           MB_YESNO+MB_ICONQUESTION) = IDYES then
           begin
              if msg3('Подтвердите удаление документа с кодом '+s,
               'Внимание!',
               MB_YESNO+MB_ICONQUESTION) = IDYES then
               begin
                 DataModule1.OraclePackage1.CallProcedure
                     ('scott.C_CHANGES.del_chng_doc', [id_]);
                 msg2('Перерасчет успешно удалён!',
                    'Внимание!',
                 MB_OK+MB_ICONINFORMATION)
               end;
           end;
      end;
    end
    else
             msg2('Запрещено удалять перерасчеты!',
                'Внимание!',
             MB_OK+MB_ICONSTOP);
    end;
  end;

  //только для формы сверка инкассаций
  if Form_tree_objects.rep_cd_ = '36' then
  begin
  if isaccess('scott.drx1_удаление_инкассаций')=1 then
  begin
    id_:=0;
    s := '';
    rCell := Form_olap.PivotMap36.RowCells[RowIndex];
    cCell := Form_olap.PivotMap36.ColumnCells[ColIndex];
    FindCodeInk(rCell);
    FindCodeInk(cCell);
    if (nkom_ <> ''){ and (nink_ <> 0) ред. 9.07.12 } then
    begin
      if msg3('Удалить комп.№ '+nkom_+', инкасс.№ '+inttostr(nink_)+'?',
         'Внимание!',
         MB_YESNO+MB_ICONQUESTION) = IDYES then
         begin
          if msg3('Подтвердите удаление комп.№ '+nkom_+', инкасс.№ '+inttostr(nink_),
             'Внимание!',
             MB_YESNO+MB_ICONQUESTION) = IDYES then
             begin
               DataModule1.OraclePackage1.CallProcedure
                   ('scott.C_GET_PAY.remove_inkass', [nkom_, nink_]);
               msg2('Инкассация успешно удалена!',
                  'Внимание!',
               MB_OK+MB_ICONINFORMATION)
             end;
         end;
    end;
  end
  else
           msg2('Запрещено удалять инкассации!',
              'Внимание!',
           MB_OK+MB_ICONSTOP);
  end;
end;


procedure TForm_olap.BitBtn1Click(Sender: TObject);
begin
  Form_tree_objects.SetSize(2);
end;

procedure TForm_olap.btn2Click(Sender: TObject);
begin
  Form_tree_objects.imp_gis_LS;
end;

procedure TForm_olap.btn3Click(Sender: TObject);
begin
  Form_tree_objects.imp_gis_MKD_10;

end;

procedure TForm_olap.btn4Click(Sender: TObject);
begin
  Form_tree_objects.imp_gis_ELS;
end;

end.
