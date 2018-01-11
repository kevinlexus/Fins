unit Unit_edit_pay_usl_org;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, Grids, Wwdbigrd, Wwdbgrid, Mask,
  wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, wwSpeedButton, wwDBNavigator,
  wwclearpanel, ExtCtrls, Utils, Math;

type
  TForm_edit_pay_usl_org = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    DS_kwtp_day: TDataSource;
    OD_usl: TOracleDataSet;
    OD_t_org: TOracleDataSet;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    OD_kwtp_dayKWTP_ID: TFloatField;
    OD_kwtp_daySUMMA: TFloatField;
    OD_kwtp_dayLSK: TStringField;
    OD_kwtp_dayOPER: TStringField;
    OD_kwtp_dayDOPL: TStringField;
    OD_kwtp_dayNKOM: TStringField;
    OD_kwtp_dayNINK: TFloatField;
    OD_kwtp_dayDAT_INK: TDateTimeField;
    OD_kwtp_dayPRIZNAK: TIntegerField;
    OD_kwtp_dayUSL: TStringField;
    OD_kwtp_dayORG: TFloatField;
    OD_kwtp_dayFK_DISTR: TFloatField;
    OD_kwtp_daySUM_DISTR: TFloatField;
    OD_kwtp_dayname_org: TStringField;
    OD_kwtp_dayname_usl: TStringField;
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
    OD_kwtp_day: TOracleDataSet;
    OD_kwtp_dayDTEK: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OD_kwtp_dayAfterOpen(DataSet: TDataSet);
    procedure calcFooter;
    procedure OD_kwtp_dayAfterInsert(DataSet: TDataSet);
    procedure OD_kwtp_dayAfterEdit(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
  private
    l_summa, l_pen: Double;
    l_chk: Integer;
    exit_: Integer;
  public
    { Public declarations }
  end;

var
  Form_edit_pay_usl_org: TForm_edit_pay_usl_org;

implementation
  uses
   Unit_month_payments, DM_module1;
  {$R *.dfm}

procedure exit_ok;
begin
 with Form_edit_pay_usl_org do
 begin
   if not (OD_kwtp_day.State in [dsBrowse]) then
     OD_kwtp_day.Post;
   calcFooter;
//   ShowMessage(FloatToStr(l_summa-Form_month_payments.OD_c_kwtp_mg.FieldByName('SUMMA').AsFloat));


   if (l_chk=1) then
   begin
      msg2('Поля организация и услуга не могут быть пустыми!',
               'Внимание!',
               MB_OK+MB_ICONQUESTION);
      Abort;
   end
   else if ((RoundTo(l_summa-Form_month_payments.OD_c_kwtp_mg.FieldByName('SUMMA').AsFloat,-2)) <> 0) then
   begin
    msg2('Распределение оплаты, не соответствует итоговой сумме!',
             'Внимание!',
             MB_OK+MB_ICONQUESTION);
    Abort;
   end
   else if ((RoundTo(l_pen-Form_month_payments.OD_c_kwtp_mg.FieldByName('PENYA').AsFloat,-2)) <> 0) then
   begin
    msg2('Распределение пени, не соответствует итоговой сумме!',
             'Внимание!',
             MB_OK+MB_ICONQUESTION);
    Abort;
   end
   else
   begin
     try
       OD_kwtp_day.Session.ApplyUpdates([OD_kwtp_day], True);
     except
        msg2('Ошибка при сохранении изменений!',
                 'Внимание!',
                 MB_OK+MB_ICONQUESTION);
        Abort;
     end;

     OD_kwtp_day.Session.Commit;
     exit_:=1;
   end;
 end;
end;

procedure exit_cancel;
begin
 with Form_edit_pay_usl_org do
 begin
    if not (OD_kwtp_day.State in [dsBrowse]) then
     OD_kwtp_day.Post;
    if (OD_kwtp_day.UpdatesPending=true)
     and (msg3('Сохранить изменения?',
         'Внимание!',
         MB_YESNO+MB_ICONQUESTION) = IDYES) then
    begin
      exit_ok;
    end
    else
    begin
      exit_:=0;
      OD_kwtp_day.CancelUpdates;
      OD_kwtp_day.Session.Rollback;
    end;
 end;
end;

procedure TForm_edit_pay_usl_org.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (exit_ <> 0) and (exit_ <> 1) then
    exit_cancel;
  Action:=caFree;
end;

procedure TForm_edit_pay_usl_org.FormCreate(Sender: TObject);
begin
  exit_:=2;
  l_chk:=1;
  OD_kwtp_day.SetVariable('P_ID',
    Form_month_payments.OD_c_kwtp_mg.FieldByName('ID').AsInteger);
  OD_kwtp_day.Active:=False;
  OD_kwtp_day.Active:=True;
  OD_usl.Active:=True;
  OD_t_org.Active:=True;
end;

procedure TForm_edit_pay_usl_org.Button1Click(Sender: TObject);
begin
  exit_ok;
  close;
end;

procedure TForm_edit_pay_usl_org.Button2Click(Sender: TObject);
begin
  exit_cancel;
  close;
end;

procedure TForm_edit_pay_usl_org.calcFooter;
begin
  l_summa:=0;
  l_pen:=0;
  l_chk:=0;
  OD_kwtp_day.First;
  while not OD_kwtp_day.Eof do
  begin
    if OD_kwtp_day.FieldByName('PRIZNAK').AsInteger=1 then
      l_summa:=l_summa+OD_kwtp_day.FieldByName('SUMMA').AsFloat
      else
      l_pen:=l_pen+OD_kwtp_day.FieldByName('SUMMA').AsFloat;
    if (OD_kwtp_day.FieldByName('usl').AsString='') or
       (OD_kwtp_day.FieldByName('org').AsString='') then
      l_chk:=1; 
    OD_kwtp_day.Next;
  end;
  OD_kwtp_day.Last;

  wwDBGrid1.ColumnByName('SUMMA').FooterValue :='Итого:';
  wwDBGrid1.ColumnByName('NAME_ORG').FooterValue :='Оплата '+FloatToStrF(l_summa, ffFixed, 10, 2);
  wwDBGrid1.ColumnByName('NAME_USL').FooterValue :='Пеня '+FloatToStrF(l_pen, ffFixed, 10, 2);
end;

procedure TForm_edit_pay_usl_org.OD_kwtp_dayAfterOpen(DataSet: TDataSet);
begin
  calcFooter;
end;

procedure TForm_edit_pay_usl_org.OD_kwtp_dayAfterInsert(DataSet: TDataSet);
begin
  OD_kwtp_day.FieldByName('LSK').AsString:=
    Form_month_payments.OD_c_kwtp_mg.FieldByName('LSK').AsString;
  OD_kwtp_day.FieldByName('OPER').AsString:=
    Form_month_payments.OD_c_kwtp_mg.FieldByName('OPER').AsString;
  OD_kwtp_day.FieldByName('DOPL').AsString:=
    Form_month_payments.OD_c_kwtp_mg.FieldByName('DOPL').AsString;
  OD_kwtp_day.FieldByName('NKOM').AsString:=
    Form_month_payments.OD_c_kwtp_mg.FieldByName('NKOM').AsString;
  OD_kwtp_day.FieldByName('NINK').AsInteger:=
    Form_month_payments.OD_c_kwtp_mg.FieldByName('NINK').AsInteger;
  OD_kwtp_day.FieldByName('KWTP_ID').AsInteger:=
    Form_month_payments.OD_c_kwtp_mg.FieldByName('ID').AsInteger;
  OD_kwtp_day.FieldByName('DAT_INK').AsDateTime:=
    Form_month_payments.OD_c_kwtp_mg.FieldByName('DAT_INK').AsDateTime;
  OD_kwtp_day.FieldByName('DTEK').AsDateTime:=
    Form_month_payments.OD_c_kwtp_mg.FieldByName('DTEK').AsDateTime;
//  OD_kwtp_day.FieldByName('PRIZNAK').AsInteger:=1;
  //распределено в ручную
  OD_kwtp_day.FieldByName('FK_DISTR').AsInteger:=10;
end;

procedure TForm_edit_pay_usl_org.OD_kwtp_dayAfterEdit(DataSet: TDataSet);
begin
  OD_kwtp_day.FieldByName('FK_DISTR').AsInteger:=10;
end;

procedure TForm_edit_pay_usl_org.Button3Click(Sender: TObject);
begin
 calcFooter;
end;

end.
