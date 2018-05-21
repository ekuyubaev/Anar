unit unit_pusk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  Tform_pusk = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_pusk: Tform_pusk;

implementation

{$R *.dfm}

uses unit_datamodule, Unit1, unit_edit_pusk;

procedure Tform_pusk.BitBtn1Click(Sender: TObject);
begin
  DM.q_pusk.Insert;
  form_edit_pusk.ShowModal;
end;

procedure Tform_pusk.BitBtn2Click(Sender: TObject);
begin
  DM.q_pusk.Edit;
  form_edit_pusk.ShowModal;
end;

procedure Tform_pusk.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_pusk.Delete;
end;

procedure Tform_pusk.BitBtn4Click(Sender: TObject);
begin
  dm.q_pusk.First;
end;

procedure Tform_pusk.BitBtn5Click(Sender: TObject);
begin
  dm.q_pusk.Prior;
end;

procedure Tform_pusk.BitBtn6Click(Sender: TObject);
begin
  dm.q_pusk.Next;
end;

procedure Tform_pusk.BitBtn7Click(Sender: TObject);
begin
  dm.q_pusk.Last;
end;

procedure Tform_pusk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_pusk := nil;
end;

end.
