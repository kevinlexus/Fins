unit Unit_form_pay_dolg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, StdCtrls, Mask,
  Menus, cxClasses, cxPropertiesStore, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxMaskEdit, cxContainer,
  cxTextEdit;

type
  TForm_get_pay_dolg = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    CheckBox1: TCheckBox;
    btn1: TButton;
    Button2: TButton;
    Label1: TLabel;
    pm1: TPopupMenu;
    N1: TMenuItem;
    cxprprtstr1: TcxPropertiesStore;
    HeaderControl1: THeaderControl;
    Button3: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1MG: TcxGridDBColumn;
    cxGrid1DBTableView1CHARGE: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA: TcxGridDBColumn;
    cxGrid1DBTableView1ITOG: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1USL_NAME_SHORT: TcxGridDBColumn;
    cxSumma: TcxMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure OD_chargepayBeforeInsert(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure exit_ok;
    procedure CheckBox1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxSummaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure recalc;
    { Public declarations }
  end;

var
  Form_get_pay_dolg: TForm_get_pay_dolg;

implementation

uses Unit_get_pay_nal, Utils, Math, DM_module1;

{$R *.dfm}

procedure TForm_get_pay_dolg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxprprtstr1.StoreTo(True);
  Action := caFree;
end;

procedure TForm_get_pay_dolg.FormCreate(Sender: TObject);
begin
  //Настройки расположения формы
  cxprprtstr1.Active := True;
  cxprprtstr1.RestoreFrom;

  //Form_get_pay_nal.OD_chargepay.Filter:='((summa > 0) or (penya > 0)) and (sal > 0)';
  Form_get_pay_nal.OD_chargepay.Filter := '((summa2 > 0) or (penya2 > 0))';
  // ред.08.07.2019 убрал  and (sal > 0) по просьбе Полыс
  Form_get_pay_nal.OD_chargepay.Filtered := true;
  cxGrid1DBTableView1.Controller.FocusedColumn := cxGrid1DBTableView1SUMMA;
end;

procedure TForm_get_pay_dolg.OD_chargepayBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TForm_get_pay_dolg.Button1Click(Sender: TObject);
begin
  exit_ok;
  Close;
end;

procedure TForm_get_pay_dolg.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm_get_pay_dolg.exit_ok;
var
  AColumn: TcxGridDBColumn;
  ASummaryItem: TcxDataSummaryItem;
  sResult: string;
  ASummaryIndex: Integer;
  summa, penya, itog: Double;
begin
  Form_get_pay_nal.cxSumma.Text := cxSumma.Text;
  with Form_get_pay_nal do
  begin
    if not (OD_chargepay.State in [dsBrowse]) then
      OD_chargepay.Post;
  end;

  AColumn := cxGrid1DBTableView1.GetColumnByFieldName('SUMMA');
  if AColumn <> nil then
  begin
    ASummaryItem :=
      cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.GetDataItem(AColumn.Index, spFooter);
    if ASummaryItem <> nil then
    begin
      ASummaryIndex := ASummaryItem.Index;
      sResult :=
        VarToStr(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[ASummaryIndex]);
      summa := StrToFloat(sResult);
    end;
  end;

  AColumn := cxGrid1DBTableView1.GetColumnByFieldName('PENYA');
  if AColumn <> nil then
  begin
    ASummaryItem :=
      cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.GetDataItem(AColumn.Index, spFooter);
    if ASummaryItem <> nil then
    begin
      ASummaryIndex := ASummaryItem.Index;
      sResult :=
        VarToStr(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[ASummaryIndex]);
      penya := StrToFloat(sResult);
    end;
  end;

  AColumn := cxGrid1DBTableView1.GetColumnByFieldName('ITOG');
  if AColumn <> nil then
  begin
    ASummaryItem :=
      cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.GetDataItem(AColumn.Index, spFooter);
    if ASummaryItem <> nil then
    begin
      ASummaryIndex := ASummaryItem.Index;
      sResult :=
        VarToStr(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[ASummaryIndex]);
      itog := StrToFloat(sResult);
    end;
  end;

  with Form_get_pay_nal.OD_c_kwtp_temp do
  begin
    Edit;
    FieldByName('summa').AsFloat := summa;

    FieldByName('penya').AsFloat := penya;

    FieldByName('itog').AsFloat := itog;
    Post;
  end;

end;

procedure TForm_get_pay_dolg.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    Form_get_pay_nal.OD_chargepay.Filtered := false;
  end
  else
  begin
    Form_get_pay_nal.OD_chargepay.Filter := '(summa > 0) and (sal > 0)';
    Form_get_pay_nal.OD_chargepay.Filtered := true;
  end;
end;

procedure TForm_get_pay_dolg.recalc;
var
  penya_, summa_, itog_, itogD_, proc1_, penya2_, tt2: Double;
begin
  penya_ :=
    cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('PENYA').AsFloat;
  summa_ :=
    cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('SUMMA').AsFloat;
  itogD_ := summa_ + penya_;
  if (itogD_ <> 0) and not (CheckBox1.Checked) then
  begin
    itog_ :=
      cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('ITOG').AsFloat;

    proc1_ := (summa_ / itogD_); // % суммы долга

    tt2 := RoundTo((itog_ * proc1_), -2);
    cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('SUMMA').AsFloat := tt2;
    penya2_ := itog_ - tt2;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('PENYA').AsFloat := penya2_;
  end
  else if (itogD_ <> 0) and (CheckBox1.Checked) then
  begin
    cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('ITOG').AsFloat := itogD_;
  end
  else
  begin
    //зануляем ошибочно введенную итоговую сумму
    cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('ITOG').AsFloat := 0;
  end;
end;

procedure TForm_get_pay_dolg.btn1Click(Sender: TObject);
begin
  //очистка предложенных к оплате сумм долгов и начисления
  with Form_get_pay_nal.OD_chargepay do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if not (State in [dsEdit]) then
        Edit;
      FieldByName('SUMMA').AsInteger := 0;
      FieldByName('PENYA').AsInteger := 0;
      Next;
    end;
    if State = dsEdit then
      Post;
    EnableControls;
  end;

end;

procedure TForm_get_pay_dolg.N1Click(Sender: TObject);
begin
  //убрать входящее сальдо по пене
  if DataModule1.OraclePackage1.CallIntegerFunction
    ('scott.C_CPENYA.corr_sal_pen',
    [Form_get_pay_nal.cxLsk.Text,
    Form_get_pay_nal.OD_chargepay.FieldByName('mg').AsString]) <> 0 then
  begin
    msg2('Входящего сальдо по пене нет, либо уже удалено!', 'Внимание!', MB_OK +
      MB_ICONSTOP);
  end
  else
  begin
    Form_get_pay_nal.reLoadDeb;
    Form_get_pay_nal.OD_chargepay.First;
    {    with Form_get_pay_nal.OD_chargepay do
        begin
          //заново залить задолжность
          DataModule1.OraclePackage1.CallProcedure(
            'scott.C_GET_PAY.init_c_kwtp_temp_dolg',
            [Form_get_pay_nal.cxLsk.Text]);
          Active := false;
          Active := true;
          //заново залить задолжность
          First;
        end;}
  end;

end;

procedure TForm_get_pay_dolg.Button3Click(Sender: TObject);
begin
  // Восстановить распределение оплаты
  Form_get_pay_nal.reLoadDeb;
end;

procedure TForm_get_pay_dolg.cxGrid1DBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
var
  summa, penya: Double;
  {  recIdx, colIdx: Integer;
    OutputVal: Variant;
   }
begin
  if (AFocusedItem = cxGrid1DBTableView1ITOG) then
  begin

    summa :=
      cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('SUMMA').AsFloat;
    penya :=
      cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('PENYA').AsFloat;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('ITOG').AsFloat :=
      summa + penya;
  end;

  {  recIdx := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
    colIdx :=
      cxGrid1DBTableView1.DataController.GetItemByFieldName('SUMMA').Index;
    summaStr := VarToStr(cxGrid1DBTableView1.DataController.Values[recIdx, colIdx]);
    colIdx :=
      cxGrid1DBTableView1.DataController.GetItemByFieldName('PENYA').Index;
    penyaStr := VarToStr(cxGrid1DBTableView1.DataController.Values[recIdx, colIdx]);

    if summaStr='' then
       summaStr:='0';

    if penyaStr='' then
       penyaStr:='0';
   }
  //  colIdx :=
  //    cxGrid1DBTableView1.DataController.GetItemByFieldName('ITOG').Index;
  //  cxGrid1DBTableView1.DataController.Values[recIdx, colIdx] :=
  //    StrToFloat(summaStr) + StrToFloat(penyaStr)+77777;
end;

procedure TForm_get_pay_dolg.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
var
  isItog: Boolean;
begin
  if RetKey(Key) then
    Key := '.';

  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
  begin
    if (Controller.FocusedColumn = cxGrid1DBTableView1ITOG) then
      isItog := True
    else
      isItog := False;

    begin
      if (Key = #13) and (isItog = true) then
      begin
        if (cxGrid1DBTableView1.DataController.DataSource.DataSet.Eof = true)
          then
        begin
          exit_ok;
          Close;
        end
        else if (cxGrid1DBTableView1.DataController.DataSource.DataSet.Eof <>
          true) then
        begin
          //key := #40;
          cxGrid1DBTableView1.DataController.DataSource.DataSet.Next;
          if (cxGrid1DBTableView1.DataController.DataSource.DataSet.Eof = true)
            then
          begin
            exit_ok;
            Close;
          end
          else
            Controller.FocusedColumn := cxGrid1DBTableView1SUMMA;
        end;
      end;
    end;
  end;
end;

procedure TForm_get_pay_dolg.cxSummaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if cxSumma.Text <> '' then
    begin
      Form_get_pay_nal.distPay(StrToFloat(cxSumma.Text), True, True, True,
        False);
    end;
    Windows.SetFocus(Button1.Handle);
  end;

end;

end.

