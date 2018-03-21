unit unit_edit_sooruzhenie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrlsEh, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons, DB;

type
  Tform_edit_sooruzhenie = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBEditEh1: TDBEditEh;
    DBMemoEh1: TDBMemoEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_sooruzhenie: Tform_edit_sooruzhenie;

implementation

{$R *.dfm}

uses unit_datamodule;

procedure Tform_edit_sooruzhenie.BitBtn1Click(Sender: TObject);
begin
  if (DM.q_sooruzhenie.State in [dsEdit, dsInsert]) then DM.q_sooruzhenie.Post;
  self.Close;
end;

procedure Tform_edit_sooruzhenie.BitBtn2Click(Sender: TObject);
begin
  self.close;
end;

procedure Tform_edit_sooruzhenie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.q_sooruzhenie.state in [dsEdit, dsInsert] then DM.q_sooruzhenie.cancel;
end;

end.
