unit unit_vybor_ispolnitel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Buttons;

type
  Tform_vybor_ispolnitel = class(TForm)
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_vybor_ispolnitel: Tform_vybor_ispolnitel;

implementation

{$R *.dfm}

uses unit_datamodule;

procedure Tform_vybor_ispolnitel.BitBtn1Click(Sender: TObject);
begin
  DM.q_ispolnitel.Insert;
  DM.q_ispolnitel.FieldByName('ID_sotrudnik').Value := DM.q_vybor_ispolnitel.FieldByName('ID_sotrudnik').Value;
  DM.q_ispolnitel.Post;

  DM.q_vybor_ispolnitel.Edit;
  DM.q_vybor_ispolnitel.FieldByName('Vybran').Value := true;
  DM.q_vybor_ispolnitel.Post;

  DM.q_vybor_ispolnitel.Filtered := true;
end;

end.
