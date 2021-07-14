unit u_frmLoadPrivs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, cxControls,
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxShellListView, StdCtrls, dxCustomWizardControl,
  dxWizardControl, ExtCtrls, Oracle, 
  DB, 
  cxGridLevel, cxClasses, cxGridCustomTableView,
  cxGridDBTableView, cxGrid, cxDBLookupComboBox,
  OracleData, 
  cxGraphics, 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  cxImageComboBox, cxLookAndFeels, cxLookAndFeelPainters, ShlObj,
  cxShellCommon, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxGridTableView,
  cxGridCustomView, cxListView;

type
  TfrmLoadPrivs = class(TForm)
    dxwzrdcntrl1: TdxWizardControl;
    dxwzrdcntrlpg1: TdxWizardControlPage;
    dxwzrdcntrlpg2: TdxWizardControlPage;
    lst1: TcxShellListView;
    pnl1: TPanel;
    mmo1: TMemo;
    dxwzrdcntrlpg3: TdxWizardControlPage;
    dxwzrdcntrlpg4: TdxWizardControlPage;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1KUL: TcxGridDBColumn;
    cxGrid1DBTableView1EXT_NYLIC: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1EXT_NDOM: TcxGridDBColumn;
    cxGridDBTableView1EXT_NKORP: TcxGridDBColumn;
    OD_prep_street: TOracleDataSet;
    DS_prep_street: TDataSource;
    OD_prep_house: TOracleDataSet;
    DS_prep_house: TDataSource;
    OD_lkp_house: TOracleDataSet;
    DS_lkp_house: TDataSource;
    chk2: TCheckBox;
    pnl2: TPanel;
    chk3: TCheckBox;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    dxwzrdcntrlpg5: TdxWizardControlPage;
    OD_file: TOracleDataSet;
    DS_file: TDataSource;
    dxwzrdcntrlpg6: TdxWizardControlPage;
    mmo2: TMemo;
    OD_data: TOracleDataSet;
    Panel1: TPanel;
    OD_mg1: TOracleDataSet;
    cbb1: TcxLookupComboBox;
    lbl1: TLabel;
    DS_mg1: TDataSource;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    cxImageComboBox1: TcxImageComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dxwzrdcntrl1ButtonClick(Sender: TObject;
      AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
    procedure dxwzrdcntrl1PageChanging(Sender: TObject;
      ANewPage: TdxWizardControlCustomPage; var AAllow: Boolean);
    procedure OD_prep_houseAfterScroll(DataSet: TDataSet);
    procedure chk3Click(Sender: TObject);
    procedure cxGridDBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure chk2Click(Sender: TObject);
    procedure cxImageComboBox1PropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoadPrivs: TfrmLoadPrivs;

implementation

uses DM_module1, Utils;

{$R *.dfm}

procedure TfrmLoadPrivs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (OD_prep_house.State = dsEdit) then
    OD_prep_house.Post;
  Action:=caFree;
end;

procedure TfrmLoadPrivs.FormCreate(Sender: TObject);
begin
   lst1.Path:='c:\temp';
   OD_mg1.Active:=true;
   cbb1.EditValue:=OD_mg1.FieldByName('mg').AsString;
end;

procedure TfrmLoadPrivs.dxwzrdcntrl1ButtonClick(Sender: TObject;
  AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
var
  clr, i, err: Integer;
  AFilename: WideString;
begin
  if AKind=wcbkCancel then
    Close
  else if AKind=wcbkNext then
  begin
    if dxwzrdcntrl1.ActivePageIndex=0 then //��� �������� � �������� ������, � ���� ��������
    begin
    if chk2.Checked then //�������� ���� ������, ����������� ������������
        DataModule1.OraclePackage1.CallProcedure(
         'scott.c_load_privs.clear_spr', [parNone]);

    mmo1.Clear;
    clr:=1;

    for i:=0 to lst1.InnerListView.Items.Count-1 do //.SelectedFilePaths.Count-1 do
    begin
      if lst1.InnerListView.Items[i].selected then
      begin
        AFileName := lst1.InnerListView.Items[i].Caption;
        try
          err:=0;
          if clr=1 then
          begin
            DataModule1.OraclePackage1.CallProcedure(
             'scott.c_load_privs.clear_tabs', [parNone]);
            DataModule1.OracleSession1.Commit;
          end;
          DataModule1.OraclePackage1.CallProcedure(
           'scott.dbase_pkg.load_db', ['LOAD_FILE_DIR',
                  clr, AFileName, 'load_privs', 0]);
          DataModule1.OraclePackage1.CallProcedure(
           'scott.c_load_privs.add_file', [AFileName]);
          DataModule1.OracleSession1.Commit;
          //�������� ������� ���������, ����� �������� ������� �����
          if clr=1 then
          begin
            mmo1.Lines.Add('������ ������');
            clr:=0;
          end;
        except on E: EOracleError do
          begin
            err:=1;
            mmo1.Lines.Add('�� ��������: '+AFileName);
            mmo1.Lines.Add('������: '+E.Message);
            Update;
          end;
        end;
        if err=0 then
          mmo1.Lines.Add('��������: '+AFileName);

      end;
    end;

    //��������� �����������, ������������ ��������
    DataModule1.OraclePackage1.CallProcedure(
         'scott.c_load_privs.prep_street', [parNone]);
          DataModule1.OracleSession1.Commit;

    end
    else if dxwzrdcntrl1.ActivePageIndex=2 then //��� �������� �� ����������� ���� � ����������� �����
    begin
      if (OD_prep_street.State = dsEdit) then
        OD_prep_street.Post;
      DataModule1.OraclePackage1.CallProcedure(
           'scott.c_load_privs.prep_house', [parNone]);
          DataModule1.OracleSession1.Commit;
    end
    else if dxwzrdcntrl1.ActivePageIndex=3 then //��� �������� �� ����������� ����� � �������� ����������
    begin

    end
    else if dxwzrdcntrl1.ActivePageIndex=4 then //��� �������� � �������� ���������� �� ��������� ��������
    begin
      with OD_file do
      begin
      Active:=False;
      Active:=True;
      mmo2.Clear;
       while not Eof do
       begin
         //��������� ������
         if not CheckBox1.Checked then
           // ������ ������� (����� ������� �� �����)
           DataModule1.OraclePackage1.CallProcedure(
             'scott.c_load_privs.prep_output', [cbb1.EditValue, FieldByName('id').AsInteger, parInteger])
         else
           // ����� ������� (���� ������ �� �����)
           DataModule1.OraclePackage1.CallProcedure(
             'scott.c_load_privs.prep_output2', [cbb1.EditValue, FieldByName('id').AsInteger,
              parInteger, cxImageComboBox1.ItemIndex]);
         err:=DataModule1.OraclePackage1.GetParameter(2);
         DataModule1.OracleSession1.Commit;
         //�������� ������ �� ����������
         OD_data.SetVariable('p_file', FieldByName('id').AsInteger);
         OD_data.SetVariable('p_tp', cxImageComboBox1.ItemIndex);
         OD_data.Active:=False;
         OD_data.Active:=True;
         exp_to_dbf_prec(OD_data, 'LOAD_PRIVS', 'SCOTT', 'c:\temp\out\'+FieldByName('name').AsString);
         mmo2.Lines.Add('��������: '+FieldByName('name').AsString);
         if err = 1 then
            mmo2.Lines.Add('��������! � �����: '+FieldByName('name').AsString+' ���-�� ������� � �������� ������ ��� � ���������!')
         else if err = 2 then
            mmo2.Lines.Add('��������! � �����: '+FieldByName('name').AsString+' ���-�� ������� � �������� ������ ��� � ���������!');

         Update;
         Next;
       end;
      end;
    end;
    ;
  end
  else if AKind=wcbkFinish then
  begin
    Close;
  end;

end;

procedure TfrmLoadPrivs.dxwzrdcntrl1PageChanging(Sender: TObject;
  ANewPage: TdxWizardControlCustomPage; var AAllow: Boolean);
begin
  if ANewPage.PageIndex=2 then
  begin
    //�������� ����������� ����
    DataModule1.OD_spul.Active:=True;

    OD_prep_street.Active:=False;
    OD_prep_street.Active:=True;
  end
  else if ANewPage.PageIndex=3 then
  begin
    //�������� ����������� �����
    OD_prep_house.Active:=False;
    OD_prep_house.Active:=True;
  end
{  if ANewPage.PageIndex=0 then //���� ������ ��������
  begin
     dxwzrdcntrl1.Buttons.Next.Caption:='����������'
  end
  else
  begin
     dxwzrdcntrl1.Buttons.Next.Caption:='�����'
  end;
 }

end;

procedure TfrmLoadPrivs.OD_prep_houseAfterScroll(DataSet: TDataSet);
begin
  with OD_lkp_house do
  begin
   Active:=False;
   SetVariable('kul', OD_prep_house.FieldByName('kul').AsString);
   SetVariable('nd', OD_prep_house.FieldByName('ext_ndom').AsString);
   SetVariable('nkorp', OD_prep_house.FieldByName('ext_nkorp').AsString);
   Active:=True;
  end;

end;

procedure TfrmLoadPrivs.chk3Click(Sender: TObject);
begin
  with OD_lkp_house do
  begin
    if chk3.Checked then
      begin
        SetVariable('tp', 0);
      end
      else
      begin
        SetVariable('tp', 1);
      end;
      Active:=false;
      Active:=true;
    end;

end;

procedure TfrmLoadPrivs.cxGridDBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 //��� ���� ����� ���������� �������� ����, ������� �� � ������ lookup
    if ARecord.Values[4] <> null then
      AText :=  ARecord.Values[4];
 //�� ��������, ����, ����� ����� �� �� ������� � �� �����
 // if (AText = null) then
//   AText :=  ARecord.Values[TcxGridDBColumn(Sender).Index];
//   AText :=  ARecord.Values[1];
//   AText :=  ARecord.Values[cxGridDBTableView1.GetColumnByFieldName('nd').];

end;

procedure TfrmLoadPrivs.chk2Click(Sender: TObject);
begin
  if (chk2.Checked) and (msg3('��������! ��������� ��������� ����������� ������������, ���� ��� ���� ���������! ��������?',
   '�������������', MB_YESNO+MB_ICONQUESTION) =
   ID_YES) then
  begin
  end
  else
  begin
    chk2.Checked:=False;
  end;
end;

procedure TfrmLoadPrivs.cxImageComboBox1PropertiesCloseUp(Sender: TObject);
begin
  if cxImageComboBox1.ItemIndex=0 then
  begin
     CheckBox1.Enabled:=True
  end
  else if cxImageComboBox1.ItemIndex=1 then   
  begin
     CheckBox1.Checked:=True;
     CheckBox1.Enabled:=False;
  end;
end;

end.
