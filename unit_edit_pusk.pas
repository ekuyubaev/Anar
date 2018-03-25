unit unit_edit_pusk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrlsEh, Vcl.Mask,
  Vcl.Buttons;

type
  Tform_edit_pusk = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditEh1: TDBEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBMemoEh1: TDBMemoEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_pusk: Tform_edit_pusk;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_edit_pusk.BitBtn1Click(Sender: TObject);
begin
  if DM.q_pusk.State in [dsEdit, dsInsert] then Dm.q_pusk.Post;
  self.Close;
end;

procedure Tform_edit_pusk.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_pusk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.q_pusk.State in [dsEdit, dsInsert] then Dm.q_pusk.Cancel;
end;

end.
