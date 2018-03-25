unit unit_edit_rabota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEh, DBCtrlsEh, DBLookupEh, Vcl.Mask, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh;

type
  Tform_edit_rabota = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
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
    Label10: TLabel;
    DBEditEh1: TDBEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBCheckBoxEh2: TDBCheckBoxEh;
    DBCheckBoxEh3: TDBCheckBoxEh;
    DBMemoEh1: TDBMemoEh;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGridEh1: TDBGridEh;
    procedure FormResize(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_edit_rabota: Tform_edit_rabota;

implementation

{$R *.dfm}

uses unit_datamodule, DB, unit_vybor_ispolnitel;

procedure Tform_edit_rabota.BitBtn1Click(Sender: TObject);
begin
  if DM.q_rabota.State in [dsEdit, dsInsert] then DM.q_rabota.Post;
  DM.refresh_rabota;
  self.Close;
end;

procedure Tform_edit_rabota.BitBtn2Click(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_edit_rabota.BitBtn3Click(Sender: TObject);
begin
  if DM.q_rabota.State in [dsInsert] then DM.q_rabota.Post;

  if DM.q_temp.Active then DM.q_temp.Close;
  DM.q_temp.SQL.Text := 'Delete From Vybor';
  DM.q_temp.ExecSQL;

  DM.q_temp.SQL.Text := 'Insert into Vybor (ID_sotrudnik, ID_dolzhnost)'
                      +' Select ID_sotrudnik, ID_dolzhnost'
                      +' From Sotrudnik S '
                      +' Where ID_sotrudnik not in '
                      +' (Select Distinct ID_sotrudnik'
                      +' From Ispolnitel I inner join Rabota R'
                      +' on I.ID_rabota = R.ID_rabota'
                      +' Where R.Okonchanie >= str_to_date("'
                      + DM.q_rabota.FieldByName('Nachalo').AsString + '", "%d.%m.%Y")'
                      +' and R.Nachalo  <= str_to_date("'
                      + DM.q_rabota.FieldByName('Okonchanie').AsString + '","%d.%m.%Y") '
                      +' and R.Vypolnena is false)';
  DM.q_temp.ExecSQL;

  if DM.q_vybor_ispolnitel.active then  DM.q_vybor_ispolnitel.Close;
  DM.q_vybor_ispolnitel.Open;

  form_vybor_ispolnitel.ShowModal;
end;

procedure Tform_edit_rabota.BitBtn4Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_ispolnitel.Delete;
end;

procedure Tform_edit_rabota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.q_rabota.State in [dsEdit, dsInsert] then DM.q_rabota.Cancel;
end;

procedure Tform_edit_rabota.FormResize(Sender: TObject);
begin
  Panel3.Width := Panel1.ClientWidth div 2;
  Panel5.Width := Panel2.ClientWidth div 2;
  Panel2.Height := self.ClientHeight div 2;
end;

end.
