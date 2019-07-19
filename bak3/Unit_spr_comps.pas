unit Unit_spr_comps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, OracleData, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, wwdblook;

type
  TForm_spr_comps = class(TForm)
    OD_c_comps: TOracleDataSet;
    DS_c_comps: TDataSource;
    OD_org: TOracleDataSet;
    DS_org: TDataSource;
    OD_oper: TOracleDataSet;
    DS_oper: TDataSource;
    wwDBGrid1: TwwDBGrid;
    OD_c_compsNKOM: TStringField;
    OD_c_compsNINK: TFloatField;
    OD_c_compsNKVIT: TFloatField;
    OD_c_compsCD: TStringField;
    OD_c_compsFK_OPER: TStringField;
    OD_c_compsFK_ORG: TFloatField;
    OD_c_compsNAME_OPER: TStringField;
    OD_c_compsNAME_ORG: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Panel2: TPanel;
    Panel1: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    Button1: TButton;
    OD_c_compsPERIOD: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_spr_comps: TForm_spr_comps;

implementation

{$R *.dfm}

procedure TForm_spr_comps.FormCreate(Sender: TObject);
begin
  OD_c_comps.Active:=True;
  OD_org.Active:=True;
  OD_oper.Active:=True;
end;

procedure TForm_spr_comps.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TForm_spr_comps.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
