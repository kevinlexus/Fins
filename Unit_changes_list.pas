unit Unit_changes_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, 
  ComCtrls, Utils, 
  ExtCtrls, OracleNavigator, Menus, Grids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid;

type
  TForm_changes_list = class(TForm)
    OD_changes: TOracleDataSet;
    GroupBox2: TGroupBox;
    Button2: TButton;
    OD_changesLSK: TStringField;
    OD_changesREU: TStringField;
    OD_changesSTREET: TStringField;
    OD_changesND: TStringField;
    OD_changesKW: TStringField;
    OD_changesDTEK: TDateTimeField;
    OD_changesMGCHANGE: TStringField;
    OD_changesPROC: TFloatField;
    OD_changesSUMMA: TFloatField;
    OD_changesNM: TStringField;
    OD_changesNAME: TStringField;
    OD_changesFIO: TStringField;
    OD_changesTS: TDateTimeField;
    OD_changesTEXT: TStringField;
    OD_changesCNT_DAYS: TFloatField;
    OD_changesID: TFloatField;
    OD_changesDOC_ID: TFloatField;
    PopupMenu3: TPopupMenu;
    mnu1: TMenuItem;
    mnu2: TMenuItem;
    OD_changesMG2: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    OracleNavigator1: TOracleNavigator;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1STREET: TcxGridDBColumn;
    cxGrid1DBTableView1ND: TcxGridDBColumn;
    cxGrid1DBTableView1KW: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1DTEK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1PROC: TcxGridDBColumn;
    cxGrid1DBTableView1CNT_DAYS: TcxGridDBColumn;
    cxGrid1DBTableView1nm: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1MGCHANGE: TcxGridDBColumn;
    cxGrid1DBTableView1TS: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1TEXT: TcxGridDBColumn;
    cxGrid1DBTableView1DOC_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    DS_changes: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure state_arch2(mgold_: String);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_changes_list: TForm_changes_list;

implementation

uses Unit_Mainform, DM_module1;

{$R *.dfm}
procedure TForm_changes_list.state_arch2(mgold_: String);
begin // смена состо€ний формы
with Form_changes_list do
begin
  if (Form_main.arch_mg_ <> '') and (mgold_='') then
  begin  // из текущего в архив
    Caption:='ѕросмотр перерасчетов - јрхив';
    change_alias(OD_changes, 'scott.c_change ',
      '(select * from scott.a_change where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_changes, 'scott.c_change_docs',
      '(select * from scott.a_change_docs where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_changes, 'scott.kart',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
  end
  else if (Form_main.arch_mg_ = '') and (mgold_ <> '') then
  begin  // из архива в текущее
    Caption:='ѕросмотр перерасчетов';
    change_alias(OD_changes,
      '(select * from scott.a_change where mg='''+mgold_+''')',
      'scott.c_change ');
    change_alias(OD_changes, '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')',
      'scott.kart');
    change_alias(OD_changes,
      '(select * from scott.a_change_docs where mg='''+mgold_+''')',
      'scott.c_change_docs');
  end
  else if (Form_main.arch_mg_ <> '') and (mgold_ <> '') then
  begin  // из архива в архив
    Caption:='ѕросмотр перерасчетов - јрхив';
    change_alias(OD_changes,
      '(select * from scott.a_change where mg='''+mgold_+''')',
      '(select * from scott.a_change where mg='''+Form_main.arch_mg_+''')'
      );
    change_alias(OD_changes, '(select * from scott.arch_kart where mg='''+mgold_+''')',
      '(select * from scott.arch_kart where mg='''+Form_main.arch_mg_+''')');
    change_alias(OD_changes,
      '(select * from scott.a_change_docs where mg='''+mgold_+''')',
      '(select * from scott.a_change_docs where mg='''+Form_main.arch_mg_+''')'
      );
  end;

end;
end;

procedure TForm_changes_list.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_changes_list.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TForm_changes_list.FormCreate(Sender: TObject);
begin
  state_arch2('');
end;


procedure TForm_changes_list.Button1Click(Sender: TObject);
begin
  OD_changes.QBEMode:=true;
end;

procedure TForm_changes_list.mnu1Click(Sender: TObject);
begin
  //удаление строки перерасчета
  DataModule1.OraclePackage1.CallProcedure
     ('scott.C_CHANGES.del_chng', [OD_changes.FieldByName('id').AsInteger]);
  OD_changes.Active:=False;
  OD_changes.Active:=True;
end;

procedure TForm_changes_list.mnu2Click(Sender: TObject);
begin
  //удаление перерасчета в целом
  DataModule1.OraclePackage1.CallProcedure
     ('scott.C_CHANGES.del_chng_doc', [OD_changes.FieldByName('doc_id').AsInteger]);
  OD_changes.Active:=False;
  OD_changes.Active:=True;
end;

end.
