program runext_d6;
{$APPTYPE CONSOLE}
{$I-}{$h+}
uses
  Forms,
  Classes,
  System,
  SysUtils,
  Variants,
  TypInfo,
  Windows,
  IniFiles,
  Dialogs,
  Printers,
  ComCtrls,
  ComObj,
  ActiveX,
  DateUtils,
  frxClass,
  ExtCtrls,
  StrUtils;

type
 TGlobal = Record
  ECR: OLEVariant;
  {ECR: TFprnM45;}
  c_comm:String;
  c_otc_par:String;
  n_a_command:Integer;
  a_command:array of array[1..2] of String;
  n_stroka:Integer;
  p_s1: String;
  p_s2: String;
  p_path: String;
  p_codepage: Integer;
  p_typefisc: String;
  p_waitms: Integer;
  p_lencheck: Integer;
 end;
 TParam = Record
  cfile:String;
  f_out: String[250]; //f_out,''
  //p_prog=1 'fiscal'
  case p_prog:Integer of
   1:
    (typ_fisc: Integer;  //typ_fisc 1 - atol,2 - shtrih-m
    typ_mod: Integer; //typ_mod
    typ_smena: Integer; //typ_smena,0
    typ_check: String[10];//typ_check,'0'
    sum_check: Real;//sum_check,'0.00'
    nm_oper: String[25]; //no,''
    setfull: Integer;//sf,'0'
    dat_b: TDateTime;//db,'  /  /    '
    dat_n: Integer;//dn,'0'
    sm_b: Integer;//sb,'0'
    sm_e: Integer);//se,'0'
   2:
    (lshow:Integer;//-1 -печать,0 -печать выбор принтера,1 -просмотр
    lalbom:Integer;//0 ,1 -альбомный
    nFontSize:Integer;//7 -размер шрифта
    nLeft:Integer;)//7 - отступ слева
  end;
 TStringDS=class(TfrxUserDataSet)
  public
  procedure StringDSOnGetValue(const VarName: String; var Value: Variant);
 end;
var
 Application: TApplication;
 Global: TGlobal;
 Param: TParam;
 lret_p,npage,nrec_old:Integer;
 p_comp,p_kassir,p_param,p_prog,cstr:String;
 p_par_a:TStringList;
 StringDS: TfrxUserDataSet;
 sl: TStringList;
 f_ftest:TextFile;

 {Установка режима}
function fiscal_set_mode(p_typf:Integer;p_nmode:Integer):Integer;
var
 lret_s:Integer;
begin
 lret_s:=0;
 if (p_typf in [1,4]) then
  if (Global.ECR.Mode<>p_nmode) then
   begin
    Global.ECR.ResetMode;
    if (p_nmode>0) then
     begin
      Global.ECR.Mode := p_nmode;
      lret_s:=Global.ECR.SetMode
     end
   end;
 Result:=lret_s
end;
{Чтение ошибки фискального драйвера}
function fiscal_error(p_typf:Integer;pret_e:Integer):Integer;
 const
  f_log='err_fisc.log';
 var mErr: String;
  n_f_err: TextFile;
  lret_e: Integer;
begin
 lret_e:=pret_e;
 if (p_typf in [2,3]) then
  if (lret_e>0) then
    lret_e:=-3000+(-1)*lret_e;
 if (lret_e<0) then
  begin
   mErr:= DateTimeToStr(Now)+' Ошибка: ' +IntToStr(lret_e);//+Global.ECR.ResultDescription;
   if (Global.n_stroka>0) then
    mErr:=mErr+' Строка в файле:'+IntToStr(Global.n_stroka);
   mErr:=mErr+Global.c_otc_par+' '+Global.c_comm;
   AssignFile(n_f_err,Global.p_path+f_log);
   if (IOResult=0) then
    begin
     if FileExists(Global.p_path+f_log) then
      Append(n_f_err)
     else
      Rewrite(n_f_err);
     WriteLn(n_f_err,mErr);
     CloseFile(n_f_err)
    end;
   { если есть открытый чек, то отменяем его}
   if (p_typf in [1,4]) then
    begin
     if ((lret_e<>-1) or (lret_e<>-11))  then
      if Global.ECR.CheckState <> 0  then
       Global.ECR.CancelCheck
    end
   {else
   begin
    if (lret_e<>0) and (lret_e<>-11)  then
    begin
     if Global.ECR.ECRMode = 8  then
     begin
      if Global.ECR.ECRAdvancedMode = 3  then
      begin
       Global.ECR.ContinuePrint;
       sleep(Global.p_waitms);
      end;
      Global.ECR.CancelCheck;
     end;
    end;
   end;}
  end;
 Result:=lret_e
end;
{Проверка состояния устройства}
function fiscal_sos(p_typf:Integer):Integer;
var
 lret_g: Integer;
begin
 lret_g:=0;
 if (p_typf in [1,4]) then
  lret_g:=Global.ECR.GetStatus
 else
  lret_g:=Global.ECR.GetShortECRStatus;
 Global.c_comm:='';
 if (lret_g=0) then
  begin
   Global.c_comm:='CheckPaperPresent';
   if (p_typf in [1,4]) then
    begin
     if (Global.ECR.CheckPaperPresent=False) then
      begin
       if (Global.p_waitms>0) then
        begin
         lret_g:=0;
         sleep(Global.p_waitms);
         lret_g:=Global.ECR.GetStatus;
        end;
       if (lret_g=0) then
        if (Global.ECR.CheckPaperPresent=False) then
         lret_g:=-40003;
      end
    end
   else
    if (Global.ECR.ReceiptRibbonIsPresent=False) then
     begin
      if (Global.p_waitms>0) then
       begin
        lret_g:=0;
        sleep(Global.p_waitms);
        lret_g:=Global.ECR.GetShortECRStatus
       end;
      if (lret_g=0) then
       if (Global.ECR.ReceiptRibbonIsPresent=False) then
        lret_g:=-40003;
     end
  end;
 if (lret_g=0) then
  begin
   Global.c_comm:='CoverOpened';
   if (p_typf in [1,4]) then
    begin
     if (Global.ECR.CoverOpened=True) then
      lret_g:=-40004
    end
   else
    if (Global.ECR.LidPositionSensor=True) then
     lret_g:=-40004;
  end;
 if (lret_g=0) then
  Global.c_comm:='';
 Result:=lret_g
end;
{печать}
function fiscal_print (p_typf:Integer;p_param: String;p_stroka: String):Integer;
 var nat,lret_p,n_n_i,n_n_n,n_i,n_n,n_old,nn_b:Integer;
  cc_o,l_str:String;
  l_chr_b:String;
  //f_flogfisc:TextFile;
begin
 lret_p:=fiscal_set_mode(p_typf,1);
 if (lret_p=0) then
  begin
   if (p_typf in [1,4]) then
    Global.ECR.Caption:=p_stroka
   else if (Length(p_stroka)<=Global.p_lencheck) then
    Global.ECR.StringForPrinting:=p_stroka;
   if (p_param='ptc') then
    if (p_typf in [1,4]) then
     lret_p:=Global.ECR.PrintHeader
    else
     begin
      lret_p:=Global.ECR.PrintDocumentTitle;
      sleep(Global.p_waitms)
     end
   else if (p_param='pbc') and (p_typf in [1,4]) then
    lret_p:=Global.ECR.PrintFooter
   else if (p_param='cut') then
    begin
     if (p_typf in [1,4]) then
      lret_p:=Global.ECR.FullCut
     else
      begin
       Global.ECR.StringQuantity:=10;
       Global.ECR.FeedDocument;
       sleep(Global.p_waitms);
       n_old:=Global.ECR.CutType;
       Global.ECR.CutType:=2;
       lret_p:=Global.ECR.CutCheck;
       Global.ECR.CutType:=n_old;
       sleep(Global.p_waitms)
      end
    end
   else
    begin
     if (length(trim(p_stroka))>0) or (p_typf<>1) then
      begin
       nat:=pos('=',p_param);
       if (nat=0) then
        begin
         if (p_typf in [1,4]) then
          lret_p:=Global.ECR.PrintString
         else
          begin
           nn_b:=Global.p_lencheck;
           n_i:=1;
           n_n_i:=0;
           //n_n:=((Length(p_stroka) div nn_b)+1)*nn_b;
           n_n:=Length(p_stroka);
           n_n_n:=(n_n div nn_b)+1;
           repeat
            l_str:=copy(p_stroka,n_i,nn_b);
            l_chr_b:=copy(p_stroka,n_i+nn_b,1);
            if (l_chr_b<>Chr(32)) and (l_chr_b<>'') then
             begin
              nn_b:=LastDelimiter(' ',l_str) ;
              if nn_b>0 then
               l_str:=copy(p_stroka,n_i,nn_b)
              else
               nn_b:=Global.p_lencheck;
             end;
            Global.ECR.StringForPrinting:=l_str;
            if ((l_str<>'') and (n_n_i+1=n_n_n)) or (n_n_i+1<n_n_n) then
             lret_p:=Global.ECR.PrintString;
            n_i:=n_i+nn_b;
            n_n_i:=n_n_i+1;
            nn_b:=Global.p_lencheck
           until n_n_i>=n_n_n
          end
        end
       else
        begin
         cc_o:=copy(p_param,nat+1,length(p_param)-nat);
         if (p_typf in [1,4]) then
          begin
           Global.ECR.RecFontHeight:=StrToInt(cc_o);
           lret_p:=Global.ECR.PrintField;
           Global.ECR.RecFontHeight:=0
          end
         else
          begin
           Global.ECR.FontType:=StrToInt(cc_o);
           nn_b:=Global.p_lencheck;
           n_i:=1;
           n_n_i:=0;
           n_n:=Length(p_stroka);
           n_n_n:=(n_n div nn_b)+1;
           repeat
            l_str:=copy(p_stroka,n_i,nn_b);
            l_chr_b:=copy(p_stroka,n_i+nn_b,1);
            if (l_chr_b<>Chr(32)) and (l_chr_b<>'') then
             begin
              nn_b:= LastDelimiter(' ',l_str);
              if nn_b>0 then
               l_str:=copy(p_stroka,n_i,nn_b)
              else
               nn_b:=Global.p_lencheck;
             end;
            Global.ECR.StringForPrinting:=l_str;
            if ((l_str<>'') and (n_n_i+1=n_n_n)) or (n_n_i+1<n_n_n) then
             lret_p:=Global.ECR.PrintStringWithFont;
            n_i:=n_i+nn_b;
            n_n_i:=n_n_i+1;
           until n_n_i>=n_n_i;
           Global.ECR.FontType:=0
          end
        end
      end
    end
  end;
 Result:=lret_p
end;
{Настройка фискальника}
function fiscal_setup(p_typf:Integer;p_set:Integer):Integer;
var
 {n_ats,}ni_is,n_v,lret_t{,ni_p_set,n_pos_s}:Integer;
 c_v{,cf_par,cc}: String;
 pIni: TIniFile;
 {nf_is: TextFile;
 a_fiscal: array of array[1..2] of String;}

begin
 lret_t:=0;
 if (FileExists(Global.p_path+'fiscal.cfg')) then
  try
   pIni:= TIniFile.Create(Global.p_path+'fiscal.cfg');
  except
   lret_t:=-40005;
  end
 else
  lret_t:=-40005;
 if (lret_t=0) then
  begin
   {номер порта}
   Global.c_comm:='p_com';
   c_v:=pIni.ReadString('base','p_com','1');
   if (p_typf>1) then
    begin
     if (Global.ECR.PortNumber<>StrToInt(c_v)) then
      Global.ECR.PortNumber:=StrToInt(c_v)
     else if (Global.ECR.PortNumber<>StrToInt(c_v)-1) then
      Global.ECR.PortNumber:=StrToInt(c_v)-1
    end;
   {пароль}
   Global.c_comm:='p_pass';
   c_v:=pIni.ReadString('base','p_pass','30');
   if (Global.ECR.Password<>c_v) then
    Global.ECR.Password:=c_v;
  // {тип фискальника}
  // Global.c_comm:='p_typefisc';
 //  c_v:=pIni.ReadString('base','p_typefisc','');
 //  if (Global.p_typefisc<>c_v) then
  //  Global.p_typefisc:=c_v;
   {задержка ms}
   Global.c_comm:='p_waitms';
   c_v:=pIni.ReadString('base','p_waitms','0');
   if (Global.p_waitms<>StrToInt(c_v)) then
    Global.p_waitms:=StrToInt(c_v);
   c_v:=pIni.ReadString('setup'+Global.p_typefisc,Global.c_comm,'-1');
   if (Global.p_waitms<>StrToInt(c_v)) then
    Global.p_waitms:=StrToInt(c_v);
   {}
   Global.c_comm:='p_s1';
   Global.p_s1:=pIni.ReadString('base','p_s1','#');
   {}
   Global.c_comm:='p_s2';
   Global.p_s2:=pIni.ReadString('base','p_s2','#');
   {}
   Global.c_comm:='p_path';
   c_v:=pIni.ReadString('base','p_path',' ');
   if (Length(Trim(c_v))>0) then
    Global.p_path:=c_v;
   {}
   Global.c_comm:='p_codepage';
   Global.p_codepage:=pIni.ReadInteger('base','p_codepage',1251);
   Global.c_comm:='p_lencheck';
   c_v:=pIni.ReadString('setup'+Global.p_typefisc,Global.c_comm,'-1');
   if (c_v<>'-1') then
    Global.p_lencheck:=StrToInt(c_v);
   if (p_set=1) then
    for ni_is:=1 to 7 do
     begin
      n_v:=0;
      case ni_is of
       {ширина ленты 32,40,56}
       1:
        begin
         n_v:=200;
         Global.c_comm:='p_lencheck';
        end;
       {Межсимвольный интервал}
       2:
        begin
         n_v:=212;
         Global.c_comm:='p_glen';
        end;
       {Множитель по горизинтали 1-менее,3-более}
       3:
        begin
         n_v:=64;
         Global.c_comm:='p_gmn';
        end;
       {Расширенная печать регистрации}
       4:
        begin
         Global.c_comm:='p_recadv';
         c_v:=pIni.ReadString('setup'+Global.p_typefisc,Global.c_comm,'-1');
         if (c_v<>'-1') and (p_typf in [1,4]) then
          if (Global.ECR.AdvancedRegistration<>(StrToInt(c_v)<>0)) then
           Global.ECR.AdvancedRegistration:=(StrToInt(c_v)<>0)
        end;
       {Шрифт 0- на машине,1-8x6,2-7x6,3-6x6,4-5x6}
        5:
         begin
          Global.c_comm:='p_recfont';
          c_v:=pIni.ReadString('setup'+Global.p_typefisc,Global.c_comm,'-1');
          if (c_v<>'-1') and (p_typf in [1,4]) then
           if (Global.ECR.RecFont<>StrToInt(c_v)) then
            Global.ECR.RecFont:=StrToInt(c_v)
         end;
       {Расширение по высоте 0- на машине,1-растянутый,2-отсутсвует,3-единичная}
       6:
        begin
         n_v:=201;
         Global.c_comm:='p_recfonth';
        end;
       {Global.ECR.RecFontHeight=c_v}
       {Межстрочный интревал -19..255}
       7:
        begin
         n_v:=60;
         Global.c_comm:='p_reclinesp'
        end;
      end;
      if (n_v>0) then
       begin
        lret_t:=fiscal_set_mode(p_typf,4);
        if (lret_t=0) then
         begin
          c_v:=pIni.ReadString('setup'+Global.p_typefisc,Global.c_comm,'-1');
          if (c_v<>'-1') then
           begin
            if (p_typf in [1,4]) then
             begin
              Global.ECR.ValuePurpose:=n_v;
              Global.ECR.Value:=StrToInt(c_v);
              lret_t:=Global.ECR.SetValue;
             //lret_t:=Global.ECR.ResultCode
             end
           end
          else
           break
         end
       end
     end
  end;
 if (lret_t=0) then
  Global.c_comm:='';
 pIni.Free;
 Result:=lret_t
end;
{Инициализация}
function fiscal_init(p_typf:Integer;p_sel:Integer):Integer;
var lret_i: integer;
begin
 lret_i:=0;
 if p_sel>0 then
  begin
   //
   CoInitialize(nil);
   //;
   if (p_typf in [1,4]) then
    begin
     Global.ECR :=CreateOleObject('AddIn.FprnM45');
     Global.ECR.TextWrap:=1;
     Global.ECR.CheckType:=1;
     Global.ECR.TypeClose:=0;
     Global.ECR.OperationType:=0;
     try
      Global.ECR.DeviceEnabled := True;
     except
     end;
     lret_i:=fiscal_sos(p_typf);
     if ((p_sel=1) or (p_sel=3)) then
      { если есть открытый чек, то отменяем его}
      if ((lret_i<>-1) or (lret_i<>-11))  then
       begin
        if Global.ECR.CheckState <> 0  then
         Global.ECR.CancelCheck
       end;
     if (lret_i=0) then
       lret_i:=fiscal_set_mode(p_typf,1);
     if (lret_i<>-1) then
      if Global.ECR.CheckState <> 0  then
       Global.ECR.CancelCheck;
     if (lret_i=0) then
      lret_i:=fiscal_setup(p_typf,0);
     fiscal_error(p_typf,lret_i);
     if ((((lret_i=-3802) or (lret_i=-3822)) and (p_sel=2)) or ((lret_i=-3822) and (p_sel=3)) ) then
      lret_i:=0;
     if (p_sel=0) then
      Global.ECR.DeviceEnabled := False;
    end
   else
    begin
     try
      Global.ECR :=CreateOleObject('AddIn.DrvFR');
     except
     end;
     if (Global.ECR.ResultCode=-3) then
      lret_i:=-11;
     if (lret_i=0) then
      begin
       lret_i:=Global.ECR.Connect;
       if (lret_i=0) then
        begin
         lret_i:= Global.ECR.GetECRStatus;
         if (lret_i=0) then
          begin
           Global.ECR.CheckType:=1;
           lret_i:=fiscal_sos(p_typf)
          end
        end
      end;
     if (p_typf>=4) and (p_typf<=6) then
     begin
      Global.ECR :=CreateOleObject('AddIn.FprnM45');
      
      Global.ECR.TextWrap:=1;
      Global.ECR.CheckType:=1;
      Global.ECR.TypeClose:=0;
      Global.ECR.OperationType:=0;
      try
       Global.ECR.DeviceEnabled := True;
      except
      end;
     end;
     if (lret_i=0) then
      lret_i:=fiscal_setup(p_typf,0);
     if ((p_sel=1) or (p_sel=3)) then
      { если есть открытый чек, то отменяем его}
      if ((lret_i<>-1) or (lret_i<>-11))  then
      begin
       if Global.ECR.ECRMode=8  then
       begin
        if Global.ECR.ECRAdvancedMode = 3  then
        begin
         Global.ECR.ContinuePrint;
         sleep(Global.p_waitms);
        end;
        lret_i:=Global.ECR.CancelCheck;
        sleep(Global.p_waitms);
       end;
       lret_i:= Global.ECR.GetECRStatus;
      end;
     if (p_typf<>1) then
      //Чек не закрыт
      if (lret_i=74) or (Global.ECR.ECRMode=8) then
       lret_i:=-3802
        //24 часа
      else if (lret_i=78) or (Global.ECR.IsFM24HoursOver=True) then
       lret_i:=-3822;
     fiscal_error(p_typf,lret_i);
     if ((((lret_i=-3802) or (lret_i=-3822)) and (p_sel=2)) or ((lret_i=-3822) and (p_sel=3)) ) then
      lret_i:=0;
     if (p_sel=0) then
      Global.ECR.Disconnect
    end
  end;
 Result:=lret_i
end;
{Настройка клише}
function fiscal_set_clishe(p_typf:Integer;p_typ:String;p_nstroka:Integer;p_stroka:String):Integer;
var lret_s:Integer;
begin
 lret_s:=0;
 if ((p_typ='k') and (p_nstroka>=0) and (p_nstroka<=5)) then
  p_typ:='k';
 if ((p_typ='kr') and (p_nstroka>=0) and (p_nstroka<=19)) then
  begin
   p_typ:='kr';
   p_nstroka:=69+p_nstroka;
  end
 else
  p_typ:='p';
 if (p_typ<>'p') then
  begin
   lret_s:=fiscal_set_mode(p_typf,4);
   if (lret_s=0) and (p_typf in [1,4]) then
    begin
     Global.ECR.CaptionPurpose:=p_nstroka;
     Global.ECR.Caption:=p_stroka;
     lret_s:=Global.ECR.SetCaption;
     //lret_s:=Global.ECR.ResultCode
    end
   else
    lret_s:=fiscal_print(p_typf,'p',p_stroka);
  end;
 Result:=lret_s
end;
{Чек}
function fiscal_open_check(p_typf:Integer;p_oper:String):Integer;
var n_pos,lret_o,n_regold,n_check:Integer;
begin
 lret_o:=fiscal_set_mode(p_typf,1);
 n_check:=0;
 if (p_typf in [1,4]) then
  begin
   if (Global.ECR.CheckState=0) then
    begin
     n_regold:=Global.ECR.RegisterNumber;
     Global.ECR.RegisterNumber:=19;
     Global.ECR.GetRegister
    end;
    n_check:=Global.ECR.CheckState
  end
 else
  if (Global.ECR.ECRMode=8) then
   n_check:=1;
 if ((lret_o=0) and (n_check=0)) then
  begin
   {p_oper= 'r' - продажа
    p_oper= 'a' - продажа возврат
    p_oper= 'v' - продажа анулирование
     открытие чека продаж}
   if (p_typf in [1,4]) then
    n_pos:=pos(UpperCase(p_oper),'RAV')
   else
    begin
     n_pos:=pos(UpperCase(p_oper),'R A V')-1;
     if n_pos>3 then
      n_pos:=2;
    end;
   Global.ECR.CheckType:=n_pos;
   lret_o:=Global.ECR.OpenCheck;
   //lret_o:=Global.ECR.ResultCode
  end;
 if (p_typf in [1,4]) then
  Global.ECR.RegisterNumber:=n_regold
 else
  Global.ECR.GetECRStatus;
 Result:=lret_o
end;
{внесение денег}
function fiscal_vnesen(p_typf:Integer;p_check:String;p_sumcl:Real):Integer;
var lret_v: Integer;
begin
 lret_v:=0;
 if (p_typf in [1,4]) then
  lret_v:=fiscal_set_mode(p_typf,1);
 if (lret_v=0) then
  begin
   if (p_typf in [1,4]) then
    Global.ECR.Summ := p_sumcl
   else
    Global.ECR.Summ1 := p_sumcl;
   if (p_typf>1) then
    if (Global.ECR.IsFMSessionOpen=False) then
     lret_v:=Global.ECR.OpenSession;
   if (lret_v=0) then
    if (UpperCase(p_check)='O') then
     lret_v:=Global.ECR.CashOutcome
    else
     lret_v:=Global.ECR.CashIncome;
  end;
 if (p_typf>1) and (lret_v=0) then
  begin
   Sleep(Global.p_waitms);
   fiscal_print(p_typf,'cut','')
  end;
 Result:=lret_v
end;

{Чек регистр}
function fiscal_check_registr(p_typf:Integer;p_oper:String;p_v:String):Integer;
var
 n_pos_r,ni,lret_r: Integer;
 Reg: TStringList;
begin
 reg:=TStringList.Create;
 reg.Delimiter:=',';
 reg.DelimitedText:=p_v;
 lret_r:=fiscal_open_check(p_typf,p_oper);
 if (lret_r=0) then
  begin
  {продажа p_oper='r'
   регистрация продажи}
   for ni:=reg.Count+1 to 4 do
    reg.add('');
   if (p_typf in [1,4]) then
    Global.ECR.Name:=Trim(reg[3])
   else
    Global.ECR.StringForPrinting:=copy(reg[3],1,Global.p_lencheck);
   Global.ECR.Price:=StrToFloat(reg[0]);
   Global.ECR.Quantity:=StrToInt(reg[2]);
   Global.ECR.Department:=StrToInt(reg[1]);
   n_pos_r:=pos(UpperCase(p_oper),'RAV');
   if (p_typf in [1,4]) then
    case n_pos_r of
     1: lret_r:=Global.ECR.Registration;
     2: lret_r:=Global.ECR.Return;
    else
     lret_r:=Global.ECR.Annulate;
    end
   else
    begin
     case n_pos_r of
      1: lret_r:=Global.ECR.Sale;
      2: lret_r:=Global.ECR.ReturnSale;
     else
      lret_r:=Global.ECR.Storno;
     end;
     sleep(Global.p_waitms);
    end
  end;
 Result:=lret_r
end;

function fiscal_check_close(p_typf:Integer;p_close:String;p_typchk:Integer;p_sumcl:Real):Integer;
var lret_c:Integer;
 n_old:Integer;
 l_sumcl:Real;
begin
 lret_c:=fiscal_set_mode(p_typf,1);
 l_sumcl:=p_sumcl;
 if (lret_c=0) then
  if (p_typf in [1,4]) then
   begin
    Global.ECR.Summ:=p_sumcl;
    Global.ECR.TypeClose := p_typchk;
    if ((p_close='csd') and (p_sumcl>0.00)) then
     lret_c:=Global.ECR.Delivery
    else
     if ((p_close='csp') and (p_sumcl>0.00)) then
      lret_c:=Global.ECR.Payment
     else
      begin
       n_old:=Global.ECR.RegisterNumber;
       Global.ECR.RegisterNumber:=20;
       Global.ECR.GetRegister;
       Global.ECR.RegisterNumber:=n_old;
       if (Global.ECR.Remainder>0) then
        begin
         Global.ECR.Summ:=Global.ECR.Remainder;
         lret_c:=Global.ECR.Payment;
        end;
       lret_c:=Global.ECR.CloseCheck
      end
   end
  else
   begin
    if ((p_close='csp') and (l_sumcl>0.00)) then
     Global.ECR.Summ4:=l_sumcl;
    if (l_sumcl=0.00) or (p_close='csp') then
     begin
      n_old:=Global.ECR.RegisterNumber;
      Global.ECR.RegisterNumber:=Global.ECR.CheckType;
      Global.ECR.GetCashReg;
      sleep(Global.p_waitms);
      Global.ECR.RegisterNumber:=n_old;
      if (Global.ECR.ContentsOfCashRegister>0) then
       l_sumcl:=Global.ECR.ContentsOfCashRegister;
     end;
    if (p_typchk=0) then
     Global.ECR.Summ1:=l_sumcl
    else
     if (p_close='csp') then
      Global.ECR.Summ1:=l_sumcl-Global.ECR.Summ4
     else
      Global.ECR.Summ4:=l_sumcl;
    Global.ECR.StringForPrinting:='';
    lret_c:=Global.ECR.CloseCheck;
    sleep(Global.p_waitms);
   end;
 Result:=lret_c
end;

{Открытие и закрытие смены}
function fiscal_open(p_typf:Integer;p_open: Integer;paropen: TParam):Integer;
var
 lret_p,sm_old,n_reg_n,n_reg_o,n_old:Integer;
 Y, M, D: word;
begin
{1 - открыть
0 или отсутсвие - закрыть
2 пересмена (выдача X-отчета)
3 сумма в ящике
4 состояние смены
5 текущая дата}
 lret_p:=0;
 if (p_open=1) then
  begin
   lret_p:=fiscal_set_mode(p_typf,1);
   if (lret_p=0) then
    if (p_typf in [1,4]) then
     lret_p:=Global.ECR.GetSumm
    else
     begin
      n_old:=Global.ECR.RegisterNumber;
      Global.ECR.RegisterNumber:=241;
      lret_p:=Global.ECR.GetCashReg;
      Global.ECR.RegisterNumber:=n_old
     end;
   if (lret_p=0) then
    begin
     if (p_typf in [1,4]) then
      begin
       Global.ECR.Caption:='Входящий остаток: '+FloatToStr(Global.ECR.Summ);
       lret_p:=Global.ECR.OpenSession;
      end
     else
      begin
       if (Global.ECR.IsFMSessionOpen=false) then
        lret_p:=Global.ECR.OpenSession
       else
        lret_p:=-3837;
       if (lret_p=0) then
        fiscal_print(p_typf,'p','Входящий остаток: '+FloatToStr(Global.ECR.ContentsOfCashRegister));
      end;
     if (p_typf in [1,4]) then
      begin
       Global.ECR.RegisterNumber:=18;
       Global.ECR.GetRegister
      end
    end
  end;
 if (p_open=2) then
  begin
   lret_p:=fiscal_set_mode(p_typf,2);
   if (lret_p=0) then
    if (p_typf in [1,4]) then
     begin
      Global.ECR.ReportType:=2;
      lret_p:=Global.ECR.Report
     end
    else
     lret_p:=Global.ECR.PrintReportWithoutCleaning
  end
 else
  begin
   if ((p_open>=3) and (p_open<=5)) then
    begin
     lret_p:=fiscal_set_mode(p_typf,1);
     if (lret_p=0) then
      if (p_open=3) then
       if (p_typf in [1,4]) then
        lret_p:=Global.ECR.GetSumm
       else
        begin
         n_reg_o:=Global.ECR.RegisterNumber;
         Global.ECR.RegisterNumber:=241;
         Global.ECR.GetCashReg;
         Global.ECR.RegisterNumber:=n_reg_o
        end
      else
       begin
        n_reg_o:=Global.ECR.RegisterNumber;
        if ((lret_p=0) AND ((p_open=4) or (p_open=5))) then
         begin
          if (p_typf in [1,4]) then
           begin
            Global.ECR.RegisterNumber:=18;
            Global.ECR.GetRegister;
            lret_p:=1;
            if (Global.ECR.SessionOpened=false) then
             lret_p:=0
           end
          else
           begin
            lret_p:=1;
            if (Global.ECR.IsFMSessionOpen=false) then
             lret_p:=0;
           end
         end;
        Global.ECR.RegisterNumber:=n_reg_o
       end
    end
   else
    begin
     if (p_open=0) then
      begin
       lret_p:=fiscal_set_mode(p_typf,3);
       if (lret_p=0) then
        if (p_typf in [1,4]) then
         begin
          Global.ECR.ReportType:=1;
          lret_p:=Global.ECR.Report
         end
        else
         lret_p:=Global.ECR.PrintReportWithCleaning;
      end
     else if (p_open=-5) then
      begin
       //-5. Краткий фискальный отчет p_dat_b(Day,Month,Year)-p_dat_e(EndDay,EndMonth,EndYear)
       lret_p:=fiscal_set_mode(p_typf,5);
       if (lret_p=0) then
        if (p_typf in [1,4]) then
         begin
          DecodeDate(paropen.dat_b, Y, M, D);
          Global.ECR.Day:=D;
          Global.ECR.Month:=M;
          Global.ECR.Year:=Y;
          DecodeDate(paropen.dat_b+paropen.dat_n, Y, M, D);
          Global.ECR.EndDay:=D;
          Global.ECR.EndMonth:=M;
          Global.ECR.EndYear:=Y;
          Global.ECR.ReportType:=abs(p_open);
          lret_p:=Global.ECR.Report
         end
        else
         begin
          Global.ECR.ReportType:=False;
          Global.ECR.FirstSessionDate:=paropen.dat_b;
          Global.ECR.LastSessionDate:=paropen.dat_b+paropen.dat_n;
          Global.ECR.EKLZSessionReportInDatesRange
         end
      end
     else if ((p_open=-24) or (p_open=-29) or (p_open=-28)) then
      begin
       //-29. ЭКЛЗ Полный по итогам смен  p_dat_b(Day,Month,Year)-p_dat_e(EndDay,EndMonth,EndYear)
       //-24. ЭКЛЗ контрольная лента смены  p_sm_b(Session)
       lret_p:=fiscal_set_mode(p_typf,6);
       if (lret_p=0) then
        begin
         if ((p_open=-28) or (p_open=-29)) and (p_typf in [1,4]) then
          begin
           DecodeDate(paropen.dat_b, Y, M, D);
           Global.ECR.Day:=D;
           Global.ECR.Month:=M;
           Global.ECR.Year:=Y;
           DecodeDate(paropen.dat_b+paropen.dat_n, Y, M, D);
           Global.ECR.EndDay:=D;
           Global.ECR.EndMonth:=M;
           Global.ECR.EndYear:=Y;
          end;
         if (p_typf in [1,4]) then
          sm_old:=Global.ECR.Session
         else
          sm_old:=Global.ECR.SessionNumber;
         if ((paropen.sm_b>0) and (p_open=-24)) then
          begin
           if (p_typf in [1,4]) then
            Global.ECR.Session:=paropen.sm_b
           else
            begin
             Global.ECR.SessionNumber:=paropen.sm_b;
             lret_p:=Global.ECR.EKLZJournalOnSessionNumber
            end
          end;
         if (p_typf in [1,4]) then
          begin
           Global.ECR.ReportType:=abs(p_open);
           lret_p:=Global.ECR.Report
          end;
         if ((p_open=-28) or (p_open=-29)) and (p_typf>1) then
          begin
           if (p_open=-28) then
            Global.ECR.ReportType:=True
           else
            Global.ECR.ReportType:=False;
           Global.ECR.FirstSessionDate:=paropen.dat_b;
           Global.ECR.LastSessionDate:=paropen.dat_b+paropen.dat_n;
           Global.ECR.EKLZSessionReportInDatesRange;
          end
        end;
       if (p_typf in [1,4]) then
        Global.ECR.Session:=sm_old
       else
        Global.ECR.SessionNumber:=sm_old;
      end
    end
  end;
 if (p_typf<>1) then
  //Чек не закрыт
  if (lret_p=74) then
   lret_p:=-3802
  //24 часа
  else if (lret_p=78) then
   lret_p:=-3822;
 if (((lret_p=-3802) or (lret_p=-3822)) and (p_open<>1) and (p_open<>4)) then
  lret_p:=0;
 Result:=lret_p
end;
{запись файл ответа}
procedure fiscal_fileout(p_typf:Integer;p_fo:String;lret_p_fo:Integer;p_otc_fo:Integer;p_smena_fo:Integer;p_sumcl_fo:Real;p_q:Integer);
var f_fout,f_flogfisc:TextFile;
cc_old,cc_new,f_logfisc,s_d_t,s_error:String;
ltest:Boolean;
begin
 f_logfisc:=Global.p_path+'fiscal.log';
 ltest:=FileExists(Global.p_path+'fisclog');
 if (p_typf>1) then
  if (lret_p_fo>0) and (p_otc_fo<>2) and (p_smena_fo<>4) then
    lret_p_fo:=-3000+(-1)*lret_p_fo;
 if ltest=True then
 begin
  AssignFile(f_flogfisc,f_logfisc);
  if FileExists(f_logfisc) then
   Append(f_flogfisc)
  else
   Rewrite(f_flogfisc);
  if (IOResult=0) then
   begin
    ltest:=True;
    Write(f_flogfisc,DateTimeToStr(Now));
   end
  else
   ltest:=False;
 end;
 if (p_fo<>'') then
   begin
    AssignFile(f_fout,p_fo);
    Rewrite(f_fout);
    if (IOResult=0) then
     begin
      WriteLn(f_fout,IntToStr(lret_p_fo));
      if (ltest=True) then
       Write(f_flogfisc,',(1)CodResult='+IntToStr(lret_p_fo));
      if (p_typf in [1,4]) then
       s_error:=Global.ECR.ResultDescription
      else
       begin
        if (lret_p_fo=-3822) then
         s_error:='Прошло 24 часа'
        else if (lret_p_fo=-3837) then
         s_error:='Смена открыта,операция не возможна'
        else
         s_error:=Global.ECR.ResultCodeDescription
       end;
      if ((lret_p_fo<0) and (s_error='Ошибок нет')) then
       begin
        WriteLn(f_fout,'');
        if (ltest=True) then
          Write(f_flogfisc,',(2)ResultDescription=""');
       end
      else
       begin
        cc_old:=s_error;
        SetLength(cc_new, Length(cc_old));
        CharToOEM(PChar(cc_old),PChar(cc_new));
        WriteLn(f_fout,cc_new);
        if (ltest=True) then
         Write(f_flogfisc,',(2)ResultDescription='+cc_new);
       end;
      if ((p_otc_fo=2) and (p_smena_fo=3)) then
       begin
        WriteLn(f_fout,FloatToStr(p_sumcl_fo));
        if (ltest=True) then
         Write(f_flogfisc,',(3)Summa='+FloatToStr(p_sumcl_fo));
       end;
      if ((p_otc_fo=2) and ((p_smena_fo=4) or (p_smena_fo=5))) then
       begin
        if (p_typf in [1,4]) then
         DateTimeToString(s_d_t,'dd/mm/yyyy',IncHour(EncodeDateTime(Global.ECR.Year,Global.ECR.Month,Global.ECR.Day,Global.ECR.Hour,Global.ECR.Minute,Global.ECR.Second,0),-24))
        else
         begin
          //Global.ECR.GetIBMStatus;
          //DateTimeToString(s_d_t,'dd/mm/yyyy',IncHour(Global.ECR.IBMSessionDateTime,-1));
          DateTimeToString(s_d_t,'dd/mm/yyyy',Now);
         end;
        WriteLn(f_fout,s_d_t);
        if (ltest=True) then
         Write(f_flogfisc,',(3)DateBegSession='+s_d_t);
       end;
      if ((p_otc_fo=1) and (lret_p_fo>=0)) then
       begin
        WriteLn(f_fout,FloatToStr(p_sumcl_fo));
        if (ltest=True) then
         Write(f_flogfisc,',(3)Summa='+FloatToStr(p_sumcl_fo));
       end;
      if ((p_otc_fo=2) and ((p_smena_fo=4) or (p_smena_fo=5))) then
       begin
        if (p_typf in [1,4]) then
         DateTimeToString(s_d_t,'dd/mm/yyyy hh:mm:ss',EncodeDateTime(Global.ECR.Year,Global.ECR.Month,Global.ECR.Day,Global.ECR.Hour,Global.ECR.Minute,Global.ECR.Second,0))
        else
         DateTimeToString(s_d_t,'dd/mm/yyyy hh:mm:ss',Now);
        WriteLn(f_fout,s_d_t);
        if (ltest=True) then
         Write(f_flogfisc,',(4)DateTimeEndSession='+s_d_t);
       end;
      if ((p_otc_fo=2) and (p_smena_fo=4)) then
       if (p_typf in [1,4]) then
        begin
         WriteLn(f_fout,IntToStr(Global.ECR.Session));
         if (ltest=True) then
          Write(f_flogfisc,',(5)Session='+IntToStr(Global.ECR.Session));
        end
       else
        begin
         WriteLn(f_fout,IntToStr(Global.ECR.SessionNumber));
         if (ltest=True) then
          Write(f_flogfisc,',(5)Session='+IntToStr(Global.ECR.SessionNumber));
        end;
      //WriteLn(f_fout,'   ');
      CloseFile(f_fout);
      if (ltest=True) then
       begin
        WriteLn(f_flogfisc,'');
        CloseFile(f_flogfisc);
       end;
     end
   end;
end;
{печать из файла}
function fiscal_fromfile(p_typf:Integer;p_f:String;p_f_out:String;out p_sum: Real):Integer;
var nf: TextFile;
 ns1,ns2,nn,ni_m,n_cc,lret_f,lclose,ni_s,n_chk:Integer;
 n_time:Tdatetime;
 a_p_file: array of array[1..2] of String;
 p_command,p_old,p_val,cc_v,cstr,cc_c:String;
 n_sumreg,n_sumchk:Real;
begin
 lret_f:=0;
 n_time:=Time;
 n_sumreg:=0.00;
 n_sumchk:=0.00;
 {формат файла
 <p> - печать строки
 пишутся строки для печати
 <r> - печать суммы услуги чека (<a> - возврат)
 цена,секция=0,количество=1,наименование услуги,месяц сумма пеня
 например:<r>240.00,0,1,"Капитальный ремонт","04/2010 200.00 40.00"
          304.00,0,1,"Капитальный ремонт","04/2010 300.00 4.00"
 <csd>(<c>,<csp>) - окончание чека
 сумма взятая у клинта
 например,<csd>2000}
 Global.n_stroka:=0;
 lclose:=-1;
 if FileExists(p_f) then
 begin
  AssignFile(nf,p_f);
  Reset(nf);
  if (IOResult=0) then
  begin
   while not eof(nf) do
    begin
     ReadLn(nf,cstr);
     ns1:=pos(Global.p_s1,cstr);
     if Global.p_s1=Global.p_s2 then
      ns2:=pos(Global.p_s2,copy(cstr,ns1,length(cstr)-ns1))
     else
      ns2:=pos(Global.p_s2,cstr);
     Global.n_stroka:=Global.n_stroka+1;
     SetLength(a_p_file,Global.n_stroka);
     cc_v:=copy(cstr,ns1+1,ns2-ns1-1);
     a_p_file[Global.n_stroka-1,1]:=cc_v;
     if ((lclose=-1) and (Length(Trim(cc_v))>0) and (pos('#'+LowerCase(cc_v),'#r#a#v')>0)) then
      begin
       lclose:=0;
       if (p_typf>1) then
        fiscal_open_check(p_typf,cc_v);
      end;
     cc_v:=StringReplace(cstr,Global.p_s1+cc_v+Global.p_s2,' ',[rfReplaceAll]);
     if (Length(Trim(cc_v))>0) then
      OemToAnsi(PChar(cc_v),PChar(cc_v));
     a_p_file[Global.n_stroka-1,2]:=cc_v
    end;
   CloseFile(nf)
  end;
  nn:=Global.n_stroka;
  p_old:='p';
  n_chk:=0;
  for ni_m:=1 to nn do
   begin
    Global.n_stroka:=ni_m;
    p_command:=Trim(LowerCase(a_p_file[Global.n_stroka-1,1]));
    p_val:=Trim(a_p_file[Global.n_stroka-1,2]);
    if (Length(p_command)=0) then
     p_command:=p_old;
    p_old:=p_command;
    if (pos('#'+p_command+'#','#attr#')<>0) and (p_typf=4) and (p_val<>'') then
    begin
     Global.ECR.AttrNumber := 1008;
     Global.ECR.AttrValue := p_val;
    end;
    if ((pos('#'+p_command+'#','#ptc#pbc#p#cut#')<>0) or (pos('p=',p_command)<>0)) then
     lret_f:=fiscal_print(p_typf,p_command,p_val);
    if (pos('#'+p_command+'#','#r#g#v#a#')<>0) then
     begin
      //Global.ECR.RegisterNumber:=20;
      if (pos('#'+p_command+'#','#g#v#a#')<>0) then
       n_chk:=2;
      n_sumchk:=0.00;
      if (p_typf in [1,4]) then
       for ni_s:=1 to 2 do
        begin
         Global.ECR.RegisterNumber:=20;
         Global.ECR.GetRegister;
         n_sumreg:=Global.ECR.Summ;
         n_sumchk:=abs(n_sumreg-n_sumchk);
         if ((((ni_s=2) AND (n_sumchk=0.00)) OR (ni_s=1)) and (lret_f=0)) then
          lret_f:=fiscal_check_registr(p_typf,p_command,p_val);
        end
      else
       lret_f:=fiscal_check_registr(p_typf,p_command,p_val);
      if (lret_f=0) then
       lclose:=0
     end;
    if ((pos('k=',p_command)<>0) or (pos('kr=',p_command)<>0)) then
     begin
      n_cc:=pos('=',p_command);
      cc_c:=copy(p_command,1,n_cc-1);
      cc_v:=copy(p_command,n_cc+1,length(p_command)-n_cc);
      lret_f:=fiscal_set_clishe(p_typf,cc_c,StrToInt(cc_v),p_val)
     end;
    if ((pos('#'+p_command+'#','#c#csd#')<>0) or (pos('c=',p_command)<>0) or (pos('csp=',p_command)<>0)) then
     begin
      cc_c:=p_command;
      cc_v:='0';
      if (Length(Trim(p_val))=0) then
       p_val:='0.00';
      n_cc:=pos('=',p_command);
      if (n_cc>0) then
       begin
        cc_c:=copy(p_command,1,n_cc-1);
        cc_v:=copy(p_command,n_cc+1,length(p_command)-n_cc);
       end;
      if (p_typf in [1,4]) then
       begin
        Global.ECR.RegisterNumber:=20;
        Global.ECR.GetRegister;
        n_sumreg:=Global.ECR.Summ
       end
      else
       begin
        Global.ECR.RegisterNumber:=n_chk;
        Global.ECR.GetCashReg;
        sleep(Global.p_waitms);
        n_sumreg:=Global.ECR.ContentsOfCashRegister
       end;
      lret_f:=fiscal_check_close(p_typf,cc_c,StrToInt(cc_v),StrToFloat(p_val));
      p_command:='p';
     end;
    if (lret_f<>0) then
     begin
      n_sumreg:=0.00;
      break;
     end
   end;
  if (p_typf in [1,4]) then
   begin
    Global.ECR.RegisterNumber:=19;
    Global.ECR.GetRegister;
    if (Time-n_time>10) then
     begin
      fiscal_fileout(p_typf,p_f_out,-40007,0,0,0.00,1);
      n_time:=Time;
      if  (lret_f<0) then
       begin
        if (lclose=0) then
         lret_f:=-500000+lret_f;
        if (p_typf in [1,4]) then
         if ((lclose=1) and (Global.ECR.CheckState=0)) then
          lret_f:=-600000+lret_f;
        //if (fiscal_sos()=0) then
         //if (Global.ECR.CheckState=0) then
          //Global.ECR.FullCut
       end
     end
   end;
  {if ((lret_f=0) and (Global.ECR.CheckState=0)) then
   begin
    Global.ECR.RegisterNumber:=12;
    Global.ECR.OperationType:=0;
    Global.ECR.GetRegister;
    n_sumreg:=abs(Global.ECR.Summ-n_sumreg);
   end
  else
   n_sumreg:=0.00;}
 end;
 p_sum:=n_sumreg;
 Result:=lret_f
end;

{работа с фискальником}
function fiscal(fisc_param:TParam):Integer;
var
 p_otc,p_typf,l_ret_f,p_s,n_old:Integer;
 p_file:String;
 p_smena:Integer;
 p_check:String;
 p_sumcl:Real;
 p_fout:String;
 n_sumreg: Real;
begin
{печать чека}
 l_ret_f:=0;
 p_typf:=fisc_param.typ_fisc;
 p_otc:=fisc_param.typ_mod;
 p_file:=fisc_param.cfile;
 p_smena:=fisc_param.typ_smena;
 p_check:=fisc_param.typ_check;
 p_sumcl:=fisc_param.sum_check;
 p_fout:=fisc_param.f_out;
 n_sumreg:=0.00;
 {p_otc
 0 - проверка и настройка фискальника
 1 - регистрация
 2 - смена
 3 - работа с ящиком денег (p_check: 1 - внесение, 2- выдача)}
 Global.c_otc_par:=' fiscal typ_fisc='+IntToStr(p_typf)+',typ_mod='+IntToStr(p_otc)+',cfile='+p_file+',typ_smena='+IntToStr(p_smena)+',typ_check='+p_check+',sum_check='+FloatToStr(p_sumcl)+',f_out='+p_fout;
 p_s:=1;
 if ((p_otc=2) and (p_smena>2)) then
  p_s:=2;
 if ((p_otc=2) and (pos('#'+Trim(IntToStr(p_smena))+'#','#0#2#-1#-2#-3#')>0)) then
  p_s:=3;
 l_ret_f:=fiscal_init(p_typf,p_s);
 if (l_ret_f=0) then
  begin
   case p_otc of
    0: l_ret_f:=fiscal_setup(p_typf,1);
    3:
     begin
      l_ret_f:=fiscal_vnesen(p_typf,p_check,p_sumcl);
      if (p_typf=2) and (p_sumcl=0) then
       l_ret_f:=fiscal_open(p_typf,p_smena,fisc_param);
     end;
    2:
     begin
 //    if (p_smena=4) then
//      l_ret_f:=fiscal_setup(1);
      if (l_ret_f=0) then
       l_ret_f:=fiscal_open(p_typf,p_smena,fisc_param);
      if (l_ret_f>=0) then
       case p_smena of
        3:
         begin
          if (p_typf in [1,4]) then
           p_sumcl:=Global.ECR.Summ
          else
           begin
            n_old:=Global.ECR.RegisterNumber;
            Global.ECR.RegisterNumber:=241;
            Global.ECR.GetCashReg;
            Global.ECR.RegisterNumber:=n_old;
            p_sumcl:=Global.ECR.ContentsOfCashRegister
           end
         end
//      4: p_sumcl:=Global.ECR.Year+Global.ECR.Month+Global.ECR.Day
       end
     end
   else
    if (l_ret_f=0) then
      begin
       {p_check 'r' p_file - сумма чека
       p_sumcl - сумма денег данных клиентом}
       if ((p_check='r') and (StrToFloat(p_file)<>0)) then
        begin
         l_ret_f:=fiscal_check_registr(p_typf,p_check,p_file+',0,1,'+'Плата за ЖКУ');
         if (l_ret_f=0) then
          if (p_sumcl=0) then
           l_ret_f:=fiscal_check_close(p_typf,'c',p_smena,p_sumcl)
          else
           l_ret_f:=fiscal_check_close(p_typf,'csd',p_smena,p_sumcl)
        end
       else
        l_ret_f:=fiscal_fromfile(p_typf,p_file,p_fout,p_sumcl)
      end
   end
 end;
 fiscal_fileout(p_typf,p_fout,l_ret_f,p_otc,p_smena,p_sumcl,0);
 if (l_ret_f<>-11) then
  fiscal_init(p_typf,0);
 Result:=l_ret_f
end;


{для печати текстового 866 }
procedure TStringDS.StringDSOnGetValue(const VarName: String;
  var Value: Variant);
var
 npos,nrec: Integer;
 c_s: String;
begin
 nrec:=StringDS.RecNo;
 c_s:=sl[nrec];
 npos:=pos(#$0C,c_s);
 if CompareText(VarName, 'order') = 0 then
  begin
   if ((npos>0) and (nrec<>nrec_old)) then
    begin
     npage:=npage+1;
     nrec_old:=nrec
    end;
   Value := npage;
  end;
 if (CompareText(VarName, 'name') = 0) then
   Value := copy(c_s,npos+1,length(c_s)-npos);
end;
{печать текстового 866}
function txt2htm(htm_param:TParam):Integer;
  var
   s_oem,s_ansi: string;
   l_ret_h,n_e,ni,nn: integer;
   Page: TfrxReportPage;
   Band: TfrxMasterData;
   Group: TfrxGroupHeader;
   Memo:TfrxMemoView;
   frxreport: TfrxReport;
begin
try
 l_ret_h:=0;
 n_e:=0;
 s_oem:='';
 s_ansi:='';
 sl:=TStringList.Create;
 sl.LoadFromFile(htm_param.cfile);
 nn:=sl.Count-1;
 n_e:=1;
 for ni:=nn downto 0 do
 begin
  s_oem:=sl[ni];
  if (pos(#$0C,s_oem)>0) then
   n_e:=2;
  if ((n_e>0) and (length(trim(s_oem))=0))  then
   begin
    sl.Delete(ni);
    if ((n_e=2) and (ni<=sl.Count-1))then
     sl[ni]:=s_oem+sl[ni];
    n_e:=1
   end
  else
    n_e:=0;
 end;
 nn:=sl.Count;
 //Ориентация листа при печати : (poPortrait, poLandscape)
 StringDS:=TStringDS.Create(Application);
 StringDS.Name:='StringDS';
 StringDS.UserName:='StringDS';
 StringDS.OnGetValue:=TStringDS(nil).StringDSOnGetValue;
 StringDS.RangeEnd := reCount;
 frxreport:=TfrxReport.Create(Application);
 frxreport.Clear;
 frxreport.PreviewOptions.Buttons:=[pbPrint,pbZoom,pbFind,pbNavigator];
 frxreport.PreviewOptions.allowedit:=false;
 frxreport.PrintOptions.ShowDialog :=False;
 frxReport.DataSets.Add(StringDS);
 frxreport.EngineOptions.PrintIfEmpty:=True;
 frxreport.EngineOptions.MaxMemSize:=10000000;
 frxReport.ShowProgress:=(htm_param.lshow>-1);
 Page:=TfrxReportPage.Create(frxreport);
 Page.SetDefaults;
 Page.CreateUniqueName;
 Page.PrintIfEmpty:=True;
 if (htm_param.lalbom=1) then
  Page.Orientation:= Printers.poLandscape
 else
  Page.Orientation:= Printers.poPortrait;
 Page.LeftMargin:=htm_param.nLeft;
 Page.RightMargin:=7;
 Page.TopMargin:=7;
 Page.BottomMargin:=7;
 Group:= TfrxGroupHeader.Create(page);
 Group.CreateUniqueName;
 Group.top := 0;
 Group.Height := 1;
 //Group.Left:=Page.LeftMargin;
 Group.StartNewPage:=True;
 Group.Condition:='StringDS."order"';
 Band := TfrxMasterData.Create(page);
 Band.CreateUniqueName;
 Band.top := 2;
 //Band.Left:=Page.LeftMargin;
 Band.Stretched := True;
 Band.Height := 1;
 Band.AllowSplit:=True;
 Band.RowCount:=nn;
 Band.DataSet:=StringDS;
 Memo := TfrxMemoView.Create(Band);
 Memo.CreateUniqueName;
 Memo.Align:=baWidth;
 // Задали шрифт
 Memo.Font.Charset:=OEM_CHARSET;
 Memo.StretchMode := smActualHeight;
 //Memo.Left:=Page.LeftMargin;
 Memo.Top:=0;
 Memo.Font.Size:=htm_param.nFontSize;
 Memo.Font.Name:='Lucida Console';
 //Memo.Clipped:=True;
 Memo.Clipped:=False;
 Memo.DataSet:=StringDS;
 Memo.DataField:='name';
 StringDS.RangeEndCount := nn;
 if (htm_param.lshow>-1) then
  frxReport.ShowReport
 else
  frxReport.PrepareReport;
 frxReport.PrintOptions.ShowDialog:=(htm_param.lshow>-1);
 if (htm_param.lshow<1) then
  frxReport.Print;
except
 begin
  l_ret_h:=-40008
 end
end;
 fiscal_fileout(1,htm_param.f_out,l_ret_h,0,0,0.00,1);
 sl.Free;
 frxReport.Free;
 Result:=l_ret_h
end;
//сохранение ошибки в файл
procedure Save_error(p_oErr: Exception;oParam:TParam);
var f_flog: TextFile;
 f_logall:String;
begin
 f_logall:=Global.p_path+'err_rune.log';
 lret_p:=-40002;
 AssignFile(f_flog,f_logall);
 if FileExists(f_logall) then
  Append(f_flog)
 else
  Rewrite(f_flog);
 if (IOResult=0) then
  WriteLn(f_flog,DateToStr(Date)+',p_comp='+p_comp+',p_kassir='+p_kassir+',p_prog='+p_prog+',numErr='+IntToStr(lret_p)+' '+p_oErr.message+chr(13)+chr(10));
 CloseFile(f_flog);
 fiscal_fileout(1,oParam.f_out,lret_p,0,0,0.00,1);
 if FileExists(oParam.cfile) then
   DeleteFile(PAnsiChar(oParam.cfile));
end;
//
begin
 { TODO -oUser -cConsole Main : Insert code here }
 Application.Initialize;
 lret_p:=0;
 Global.p_path:=ParamStr(0);
try
 //ShowMessage('Привет');
 DecimalSeparator := '.';
 {p_par:=ParamCount();}
 p_comp:=ParamStr(1);
 //p_comp:='736';
 p_kassir:=ParamStr(2);
 //p_kassir:='Z';
 p_prog:=ParamStr(3);
 //p_prog:='fiscal';
 //p_prog:='txt2htm';
 p_param:=ParamStr(4);
 //p_param:='tf=2,tm=0,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {настройка}
 //p_param:='tf=2,tm=2,ts=4,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {смена}
 //p_param:='tf=2,tm=2,ts=5,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {текущая дата}
 //p_param:='tf=2,tm=2,ts=0,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {Z-отчет}
 //p_param:='tf=2,tm=2,ts=1,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {Открытие смены}
 //p_param:='tf=2,tm=2,ts=2,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {X-отчет}
 //p_param:='tf=2,tm=2,ts=-28,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt,dn=40,db=14.02.2011';
 //p_param:='tf=2,tm=2,ts=-24,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt,sb=3';
 //p_param:='tf=2,tm=2,ts=3,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {остаток}
 //p_param:='tf=2,tm=3,tc=i,sc=1000,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {внесение}
 //p_param:='tf=2,tm=3,tc=o,sc=100.05,fo=c:\progdeve\vfp9\dolgi\clientexe\runext\123.txt'; {выдача}
 //p_param:='tf=2,tm=1,cf=c:\kwpl_s\pech_win_3.txt,fo=c:\kwpl_s\fisc_out.txt'; {печать чека}
 //p_param:='cf=C:\ProgDeve\vfp9\dolgi\clientexe\runext\jkh.txt,la=1,ls=1,sz=7,sl=7'; {печать на лазерный файла}
 //Global.ECR:= Nil;
 Global.ECR:= 0;
 Global.c_comm:='';
 Global.c_otc_par:='';
 Global.n_a_command:=0;
 Global.a_command:= nil;
 Global.n_stroka:=0;
 Global.p_typefisc:='';
 Global.p_waitms:=0;
 Global.p_path:=ExtractFilePath(Global.p_path);
 Global.p_lencheck:=56;
 p_par_a:=TStringList.Create;
 p_par_a.CommaText:=p_param;
 npage:=1;
 nrec_old:=0;
 if (p_prog='fiscal') then
  Param.p_prog:=1
 else
  Param.p_prog:=2;
 cstr:=p_par_a.Values['cf']; //cf
 if (cstr<>'') then
  Param.cfile:=cstr;
 Param.f_out:= ''; //fo,''
 cstr:=p_par_a.Values['fo'];
 if (cstr<>'') then
  Param.f_out:=cstr;
 if (Param.p_prog=1) then
  begin
   Param.typ_fisc:= 1; //tf
   //1 - Атол Fprint02k, 2 - ШтрихМ широкий (80), ШтрихМ узкий (40)
   //(с онлайн с налоговой) 4 - Атол 25Ф
   cstr:=p_par_a.Values['tf'];
   if (cstr<>'') then
    begin
     Param.typ_fisc:=StrToInt(cstr);
     if StrToInt(cstr)>1 then
      Global.p_typefisc:='_0'+cstr
    end;
   Param.typ_mod:= 2; //tm
   cstr:=p_par_a.Values['tm'];
   if (cstr<>'') then
    Param.typ_mod:=StrToInt(cstr);
   Param.typ_smena:= 0; //ts,0
   cstr:=p_par_a.Values['ts'];
   if (cstr<>'') then
    Param.typ_smena:=StrToInt(cstr);
   Param.typ_check:= '';//tc,' '
   cstr:=p_par_a.Values['tc'];
   if (cstr<>'') then
    Param.typ_check:=cstr;
   //ShowMessage(Param.typ_check);
   Param.sum_check:= 0.00;//sc,'0.00'
   cstr:=p_par_a.Values['sc'];
   if (cstr<>'') then
    Param.sum_check:=StrToFloat(cstr);
   Param.nm_oper:= '';//no,''
   cstr:=p_par_a.Values['no'];
   if (cstr<>'') then
    Param.nm_oper:=cstr;
   Param.setfull:= 0;//sf,'0'
   cstr:=p_par_a.Values['sf'];
   if (cstr<>'') then
    Param.setfull:=StrToInt(cstr);
   Param.dat_b:=Date;//db,''
   cstr:=p_par_a.Values['db'];
   if (cstr<>'') then
    Param.dat_b:=StrToDate(cstr);
   Param.dat_n:= 0;//dn,'0'
   cstr:=p_par_a.Values['dn'];
   if (cstr<>'') then
    Param.dat_n:=StrToInt(cstr);
   Param.sm_b:= 0;//sb,'0'
   cstr:=p_par_a.Values['sb'];
   if (cstr<>'') then
    Param.sm_b:=StrToInt(cstr);
   Param.sm_e:= 0;//se,'0'
   cstr:=p_par_a.Values['se'];
   if (cstr<>'') then
    Param.sm_e:=StrToInt(cstr);
   lret_p:=fiscal(Param)
  end
 else
  begin
   Param.lshow:=-1;//-1 -печать,0 -печать выбор принтера,1 -просмотр
   cstr:=p_par_a.Values['ls'];
   if (cstr<>'') then
    Param.lshow:=StrToInt(cstr);
   Param.lalbom:=0;//0 ,1 -альбомный
   cstr:=p_par_a.Values['la'];
   if (cstr<>'') then
    Param.lalbom:=StrToInt(cstr);
   Param.nFontSize:=7;
   cstr:=p_par_a.Values['sz'];
   if (cstr<>'') then
    Param.nFontSize:=StrToInt(cstr);
   Param.nLeft:=7;
   cstr:=p_par_a.Values['sl'];
   if (cstr<>'') then
    Param.nLeft:=StrToInt(cstr);
   //StringDS:=TfrxUserDataSet.Create(Application);
   lret_p:=txt2htm(Param);
  end;
  if FileExists(Param.cfile) then
   DeleteFile(PAnsiChar(Param.cfile));
except
 on  oErr: Exception do
  Save_error(oErr,param)
end;
 Application.Terminate;
 ExitCode:=lret_p
end.
