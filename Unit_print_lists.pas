unit Unit_print_lists;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, OracleData, frxClass,
  frxDBSet, frxExportXML, DBF, Utils, ExtCtrls, 
  frxExportText, frxExportCSV, StrUtils, Math, 
  frxDesgn, frxExportBaseDialog, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox;

type
  TForm_print_lists = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    OD_mg: TOracleDataSet;
    DS_mg: TDataSource;
    frxDBData1: TfrxDBDataset;
    frxDBData2: TfrxDBDataset;
    frxXMLExport1: TfrxXMLExport;
    frxDBData3: TfrxDBDataset;
    frxDBDatamg: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxReport7: TfrxReport;
    OD_sprorg: TOracleDataSet;
    DS_sprorg: TDataSource;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Button3: TButton;
    Button4: TButton;
    frxReport10: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    frxCSVExport1: TfrxCSVExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    OD_typeslist: TOracleDataSet;
    DS_typeslist: TDataSource;
    OD_typeslistID: TFloatField;
    OD_typeslistCD: TStringField;
    OD_typeslistNAME: TStringField;
    frxDesigner1: TfrxDesigner;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    OD_t_org: TOracleDataSet;
    cbbVar: TcxLookupComboBox;
    cbbMg: TcxLookupComboBox;
    cbbOrg: TcxLookupComboBox;
    cxImageSel: TcxImageComboBox;
    cxtxtVal: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cbbUkPropertiesCloseUp(Sender: TObject);
    procedure cxtxtValKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_print_lists: TForm_print_lists;
  clr_, clr1_: Integer;

implementation

uses Unit_status, Unit_sel_reu, Unit_sel_usl;

{$R *.dfm}

procedure TForm_print_lists.FormCreate(Sender: TObject);
begin
 clr_ := 0;
 clr1_ := 0;
 cxtxtVal.Text:='0';
 Autosize:=true;
 OD_typeslist.Active:=True;
end;

procedure TForm_print_lists.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_print_lists.Button1Click(Sender: TObject);
var
  F: TextFile;
  oldReu, findReu, fname, S: String;
  i: Double;

begin
  if (cbbMg.EditValue = null)
     and (cbbVar.EditValue <> '5' ) then
  begin
    ShowMessage('Не выбран период отчета, Отмена');
    Exit;
  end;

   Application.CreateForm(TForm_status, Form_status);
   Form_status.Update;


   if cbbVar.EditValue = '0' then // Субсидии по л/с
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 1);
    OD_data.SetVariable('mg_', cbbMg.EditValue);
    OD_data.Active:=true;
    if OD_data.RecordCount =0 then
    begin
     Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
     Form_status.Close;
    end
    else
    begin
      if RadioGroup1.ItemIndex = 0 then
      begin
        frxReport1.PrepareReport(true);
        Form_status.Close;
        frxReport1.ShowPreparedReport
      end
      else
      begin
        exp_to_dbf(OD_data, Edit2.Text+'subsid1.dbf');
        Form_status.Close;
      end;
    end;
   end
   else if cbbVar.EditValue = '1' then // Субсидии по л/с по обща
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 2);
    OD_data.SetVariable('mg_', cbbMg.EditValue);
    OD_data.Active:=true;
    if OD_data.RecordCount =0 then
    begin
     Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
     Form_status.Close;
    end
    else
    begin
      if RadioGroup1.ItemIndex = 0 then
      begin
        frxReport2.PrepareReport(true);
        Form_status.Close;
        frxReport2.ShowPreparedReport
      end
      else
      begin
        exp_to_dbf(OD_data, Edit2.Text+'subsid2.dbf');
        Form_status.Close;
      end;
    end;
   end
   else if cbbVar.EditValue = '2' then // Скидки по домам
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 3);
    OD_data.SetVariable('mg_', cbbMg.EditValue);
    OD_data.Active:=true;
    if OD_data.RecordCount =0 then
    begin
     Application.MessageBox('Нет информации за указанный период', 'Внимание!', 16+MB_APPLMODAL);
     Form_status.Close;
    end
    else
    begin
      if RadioGroup1.ItemIndex = 0 then
      begin
        null;
      end
      else
      begin
        exp_to_dbf(OD_data, Edit2.Text+'expkwni.dbf');
        Form_status.Close;
      end;
    end;
   end
   else if cbbVar.EditValue = '3' then // Списки по льготникам
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 4);
    OD_data.SetVariable('mg_',  cbbMg.EditValue);
    OD_data.Active:=true;
    if RadioGroup1.ItemIndex = 0 then
    begin
      null;
    end
    else
    begin
      exp_to_dbf(OD_data, Edit2.Text+'expprivs.dbf');
      Form_status.Close;
    end;
   end
   else if cbbVar.EditValue = '4' then // Задолжники
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 5);
    OD_data.SetVariable('mg_',  cbbMg.EditValue);
    OD_data.Active:=true;
    if RadioGroup1.ItemIndex = 0 then
    begin
      null;
    end
    else
    begin
      exp_to_dbf(OD_data, Edit2.Text+'debits.dbf');
      Form_status.Close;
    end;
   end
   else if cbbVar.EditValue= '5' then // Выгрузка произвольного файла
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 6);
    OD_data.SetVariable('fname_', Edit1.Text);
    OD_data.Active:=true;
    if RadioGroup1.ItemIndex = 0 then
    begin
      null;
    end
    else
    begin
      exp_to_dbf(OD_data, Edit2.Text+Edit1.Text+'.dbf');
      Form_status.Close;
    end;
   end
   else if cbbVar.EditValue = '6' then // Списки по льготникам
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 7);
    OD_data.SetVariable('org_', OD_sprorg.FieldByName('kod').asInteger);
    OD_data.SetVariable('mg_',  cbbMg.EditValue);
    OD_data.Active:=true;
    if RadioGroup1.ItemIndex = 0 then
    begin
      frxReport7.PrepareReport(true);
      Form_status.Close;
      frxReport7.ShowPreparedReport
    end
    else
    begin
      exp_to_dbf(OD_data, Edit2.Text+'expprivs2.dbf');
      Form_status.Close;
    end;
   end
   else if cbbVar.EditValue = '7' then // Списки по начислению
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 8);
    OD_data.SetVariable('mg_',  cbbMg.EditValue);
    OD_data.Active:=true;
    if RadioGroup1.ItemIndex = 0 then
    begin
      null;
    end
    else
    begin
      exp_to_dbf(OD_data, Edit2.Text+'expkartw.dbf');
      Form_status.Close;
    end;
   end
   else if cbbVar.EditValue = '8' then // Выгрузка оборотки для УК в DBF
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 9);
    OD_data.SetVariable('mg_',  cbbMg.EditValue);
    OD_data.Active:=true;
    if RadioGroup1.ItemIndex = 0 then
    begin
      null;
    end
    else
    begin
      exp_to_dbf(OD_data, Edit2.Text+'oborot.dbf');
      Form_status.Close;
    end;
   end
   else if cbbVar.EditValue = '9' then // Задолжники по услугам
   begin
    OD_data.Active:=false;
    OD_data.SetVariable('rep_id_', 10);
    OD_data.SetVariable('mg_',  cbbMg.EditValue);
    OD_data.SetVariable('var_',  cxImageSel.ItemIndex);
    OD_data.SetVariable('cnt_',  StrToFloat(cxtxtVal.Text));
    OD_data.Active:=true;

    if cxImageSel.ItemIndex = 0 then
      frxReport10.Variables['txt_']:=''''+cxtxtVal.Text+' месяцев'+''''
    else
      frxReport10.Variables['txt_']:=''''+cxtxtVal.Text+' рублей'+'''';

    if RadioGroup1.ItemIndex = 0 then
    begin
      frxReport10.PrepareReport(true);
      Form_status.Close;
      frxReport10.ShowPreparedReport
    end
    else
    begin
      Form_status.Close;
    end;
   end
   else if (cbbVar.EditValue = '10') or
     (cbbVar.EditValue = '11') or
     (cbbVar.EditValue = '12') or
     (cbbVar.EditValue = '16') or
     (cbbVar.EditValue = '17') or
     (cbbVar.EditValue = '18') or
     (cbbVar.EditValue = '19') or
     (cbbVar.EditValue = '20') or
     (cbbVar.EditValue = '21') or
     (cbbVar.EditValue = '22') or
     (cbbVar.EditValue = '23')
     then // Долги для Почты, Сбербанка, для Сбербанка-2
   begin
    if RadioGroup1.ItemIndex = 0 then
    begin

    end
    else
    begin
     if (cbbVar.EditValue = '10') or
        (cbbVar.EditValue = '19') or
        (cbbVar.EditValue = '20') or
        (cbbVar.EditValue = '22') or
        (cbbVar.EditValue = '23')
      then
     begin
       OD_data.Active:=false;

       if (cbbVar.EditValue = '10') then
         OD_data.SetVariable('rep_id_', 11) //реестр в целом по сберу
       else if (cbbVar.EditValue = '19') then
         OD_data.SetVariable('rep_id_', 19) //реестр по 1 расчет.счету
       else if (cbbVar.EditValue = '20') then
         OD_data.SetVariable('rep_id_', 20)//реестр по 2 расчет.счету
       else if (cbbVar.EditValue = '22') then
         OD_data.SetVariable('rep_id_', 22)
       else if (cbbVar.EditValue = '23') then
         OD_data.SetVariable('rep_id_', 23);// Сбер по Свободе

       if (cbbVar.EditValue = '23') then
       begin
         DecimalSeparator := ',';
         OD_t_org.Active:=true;
         // Сбер по Свободе
         OD_data.SetVariable('mg_',  cbbMg.EditValue);
         OD_data.Active:=true;
         OD_data.First;
         i:=0;
         oldReu:='xx';
         while not OD_data.Eof do
         begin
           findReu:=OD_data.FieldByName('reu').AsString;
           if findReu <> oldReu then
           begin
             OD_t_org.Locate('reu', findReu, []);
             if oldReu <> 'xx' then
             begin
               // итог (пока не стал делать, не нужен)
               // закрыть файл, открыть новый
               Flush(f);
               CloseFile(f);
             end;
             fname:=OD_t_org.FieldByName('bank_fname').AsString;
             AssignFile(F, Edit2.Text+fname);
             Rewrite(F);
             Append(f);
             oldReu:=findReu;
           end;
           Writeln(f, OD_data.FieldByName('lsk').AsString+';'+
            leftstr(OD_data.FieldByName('adr').AsString,64)+';'+
            OD_data.FieldByName('summa').AsString);
           i:=i+OD_data.FieldByName('summa').AsFloat;
           OD_data.Next;
         end;
         // итог (пока не стал делать, не нужен)
         // закрыть файл
         Flush(f);
         CloseFile(f);
         Form_status.Close;
         msg2('Долги выгружены в '+Edit2.Text, 'Внимание',
          MB_OK+MB_ICONINFORMATION);
         DecimalSeparator := '.';
       end
       else
       begin
         AssignFile(F, Edit2.Text+'dolgSB.txt');
         Rewrite(F);
         Append(f);
         // прочие реестры
         OD_data.SetVariable('proc_',  100);
         OD_data.SetVariable('mg_',  cbbMg.EditValue);
         OD_data.Active:=true;
         OD_data.First;
         i:=0;
         while not OD_data.Eof do
         begin
           Writeln(f, OD_data.FieldByName('lsk').AsString+'|'+
            leftstr(OD_data.FieldByName('fio').AsString,25)+'|'+
            leftstr(OD_data.FieldByName('adr').AsString,64)+'|'+
            OD_data.FieldByName('type').AsString+'|'+
            OD_data.FieldByName('type_name').AsString+'|'+
            OD_data.FieldByName('period').AsString+'|'+'|'+
            OD_data.FieldByName('summa').AsString);
           i:=i+OD_data.FieldByName('summa').AsFloat;
           OD_data.Next;
         end;
         //Writeln(f, '=|'+ ред.29.11.2019 - отменено по требованию Сбербанка
         //  IntToStr(OD_data.RecordCount)+'|'+FloatToStr(RoundTo(i, -2)));
         Flush(f);
         CloseFile(f);
         Form_status.Close;
         msg2('Долги выгружены в '+Edit2.Text+'dolgSB.txt', 'Внимание',
          MB_OK+MB_ICONINFORMATION);
       end;

     end
     else if (cbbVar.EditValue = '16') then
     begin
       //Долги для сбера, с разделителем "."
       AssignFile(F, Edit2.Text+'dolgSB.txt');
       Rewrite(F);
       Append(f);
       OD_data.Active:=false;
       OD_data.SetVariable('rep_id_', 16);
       OD_data.SetVariable('proc_',  100);
       OD_data.SetVariable('mg_',  cbbMg.EditValue);
       OD_data.Active:=true;
       OD_data.First;
       i:=0;
       while not OD_data.Eof do
       begin
         Writeln(f, OD_data.FieldByName('lsk').AsString+'|'+
          leftstr(OD_data.FieldByName('fio').AsString, 25)+'|'+
          leftstr(OD_data.FieldByName('adr').AsString, 64)+'|'+
          OD_data.FieldByName('type').AsString+'|'+
          OD_data.FieldByName('type_name').AsString+'|'+
          OD_data.FieldByName('period').AsString+'|'+'|'+
          OD_data.FieldByName('summa').AsString);
         i:=i+OD_data.FieldByName('summa').AsFloat;
         OD_data.Next;
       end;
       //Writeln(f, '=|'+ ред.29.11.2019 - отменено по требованию Сбербанка
         //IntToStr(OD_data.RecordCount)+'|'+FloatToStr(RoundTo(i, -2)));
       Flush(f);
       CloseFile(f);
       Form_status.Close;
       msg2('Долги выгружены в '+Edit2.Text+'dolgSB.txt', 'Внимание',
        MB_OK+MB_ICONINFORMATION);
     end
     else if (cbbVar.EditValue = '17') or (cbbVar.EditValue = '21') then
     begin
       //Долги для сбера, с разделителем "корп."
       AssignFile(F, Edit2.Text+'dolgSB.txt');
       Rewrite(F);
       Append(f);
       OD_data.Active:=false;
       if cbbVar.EditValue = '17' then
         OD_data.SetVariable('rep_id_', 17)
        else if cbbVar.EditValue = '21' then
         OD_data.SetVariable('rep_id_', 21);

       OD_data.SetVariable('proc_',  100);
       OD_data.SetVariable('mg_',  cbbMg.EditValue);
       OD_data.Active:=true;
       OD_data.First;
       i:=0;
       while not OD_data.Eof do
       begin
         if cbbVar.EditValue = '17' then
           Writeln(f, OD_data.FieldByName('lsk').AsString+'|'+
            leftstr(OD_data.FieldByName('fio').AsString, 25)+'|'+
            leftstr(OD_data.FieldByName('adr').AsString, 64)+'|'+
            OD_data.FieldByName('type').AsString+'|'+
            OD_data.FieldByName('type_name').AsString+'|'+
            OD_data.FieldByName('period').AsString+'|'+'|'+
            OD_data.FieldByName('summa').AsString)
         else if cbbVar.EditValue = '21' then
           Writeln(f, OD_data.FieldByName('lsk').AsString+'|'+
            leftstr(OD_data.FieldByName('fio').AsString, 25)+'|'+
            leftstr(OD_data.FieldByName('adr').AsString, 64)+'|'+
            OD_data.FieldByName('type').AsString+'|'+
            OD_data.FieldByName('type_name').AsString+'|'+
            OD_data.FieldByName('period').AsString+'||'+
            OD_data.FieldByName('summa').AsString+'|0');

         i:=i+OD_data.FieldByName('summa').AsFloat;
         OD_data.Next;
       end;
       //Writeln(f, '=|'+ ред.29.11.2019 - отменено по требованию Сбербанка
         //IntToStr(OD_data.RecordCount)+'|'+FloatToStr(RoundTo(i, -2)));
       Flush(f);
       CloseFile(f);
       Form_status.Close;
       msg2('Долги выгружены в '+Edit2.Text+'dolgSB.txt', 'Внимание',
        MB_OK+MB_ICONINFORMATION);
     end
     else if (cbbVar.EditValue = '11') then
     begin
       OD_data.Active:=false;
       OD_data.SetVariable('rep_id_', 11);
       OD_data.SetVariable('proc_',  1);
       OD_data.SetVariable('mg_',  cbbMg.EditValue);
       OD_data.Active:=true;
       exp_to_dbf(OD_data, Edit2.Text+'dolgP.dbf');
       Form_status.Close;
       msg2('Долги выгружены в '+Edit2.Text+'dolgP.dbf', 'Внимание',
        MB_OK+MB_ICONINFORMATION);
     end
     else if (cbbVar.EditValue = '12') then
     begin
       AssignFile(F, Edit2.Text+'dolgSB2.txt');
       Rewrite(F);
       Append(f);
       OD_data.Active:=false;
       OD_data.SetVariable('rep_id_', 12);
       OD_data.SetVariable('mg_',  cbbMg.EditValue);
       OD_data.Active:=true;
       OD_data.First;
       i:=0;
       while not OD_data.Eof do
       begin
         Writeln(f, OD_data.FieldByName('lsk').AsString+'|'+
          leftstr(OD_data.FieldByName('fio').AsString, 25)+'|'+
          leftstr(OD_data.FieldByName('adr').AsString, 64)+'|'+
          OD_data.FieldByName('type').AsString+'|'+
          OD_data.FieldByName('type_name').AsString+'|'+
          OD_data.FieldByName('period').AsString+'|'+'|'+
          OD_data.FieldByName('summa').AsString);
         i:=i+OD_data.FieldByName('summa').AsFloat;
         OD_data.Next;
       end;
       //Writeln(f, '=|'+ ред.29.11.2019 - отменено по требованию Сбербанка
         //IntToStr(OD_data.RecordCount)+'|'+FloatToStr(RoundTo(i, -2)));
       Flush(f);
       CloseFile(f);
       Form_status.Close;
       msg2('Долги выгружены в '+Edit2.Text+'dolgSB2.txt', 'Внимание',
        MB_OK+MB_ICONINFORMATION);
     end
     else if (cbbVar.EditValue = '18') then
     begin
       //Долги по тарифам, по кабельному тв.
       AssignFile(F, Edit2.Text+'dolgSB3.txt');
       Rewrite(F);
       Append(f);
       OD_data.Active:=false;
       OD_data.SetVariable('rep_id_', 18);
       OD_data.SetVariable('mg_',  cbbMg.EditValue);
       OD_data.Active:=true;
       OD_data.First;
       i:=0;
       while not OD_data.Eof do
       begin
         Writeln(f, OD_data.FieldByName('lsk').AsString+'|'+
          leftstr(OD_data.FieldByName('fio').AsString, 25)+'|'+
          leftstr(OD_data.FieldByName('adr').AsString, 64)+'|'+
          OD_data.FieldByName('type').AsString+'|'+
          OD_data.FieldByName('type_name').AsString+'|'+
          OD_data.FieldByName('tarif_name').AsString+'|'+
          OD_data.FieldByName('period').AsString+'|'+'|'+
          OD_data.FieldByName('summa').AsString);
         i:=i+OD_data.FieldByName('summa').AsFloat;
         OD_data.Next;
       end;
       //Writeln(f, '=|'+  ред.29.11.2019 - отменено по требованию Сбербанка
         //IntToStr(OD_data.RecordCount)+'|'+FloatToStr(RoundTo(i, -2)));
       Flush(f);
       CloseFile(f);
       Form_status.Close;
       msg2('Долги выгружены в '+Edit2.Text+'dolgSB3.txt', 'Внимание',
        MB_OK+MB_ICONINFORMATION);
     end;
    end;
    end
   else if (cbbVar.EditValue = '15') then // Долги для Уралсиба
   begin
    if RadioGroup1.ItemIndex = 0 then
    begin

    end
    else
    begin
      //Выполняются не зависимо периода
       AssignFile(F, Edit2.Text+'dolgURAL.txt');
       Rewrite(F);
       Append(f);
       OD_data.Active:=false;
       OD_data.SetVariable('rep_id_', 15);
       OD_data.Active:=true;
       OD_data.First;
       i:=0;
       while not OD_data.Eof do
       begin
         i:=i+OD_data.FieldByName('summa').AsFloat;
         OD_data.Next;
       end;
       Writeln(f, '#FILESUM '+FloatToStr(RoundTo(i, -2)));
       Writeln(f, '#TYPE 7');
       Writeln(f, '#SERVICE 537');

       OD_data.First;
       while not OD_data.Eof do
       begin
         Writeln(f, OD_data.FieldByName('txt').AsString);
         OD_data.Next;
       end;
       Flush(f);
       CloseFile(f);
       Form_status.Close;
       msg2('Долги выгружены в '+Edit2.Text+'dolgURAL.txt', 'Внимание',
        MB_OK+MB_ICONINFORMATION);
    end;
    end

end;

procedure TForm_print_lists.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_print_lists.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
    begin
     Edit1.Enabled:=false;
     Button1.Caption:='Просмотр'
    end
   else
    begin
     Edit1.Enabled:=true;
     Button1.Caption:='Выгрузка';
    end;
end;

procedure TForm_print_lists.Button3Click(Sender: TObject);
begin
   if clr_=0 then
   begin
    Application.CreateForm(TForm_sel_reu, Form_sel_reu);
    Form_sel_reu.OD_list_choice.Active := false;
    Form_sel_reu.OD_list_choice.SetVariable('clr_',1);
    Form_sel_reu.OD_list_choice.Active := true;
    clr_:=1;
   end
   else
   begin
    Application.CreateForm(TForm_sel_reu, Form_sel_reu);
   end;
end;

procedure TForm_print_lists.Button4Click(Sender: TObject);
begin
   if clr1_=0 then
   begin
    Application.CreateForm(TForm_sel_usl, Form_sel_usl);
    Form_sel_usl.OD_list_choice.Active := false;
    Form_sel_usl.OD_list_choice.SetVariable('clr_',1);
    Form_sel_usl.OD_list_choice.Active := true;
    clr1_:=1;
   end
   else
   begin
    Application.CreateForm(TForm_sel_usl, Form_sel_usl);
   end;
end;

procedure TForm_print_lists.cbbUkPropertiesCloseUp(Sender: TObject);
begin
  Button1.Enabled:=True;
  if (cbbVar.EditValue = '0') or (cbbVar.EditValue = '1') then // Списки по субсидиям
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',52);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.Enabled:=true;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if cbbVar.EditValue = '2' then // Списки по изменениям
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',53);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.Enabled:=true;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if cbbVar.EditValue = '3' then // Списки по льготникам
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',54);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if cbbVar.EditValue = '4' then // Задолжники
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',54);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if cbbVar.EditValue = '5' then // Произвольный файл
  begin
    cbbMg.Enabled:=false;
    Label1.Visible:=true;
    Edit1.Visible:=true;
    Label3.Visible:=false;
    cbbMg.Visible:=false;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if cbbVar.EditValue = '6' then // Списки по льготникам, по орг
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',54);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=true;
    cbbOrg.Visible:=true;
    RadioGroup1.Enabled:=true;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if cbbVar.EditValue = '7' then // Списки по начислению
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',52);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if cbbVar.EditValue = '8' then // Оборотка в DBF
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',54);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if cbbVar.EditValue = '9' then // Задолжники по услугам
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',54);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=0;
    RadioGroup1.Enabled:=false;
    GroupBox3.Enabled:=true;
    GroupBox3.visible:=true;
    Button3.Enabled:=true;
    Button4.Enabled:=true;
    cxtxtVal.Enabled:=true;
    cxImageSel.Enabled:=true;
  end
  else if (cbbVar.EditValue = '10')
    or (cbbVar.EditValue = '11')
    or (cbbVar.EditValue = '12')
    or (cbbVar.EditValue = '16')
    or (cbbVar.EditValue = '17')
    or (cbbVar.EditValue = '18')
    or (cbbVar.EditValue = '19')
    or (cbbVar.EditValue = '20')
    or (cbbVar.EditValue = '21')
    or (cbbVar.EditValue = '22')
    or (cbbVar.EditValue = '23')
    then // Долги для Сбербанка или Почты, для Сбербанка-2
  begin
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',54);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else if (cbbVar.EditValue = '13') or
    (cbbVar.EditValue = '14') then // Отчёт ТСЖ для администрации
  begin
    cbbMg.Enabled:=true;
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',12); //тип отчета - архивы
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=0;
    RadioGroup1.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    Button3.Enabled:=false;
    Button4.Enabled:=false;
    cxtxtVal.Enabled:=true;
    cxImageSel.Enabled:=true;
  end
  else if (cbbVar.EditValue = '15')
    then // Долги для Уралсиба
  begin
    Label1.Visible:=false;
    Label3.Visible:=true;
    Edit1.Visible:=false;
    OD_mg.Active:=false;
    OD_mg.SetVariable('id',54);
    OD_mg.Active:=true;
    cbbMg.EditValue:=null;
    cbbMg.Visible:=true;
    Label2.Visible:=false;
    cbbOrg.Visible:=false;
    RadioGroup1.ItemIndex:=1;
    RadioGroup1.Enabled:=false;
    Button3.Enabled:=true;
    Button4.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox3.visible:=false;
    cxtxtVal.Enabled:=false;
    cxImageSel.Enabled:=false;
  end
  else
  begin  //не выбрано ничего
    Button1.Enabled:=False;
  end;
end;

procedure TForm_print_lists.cxtxtValKeyPress(Sender: TObject;
  var Key: Char);
begin
  if RetKey(Key) then
    Key:= '.';
end;

end.
