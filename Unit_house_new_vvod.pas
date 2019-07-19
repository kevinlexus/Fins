unit Unit_house_new_vvod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrlsEh, DBGridEh, DB,
  OracleData, wwdblook, wwdbedit, Wwdbspin, ImgList, 
  cxControls, cxContainer, cxEdit,
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxGroupBox,
  cxRadioGroup, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TForm_house_new_vvod = class(TForm)
    Label1: TLabel;
    OD_c_vvod_usl: TOracleDataSet;
    DS_c_vvod_type: TDataSource;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label6: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    OD_houses: TOracleDataSet;
    OD_streets: TOracleDataSet;
    DS_houses: TDataSource;
    DS_streets: TDataSource;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBSpinEdit1: TwwDBSpinEdit;
    Label3: TLabel;
    OD_c_vvod_uslUSL: TStringField;
    OD_c_vvod_uslNM: TStringField;
    ImageList1: TImageList;
    cxrdgrp1: TcxRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure wwDBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure wwDBLookupCombo3KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupCombo2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cxrdgrp1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_house_new_vvod: TForm_house_new_vvod;

implementation

uses DM_module1, Utils, Unit_house_vvod;

{$R *.dfm}

procedure TForm_house_new_vvod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TForm_house_new_vvod.Button1Click(Sender: TObject);
var
  house_id_, fk_vvod_: Integer;
begin
 if (cxrdgrp1.ItemIndex=0) and (wwDBLookupCombo2.Text = '') then
 begin
   msg2('Не указана услуга ввода!',
          'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
 end
 else if wwDBLookupCombo3.Text = '' then
 begin
   msg2('Не указан адрес дома!',
          'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
 end
 else
 begin
   house_id_:=OD_houses.FieldByName('house_id').asInteger;
   if (cxrdgrp1.ItemIndex=0) then
   fk_vvod_:=DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.P_VVOD.create_vvod', [house_id_,
           OD_c_vvod_usl.FieldByName('usl').AsString,
           StrToInt(wwDBSpinEdit1.Text)])
   else
   fk_vvod_:=DataModule1.OraclePackage1.CallIntegerFunction
         ('scott.P_VVOD.create_vvod', [house_id_,
           '',
           StrToInt(wwDBSpinEdit1.Text)]);
   if fk_vvod_ <> -1 then
   begin
      if FF('Form_house_vvod',0) =1 then
      begin
        Form_house_vvod.OD_vvod.Refresh;
        Form_house_vvod.OD_vvod.Locate('id', fk_vvod_, [loCaseInsensitive]);
      end;

      msg2('Ввод добавлен!',
           'Внимание!', MB_ICONINFORMATION +MB_OK+MB_APPLMODAL);
   end
   else
     msg2('Данный ввод уже существует в доме!',
           'Внимание!', MB_ICONSTOP+MB_OK+MB_APPLMODAL);
 end;
end;

procedure TForm_house_new_vvod.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_house_new_vvod.wwDBLookupCombo1KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
//    wwDBLookupCombo3.SetFocus;
Windows.SetFocus(wwDBLookupCombo3.Handle);
  except
  end;
end;

procedure TForm_house_new_vvod.wwDBLookupCombo1Change(Sender: TObject);
begin
  wwDBLookupCombo3.Text:='';
end;

procedure TForm_house_new_vvod.wwDBLookupCombo3KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
//    wwDBLookupCombo2.SetFocus;
Windows.SetFocus(wwDBLookupCombo2.Handle);
  except
  end;
end;

procedure TForm_house_new_vvod.wwDBLookupCombo2KeyPress(Sender: TObject;
  var Key: Char);
begin
 try
  if Key = #13 then
//    wwDBSpinEdit1.SetFocus;
Windows.SetFocus(wwDBSpinEdit1.Handle);
  except
  end;
end;

procedure TForm_house_new_vvod.FormCreate(Sender: TObject);
begin
  OD_houses.Active:=true;
  OD_streets.Active:=true;
  OD_c_vvod_usl.Active:=true;
  wwDBLookupCombo1.LookupValue:=
     Form_house_vvod.OD_vvod.FieldByName('name').AsString;
  wwDBLookupCombo2.LookupValue:=
     Form_house_vvod.OD_vvod.FieldByName('vvod').AsString;
  OD_houses.Locate('house_id',
    Form_house_vvod.OD_vvod.FieldByName('house_id').AsInteger,[]);
  wwDBLookupCombo3.LookupValue:=OD_houses.FieldByName('nd').AsString;
end;

procedure TForm_house_new_vvod.cxrdgrp1Click(Sender: TObject);
begin

  if (cxrdgrp1.ItemIndex=0) then
  begin
    Label1.Visible:=True;
    wwDBLookupCombo2.Visible:=True;
  end
  else
  begin
    Label1.Visible:=False;
    wwDBLookupCombo2.Visible:=False;
  end;

end;

end.
