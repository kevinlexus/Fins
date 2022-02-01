unit Unit_form_olap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  Buttons, DB, Oracle, Menus, frxClass, frxDMPExport, frxDBSet,
  frxDesgnCtrls, frxExportRTF, frxExportXLS, frxCross,
  frxExportText, frxExportCSV, cxControls,







  
  
  
  

  
  
  
  
  cxGridLevel, cxClasses, 
  cxGridDBTableView, cxGrid, 
  cxMemo, cxDropDownEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, cxTextEdit,
  cxMaskEdit, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  frxExportBaseDialog, dxSkinsCore, dxSkinsDefaultPainters, dxDateRanges;

type
  TForm_olap = class(TForm)
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    frxReport56: TfrxReport;
    frxDBDataset56: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxCrossObject1: TfrxCrossObject;
    frxDBDS_base: TfrxDBDataset;
    frxReport_base: TfrxReport;
    frxDBDataset65: TfrxDBDataset;
    frxReport65: TfrxReport;
    frxDB_c_kart_pr: TfrxDBDataset;
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
    cbbType: TcxComboBox;
    cxm1: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
uses DM_module1, Unit_tree_objects, Unit_Mainform, Utils;

procedure TForm_olap.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Cube_, Map_: TComponent;
begin
  if FF('Form_tree_objects', 0) = 1 then
  begin
{ ###   Cube_ := Form_olap.FindComponent('PivotCube'+IntToStr(Form_tree_objects.rep_id_));
    Map_ := Form_olap.FindComponent('PivotMap'+IntToStr(Form_tree_objects.rep_id_));
    try
      //может не существовать куб...(в случае доступа к форме по старому формату)
      TPivotMap(Map_).Destroy;
      TPivotCube(Cube_).Destroy;
    except
    end;
 }
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
//  Button3.Left:=Button1.Left-Button3.Width-15;
//  Button4.Left:=round(Width/2-Button4.Width);
end;

procedure TForm_olap.FormCreate(Sender: TObject);
begin
  //отключил - не удобно кис
  //SetMenu(1);
{ ### Form_olap.PVDimToolBar1.Visible:=false;
  Form_olap.PVColToolBar1.Visible:=false;
  Form_olap.PVRowToolBar1.Visible:=false;
  Form_olap.PivotGrid1.Visible:=false;
  Form_olap.PVMeasureToolBar1.Visible:=false;
 }
{  try
    DataModule1.OraclePackage1.CallProcedure
        ('scott.drb1_Сохранить_шаблон', [parNone]);
  except
  begin
    Button2.Visible:=false;
  end
  end;}
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
