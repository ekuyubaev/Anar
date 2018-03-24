unit unit_edit_prihod_GSM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, DBGridEh,
  DBCtrlsEh, DBLookupEh, Vcl.Mask;

type
  Tform_edit_prihod_GSM = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBMemoEh1: TDBMemoEh;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    state: string;
  end;

var
  form_edit_prihod_GSM: Tform_edit_prihod_GSM;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_edit_prihod_GSM.BitBtn1Click(Sender: TObject);
begin
  if DM.q_prihod_GSM.State in [dsInsert, dsEdit] then
  begin
    if DBLookupComboboxEh1.KeyValue <> DM.q_GSM.FieldByName('ID_EI').AsVariant then
    begin
      ShowMessage('Единицы измерения ГСМ и прихода ГСМ не совпадают!');
      exit;
    end;
    DM.q_prihod_GSM.Post;
    DM.refresh_GSM;
  end;

  self.Close;
end;

procedure Tform_edit_prihod_GSM.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_prihod_GSM.FormActivate(Sender: TObject);
begin
  if state = 'view' then
  begin
    DBEditEh1.ReadOnly := true;
    DBEditEh2.ReadOnly := true;
    DBLookupComboboxEh1.ReadOnly := true;
    DBDateTimeEditEh1.ReadOnly := true;
  end;
end;

procedure Tform_edit_prihod_GSM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DBEditEh1.ReadOnly := false;
    DBEditEh2.ReadOnly := false;
    DBLookupComboboxEh1.ReadOnly := false;
    DBDateTimeEditEh1.ReadOnly := false;

    if DM.q_prihod_GSM.State in [dsEdit, dsInsert] then DM.q_prihod_GSM.Cancel;
end;

end.
