unit Unit_change_house_vvod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, DB, OracleData;

type
  TForm_change_house_vvod = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    OD_vvod2: TOracleDataSet;
    OD_vvodID: TFloatField;
    DS_vvod2: TDataSource;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_vvod2VVOD_NUM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_change_house_vvod: TForm_change_house_vvod;

implementation

uses Unit_houses_nabor, DM_module1, Unit_status;

{$R *.dfm}

procedure TForm_change_house_vvod.FormCreate(Sender: TObject);
begin
  OD_vvod2.Active:=False;
  OD_vvod2.SetVariable('house_id_',
    Form_houses_nabor.OD_vvod.FieldByName('house_id').AsInteger);
  OD_vvod2.SetVariable('usl_',
    Form_houses_nabor.OD_vvod.FieldByName('usl').AsString);
  OD_vvod2.Active:=true;

  wwDBLookupCombo3.LookupValue:=
    Form_houses_nabor.OD_vvod.FieldByName('vvod_num').AsString;

end;

procedure TForm_change_house_vvod.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_change_house_vvod.Button1Click(Sender: TObject);
var
  bm: TBookmark;
begin
  //изменение № ввода в квартирах выбранного дома
  Application.CreateForm(TForm_status, Form_status);
  Form_status.Update;
  DataModule1.OraclePackage1.CallProcedure
       ('scott.p_houses.change_house_vvod',
       [Form_houses_nabor.OD_vvod.FieldByName('house_id').AsInteger,
        Form_houses_nabor.OD_vvod.FieldByName('usl').AsString,
       OD_vvod2.FieldByName('id').AsVariant,
       Form_houses_nabor.OD_vvod.FieldByName('fk_vvod').AsInteger
       ]);
  bm:=Form_houses_nabor.OD_vvod.GetBookmark;
  Form_houses_nabor.OD_vvod.Active:=false;
  Form_houses_nabor.OD_vvod.Active:=true;
  try
  Form_houses_nabor.OD_vvod.GotoBookmark(bm);
        except
      end;

  Form_status.Close;
  Close;

end;

end.
