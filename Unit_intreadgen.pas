unit Unit_intreadgen;

interface

uses
  SysUtils, DateUtils, Classes, OracleData,  ActiveX, ComObj, ComCtrls, Oracle, StdCtrls, Graphics;

type
  InTreadGen = class(TThread)
  private
    OD_kart, OD_usl, OD_complus: TOracleDataSet;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    OraclePackage1: TOraclePackage;
    OracleSession1: TOracleSession;
    lsk_, lsk1_, lsk2_, mg_, sec_, server_: String;
    ComId_, proc_: Integer;
  procedure DoVisual;
  protected
    procedure Execute; override;
  public
    constructor Create (Label2: TLabel; ProgressBar2: TProgressBar; OD_kart1: TOracleDataSet;
      OD_usl1: TOracleDataSet; OraclePackage2: TOraclePackage; OracleSession2: TOracleSession; ComId: Integer; OD_complus1: TOracleDataSet;
      lsk1: String; lsk2: String; mg: String);
    property ReturnValue;
    property OnTerminate;
  end;

implementation

constructor InTreadGen.Create (Label2: TLabel; ProgressBar2: TProgressBar;
  OD_kart1: TOracleDataSet;
  OD_usl1: TOracleDataSet; OraclePackage2: TOraclePackage; OracleSession2:
  TOracleSession; ComId: Integer; OD_complus1: TOracleDataSet;
  lsk1: String; lsk2: String; mg: String);
begin
  OD_kart := OD_kart1;
  OD_usl := OD_usl1;
  OD_complus := OD_complus1;
  lsk1_ := lsk1;
  lsk2_ := lsk2;
  ComId_ := ComId;
  mg_ := mg;
  OraclePackage1 := OraclePackage2;
  OracleSession1 := OracleSession2;
  ProgressBar1 := ProgressBar2;
  Label1 := Label2;
  FreeOnTerminate := False;
  ReturnValue := 0;
  inherited Create(False);
end;

procedure InTreadGen.DoVisual;
begin
    ProgressBar1.Position := proc_;
    ProgressBar1.Refresh;
    Label1.Caption := 'оНРНЙ ╧ '+IntToStr(ComId_)+' ЯЕПБЕП: '+server_+' К/Я :'+lsk_+' яНРМЪ: '+sec_+' бШОНКМЕМН:'+IntToStr(proc_)+'%';
    if proc_ = 100 then
      Label1.Color := clLime;
end;

procedure InTreadGen.Execute;
Var
  obj : OleVariant;
  summa_, summa_s_,
  summa_pl_, summa_pl_norma, summa_pl_nor_o : Currency;
  i, i1, i2, i3, i4 : Integer;
  Time1 : TDateTime;
  UslArray: array[1..500] of String;
  UslArray1: array[1..500] of String;
begin
  CoInitialize(nil);
  Synchronize( DoVisual );
  OD_complus.Active:=false;
  OD_complus.SetVariable('ID', ComId_);
  OD_complus.Active:=true;
  server_:=OD_complus.FieldValues['server'];
  obj := CreateRemoteComObject(server_,
        StringToGUID(OD_complus.FieldValues['GUID'])) as IDispatch;
//  OD_kart.Active:=false;
//  OD_usl.Active:=false;
//  OD_kart.SetVariable('lsk1', lsk1_);
//  OD_kart.SetVariable('lsk2', lsk2_);
//  lsk_:=lsk1_+' '+lsk2_;
//  OD_kart.Active:=true;
//  OD_usl.Active:=true;
//  OD_kart.First;
//  i3:=OD_kart.RecordCount;
  //ВХЯРХЛ charges
//  OraclePackage1.CallProcedure
//       ('scott.GENERATOR.DELETE_CHARGES', [lsk1_, lsk2_]);
//  OraclePackage1.CallProcedure
//      ('scott.GENERATOR.DELETE_SUBSIDII', [lsk1_, lsk2_]);
  obj.d100 := Now();
  obj.kw_init;
  obj.make_charges ('(lsk=>"'+lsk1_+'" and lsk<="'+lsk2_+'")');

//  i2 := 1;
//  Time1 := Now();

  //гЮОНКМЪЕЛ ЛЮЯЯХБ СЯКСЦ
{    i4 := OD_usl.RecordCount;
    OD_usl.First;
    for i1 := 1 to i4 do
      begin
        UslArray[i1] := OD_usl.FieldByName('usl').AsString;
        UslArray1[i1] := OD_usl.FieldByName('prnksu').AsString;
        OD_usl.Next;
      end;
try
  for i := 1 to i3 do
   begin
    if Terminated then
      begin
      OD_complus.Active := false;
      OD_kart.Active := false;
      OD_usl.Active := false;
      exit;
      end;
    lsk_:=OD_kart.FieldByName('lsk').AsString;
    obj.take_lsk(lsk_);
      for i1 := 1 to i4 do
      begin
        summa_ := obj.getn(UslArray[i1]);
        //оЕПЕЛЕММШЕ, ДКЪ БШЦПСГЙХ Б kartw
        summa_pl_ := obj.pl_;
        summa_pl_norma := obj.pl_norma;
        summa_pl_nor_o := obj.pl_nor_o;
        if Length(UslArray1[i1]) > 0 then
          begin
           summa_s_ := obj.gets(UslArray[i1]);
            // яСАЯХДХЪ
            if summa_s_ <> 0  then
             OraclePackage1.CallProcedure
                ('scott.GENERATOR.INSERT_SUBSIDII', [lsk_, UslArray[i1], mg_, summa_s_]);
          end;
            // мЮВХЯКЕМХЕ
        if summa_ <> 0 then
         OraclePackage1.CallProcedure
             ('scott.GENERATOR.INSERT_CHARGES', [lsk_, UslArray[i1], mg_, summa_]);

       end;
    OD_kart.Next;
    if i2 = 100 then
     begin
        Synchronize( DoVisual );
        i2 := 0;
        proc_:= Round(i/i3*100);
        sec_:=IntToStr(Round(MilliSecondsBetween(Now, Time1)/1000))+' Я.';
        Time1 := Now(); // оепедекюрэ
        OracleSession1.Commit;
// оепедекюрэ! // оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!
// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!
// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!// оепедекюрэ!
     end;
    i2 := i2+1;
   end;
  except
   lsk_:='нЬХАЙЮ Б ОНРНЙЕ!';
   Synchronize( DoVisual );
  end;
  OracleSession1.Commit;}
  lsk_:='бШОНКМЕМН!';
  proc_:=100;
  Synchronize( DoVisual );
 CoUninitialize;
end;

end.
