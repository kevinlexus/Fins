unit Unit_form_olap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PivotToolBar_SRC, ExtCtrls, PivotGrid_SRC, StdCtrls,
  PivotMap_SRC, PivotCube_SRC, PivotPaintner_SRC,
  Buttons, DB, Oracle, Menus, zCube_TLB, frxClass, frxDMPExport, frxDBSet,
  frxDesgnCtrls, frxExportRTF, frxExportXLS, frxCross,
  frxExportText, frxExportCSV, cxControls,







  
  
  
  
  
  
  
  
  
  cxGridLevel, cxClasses, 
  cxGridDBTableView, cxGrid, 
  cxMemo, cxDropDownEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, cxTextEdit,
  cxMaskEdit, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  frxExportBaseDialog;

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
    PivotCube97: TPivotCube;
    PivotMap97: TPivotMap;
    PivotCube98: TPivotCube;
    PivotMap98: TPivotMap;
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
    procedure PVRowToolBar1DragDrop(Sender: TObject; Index: Integer;
      var Apply: Boolean);
    procedure PVRowToolBar1DropDown(Sender: TObject; Left, Top,
      Index: Integer; var Apply: Boolean);
    procedure PVColToolBar1DragDrop(Sender: TObject; Index: Integer;
      var Apply: Boolean);
    procedure PVColToolBar1DropDown(Sender: TObject; Left, Top,
      Index: Integer; var Apply: Boolean);
    procedure PVDimToolBar1DragDrop(Sender: TObject; Index: Integer;
      var Apply: Boolean);
    procedure PVDimToolBar1DropDown(Sender: TObject; Left, Top,
      Index: Integer; var Apply: Boolean);
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
      //����� �� ������������ ���...(� ������ ������� � ����� �� ������� �������)
      TPivotMap(Map_).Destroy;
      TPivotCube(Cube_).Destroy;
    except
    end;

    //������� ����� TreeObj, ���� �� ����� ������
    Form_tree_objects.Close;
  end;

  Form_main.Panel2.Width:=2;
  //�������� - �� ������ ���
  //  SetMenu(2);
  Action:=caFree;
end;

procedure TForm_olap.Button1Click(Sender: TObject);
begin
  //������ ����� ������ � OLAP, ������������ �����...(��������� ���.)
  DecimalSeparator:='.';
  Close;
end;

procedure TForm_olap.Button3Click(Sender: TObject);
begin
  Form_tree_objects.exp;
end;

procedure TForm_olap.Button2Click(Sender: TObject);
begin
  if msg3('��������� ������?', '�������������', MB_YESNO+MB_ICONQUESTION) =
   ID_YES then
  begin
    Form_tree_objects.saveXML;
    msg2('������ ��� ������� ������������� ������� ��������!',
    '��������', MB_OK+MB_ICONINFORMATION )
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
  //�������� - �� ������ ���
  //SetMenu(1);
  Form_olap.PVDimToolBar1.Visible:=false;
  Form_olap.PVColToolBar1.Visible:=false;
  Form_olap.PVRowToolBar1.Visible:=false;
  Form_olap.PivotGrid1.Visible:=false;
  Form_olap.PVMeasureToolBar1.Visible:=false;

{  try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drb1_���������_������', [parNone]);
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
  //������ ��� ����� ������ ������� ���������
  if FF('Form_print_stat_usl', 0) = 1 then
  begin
    if Form_print_stat_usl.id_ = 37 then
    begin
    if isaccess('scott.drx2_��������_������������')=1 then
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
        if msg3('������� �������� � ����� '+s+' ?',
           '��������!',
           MB_YESNO+MB_ICONQUESTION) = IDYES then
           begin
              if msg3('����������� �������� ��������� � ����� '+s,
               '��������!',
               MB_YESNO+MB_ICONQUESTION) = IDYES then
               begin
                 DataModule1.OraclePackage1.CallProcedure
                     ('scott.C_CHANGES.del_chng_doc', [id_]);
                 msg2('���������� ������� �����!',
                    '��������!',
                 MB_OK+MB_ICONINFORMATION)
               end;
           end;
      end;
    end
    else
             msg2('��������� ������� �����������!',
                '��������!',
             MB_OK+MB_ICONSTOP);
    end;
  end;

  //������ ��� ����� ������ ����������
  if Form_tree_objects.rep_cd_ = '36' then
  begin
  if isaccess('scott.drx1_��������_����������')=1 then
  begin
    id_:=0;
    s := '';
    rCell := Form_olap.PivotMap36.RowCells[RowIndex];
    cCell := Form_olap.PivotMap36.ColumnCells[ColIndex];
    FindCodeInk(rCell);
    FindCodeInk(cCell);
    if (nkom_ <> ''){ and (nink_ <> 0) ���. 9.07.12 } then
    begin
      if msg3('������� ����.� '+nkom_+', ������.� '+inttostr(nink_)+'?',
         '��������!',
         MB_YESNO+MB_ICONQUESTION) = IDYES then
         begin
          if msg3('����������� �������� ����.� '+nkom_+', ������.� '+inttostr(nink_),
             '��������!',
             MB_YESNO+MB_ICONQUESTION) = IDYES then
             begin
               DataModule1.OraclePackage1.CallProcedure
                   ('scott.C_GET_PAY.remove_inkass', [nkom_, nink_]);
               msg2('���������� ������� �������!',
                  '��������!',
               MB_OK+MB_ICONINFORMATION)
             end;
         end;
    end;
  end
  else
           msg2('��������� ������� ����������!',
              '��������!',
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

procedure TForm_olap.PVRowToolBar1DragDrop(Sender: TObject; Index: Integer;
  var Apply: Boolean);
begin
 DoubleBuffered := false;
end;

procedure TForm_olap.PVRowToolBar1DropDown(Sender: TObject; Left, Top,
  Index: Integer; var Apply: Boolean);
begin
  DoubleBuffered := true;
end;

procedure TForm_olap.PVColToolBar1DragDrop(Sender: TObject; Index: Integer;
  var Apply: Boolean);
begin
 DoubleBuffered := false;

end;

procedure TForm_olap.PVColToolBar1DropDown(Sender: TObject; Left, Top,
  Index: Integer; var Apply: Boolean);
begin
 DoubleBuffered := true;

end;

procedure TForm_olap.PVDimToolBar1DragDrop(Sender: TObject; Index: Integer;
  var Apply: Boolean);
begin
 DoubleBuffered := false;     

end;

procedure TForm_olap.PVDimToolBar1DropDown(Sender: TObject; Left, Top,
  Index: Integer; var Apply: Boolean);
begin
 DoubleBuffered := true;

end;

end.
