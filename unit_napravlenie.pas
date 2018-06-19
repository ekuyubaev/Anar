unit unit_napravlenie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  Tform_napravlenie = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_napravlenie: Tform_napravlenie;

implementation
{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_napravlenie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.q_napravlenie.State in [dsEdit, dsInsert] then
    dm.q_napravlenie.Post;
end;

end.
