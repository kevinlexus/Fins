unit Unit_edit_request;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, OracleData, wwriched,
  wwdblook, Wwdbdlg, Wwdbgrid,
  wwdbdatetimepicker, Mask, wwdbedit, Wwdotdot, Wwdbcomb, DBCtrlsEh,
  ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids, Wwdbigrd;

type
  TForm_edit_request = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    wwDBRichEdit1: TwwDBRichEdit;
    wwDBGrid1: TwwDBGrid;
    wwDBEdit1: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label3: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label4: TLabel;
    DBEditEh1: TDBEditEh;
    Button3: TButton;
    Button4: TButton;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label7: TLabel;
    wwDBEdit4: TwwDBEdit;
    TabSheet4: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exit_ok;
    procedure exit_cancel;
    procedure DBEditEh1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    exit_: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_edit_request: TForm_edit_request;

implementation

{$R *.dfm}
uses Unit_requests, Unit_find_adr, Utils, Unit_Mainform;


procedure TForm_edit_request.exit_ok;
begin
  exit_:=1;
  if (DBEditEh1.Text = '') and (Form_requests.access_type_ = 0) then
    begin
      msg2('�� �������� �����!','��������',MB_OK+MB_ICONSTOP);
      Abort;
    end;
  if (wwDBEdit4.Text = '') and (Form_requests.access_type_ = 1) then
    begin
      msg2('�� ��������� ����������!','��������',MB_OK+MB_ICONSTOP);
      Abort;
    end;

  with Form_requests do
  begin
    if not (OD_doc_det.State in [dsBrowse]) then
       OD_doc_det.Post;
    if not (OD_request.State in [dsBrowse]) then
       OD_request.Post;
    //����� � ����������� ��������
    OD_request.Session.ApplyUpdates([OD_request, OD_doc_det], true);
    OD_request.RefreshRecord;
    OD_adr.Active:=false;
    OD_adr.Active:=true;
  end;
end;

procedure TForm_edit_request.exit_cancel;
begin
  exit_:=0;
{  with Form_requests.OD_request do
  begin
//    Session.CancelUpdates([OD_req_works]);
    if not (State in [dsBrowse]) then
      Post;
//    if not (State in [dsBrowse]) then
//     Cancel;

    Session.CancelUpdates([Form_requests.OD_request]);
    GotoBookmark(Form_requests.bm);
  end;}
end;

procedure TForm_edit_request.Button2Click(Sender: TObject);
begin
  exit_cancel;
  Close;
end;

procedure TForm_edit_request.Button1Click(Sender: TObject);
begin
  exit_ok;
  Close;
end;

procedure TForm_edit_request.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_edit_request.DBEditEh1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  Application.CreateForm(TForm_find_adr, Form_find_adr);
  if Form_find_adr.ShowModal = mrOk then
  begin
    if Form_Main.k_lsk_id_ <> -1 then //������ �����
    begin
      with Form_requests.OD_request do
      begin
        DBEditEh1.Text:=Form_main.str_adr_;
        Edit;
        if wwDBEdit2.Text = '' then
          wwDBEdit2.Text:=Form_main.fio_;
        FieldByName('fk_klsk').AsInteger:=Form_Main.k_lsk_id_;
      end;
    end;
  end;

end;


procedure TForm_edit_request.Button3Click(Sender: TObject);
begin
{  OD_req_works.Insert;
  Application.CreateForm(TForm_edit_work, Form_edit_work);
  Form_edit_work.ShowModal;}
end;

procedure TForm_edit_request.Button4Click(Sender: TObject);
begin
{  if Application.MessageBox('������� ������?',
     '������������', MB_YESNO+MB_APPLMODAL) = IDYES then
  begin
    OD_req_works.Delete;
  end;}
end;

procedure TForm_edit_request.FormCreate(Sender: TObject);
begin
 DBEditEh1.Text:=Form_requests.OD_adr.FieldByName('Adr').AsString;
{ PageControl1.ActivePageIndex:=0;

  Form_requests.OD_request.Edit;
  OD_req_works.Active:=true;
  OD_spr_works.Active:=true;
  OD_events.Active:=true;

  if Form_requests.access_type_ = 0  then //������
  begin
    OD_streets.Active:=true;
    OD_houses.Active:=true;
    OD_kw.Active:=true;
  end;

  TabSheet1.Enabled:=false;
  TabSheet2.Enabled:=false;
  TabSheet3.Enabled:=false;
  if Form_requests.access_type_doc = 1 then
  begin
  //����� ��������
  //��������� �� ��������� ������� ��������, ��������������?
   if DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.UTILS.allow_funct', [4]) = 1 then
    begin
      TabSheet1.Enabled:=true;
      TabSheet3.Enabled:=true;
    end;
  //��������� �� ��������� ������ (��������� ���������)?
   if DataModule1.OraclePackage1.CallIntegerFunction(
    'scott.UTILS.allow_funct', [5]) = 1 then
    begin
      TabSheet2.Enabled:=true;
    end;
  end
  else
  begin

  if Form_requests.OD_request.FieldByName('check1').AsInteger = 1 then
  begin
    TabSheet1.Enabled:=true;
    TabSheet3.Enabled:=true;
  end;

  if Form_requests.OD_request.FieldByName('check2').AsInteger = 1 then
  begin
    TabSheet2.Enabled:=true;
  end

  end;

  //���������� �� ������ � �������� � ����������� �� ���� ����������
  if Form_requests.access_type_ = 0  then //������
  begin
    Caption:='�������������� ������';
    TabSheet2.TabVisible:=true;
    DBEditEh1.Visible:=true;
    wwDBEdit2.Visible:=true;
    Label3.Visible:=true;
    Label4.Visible:=true;
    wwDBDateTimePicker1.ReadOnly:=false;
  end
  else if Form_requests.access_type_ = 1 then //������ �������������
  begin
    Caption:='�������������� ���������';
    TabSheet2.TabVisible:=false;
    DBEditEh1.Visible:=false;
    wwDBEdit2.Visible:=false;
    Label3.Visible:=false;
    Label4.Visible:=false;
    wwDBDateTimePicker1.ReadOnly:=true;
  end;}
end;

end.
