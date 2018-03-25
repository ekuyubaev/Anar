unit unit_vybor_sotrudnik_attestacia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_vybor_sotrudnik_attestacia = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_vybor_sotrudnik_attestacia: Tform_vybor_sotrudnik_attestacia;

implementation

{$R *.dfm}

uses unit_datamodule;

procedure Tform_vybor_sotrudnik_attestacia.BitBtn1Click(Sender: TObject);
begin
  DM.q_zachet.Insert;
  DM.q_zachet.FieldByName('ID_sotrudnik').Value := DM.q_vybor_sotrudnik_attestacia.FieldByName('ID_sotrudnik').Value;
  DM.q_zachet.Post;
  DM.q_vybor_sotrudnik_attestacia.Edit;
  DM.q_vybor_sotrudnik_attestacia.FieldByName('Vybran').Value := true;
  DM.q_vybor_sotrudnik_attestacia.Post;
  DM.q_vybor_sotrudnik_attestacia.Filtered := true;
end;

end.
