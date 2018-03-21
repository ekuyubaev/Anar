unit unit_edit_sredstvo_izmerenia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, DB, DBGridEh,
  DBCtrlsEh, DBLookupEh, Vcl.Mask;

type
  Tform_edit_sredstvo_izmerenia = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh4: TDBEditEh;
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
  form_edit_sredstvo_izmerenia: Tform_edit_sredstvo_izmerenia;

implementation

{$R *.dfm}

uses unit_datamodule;

procedure Tform_edit_sredstvo_izmerenia.BitBtn1Click(Sender: TObject);
begin
  if DM.q_sredstvo_izmerenia.State in [dsEdit, dsInsert] then DM.q_sredstvo_izmerenia.Post;
  self.Close;
end;

procedure Tform_edit_sredstvo_izmerenia.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_sredstvo_izmerenia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.q_sredstvo_izmerenia.State in [dsEdit, dsInsert] then DM.q_sredstvo_izmerenia.Cancel;
end;

end.
