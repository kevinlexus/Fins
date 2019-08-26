unit Unit_dvb_connect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, DVButils, wwdblook, Utils, 
  wwriched, Mask, DBCtrlsEh, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Oracle;


type
  TForm_dvb_connect = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    OD_base: TOracleDataSet;
    Button4: TButton;
    OD_usl: TOracleDataSet;
    OD_uslNM: TStringField;
    OD_uslUSL: TStringField;
    OD_uslN_PROGS: TFloatField;
    DS_usl: TDataSource;
    OD_count: TOracleDataSet;
    GroupBox2: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    DBEditEh1: TDBEditEh;
    CheckBox1: TCheckBox;
    DataSource1: TDataSource;
    StaticText1: TStaticText;
    Memo1: TMemo;
    wwDBGrid1: TwwDBGrid;
    CheckBox2: TCheckBox;
    Panel1: TPanel;
    CheckBox3: TCheckBox;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure DBEditEh1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CheckBox3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure unload;
  public
    { Public declarations }
  end;

var
  Form_dvb_connect: TForm_dvb_connect;
  dvb: DVButils.dvbBase;

implementation

uses DM_module1, Unit_Mainform;
{$R *.dfm}

procedure TForm_dvb_connect.FormCreate(Sender: TObject);
begin
  AutoSize:=Active;
  DBEditEh1.Text:=DataModule1.OraclePackage1.CallStringFunction
       ('scott.Utils.get_str_param', ['PATH_EXP_DVB']);
  CheckBox3.Caption:='¬ыгружать каждые '+DataModule1.OraclePackage1.CallStringFunction
       ('scott.Utils.get_int_param', ['INTERVAL_EXP_DVB'])+' минут';
  Timer1.Interval:=DataModule1.OraclePackage1.CallIntegerFunction
       ('scott.Utils.get_int_param', ['INTERVAL_EXP_DVB'])*60*1000;
  dvb:=dvbBase.create;
  OD_usl.Active:=true;
  wwDBLookupCombo1.LookupValue:=
    OD_usl.FieldByName('usl').AsString;
end;

procedure TForm_dvb_connect.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_dvb_connect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_dvb_connect.Button4Click(Sender: TObject);
var
  id_dvb_, a, b, c: Integer;
  lsk_, str_, strtemp_: string;
begin
  unload;
end;

procedure TForm_dvb_connect.unload;
var
  id_dvb_, a, b, c: Integer;
  lsk_, str_, strtemp_: string;
begin
  if CheckBox3.Checked then
  begin
    Timer1.Enabled:=False;
  end;
  Panel1.Visible:=True;
  Update;
  //—формировать предварительно исход€щее сальдо
  if CheckBox2.Checked then
  DataModule1.OraclePackage1.CallProcedure
         ('scott.C_CPENYA.gen_charge_pay_full',
          [parNone]);


  dvb.beginWrite(DBEditEh1.Text+'\user.bin');
  try
  //«апись в файл кол-во абонентов
  OD_count.Active:=false;
  OD_count.Active:=true;
  dvb.writeStr(OD_count.FieldByName('cnt').AsString, 10, 4, 1, 1);

  OD_base.Active:=false;
  OD_base.Active:=true;

  OD_base.First;
  lsk_:='';
  for a:=1 to OD_base.RecordCount do
  begin
  if lsk_ <> OD_base.FieldByName('lsk').AsString then
  begin
    if lsk_ <> '' then
    begin
      //«апись в файл строки
      //следующ 4 байта - ID абонента в формате (N_декодера-1)*2
      dvb.writeStr(IntToStr((id_dvb_-1)*2), 10, 4, 1, 1);
      //затем 124 байта флагов - по 2 байта на ствол(макс 62 ствола) 1-
      //можно декодировать, 0 - нельз€ (в 2-чной системе)
      b:=0;
      c:=1;
      while c <= 62 do
      begin
        //прибавл€ем магическое число 80Hex, если указанно
        if CheckBox1.Checked then
          strtemp_:=simplBitSum(Copy(str_, b+1, 16), lpad('1000000000000000',16))
         else
          strtemp_:=Copy(str_, b+1, 16);
        b:=b+16;
        dvb.writeStr(strtemp_, 2, 2, 1, 1);
        Inc(c);
      end;
      //в конце 4 байта - остаток денег на счету в копейках (при этом
      //абонент сможет посмотреть свой остаток) (пока - нули)
      dvb.writeStr('0', 10, 4, 1, 1);
    end;
      lsk_:=OD_base.FieldByName('lsk').AsString;
      str_:=OD_base.FieldByName('mask').AsString;
      id_dvb_:=OD_base.FieldByName('id_dvb').AsInteger;
  end
  else
  begin
    str_:=simplBitSum(str_, OD_base.FieldByName('mask').AsString);
  end;

  OD_base.Next;
  end;

    if lsk_ <> '' then
    begin
      //«апись в файл последней строки
      //следующ 4 байта - ID абонента в формате (N_декодера-1)*2
      dvb.writeStr(IntToStr((id_dvb_-1)*2), 10, 4, 1, 1);
      //затем 124 байта флагов - по 2 байта на ствол(макс 62 ствола) 1-
      //можно декодировать, 0 - нельз€ (в 2-чной системе)
      b:=0;
      c:=1;
      while c <= 62 do
      begin
        //прибавл€ем магическое число 80Hex, если указанно
        if CheckBox1.Checked then
          strtemp_:=simplBitSum(Copy(str_, b+1, 16), lpad('1000000000000000',16))
         else
          strtemp_:=Copy(str_, b+1, 16);
        b:=b+16;
        dvb.writeStr(strtemp_, 2, 2, 1, 1);
        Inc(c);
      end;
      //в конце 4 байта - остаток денег на счету в копейках (при этом
      //абонент сможет посмотреть свой остаток) (пока - нули)


 {     if OD_base.FieldByName('sign_summa').AsInteger > 0 then
      begin
        //положительное число

      end
      else
      begin
        //отрицательное число

      end;
      strtemp_:=Convert(OD_base.FieldByName('summa2').AsInteger, 10, 2);
      strtemp_:=lpad(strtemp_, 32);
      strtemp_:=simplBitInvrt(strtemp_);
      strtemp_:=simplBitSum(Copy(str_, b+1, 16), lpad('1000000000000000',16))
   }
   
      dvb.writeStr('0', 10, 4, 1, 1);
  //  writeStr('22222222', 10, 4, 1, 1); //запись дес€тичного числа с увеличением лидирующих 0 до 4 байт мл.байтом вперед

    end;
    finally
      dvb.endWrite;
      Panel1.Visible:=False;
    end;

  if CheckBox3.Checked then
  begin
    Timer1.Enabled:=True;
  end;
end;

procedure TForm_dvb_connect.DBEditEh1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  DBEditEh1.Text:=selectDir(Self.Handle);
end;

procedure TForm_dvb_connect.CheckBox3Click(Sender: TObject);
begin
{  if CheckBox3.Checked then
  begin
    if msg3('—вернуть приложение?', '¬нимание!', MB_YESNO+MB_ICONQUESTION)= ID_YES then
    begin
      Form_main.CoolTrayIcon1.ShowTaskbarIcon;
      Form_main.CoolTrayIcon1.HideMainForm;
    end;
    Timer1.Enabled:=True;
    Form_main.CoolTrayIcon1.CycleInterval:=1000;
    Form_main.CoolTrayIcon1.CycleIcons:=True;
  end
    else
  begin
    Timer1.Enabled:=False;
  end;
        }
end;

procedure TForm_dvb_connect.Timer1Timer(Sender: TObject);
begin
  //¬ыгрузить битмэпы
  unload;
end;

end.
