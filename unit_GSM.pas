unit unit_GSM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  Tform_GSM = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_GSM: Tform_GSM;

implementation

{$R *.dfm}

uses Unit1, unit_datamodule, unit_edit_GSM, unit_prihod_GSM;

procedure Tform_GSM.BitBtn1Click(Sender: TObject);
begin
  DM.q_GSM.Insert;
  form_edit_GSM.state := 'insert';
  form_edit_GSM.ShowModal;
end;

procedure Tform_GSM.BitBtn2Click(Sender: TObject);
begin
  DM.q_GSM.Edit;
  form_edit_GSM.state := 'edit';
  form_edit_GSM.ShowModal;
end;

procedure Tform_GSM.BitBtn3Click(Sender: TObject);
begin
  form_prihod_GSM.ShowModal;
end;

procedure Tform_GSM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_GSM := nil;
end;

end.
