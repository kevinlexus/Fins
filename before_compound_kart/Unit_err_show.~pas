unit Unit_err_show;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, OracleData, UnGridToClb, ClipBrd,
  StdCtrls, Menus;

type
  TForm_err_show = class(TForm)
    OD_data: TOracleDataSet;
    wwDBGrid1: TwwDBGrid;
    DS_data: TDataSource;
    GroupBox1: TGroupBox;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_err_show: TForm_err_show;

implementation

{$R *.dfm}

procedure TForm_err_show.FormCreate(Sender: TObject);
begin
  OD_data.Active:=True;
end;

procedure TForm_err_show.Button1Click(Sender: TObject);
begin
  Close;
end;

function GetColString(ARow:string; AColNo:integer):string;
// func to retrieve a certain column from a tab-separated string
var i : integer;
    p,h : pchar;
begin
  i:=0;
  p:=@ARow[1];
  while (i<AColNo) and Assigned(p) do begin
    p:=StrScan(@p[1],#9);
    inc(i);
  end;

  if Assigned(p)
    then begin
      h:=StrScan(@p[1],#9); // find end of col
      if Assigned(h)
        then h[0]:=#0; // replace tab by #0
      if AColNo=0
        then Result:=Trim(StrPas(@p[0]))
        else Result:=Trim(StrPas(@p[1]));
    end
    else Result:=''; // col does not exists -> return empty string
end;

procedure TForm_err_show.N1Click(Sender: TObject);
var i : integer;
    Buf : string;
    FldList : TList;
begin
  if not OD_data.Active then exit;
  FldList:=TList.Create;
  try
       // Column headings
    Buf:='';
    for i:=0 to wwDBGrid1.Selected.Count-1 do begin
      if i<wwDBGrid1.Selected.Count-1
        then Buf:=Buf+GetColString(wwDBGrid1.Selected[i],2)+#9
        else Buf:=Buf+GetColString(wwDBGrid1.Selected[i],2)+#13+#10;
        // Put references of the fields in a temp list
        // to keep column oder
      FldList.Add(OD_data.FieldByName(GetColString(wwDBGrid1.Selected[i],0)));

    end;

      // Data
    OD_data.DisableControls;
    OD_data.First;
    while not OD_data.EOF do begin
      for i:=0 to FldList.Count-1 do begin
        if i<FldList.Count-1
          then Buf:=Buf+TField(FldList[i]).AsString+#9
          else Buf:=Buf+TField(FldList[i]).AsString+#13+#10;
      end;
      OD_data.Next;
    end;
    OD_data.First;
    OD_data.EnableControls;

    Clipboard.Open;
    Clipboard.AsText:=Buf;
    Clipboard.Close;
  finally
    FldList.Free;
  end;
end;

end.
