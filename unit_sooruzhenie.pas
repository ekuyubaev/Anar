unit unit_sooruzhenie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  Tform_sooruzhenie = class(TForm)
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_sooruzhenie: Tform_sooruzhenie;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_sooruzhenie;

procedure Tform_sooruzhenie.BitBtn1Click(Sender: TObject);
begin
  DM.q_sooruzhenie.Insert;
  form_edit_sooruzhenie.ShowModal;
end;

procedure Tform_sooruzhenie.BitBtn2Click(Sender: TObject);
begin
DM.q_sooruzhenie.Edit;
  form_edit_sooruzhenie.ShowModal;
end;

procedure Tform_sooruzhenie.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_sooruzhenie.Delete;
end;

end.
