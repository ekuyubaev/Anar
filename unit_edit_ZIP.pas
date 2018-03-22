unit unit_edit_ZIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBCtrlsEh, DBLookupEh,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  Tform_edit_ZIP = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBMemoEh1: TDBMemoEh;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_ZIP: Tform_edit_ZIP;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_edit_ZIP.BitBtn1Click(Sender: TObject);
begin
  if DM.q_ZIP.State in [dsInsert, dsEdit] then DM.q_ZIP.Post;
  self.Close;
end;

procedure Tform_edit_ZIP.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_ZIP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.q_ZIP.State in [dsInsert, dsEdit] then DM.q_ZIP.Cancel;
end;

end.
