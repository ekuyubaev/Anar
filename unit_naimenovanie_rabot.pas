unit unit_naimenovanie_rabot;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  Tform_naimenovanie_rabot = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_naimenovanie_rabot: Tform_naimenovanie_rabot;

implementation

{$R *.dfm}

uses unit_datamodule;

procedure Tform_naimenovanie_rabot.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.refresh_naimenovanie_rabot;
end;

end.
