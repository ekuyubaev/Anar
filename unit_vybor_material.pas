unit unit_vybor_material;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEh, DBCtrlsEh,
  Vcl.Mask, DBLookupEh, Vcl.Buttons;

type
  Tform_vybor_material = class(TForm)
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
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEditEh1: TDBEditEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBEditEh2: TDBEditEh;
    DBMemoEh1: TDBMemoEh;
    procedure DBLookupComboboxEh1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_vybor_material: Tform_vybor_material;

implementation

{$R *.dfm}

uses unit_datamodule, DB;

procedure Tform_vybor_material.BitBtn1Click(Sender: TObject);
begin
  if DM.q_MTO.Lookup('ID_MTO',DBLookupComboboxEh1.KeyValue,'Kolichestvo') < DBEditEh1.Value then
  begin
    ShowMessage(' оличества выбранного материала недостаточно!');
    exit;
  end;

  if DM.q_rashod_MTO.State in [dsEdit, dsInsert] then DM.q_rashod_MTO.Post;
  DM.refresh_MTO;
  self.Close;
end;

procedure Tform_vybor_material.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_vybor_material.DBLookupComboboxEh1Change(Sender: TObject);
begin
  if not DBLookupComboboxEh1.IsEmpty then
  begin
    DM.q_MTO.Locate('Naimenovanie',DBLookupComboboxEh2.Value,[]);
    DBLookupComboboxEh2.KeyValue := DM.q_MTO.FieldByName('ID_EI').AsInteger;
  end;
end;

procedure Tform_vybor_material.FormActivate(Sender: TObject);
begin
  DBDateTimeEditEh1.Value := DM.q_rabota.FieldByName('Nachalo').AsDateTime;
end;

procedure Tform_vybor_material.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.q_rashod_MTO.State in [dsEdit, dsInsert] then DM.q_rashod_MTO.Cancel;
end;

end.
