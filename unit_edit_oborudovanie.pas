unit unit_edit_oborudovanie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBCtrlsEh, DBLookupEh,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, DB;

type
  Tform_edit_oborudovanie = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh4: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
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
  form_edit_oborudovanie: Tform_edit_oborudovanie;

implementation

{$R *.dfm}

uses unit_datamodule;

procedure Tform_edit_oborudovanie.BitBtn1Click(Sender: TObject);
begin
  if DM.q_oborudovanie.State in [dsInsert, dsEdit] then DM.q_oborudovanie.Post;
  self.Close;
end;

procedure Tform_edit_oborudovanie.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_oborudovanie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.q_oborudovanie.State in [dsInsert, dsEdit] then DM.q_oborudovanie.Cancel;
end;

end.
