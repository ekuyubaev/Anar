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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_dolzhnost: Tform_dolzhnost;

implementation

{$R *.dfm}


procedure Tform_dolzhnost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.refresh_dolzhnost;
end;

end.
