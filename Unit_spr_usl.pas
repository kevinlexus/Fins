unit Unit_spr_usl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, OracleData, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, Menus, Utils, wwclearpanel,
  Grids, Wwdbigrd;

type
  TForm_spr_usl = class(TForm)
    OD_usl: TOracleDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    DS_usl: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
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
    Panel2: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    OD_uslm: TOracleDataSet;
    DS_uslm: TDataSource;
    TabSheet3: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    Panel3: TPanel;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    wwNavButton18: TwwNavButton;
    wwNavButton19: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    wwNavButton22: TwwNavButton;
    wwNavButton23: TwwNavButton;
    wwNavButton24: TwwNavButton;
    wwNavButton25: TwwNavButton;
    wwNavButton26: TwwNavButton;
    wwNavButton27: TwwNavButton;
    wwNavButton28: TwwNavButton;
    OD_usl_bills: TOracleDataSet;
    DS_usl_bills: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    Panel4: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Timer2: TTimer;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    flt_:string;
  public
    { Public declarations }
  end;

var
  Form_spr_usl: TForm_spr_usl;

implementation

uses Unit_add_usl, DM_module1;

{$R *.dfm}

procedure exit_ok;
begin
 with Form_spr_usl do
 begin
  if not (OD_usl.State in [dsBrowse]) then
   OD_usl.Post;
   OD_usl.Session.ApplyUpdates([OD_usl], True);
   OD_usl.Session.Commit;
 end;
end;

procedure exit_cancel;
begin
 with Form_spr_usl do
 begin
  if not (OD_usl.State in [dsBrowse]) then
   OD_usl.Post;
  if (OD_usl.UpdatesPending=true) then
  begin
    if msg3('Сохранить изменения?', 'Подтверждение', MB_YESNO+MB_ICONQUESTION) =
     ID_YES then
    begin
      exit_ok;
    end
    else
    begin
    if not (OD_usl.State in [dsBrowse]) then
      OD_usl.Cancel;
    OD_usl.CancelUpdates;
    OD_usl.Session.Rollback;
    end;
  end;
  end;
end;

procedure TForm_spr_usl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  exit_cancel;
  Action:=caFree;
end;


procedure TForm_spr_usl.FormCreate(Sender: TObject);
begin
  with OD_usl do
  begin
   SetVariable('varflt_', 0);
   Active:=False;
   Active:=True;
  end;

  OD_uslm.Active:=true;
  OD_usl_bills.Active:=true;
end;

procedure TForm_spr_usl.N1Click(Sender: TObject);
begin
  Application.CreateForm(TForm_add_usl, Form_add_usl);
  Form_add_usl.ShowModal;
end;

procedure TForm_spr_usl.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_spr_usl.N2Click(Sender: TObject);
begin
  if msg3('Удалить данную услугу?',
   'Внимание!',
     MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
      if msg3('БУДЕТ УДАЛЕНА ДЕЙСТВУЮЩАЯ УСЛУГА "'+
       Form_spr_usl.OD_usl.FieldByName('nm').AsString+'" ПОДТВЕРДИТЕ УДАЛЕНИЕ!',
       'Внимание!',
         MB_YESNO+MB_ICONSTOP) = IDYES then
      begin
        DataModule1.OraclePackage1.CallProcedure(
            'scott.utils.del_usl',
            [Form_spr_usl.OD_usl.FieldByName('usl').AsString]);
        OD_usl.Active:=False;
        OD_usl.Active:=True;
      end
      else
      begin
        msg2('Удаление услуги отменено!',
         'Внимание!', MB_OK+MB_ICONINFORMATION);
      end;
  end
  else
  begin
    msg2('Удаление услуги отменено!',
     'Внимание!', MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TForm_spr_usl.N3Click(Sender: TObject);
begin
  if msg3('Удалить главную услугу?',
   'Внимание!',
     MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
      if msg3('БУДЕТ УДАЛЕНА ГЛАВНАЯ УСЛУГА "'+
       Form_spr_usl.OD_uslm.FieldByName('nm1').AsString+'" ПОДТВЕРДИТЕ УДАЛЕНИЕ!',
       'Внимание!',
         MB_YESNO+MB_ICONSTOP) = IDYES then
      begin
        DataModule1.OraclePackage1.CallProcedure(
            'scott.utils.del_uslm',
            [Form_spr_usl.OD_uslm.FieldByName('uslm').AsString]);
        OD_uslm.Active:=False;
        OD_uslm.Active:=True;
      end
      else
      begin
        msg2('Удаление главной услуги отменено!',
         'Внимание!', MB_OK+MB_ICONINFORMATION);
      end;
  end
  else
  begin
    msg2('Удаление главной услуги отменено!',
     'Внимание!', MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TForm_spr_usl.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled:=False;
  if flt_ <> Edit1.Text then
  begin
    flt_:=Edit1.Text;
  end
  else if ((flt_ = Edit1.Text) and (flt_<>'')
    and (flt_ <> OD_usl.GetVariable('flt_')))
     then
  begin
  //Применить фильтр по выражению
    OD_usl.Active:=false;
    OD_usl.SetVariable('varflt_', 1);
    OD_usl.SetVariable('flt_', flt_);
    OD_usl.Active:=true;
  end
  else if (OD_usl.GetVariable('varflt_')=1) and (flt_='') then
  begin
  //Отменить фильтр по выражению
    OD_usl.Active:=false;
    OD_usl.SetVariable('varflt_', 0);
    OD_usl.Active:=true;
  end;
  Timer2.Enabled:=True;
end;

procedure TForm_spr_usl.Edit1Change(Sender: TObject);
begin
  Timer2.Enabled:=false;
  Timer2.Enabled:=true;
end;

procedure TForm_spr_usl.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
     wwDBGrid1.FixedCols:=4
  else
     wwDBGrid1.FixedCols:=0;

end;

end.
