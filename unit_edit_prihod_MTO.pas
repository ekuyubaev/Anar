unit unit_edit_prihod_MTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEh, DBCtrlsEh,
  DBLookupEh, Vcl.Mask, Vcl.Buttons;

type
  Tform_edit_prihod_MTO = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBMemoEh1: TDBMemoEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    state: string;
  end;

var
  form_edit_prihod_MTO: Tform_edit_prihod_MTO;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_edit_prihod_MTO.BitBtn1Click(Sender: TObject);
begin
  if DM.q_prihod_MTO.State in [dsInsert, dsEdit] then
  begin
    if DBLookupComboboxEh1.KeyValue <> DM.q_MTO.FieldByName('ID_EI').AsVariant then
    begin
      ShowMessage('Единицы измерения МТО и прихода МТО не совпадают!');
      exit;
    end;
    DM.q_prihod_MTO.Post;
    DM.refresh_MTO;
  end;
  self.Close;
end;

procedure Tform_edit_prihod_MTO.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_prihod_MTO.FormActivate(Sender: TObject);
begin
  if state = 'view' then
  begin
      DBDateTimeEditEh1.ReadOnly := true;
      DBEditEh1.ReadOnly := true;
      DBEditEh2.ReadOnly := true;
      DBLookupComboboxEh1.ReadOnly := true;
  end;
end;

procedure Tform_edit_prihod_MTO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.q_prihod_MTO.State in [dsInsert, dsEdit] then  DM.q_prihod_MTO.Cancel;

  DBDateTimeEditEh1.ReadOnly := false;
  DBEditEh1.ReadOnly := false;
  DBEditEh2.ReadOnly := false;
  DBLookupComboboxEh1.ReadOnly := false;
end;

end.
