unit unit_MTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  Tform_MTO = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_MTO: Tform_MTO;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_MTO, unit_prihod_MTO;

procedure Tform_MTO.BitBtn1Click(Sender: TObject);
begin
  DM.q_MTO.Insert;
  form_edit_MTO.ShowModal;
end;

procedure Tform_MTO.BitBtn2Click(Sender: TObject);
begin
  DM.q_MTO.Edit;
  form_edit_MTO.ShowModal;
end;

procedure Tform_MTO.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_MTO.Delete;
end;

procedure Tform_MTO.BitBtn4Click(Sender: TObject);
begin
  form_prihod_MTO.ShowModal;
end;

end.
