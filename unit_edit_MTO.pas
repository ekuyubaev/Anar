unit unit_edit_MTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEh, Vcl.Buttons,
  DBCtrlsEh, DBLookupEh, Vcl.Mask;

type
  Tform_edit_MTO = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditEh2: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBMemoEh1: TDBMemoEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEditEh1: TDBEditEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_MTO: Tform_edit_MTO;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_edit_MTO.BitBtn1Click(Sender: TObject);
begin
  if DM.q_MTO.State in [dsInsert, dsEdit] then DM.q_MTO.Post;
  DM.refresh_MTO;
  self.Close;
end;

procedure Tform_edit_MTO.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_MTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.q_MTO.State in [dsInsert, dsEdit] then DM.q_MTO.Cancel;
end;

end.
