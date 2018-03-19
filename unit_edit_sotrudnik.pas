unit unit_edit_sotrudnik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBCtrlsEh, Vcl.StdCtrls,
  Vcl.Buttons, DBLookupEh, Vcl.Mask, DB;

type
  Tform_edit_sotrudnik = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEditEh2: TDBEditEh;
    Label5: TLabel;
    DBEditEh3: TDBEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label3: TLabel;
    Label2: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBEditEh1: TDBEditEh;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    DBMemoEh1: TDBMemoEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_sotrudnik: Tform_edit_sotrudnik;

implementation

{$R *.dfm}

uses unit_datamodule;

procedure Tform_edit_sotrudnik.BitBtn1Click(Sender: TObject);
begin
  if (DM.q_sotrudnik.State in [dsEdit, dsInsert]) then DM.q_sotrudnik.Post;
  self.Close;
end;

procedure Tform_edit_sotrudnik.BitBtn2Click(Sender: TObject);
begin
  if (DM.q_sotrudnik.State in [dsEdit, dsInsert]) then DM.q_sotrudnik.Cancel;
  self.Close;
end;

end.
