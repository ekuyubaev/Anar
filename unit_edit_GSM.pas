unit unit_edit_GSM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBCtrlsEh, DBLookupEh,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  Tform_edit_GSM = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEditEh3: TDBEditEh;
    DBMemoEh1: TDBMemoEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    state: string;
  end;

var
  form_edit_GSM: Tform_edit_GSM;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_edit_GSM.BitBtn1Click(Sender: TObject);
begin
  if DM.q_GSM.State in [dsInsert, dsEdit] then DM.q_GSM.Post;
  DM.refresh_GSM;
  self.Close;
end;

procedure Tform_edit_GSM.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_GSM.FormActivate(Sender: TObject);
begin
  if state = 'edit' then DBEditEh2.ReadOnly := true;
end;

procedure Tform_edit_GSM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.q_GSM.State in [dsInsert, dsEdit] then DM.q_GSM.Cancel;
  DBEditEh2.ReadOnly := false;
end;

end.
