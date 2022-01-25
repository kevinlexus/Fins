unit u_frmOLAP;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  fcxControl, fcxZone, fcxCustomGrid, fcxCubeGrid, fcxComponent, fcxCube,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Data.DB,
  MemDS, DBAccess, Uni, cxCustomPivotGrid, cxPivotGrid, DM_module1,
  cxDBPivotGrid, cxExportPivotGridLink, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmOLAP = class(TForm)
    UniQuery1: TUniQuery;
    cxDBPivotGrid1: TcxDBPivotGrid;
    DataSource1: TDataSource;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ExportGrid(aGrid: TcxCustomPivotGrid);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
  end;

var frmOLAP: TfrmOLAP;

implementation

{$R *.dfm}

procedure TfrmOLAP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfrmOLAP.FormCreate(Sender: TObject);
begin
  UniQuery1.Active := false;
  UniQuery1.Active := true;
end;

procedure TfrmOLAP.Button1Click(Sender: TObject);
begin
 ExportGrid(cxDBPivotGrid1);
end;

procedure TfrmOLAP.Button2Click(Sender: TObject);
var
  p: Pointer;
  list: TStringList;
begin
  GetMem(p, 100);
  list:=TStringList.Create;

end;

procedure TfrmOLAP.ExportGrid(aGrid: TcxCustomPivotGrid);
var SaveDialog: TSaveDialog;
begin
  if not Assigned(aGrid) then Exit;
  SaveDialog := TSaveDialog.Create(self);
  try
    SaveDialog.Name := 'SaveDialog';
    SaveDialog.DefaultExt := 'XLS';
    SaveDialog.Filter :=
      'MS-Excel-Files (*.XLS)|*.XLS|XML-Files (*.XML)|*.HTM|HTML-Files (*.HTM)|*.HTM|Text-Files (*.TXT)|*.TXT|All Files (*.*)|*.*';
    SaveDialog.Options := [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist];
    if SaveDialog.Execute then
      if SaveDialog.FileName <> '' then begin
        if (Pos('.XLS', UpperCase(SaveDialog.FileName))
          = Length(SaveDialog.FileName) - 3) then
            cxExportPivotGridToExcel(SaveDialog.FileName, aGrid)
        else if (Pos('.XML', UpperCase(SaveDialog.FileName))
          = Length(SaveDialog.FileName) - 3) then
            cxExportPivotGridToXML(SaveDialog.FileName, aGrid)
        else if ((Pos('.HTM', UpperCase(SaveDialog.FileName))
          = Length(SaveDialog.FileName) - 3) or
          (Pos('.HTML', UpperCase(SaveDialog.FileName))
          = Length(SaveDialog.FileName) - 4)) then
            cxExportPivotGridToHTML(SaveDialog.FileName, aGrid)
        else cxExportPivotGridToText(SaveDialog.FileName, aGrid);
      end;
  finally SaveDialog.Free;
  end;
end;

end.
