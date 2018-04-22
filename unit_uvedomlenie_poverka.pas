unit unit_uvedomlenie_poverka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_uvedomlenie_poverka = class(TForm)
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_uvedomlenie_poverka: Tform_uvedomlenie_poverka;

implementation

{$R *.dfm}

uses unit_datamodule, Unit1;

procedure Tform_uvedomlenie_poverka.BitBtn1Click(Sender: TObject);
begin
  form_main.N14.Click;
  unit1.uvedomlenie.skrytPoverka := true;
  close;
end;

procedure Tform_uvedomlenie_poverka.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
