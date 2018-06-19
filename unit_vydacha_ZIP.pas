unit unit_vydacha_ZIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_vydacha_ZIP = class(TForm)
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_vydacha_ZIP: Tform_vydacha_ZIP;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_vydacha_ZIP;

procedure Tform_vydacha_ZIP.BitBtn1Click(Sender: TObject);
begin
  dm.q_vydacha_ZIP.Insert;
  form_edit_vydacha_ZIP.ShowModal;
end;

procedure Tform_vydacha_ZIP.BitBtn2Click(Sender: TObject);
begin
  dm.q_vydacha_ZIP.Edit;
  form_edit_vydacha_ZIP.ShowModal;
end;

end.
