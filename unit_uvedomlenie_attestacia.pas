unit unit_uvedomlenie_attestacia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_uvedomlenie_attestacia = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    btnClose: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_uvedomlenie_attestacia: Tform_uvedomlenie_attestacia;

implementation

{$R *.dfm}

uses unit_datamodule, Unit1, unit_uvedomlenie;

procedure Tform_uvedomlenie_attestacia.BitBtn1Click(Sender: TObject);
begin
  form_main.N16.Click;
  unit1.uvedomlenie.skrytAttestacia := true;
  close;
end;

procedure Tform_uvedomlenie_attestacia.FormActivate(Sender: TObject);
begin
  DBGridEh1.DataSource := dm.ds_uvedomlenie;
end;

procedure Tform_uvedomlenie_attestacia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGridEh1.DataSource := nil;
end;

procedure Tform_uvedomlenie_attestacia.btnCloseClick(Sender: TObject);
begin
  close;
end;

end.
