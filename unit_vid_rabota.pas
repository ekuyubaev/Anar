unit unit_vid_rabota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  Tform_vid_rabota = class(TForm)
    DBGridEh1: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_vid_rabota: Tform_vid_rabota;

implementation

{$R *.dfm}

uses unit_datamodule;

end.
