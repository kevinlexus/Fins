unit u_frmTwoDates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB,
  cxControls, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxCalendar, cxGraphics, ComCtrls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxSkinsCore, dxSkinsDefaultPainters;

type
  TfrmTwoDates = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    cxdtdt1: TcxDateEdit;
    cxdtdt2: TcxDateEdit;
    lbl3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  //  aDt1, aDt2: TDateTime;
  end;

var
  frmTwoDates: TfrmTwoDates;
  str_: String;
implementation



{$R *.dfm}

procedure TfrmTwoDates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action:=caFree;
end;

procedure TfrmTwoDates.Button1Click(Sender: TObject);
begin
 // Close;
end;

end.
