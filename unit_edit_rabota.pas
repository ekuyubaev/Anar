unit unit_edit_rabota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.Mask, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh;

type
  Tform_edit_rabota = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBCheckBoxEh2: TDBCheckBoxEh;
    DBCheckBoxEh3: TDBCheckBoxEh;
    DBMemoEh1: TDBMemoEh;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGridEh1: TDBGridEh;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGridEh2: TDBGridEh;
    BitBtn7: TBitBtn;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    DBGridEh3: TDBGridEh;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label7: TLabel;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    BitBtn11: TBitBtn;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    BitBtn12: TBitBtn;
    DBEditEh1: TDBEditEh;
    Label8: TLabel;
    BitBtn13: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_rabota: Tform_edit_rabota;

implementation

{$R *.dfm}

uses unit_datamodule, DB, unit_vybor_ispolnitel, unit_vybor_material,
  unit_vybor_GSM, unit_naimenovanie_rabot, Unit1, ComObj, DateUtils;

procedure Tform_edit_rabota.BitBtn10Click(Sender: TObject);
begin
  DM.q_rashod_GSM.Edit;
  form_vybor_GSM.ShowModal;
end;

procedure Tform_edit_rabota.BitBtn11Click(Sender: TObject);
begin
  form_naimenovanie_rabot.ShowModal;
end;

procedure Tform_edit_rabota.BitBtn12Click(Sender: TObject);
begin
  dm.q_temp.SQL.Text := 'Insert Into Rabota (ID_naimenovanie, ID_vid_rabota, ID_oborudovanie) '
                      +'Select ID_naimenovanie, ID_vid_rabota, ID_oborudovanie From Rabota '
                      +'Where ID_rabota = ' + dm.q_rabota.FieldByName('ID_rabota').AsString;
  dm.q_temp.ExecSQL;
  if DM.q_rabota.State in [dsEdit, dsInsert] then DM.q_rabota.Post;
  DM.refresh_rabota;
  dm.q_temp.SQL.Text := 'Select LAST_INSERT_ID() as ID From Rabota';
  dm.q_temp.Open;

  DM.q_rabota.recNo := dm.q_temp.FieldByName('ID').AsInteger;
  DM.q_rabota.Edit;
end;

procedure Tform_edit_rabota.BitBtn13Click(Sender: TObject);
var MSWord, bookmarks: Variant;
    pathToTemplate, tempStr: String;
    i : integer;

begin
  MsWord := CreateOleObject('Word.Application');
  pathToTemplate := ExtractFilePath(Application.ExeName) + 'otchety\Наряд-допуск.dot';
  MsWord.Documents.Add(pathToTemplate);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := DBEditEh4.Text;
  MsWord.Selection.find.execute (FindText := 'REGNUM', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  MsWord.Selection.find.execute (FindText := 'NARIADNUM', replacewith := tempStr);


  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := dm.q_rabota.fieldbyName('Otvetstvennyi').AsString;
  MsWord.Selection.find.execute (FindText := 'OTVETSTVENNYI', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  MsWord.Selection.find.execute (FindText := 'OTVETSTVENNYI', replacewith := tempStr);


  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := IntToStr(dm.q_ispolnitel.RecordCount);
  MsWord.Selection.find.execute (FindText := 'KOLBRIG', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  MsWord.Selection.find.execute (FindText := 'KOLBRIG', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := DBLookupComboboxEh3.Text;
  MsWord.Selection.find.execute (FindText := 'NAIMENOVANIERABOTY', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := '';
  if (not DBDateTimeEditEh1.IsEmpty) then tempStr := Format('%.*d',[2,DayOf(DBDateTimeEditEh1.Value)]);
  MsWord.Selection.find.execute (FindText := 'startd', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := '';
  if (not DBDateTimeEditEh1.IsEmpty) then tempStr := Format('%.*d',[2, MonthOf(DBDateTimeEditEh1.Value)]);
  MsWord.Selection.find.execute (FindText := 'startm', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := '';
  if (not DBDateTimeEditEh1.IsEmpty) then tempStr := IntToStr(YearOf(DBDateTimeEditEh1.Value));
  MsWord.Selection.find.execute (FindText := 'starty', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := '';
  if (not DBDateTimeEditEh2.IsEmpty) then tempStr := Format('%.*d',[2,DayOf(DBDateTimeEditEh2.Value)]);
  MsWord.Selection.find.execute (FindText := 'endd', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := '';
  if (not DBDateTimeEditEh2.IsEmpty) then tempStr := Format('%.*d',[2,MonthOf(DBDateTimeEditEh2.Value)]);
  MsWord.Selection.find.execute (FindText := 'endm', replacewith := tempStr);

  MsWord.selection.end := 0;
  MsWord.selection.start := MsWord.selection.end;
  tempStr := '';
  if (not DBDateTimeEditEh2.IsEmpty) then tempStr := IntToStr(YearOf(DBDateTimeEditEh2.Value));
  MsWord.Selection.find.execute (FindText := 'endy', replacewith := tempStr);

  for i := 1 to dm.q_ispolnitel.RecordCount do
  begin
      dm.q_ispolnitel.RecNo := i;

      MsWord.ActiveDocument.Tables.Item(2).Rows.Add(EmptyParam);

      MsWord.ActiveDocument.Tables.Item(2).Cell(i+1,1).Range.Text := dm.q_ispolnitel.FieldByName('Sotrudnik').AsString;
      MsWord.ActiveDocument.Tables.Item(2).Cell(i+1,2).Range.Text := dm.q_ispolnitel.FieldByName('Dolzhnost').AsString;
  end;

  MsWord.ActiveDocument.Range(0, 0).Select;
  MsWord.Visible := True;
end;

procedure Tform_edit_rabota.BitBtn1Click(Sender: TObject);
begin
  if DM.q_rabota.State in [dsEdit, dsInsert] then DM.q_rabota.Post;
  DM.refresh_rabota;
  self.Close;
end;

procedure Tform_edit_rabota.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_rabota.BitBtn3Click(Sender: TObject);
begin
  if DM.q_rabota.State in [dsInsert] then DM.q_rabota.Post;

  if DM.q_temp.Active then DM.q_temp.Close;
  DM.q_temp.SQL.Text := 'Delete From Vybor';
  DM.q_temp.ExecSQL;

  DM.q_temp.SQL.Text := 'Insert into Vybor (ID_sotrudnik, ID_dolzhnost)'
                      +' Select ID_sotrudnik, ID_dolzhnost'
                      +' From Sotrudnik S '
                      +' Where ID_sotrudnik not in '
                      +' (Select Distinct ID_sotrudnik'
                      +' From Ispolnitel I inner join Rabota R'
                      +' on I.ID_rabota = R.ID_rabota'
                      +' Where R.Okonchanie >= str_to_date("'
                      + DM.q_rabota.FieldByName('Nachalo').AsString + '", "%d.%m.%Y")'
                      +' and R.Nachalo  <= str_to_date("'
                      + DM.q_rabota.FieldByName('Okonchanie').AsString + '","%d.%m.%Y") '
                      +' and R.Vypolnena is false)';
  DM.q_temp.ExecSQL;

  if DM.q_vybor_ispolnitel.active then  DM.q_vybor_ispolnitel.Close;
  DM.q_vybor_ispolnitel.Open;

  form_vybor_ispolnitel.ShowModal;
end;

procedure Tform_edit_rabota.BitBtn4Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_ispolnitel.Delete;
end;

procedure Tform_edit_rabota.BitBtn5Click(Sender: TObject);
begin
  DM.q_rashod_MTO.Insert;
  form_vybor_material.ShowModal;
end;

procedure Tform_edit_rabota.BitBtn6Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_rashod_MTO.Delete;
end;

procedure Tform_edit_rabota.BitBtn7Click(Sender: TObject);
begin
  DM.q_rashod_MTO.Edit;
  form_vybor_material.ShowModal;
end;

procedure Tform_edit_rabota.BitBtn8Click(Sender: TObject);
begin
  DM.q_rashod_GSM.Insert;
  form_vybor_GSM.ShowModal;
end;

procedure Tform_edit_rabota.BitBtn9Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_rashod_GSM.Delete;
end;

procedure Tform_edit_rabota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.q_rabota.State in [dsEdit, dsInsert] then DM.q_rabota.Cancel;
end;

procedure Tform_edit_rabota.FormResize(Sender: TObject);
begin
  Panel3.Width := Panel1.ClientWidth div 2;
  Panel5.Width := Panel2.ClientWidth div 2;
  Panel2.Height := self.ClientHeight div 2;
end;

end.
