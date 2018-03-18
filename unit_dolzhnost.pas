unit unit_dolzhnost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit_datamodule, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons,
  EhLibVCL, DBGridEh, GridsEh, DBAxisGridsEh, EhLibADO;

type
  Tform_dolzhnost = class(TForm)
    DBGridEh1: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_dolzhnost: Tform_dolzhnost;

implementation

{$R *.dfm}


end.
