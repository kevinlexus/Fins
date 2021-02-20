unit Unit_spr_params;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, OracleData,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, Oracle, wwDialog, wwrcdvw, ComCtrls, wwriched,
  cxControls, 
  cxContainer, cxEdit, 
  
  
  
  
  
  
  
  
  
  
  
  
  cxCheckBox, cxDBEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TForm_spr_params = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    DS_spr: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    OD_spr: TOracleDataSet;
    OD_sprID: TFloatField;
    OD_sprCD: TStringField;
    OD_sprPARVC1: TStringField;
    OD_sprPARN1: TFloatField;
    OD_sprNAME: TStringField;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    OD_sprCDTP: TFloatField;
    wwDBComboBox1: TwwDBComboBox;
    Panel1: TPanel;
    Button2: TButton;
    Label1: TLabel;
    OD_sprFK_PARCDTP: TStringField;
    OD_sprPARDT1: TDateTimeField;
    OD_sprPARENT_ID: TFloatField;
    wwDBNavigator1Button: TwwNavButton;
    OD_sprSQL_TEXT: TStringField;
    wwRecordViewDialog1: TwwRecordViewDialog;
    wwDBRichEdit1: TwwDBRichEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Timer2: TTimer;
    chk1: TCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    OD_params: TOracleDataSet;
    DS_params: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
//������ ��������� ����
  state_base_:=DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.admin.get_state_base', [parNone]);
  if state_base_= 0 then
  begin
     Button2.Caption:='������� ����';
     Label1.Caption:='���� �������';
     Label1.Font.Color:=clGreen;
  end
  else if state_base_ = 1 then
  begin
     Button2.Caption:='������� ����';
     Label1.Caption:='���� �������';
     Label1.Font.Color:=clRed;
  end
  else if state_base_ = 2 then
  begin
     Button2.Caption:='������� ����';
     Label1.Caption:='���� � �������������� ���������';
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
    //������� �������� ����
    DataModule1.OraclePackage1.CallProcedure
           ('scott.admin.set_state_base', [1]);
  end
  else
  begin
    //������� �������� ���� ��� ���� � �� ������������ ���������
    DataModule1.OraclePackage1.CallProcedure
           ('scott.admin.set_state_base', [0]);
  end;
  OD_spr.Active:=false;
  OD_spr.Active:=true;
  get_base_state;
end;

procedure TForm_spr_params.wwDBGrid1DblClick(Sender: TObject);
begin
  wwDBGrid1.FlushChanges;
  wwRecordViewDialog1.Execute;
  
end;

procedure TForm_spr_params.wwDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
  begin
    TwwDBGrid(Sender).BeginDrag(False,10);
    Form_main.fk_par_:=
      TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsInteger;
{    fk_reu_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('reu').AsString;
    fk_comp_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('nkom').AsString;
    if TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsString = '' then
      fk_pasp_org_:=0
      else
      fk_pasp_org_:=TwwDBGrid(Sender).DataSource.DataSet.FieldByName('id').AsInteger;
}      
  end;

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
  //��������� ������ �� ���������
    OD_spr.Active:=false;
    OD_spr.SetVariable('varflt_', 1);
    OD_spr.SetVariable('flt_', flt_);
    OD_spr.Active:=true;
  end
  else if (OD_spr.GetVariable('varflt_')=1) and (flt_='') then
  begin
  //�������� ������ �� ���������
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
