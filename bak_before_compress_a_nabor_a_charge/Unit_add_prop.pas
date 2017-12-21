unit Unit_add_prop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit, DB,
  Wwdatsrc, OracleData, ExtCtrls, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Utils;

type
  TForm_add_prop = class(TForm)
    OD_list: TOracleDataSet;
    DS_list: TwwDataSource;
    Timer2: TTimer;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    wwDBEdit1: TwwDBEdit;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    OD_listID: TFloatField;
    OD_listNAME: TStringField;
    procedure Timer2Timer(Sender: TObject);
    procedure wwDBEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
    procedure OD_listPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    cdtp_, flt_: String;
    var_: Integer;
  public
    procedure seltp(tp_: String);
  end;

var
  Form_add_prop: TForm_add_prop;

implementation

uses DM_module1, Unit_form_kart_pr;

{$R *.dfm}

procedure TForm_add_prop.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled:=False;
  if (flt_ <> wwDBEdit1.Text) then
  begin
    flt_:=wwDBEdit1.Text;
    //Применить фильтр по выражению
    OD_list.Active:=false;
    OD_list.SetVariable('flt_', flt_);
    OD_list.Active:=true;
    if (OD_list.RecordCount > 0) and (flt_ <> '') then
      begin
        //Найдено по фильтру
        OD_list.First;
        Button1.Caption:='Выбрать из списка';
      end
     else if (OD_list.RecordCount > 0) and (flt_ = '') then
      begin
        //Найдено без фильтра
        OD_list.First;
        Button1.Caption:='Выбрать из списка';
      end
     else if (OD_list.RecordCount = 0) and (flt_ <> '') then
      begin
        //Не найдено с фильтром
        Button1.Caption:='Добавить новый';
      end;
  end;
  
  Timer2.Enabled:=True;

end;

procedure TForm_add_prop.wwDBEdit1Change(Sender: TObject);
begin
  Timer2.Enabled:=false;
  Timer2.Enabled:=true;
end;

procedure TForm_add_prop.seltp(tp_: String);
begin
  cdtp_:=tp_;
  OD_list.Active:=false;
  OD_list.SetVariable('tp_', tp_);
  OD_list.Active:=true;
end;

procedure TForm_add_prop.FormCreate(Sender: TObject);
begin
 var_:=0;
end;

procedure TForm_add_prop.Button1Click(Sender: TObject);
var
 new_id_:Integer;
begin

    if not (OD_list.State in [dsBrowse]) then
     OD_list.Post;


    if (OD_list.RecordCount > 0) and (flt_ <> '') then
      begin
        //Найдено по фильтру
        var_:=1;
      end
     else if (OD_list.RecordCount > 0) and (flt_ = '') then
      begin
        //Найдено без фильтра
        var_:=1;
      end
     else if (OD_list.RecordCount = 0) and (flt_ <> '') then
      begin
        //Не найдено с фильтром
        var_:=0;
      end;

    if var_=0 then
    begin
      if wwDBEdit1.Text <> '' then
      begin
      //Добавление нового реквизита
        new_id_:=DataModule1.OraclePackage1.CallIntegerFunction
               ('scott.utils.add_list', [cdtp_, wwDBEdit1.Text, wwDBEdit1.Text]);
        OD_list.Active:=False;
        OD_list.Active:=True;
        OD_list.Locate('id', new_id_, []);
        wwDBEdit1.Text:=OD_list.FieldByName('name').AsString;
        flt_:='';
      end
      else
      begin
        msg2('Указано пустое значение!', 'Внимание!', MB_OK+MB_ICONSTOP);
      end;
    end
    else
    begin
      //Выбор существующего реквизита
      Form_kart_pr.sel_id_:=OD_list.FieldByName('id').AsInteger;
      Close;
    end;
end;

procedure TForm_add_prop.Button2Click(Sender: TObject);
begin
  Form_kart_pr.sel_id_:=-1;
  Close;
end;

procedure TForm_add_prop.wwDBNavigator1DeleteClick(Sender: TObject);
begin
  if msg3('Удалить строку?',
   'Внимание!',
   MB_YESNO+MB_ICONQUESTION) <> IDYES then
  begin
    Abort;
  end;
end;

procedure TForm_add_prop.OD_listPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  if DataSet.FieldByName('name').Value = null then
    msg2('Указано пустое наименование реквизита','Внимание!',
     MB_OK+MB_ICONSTOP)
  else
   ShowMessage(E.Message);

  Action := daAbort;
end;

end.
