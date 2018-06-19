unit unit_attestacia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  Tform_attestacia = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridEh1: TDBGridEh;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_attestacia: Tform_attestacia;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_attestacia, Unit1, unit_otchety;

procedure Tform_attestacia.BitBtn1Click(Sender: TObject);
begin
  DM.q_attestacia.Insert;
  form_edit_attestacia.ShowModal;
end;

procedure Tform_attestacia.BitBtn2Click(Sender: TObject);
begin
  DM.q_attestacia.Edit;
  form_edit_attestacia.ShowModal;
end;

procedure Tform_attestacia.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_attestacia.Delete;
end;

procedure Tform_attestacia.BitBtn4Click(Sender: TObject);
begin
  dm.q_attestacia.First;
end;

procedure Tform_attestacia.BitBtn5Click(Sender: TObject);
begin
  dm.q_attestacia.Prior;
end;

procedure Tform_attestacia.BitBtn6Click(Sender: TObject);
begin
  dm.q_attestacia.Next;
end;

procedure Tform_attestacia.BitBtn7Click(Sender: TObject);
begin
  dm.q_attestacia.Last;
end;

procedure Tform_attestacia.BitBtn8Click(Sender: TObject);
begin
  if form_otchety = nil then
  begin
    form_otchety := Tform_otchety.Create(Application);
    form_otchety.WindowState := wsNormal;
    form_otchety.DateTimePicker1.DateTime := now;
    form_otchety.Show;
    form_otchety.PageControl1.ActivePage := form_otchety.ts_attest;
  end;
end;

procedure Tform_attestacia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_attestacia := nil;
end;

end.
