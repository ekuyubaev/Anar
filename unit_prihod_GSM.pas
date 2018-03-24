unit unit_prihod_GSM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_prihod_GSM = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_prihod_GSM: Tform_prihod_GSM;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_prihod_GSM;

procedure Tform_prihod_GSM.BitBtn1Click(Sender: TObject);
begin
  DM.q_prihod_GSM.Insert;
  form_edit_prihod_GSM.state := 'insert';
  form_edit_prihod_GSM.ShowModal;
end;

procedure Tform_prihod_GSM.BitBtn2Click(Sender: TObject);
begin
  form_edit_prihod_GSM.state := 'view';
  DM.q_prihod_GSM.Edit;
  form_edit_prihod_GSM.ShowModal;
end;

end.
