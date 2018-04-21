unit unit_uvedomlenie_rabota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Buttons;

type
  Tform_uvedomlenie_rabota = class(TForm)
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_uvedomlenie_rabota: Tform_uvedomlenie_rabota;

implementation

{$R *.dfm}

uses unit_datamodule, Unit1;

procedure Tform_uvedomlenie_rabota.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tform_uvedomlenie_rabota.BitBtn2Click(Sender: TObject);
begin
  unit1.uvedomlenie.skrytRabota := true;
  form_main.N20.Click;
  close;
end;

procedure Tform_uvedomlenie_rabota.FormActivate(Sender: TObject);
begin
  DBGridEh1.DataSource := DM.ds_uvedomlenie_rabota;
end;

procedure Tform_uvedomlenie_rabota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGridEh1.DataSource := nil;
end;

end.
