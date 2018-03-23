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
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_attestacia: Tform_attestacia;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_attestacia;

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

end.
