unit Unit_sch_history;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, wwclearpanel, StdCtrls, wwdblook, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator, cxSplitter, dxBarBuiltInMenu, cxPC,
  cxLabel, cxDBEdit, Mask, wwdbedit, Math, cxCalendar, dxCore, cxDateUtils;

type
  TForm_sch_history = class(TForm)
    OD_data: TOracleDataSet;
    pgc1: TPageControl;
    ts1: TTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NAME_TP: TcxGridDBColumn;
    cxGridDBTableView1NAME_ACT: TcxGridDBColumn;
    cxGridDBTableView1TS: TcxGridDBColumn;
    cxGridDBTableView1NAME_USER: TcxGridDBColumn;
    cxGridDBTableView1VOL: TcxGridDBColumn;
    cxGridDBTableView1NAME_USL: TcxGridDBColumn;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    OD_meter: TOracleDataSet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    DS_meter: TDataSource;
    cxGrid2DBTableView1NM: TcxGridDBColumn;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1NAME: TcxGridDBColumn;
    cxGrid2DBTableView1DT1: TcxGridDBColumn;
    cxGrid2DBTableView1DT2: TcxGridDBColumn;
    cxGrid2DBTableView1KLSK: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    OD_t_objxpar: TOracleDataSet;
    DS_t_objxpar: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2N1: TcxGridDBColumn;
    cxGridDBTableView2TS: TcxGridDBColumn;
    cxGridDBTableView2OPER_NAME: TcxGridDBColumn;
    cxGridDBTableView2USER_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1N1: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Button1: TButton;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    Button2: TButton;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    OD_usl: TOracleDataSet;
    DS_usl: TDataSource;
    cxLabel8: TcxLabel;
    wwDBEdit4: TwwDBEdit;
    cxGrid2DBTableView1ACT: TcxGridDBColumn;
    cxGridDBTableView2PERIOD: TcxGridDBColumn;
    cxGridDBTableView2COMM: TcxGridDBColumn;
    DS_data: TDataSource;
    Button3: TButton;
    cxGrid2DBTableView1STATE: TcxGridDBColumn;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure refrN1;
    procedure wwDBEdit2Change(Sender: TObject);
    procedure wwDBEdit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OD_t_objxparAfterRefresh(DataSet: TDataSet);
    procedure cxGrid2DBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure setFlt(flt, val: Integer);
    procedure wwDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure OD_meterAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
{    function exit_cancel: Integer;
    function exit_ok: Integer;
 }
 
  private
    // ������ ���������
    flt1: Integer;
    // ������ ���������
    flt2: Integer;
  public
  end;

var
  Form_sch_history: TForm_sch_history;

implementation

uses DM_module1, Unit_list_kart, Utils, Unit_form_kart;

{$R *.dfm}

procedure TForm_sch_history.FormCreate(Sender: TObject);
begin
  // ������� ��������
  flt1:=1;
  flt2:=1;

  OD_usl.Active:=True;
  OD_data.Active:=True;
  setFlt(1, 1);
  setFlt(2, 1);
  OD_t_objxpar.Active:=True;
  cxDateEdit1.Date:=Date();
  pgc1.ActivePageIndex:=0;
  cxPageControl1.ActivePage:=cxTabSheet1;
end;

// ���������� �������
procedure TForm_sch_history.setFlt(flt, val: Integer);
begin
  if flt=1 then
  begin
    if Val=0 then
      begin
        cxGrid2DBTableView1.NavigatorButtons.CustomButtons[0].ImageIndex:=0;
        cxGrid2DBTableView1.NavigatorButtons.CustomButtons[0].Hint:='������ �������������';
      end
    else
      begin
        cxGrid2DBTableView1.NavigatorButtons.CustomButtons[0].ImageIndex:=1;
        cxGrid2DBTableView1.NavigatorButtons.CustomButtons[0].Hint:='�������� ���';
      end;

    flt1:=val;
    OD_meter.Active:=false;
    OD_meter.SetVariable('flt1', flt1);
    OD_meter.Active:=True;
  end
  else if flt=2 then
  begin
    flt2:=val;
    //OD_meter.Active:=false;
    //OD_meter.SetVariable('flt1', flt1);
    //OD_meter.Active:=True;
  end;
end;

procedure TForm_sch_history.refrN1;
 var
 d, n1: Double;
begin
  if wwDBEdit1.Text <> '' then
    d:=StrToFloat(wwDBEdit1.Text)
  else
    d:=0;

  if wwDBEdit2.Text <> '' then
    n1:=StrToFloat(wwDBEdit2.Text)
  else
    n1:=0;
  wwDBEdit3.Text:=FloatToStr(RoundTo(n1-d, -5));
end;

procedure TForm_sch_history.Button1Click(Sender: TObject);
 var
 metKlsk, ret: Integer;
 d, vol, n1: Double;
begin
  if not (OD_meter.State in [dsBrowse]) then
    OD_meter.Post;
  // ���� ���������� ���������
  if CheckBox1.Checked then
  begin
     CheckBox1.Checked := false;
     wwDBEdit1.ReadOnly := True;
     msg2('��������� ��������� ���������������!','��������!', MB_OK);
     Exit;
  end;
    
  // ��������� ���� �� ����������� ��������
  if OD_meter.FieldByName('act').AsInteger <> 1 then
  begin
    msg2('������� �������� ����� �� ����������� ��������!','��������!', MB_OK+MB_ICONERROR);
    Exit;
  end;

  vol:=StrToFloat(wwDBEdit3.Text);
  // ��������� ���� 0 �������
  if vol = 0 then
  begin
    msg2('������� �������� ������� ������!','��������!', MB_OK+MB_ICONERROR);
    Exit;
  end;

  if wwDBEdit1.Text <> '' then
    d:=StrToFloat(wwDBEdit1.Text)
  else
    d:=0;

  if wwDBEdit2.Text <> '' then
    n1:=StrToFloat(wwDBEdit2.Text)
  else
    n1:=0;

  metKlsk:=OD_meter.FieldByName('K_LSK_ID').AsInteger;
  ret:=DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.p_meter.ins_vol_meter', [metKlsk, null, null, vol, n1, 0]);
  if ret = 0 then
  begin
    DataModule1.OraclePackage1.Session.Commit;
    wwDBEdit3.Text:='0';
    OD_meter.Active:=false;
    OD_meter.Active:=true;
    OD_meter.Locate('K_LSK_ID', metKlsk, []);

    OD_t_objxpar.Active:=false;
    OD_t_objxpar.Active:=true;
    OD_t_objxpar.Last;

    // ���������/�������� ����� ��������, ����� �������� ���� ������� �� ��������
    if FF('Form_kart', 0) = 1 then
      Form_kart.save_changes(0);
  end
  else
  begin
    msg2('������� �������� ����� �� ��������� ��������!','��������!', MB_OK+MB_ICONERROR);
  end;

end;

procedure TForm_sch_history.FormClose(Sender: TObject;
  var Action: TCloseAction);
//var l_ret: Integer;
begin
  Action:=caFree
{
  if upd_ <> 0 then
    l_ret:=exit_cancel;
  if l_ret = 0 then
    Action:=caFree
  else
    Abort;}  
end;

{procedure TForm_sch_history.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  OD_data.SetVariable('var',
    OD_tp.FieldByName('id').AsInteger);
  OD_data.Active:=False;
  OD_data.Active:=True;
end;}

{procedure TForm_sch_history.select;
begin
  //����� ������������� �����
  OD_c_charge_prep.SetVariable('usl',
    cbb2.EditValue);
  OD_c_charge_prep.SetVariable('tp',
    cbb1.EditValue);
  OD_c_charge_prep.Active:=False;
  OD_c_charge_prep.Active:=True;
end;}

{procedure TForm_sch_history.cbb1PropertiesCloseUp(Sender: TObject);
begin
  select;
end;

procedure TForm_sch_history.cbb2PropertiesCloseUp(Sender: TObject);
begin
  select;
end;}

procedure TForm_sch_history.wwDBEdit2Change(Sender: TObject);
begin
  refrN1;
end;

procedure TForm_sch_history.wwDBEdit1Change(Sender: TObject);
begin
   wwDBEdit2.Text:=wwDBEdit1.Text;
end;

procedure TForm_sch_history.Button2Click(Sender: TObject);
var
  klsk: Integer;
  d: Double; 
begin
  // ��������� ��� ������ �������������
  {if upd_ <> 0 then
    l_ret:=exit_cancel;
  if l_ret <>0 then
    Exit;}

  if wwDBEdit4.Text <> '' then
    d:=StrToFloat(wwDBEdit4.Text)
  else
    d:=0;

  if (VarToStr(cxLookupComboBox1.EditValue)='') then
  begin
    msg2('�� ��������� ������!', '��������!', MB_OK+MB_ICONERROR);
    Exit;
  end;

  if (cxDateEdit1.EditValue=null) then
  begin
      msg2('�� ��������� ���� ������ ������!', '��������!', MB_OK+MB_ICONERROR);
    Exit;
  end;

  if (cxDateEdit2.EditValue=null) then
  begin
      msg2('�� ��������� ���� ��������� ������!', '��������!', MB_OK+MB_ICONERROR);
    Exit;
  end;

  klsk:= DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.p_meter.ins_meter', [cxTextEdit1.Text,
                                      VarToStr(cxLookupComboBox1.EditValue),
                                      cxDateEdit1.Date,
                                      cxDateEdit2.Date,
                                      d,
                                      Form_list_kart.OD_list_kart.FieldByName('K_LSK_ID').AsInteger,
                                      '���'
                                      ]);
  DataModule1.OraclePackage1.Session.Commit;
  OD_meter.Active:=false;
  OD_meter.Active:=true;
  OD_meter.Locate('K_LSK_ID', klsk, []);
  cxPageControl1.ActivePageIndex:=0;

  // ���������/�������� ����� ��������, ����� �������� ���� ������� �� ��������
  if FF('Form_kart', 0) = 1 then
    Form_kart.save_changes(0);

end;

procedure TForm_sch_history.OD_t_objxparAfterRefresh(DataSet: TDataSet);
begin
  OD_t_objxpar.Last;
end;

procedure TForm_sch_history.cxGrid2DBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
    if (AButtonIndex = 16) then
    begin
    // ������ ������ �����/��������� ������
      if flt1=1 then
        begin
          setFlt(1,0);
        end
      else
        begin
          setFlt(1,1);
        end;

    end;
end;

{function TForm_sch_history.exit_ok: Integer;
begin
  Result:=1;
  if not (OD_meter.State in [dsBrowse]) then
   OD_meter.Post;
  if not (OD_t_objxpar.State in [dsBrowse]) then
   OD_t_objxpar.Post;

  try
   DataModule1.OraclePackage1.CallProcedure
       ('scott.UTILS.upd_krt_sch_state',
       [Form_list_kart.OD_list_kart.FieldByName('lsk').AsString]);
  except
   Exit;
  end;

  OD_meter.Session.Commit;
  upd_:=0;
  Result:=0;
end;


function TForm_sch_history.exit_cancel: Integer;
begin
  Result:=1;
  if (upd_=1) then
  begin
    if msg3('��������� ���������?', '�������������', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      Result:=exit_ok;
      if Result=1 then begin
        OD_meter.Session.Rollback;
      end;
      upd_:=0;
    end
    else
    begin
      if not (OD_meter.State in [dsBrowse]) then
        OD_meter.Cancel;

      if not (OD_t_objxpar.State in [dsBrowse]) then
        OD_t_objxpar.Cancel;

      OD_meter.Session.Rollback;
      upd_:=0;
      Result:=0;
    end;
 end;
end; }

procedure TForm_sch_history.wwDBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

procedure TForm_sch_history.wwDBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

procedure TForm_sch_history.Button3Click(Sender: TObject);
begin
  if not (OD_meter.State in [dsBrowse]) then
  OD_meter.Post;
  Close;
end;

procedure TForm_sch_history.OD_meterAfterScroll(DataSet: TDataSet);
begin
  if OD_meter.FieldByName('STATE_CD').AsString = '���������� ��' then
  begin
    Label1.Visible:=True;
    wwDBEdit2.ReadOnly:=True;
    wwDBEdit3.ReadOnly:=True;
  end
  else
  begin
    Label1.Visible:=False;
    wwDBEdit2.ReadOnly:=False;
    wwDBEdit3.ReadOnly:=False;
  end;

  // ���������� �������� ���� �����
  if OD_meter.FieldByName('COUNTER').AsString = 'pot' then
  begin
     wwDBEdit2.Picture.PictureMask:='[-][#][#][#][#][#][#][.][#][#][#][#][#]';
     wwDBEdit3.Picture.PictureMask:='[-][#][#][#][#][#][#][.][#][#][#][#][#]';
     wwDBEdit1.Picture.PictureMask:='[-][#][#][#][#][#][#][.][#][#][#][#][#]';
  end
  else
  begin
     wwDBEdit2.Picture.PictureMask:='[-][#][#][#][#][#][#][.][#][#][#]';
     wwDBEdit3.Picture.PictureMask:='[-][#][#][#][#][#][#][.][#][#][#]';
     wwDBEdit1.Picture.PictureMask:='[-][#][#][#][#][#][#][.][#][#][#]';
  end;

end;

procedure TForm_sch_history.CheckBox1Click(Sender: TObject);
begin
  // ����������� ������ ���������� ���������
  if CheckBox1.Checked then
      wwDBEdit1.ReadOnly:=false
  else
      wwDBEdit1.ReadOnly:=true;

end;

end.
