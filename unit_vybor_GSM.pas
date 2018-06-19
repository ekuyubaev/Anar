unit unit_vybor_GSM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBCtrlsEh, Vcl.StdCtrls,
  Vcl.Mask, DBLookupEh, Vcl.Buttons;

type
  Tform_vybor_GSM = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh1: TDBEditEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBMemoEh1: TDBMemoEh;
    procedure DBLookupComboboxEh1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_vybor_GSM: Tform_vybor_GSM;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_vybor_GSM.BitBtn1Click(Sender: TObject);
begin
  if DBEditEh1.IsEmpty then
  begin
    ShowMessage('Введите количество ГСМ!');
    exit;
  end;

  if DM.q_GSM.Lookup('ID_GSM',DBLookupComboboxEh1.KeyValue,'Kolichestvo') < DBEditEh1.Value then
  begin
    ShowMessage('Количества выбранного ГСМ недостаточно!');
    exit;
  end;

  if DM.q_rashod_GSM.State in [dsEdit, dsInsert] then DM.q_rashod_GSM.Post;
  DM.refresh_GSM;
  self.Close;
end;

procedure Tform_vybor_GSM.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_vybor_GSM.DBLookupComboboxEh1Change(Sender: TObject);
begin
  if not DBLookupComboboxEh1.IsEmpty then
  begin
    DM.q_GSM.Locate('ID_GSM',DBLookupComboboxEh1.KeyValue,[]);
    DBLookupComboboxEh2.KeyValue := DM.q_GSM.FieldByName('ID_EI').AsInteger;
  end;
end;

procedure Tform_vybor_GSM.FormActivate(Sender: TObject);
begin
  DBDateTimeEditEh1.Value := DM.q_rabota.FieldByName('Nachalo').AsDateTime;
end;

procedure Tform_vybor_GSM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.q_rashod_GSM.State in [dsEdit, dsInsert] then DM.q_rashod_GSM.Cancel;
end;

end.
