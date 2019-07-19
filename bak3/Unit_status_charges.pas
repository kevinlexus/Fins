unit Unit_status_charges;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Unit_intreadgen, ExtCtrls, Test1, SyncObjs;

type
  TForm_status_charges = class(TForm)
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar4: TProgressBar;
    ProgressBar5: TProgressBar;
    ProgressBar6: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Thread1: TThread;
    Thread2: TThread;
    Thread3: TThread;
    Thread4: TThread;
    Thread5: TThread;
    Thread6: TThread;
  public
  end;

var
  Form_status_charges: TForm_status_charges;
  Counter: Integer;
implementation

uses Unit_generate, DM_module1, Unit_Mainform;

{$R *.dfm}

procedure TForm_status_charges.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
