unit unit_edit_attestacia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.StdCtrls,
  Vcl.Mask, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Buttons;

type
  Tform_edit_attestacia = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox4: TGroupBox;
    DBGridEh1: TDBGridEh;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBMemoEh1: TDBMemoEh;
    Label4: TLabel;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_attestacia: Tform_edit_attestacia;

implementation

{$R *.dfm}

uses unit_datamodule, unit_vybor_sotrudnik_attestacia, DB;

procedure Tform_edit_attestacia.BitBtn1Click(Sender: TObject);
begin
  if DM.q_attestacia.State in [dsEdit, dsInsert] then DM.q_attestacia.Post;
  self.Close;
end;

procedure Tform_edit_attestacia.BitBtn2Click(Sender: TObject);
begin
  if DM.q_attestacia.State in [dsInsert] then
  begin
    DM.q_attestacia.Cancel;
    self.Close;
    exit;
  end;

  if DM.q_temp.Active then DM.q_temp.Close;
  DM.q_temp.SQL.Text := 'Delete From Zachet Where ID_attestacia = '
                      + DM.q_attestacia.FieldByName('ID_attestacia').AsString
                      + ' and ID_sotrudnik in (Select ID_sotrudnik'
                      + ' From Vybor Where Vybran is true)';
  DM.q_temp.ExecSQL;
  Dm.q_zachet.Close;
  DM.q_zachet.Open;

  if not (DM.q_attestacia.State in [dsEdit]) then DM.q_attestacia.Delete;
  if DM.q_attestacia.State in [dsEdit] then DM.q_attestacia.Cancel;
  self.Close;
end;

procedure Tform_edit_attestacia.BitBtn3Click(Sender: TObject);
Var ID_vid_attestacia :String;
    attestDateStr : String;
begin
  if DBLookupComboBoxEh1.IsEmpty or DBDateTimeEditEh1.IsEmpty then
  begin
    ShowMessage('Введите дату и вид аттестации');
    exit;
  end;

  if DBDateTimeEditEh1.Value < now() then
  begin
    ShowMessage('Нельзя менять данные для прошедшей аттестации!');
    exit;
  end;

  if DM.q_attestacia.State in [dsInsert] then DM.q_attestacia.Post;
  attestDateStr := FormatDateTime('yyyy-mm-dd', dm.q_attestacia.FieldByName('Data_attestacia').AsDateTime);
  ID_vid_attestacia := self.DBLookupComboboxEh1.KeyValue;

  if DM.q_vybor_sotrudnik_attestacia.active then  DM.q_vybor_sotrudnik_attestacia.Close;

  if DM.q_temp.Active then DM.q_temp.Close;
  DM.q_temp.SQL.Text := 'Delete From Vybor';
  DM.q_temp.ExecSQL;

  DM.q_temp.SQL.Text := 'Insert into Vybor (ID_sotrudnik, ID_dolzhnost)'
                      +' Select ID_sotrudnik, ID_dolzhnost'
                      +' From Sotrudnik S '
                      +' Where ID_sotrudnik not in '
                      +' (Select Distinct ID_sotrudnik'
                      +' From Zachet Z inner join Attestacia A'
                      +' on Z.ID_attestacia = A.ID_attestacia'
                      +' Where A.Data_attestacia > ADDDATE('+ QuotedStr(attestDateStr) +',INTERVAL -12 MONTH)'
                      +' and A.ID_vid_attestacia = '+ ID_vid_attestacia +')';
  DM.q_temp.ExecSQL;
  DM.q_vybor_sotrudnik_attestacia.Open;
  form_vybor_sotrudnik_attestacia.ShowModal;
end;

procedure Tform_edit_attestacia.BitBtn4Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_zachet.Delete;
end;

procedure Tform_edit_attestacia.FormActivate(Sender: TObject);
begin
  DM.q_temp.SQL.Text := 'Delete From Vybor';
  DM.q_temp.ExecSQL;
end;

end.
