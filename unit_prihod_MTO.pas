unit unit_prihod_MTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  Tform_prihod_MTO = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_prihod_MTO: Tform_prihod_MTO;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_prihod_MTO;

procedure Tform_prihod_MTO.BitBtn1Click(Sender: TObject);
begin
  form_edit_prihod_MTO.state := 'insert';
  DM.q_prihod_MTO.Insert;
  form_edit_prihod_MTO.ShowModal;
end;

procedure Tform_prihod_MTO.BitBtn2Click(Sender: TObject);
begin
  DM.q_prihod_MTO.Edit;
  form_edit_prihod_MTO.ShowModal;
end;

procedure Tform_prihod_MTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.refresh_MTO;
end;

end.
