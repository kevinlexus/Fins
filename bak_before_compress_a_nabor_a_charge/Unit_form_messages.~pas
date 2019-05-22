unit Unit_form_messages;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, DBGridEh, ExtCtrls, DBCtrls, StdCtrls,
  Buttons, Mask, DBCtrlsEh, DBLookupEh, GridsEh;

type
  TForm_messages = class(TForm)
    OD_messages: TOracleDataSet;
    DS_messages: TDataSource;
    DBGridEh1: TDBGridEh;
    OD_messagesUSER_ID: TFloatField;
    OD_messagesFROM_ID: TFloatField;
    OD_messagesTEXT: TStringField;
    OD_messagesIS_READ: TFloatField;
    OD_all_users: TOracleDataSet;
    OD_messagesUSERNAME: TStringField;
    OD_messagesDAT: TDateTimeField;
    OD_messagesUSERNAME2: TStringField;
    DBMemo1: TDBMemo;
    OD_messagesCAN_SET_IS_READ: TFloatField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DS_all_users: TDataSource;
    Label1: TLabel;
    OD_messagesIS_READ_LAMP: TFloatField;
    OD_messagesID: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    id_:Integer;
    { Public declarations }
  end;

var
  Form_messages: TForm_messages;

implementation

{$R *.dfm}

procedure TForm_messages.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_messages.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if (OD_messages.FieldByName('is_read').AsInteger = 0) and
    (OD_messages.FieldByName('can_set_is_read').AsInteger = 1) then
  begin
    Background := clYellow;       //$00FFC4C4; //цвет первой
  end
  else
  begin
    Background := clWhite;       //$00FFDDDD;//цвет второй     Color
  end;
end;

procedure TForm_messages.DBGridEh1CellClick(Column: TColumnEh);
begin
if (OD_messages.FieldByName('is_read').AsInteger = 0) and
    (OD_messages.FieldByName('can_set_is_read').AsInteger = 1) then
  begin
    OD_messages.Edit;
    OD_messages.FieldByName('is_read').AsInteger:=1;
    OD_messages.Post;
 end;
end;

procedure TForm_messages.Button1Click(Sender: TObject);
begin
  if (DBLookupComboboxEh1.KeyValue = null)
      or (Memo1.Text = null) or (Memo1.Text = '') then
    Application.MessageBox('Попытка отправить пустое сообщение',
        'Внимание!', 16+MB_APPLMODAL)
  else
  begin
    OD_messages.InsertRecord([DBLookupComboboxEh1.KeyValue,
       null, Memo1.Text, 0, null, null, null]);
    OD_messages.Refresh;
    DBGridEh1.Refresh;
    OD_messages.Last;
    Memo1.Text:=' ';
    Memo1.Visible:=false;
    DBLookupComboboxEh1.Visible:=false;
    Label1.Visible:=false;
  end;
end;

procedure TForm_messages.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_messages.Button4Click(Sender: TObject);
Var
  str_:String;
begin
  //Ответ
  id_:=OD_messages.FieldByName('from_id').AsInteger;
  str_:=OD_messages.FieldByName('text').AsString;
  try
    DBLookupComboboxEh1.KeyValue:=id_;
    Memo1.Text:='>> '+str_;
    Memo1.Visible:=true;
    DBLookupComboboxEh1.Visible:=true;
    Label1.Visible:=true;
  except
  end;
end;

procedure TForm_messages.FormShow(Sender: TObject);
begin
    OD_messages.Last;
end;

procedure TForm_messages.Button2Click(Sender: TObject);
begin
    Memo1.Text:='';
    Memo1.Visible:=true;
    DBLookupComboboxEh1.Visible:=true;
    Label1.Visible:=true;
end;

procedure TForm_messages.SpeedButton1Click(Sender: TObject);
begin
  OD_messages.Refresh;
  OD_messages.Last;
end;

procedure TForm_messages.FormCreate(Sender: TObject);
begin
  OD_messages.Active:=true;
end;

end.
