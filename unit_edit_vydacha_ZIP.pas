unit unit_edit_vydacha_ZIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, Vcl.StdCtrls, Vcl.Buttons,
  DBLookupEh, Vcl.Mask, DBCtrlsEh, Vcl.DBCtrls;

type
  Tform_edit_vydacha_ZIP = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_vydacha_ZIP: Tform_edit_vydacha_ZIP;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_edit_vydacha_ZIP.BitBtn1Click(Sender: TObject);
begin
  if dm.q_vydacha_ZIP.State in [dsEdit, dsInsert] then
      dm.q_vydacha_ZIP.Post;
  close;
end;

procedure Tform_edit_vydacha_ZIP.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tform_edit_vydacha_ZIP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.q_vydacha_ZIP.State in [dsEdit, dsInsert] then
      dm.q_vydacha_ZIP.Cancel;
end;

end.
