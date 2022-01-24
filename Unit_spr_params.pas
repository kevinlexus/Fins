unit Unit_spr_params;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData,
  ExtCtrls, Oracle, ComCtrls, 
  cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxDBEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCheckBox, Mask, Grids, 
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TForm_spr_params = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    OD_spr: TOracleDataSet;
    OD_sprID: TFloatField;
    OD_sprCD: TStringField;
    OD_sprPARVC1: TStringField;
    OD_sprPARN1: TFloatField;
    OD_sprNAME: TStringField;
    OD_sprCDTP: TFloatField;
    Panel1: TPanel;
    Button2: TButton;
    Label1: TLabel;
    OD_sprFK_PARCDTP: TStringField;
    OD_sprPARDT1: TDateTimeField;
    OD_sprPARENT_ID: TFloatField;
    OD_sprSQL_TEXT: TStringField;
    Label2: TLabel;
    Edit1: TEdit;
    Timer2: TTimer;
    chk1: TCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    OD_params: TOracleDataSet;
    DS_params: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1PARVC1: TcxGridDBColumn;
    cxGrid1DBTableView1PARN1: TcxGridDBColumn;
    cxGrid1DBTableView1CDTP: TcxGridDBColumn;
    cxGrid1DBTableView1FK_PARCDTP: TcxGridDBColumn;
    cxGrid1DBTableView1PARDT1: TcxGridDBColumn;
    cxGrid1DBTableView1SQL_TEXT: TcxGridDBColumn;
    DS_spr: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure chk1Click(Sender: TObject);
  private
    state_base_:Integer;
    flt_:string;
    procedure get_base_state;
  public
    { Public declarations }
  end;

var
  Form_spr_params: TForm_spr_params;

implementation

uses DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_spr_params.Button1Click(Sender: TObject);
begin
  if not (OD_spr.State in [dsBrowse]) then
    OD_spr.Post;
  if not (OD_params.State in [dsBrowse]) then
    OD_params.Post;
  Close;
end;

procedure TForm_spr_params.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not (OD_spr.State in [dsBrowse]) then
    OD_spr.Post;
  Action:=caFree;
end;

procedure TForm_spr_params.get_base_state;
begin
//Узнать состояние базы
  state_base_:=DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.admin.get_state_base', [parNone]);
  if state_base_= 0 then
  begin
     Button2.Caption:='Закрыть базу';
     Label1.Caption:='База открыта';
     Label1.Font.Color:=clGreen;
  end
  else if state_base_ = 1 then
  begin
     Button2.Caption:='Открыть базу';
     Label1.Caption:='База закрыта';
     Label1.Font.Color:=clRed;
  end
  else if state_base_ = 2 then
  begin
     Button2.Caption:='Открыть базу';
     Label1.Caption:='База в неопределенном состоянии';
     Label1.Font.Color:=clRed;
  end

end;

procedure TForm_spr_params.FormCreate(Sender: TObject);
begin
  get_base_state;
  OD_params.Active:=True;
end;

procedure TForm_spr_params.Button2Click(Sender: TObject);
begin
  if state_base_ = 0 then
  begin
    //Закрыть открытую базу
    DataModule1.OraclePackage1.CallProcedure
           ('scott.admin.set_state_base', [1]);
  end
  else
  begin
    //Открыть закрытую базу или базу в не определенном состоянии
    DataModule1.OraclePackage1.CallProcedure
           ('scott.admin.set_state_base', [0]);
  end;
  OD_spr.Active:=false;
  OD_spr.Active:=true;
  get_base_state;
end;

procedure TForm_spr_params.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled:=False;
  if flt_ <> Edit1.Text then
  begin
    flt_:=Edit1.Text;
  end
  else if ((flt_ = Edit1.Text) and (flt_<>'')
    and (flt_ <> OD_spr.GetVariable('flt_')))
     then
  begin
  //Применить фильтр по выражению
    OD_spr.Active:=false;
    OD_spr.SetVariable('varflt_', 1);
    OD_spr.SetVariable('flt_', flt_);
    OD_spr.Active:=true;
  end
  else if (OD_spr.GetVariable('varflt_')=1) and (flt_='') then
  begin
  //Отменить фильтр по выражению
    OD_spr.Active:=false;
    OD_spr.SetVariable('varflt_', 0);
    OD_spr.Active:=true;
  end;
  Timer2.Enabled:=True;
end;

procedure TForm_spr_params.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
  begin
     OD_spr.ReadOnly := False
  end
  else
  begin
     OD_spr.ReadOnly := True;
  end;

end;

end.
