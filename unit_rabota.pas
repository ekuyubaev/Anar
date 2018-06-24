unit unit_rabota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons, Data.Win.ADODB;

type
  Tform_rabota = class(TForm)
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_rabota: Tform_rabota;

implementation

{$R *.dfm}

uses unit_datamodule, Unit1, unit_edit_rabota;

procedure Tform_rabota.BitBtn1Click(Sender: TObject);
begin
  DM.q_rabota.Insert;
  form_edit_rabota.ShowModal;
end;

procedure Tform_rabota.BitBtn2Click(Sender: TObject);
begin
  if (dm.q_rabota.FieldByName('Po_nariadu_dopusku').AsBoolean)
    then form_edit_rabota.editable := false
    else form_edit_rabota.editable := true;
  DM.q_rabota.Edit;
  form_edit_rabota.ShowModal;
end;

procedure Tform_rabota.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then
  begin
    DM.q_temp.SQL.Text := 'Delete From vydacha_zip '
                        + 'Where ID_rabota = ' + DM.q_rabota.FieldByName('ID_rabota').AsString;
    DM.q_temp.ExecSQL;

    DM.q_temp.SQL.Text := 'Delete From rashod_mto '
                        + 'Where ID_rabota = ' + DM.q_rabota.FieldByName('ID_rabota').AsString;
    DM.q_temp.ExecSQL;

    DM.q_temp.SQL.Text := 'Delete From rashod_gsm '
                        + 'Where ID_rabota = ' + DM.q_rabota.FieldByName('ID_rabota').AsString;
    DM.q_temp.ExecSQL;

    DM.q_rabota.Delete;
  end;
end;

procedure Tform_rabota.BitBtn4Click(Sender: TObject);
begin
  dm.q_rabota.First;
end;

procedure Tform_rabota.BitBtn5Click(Sender: TObject);
begin
  dm.q_rabota.Prior;
end;

procedure Tform_rabota.BitBtn6Click(Sender: TObject);
begin
  dm.q_rabota.Next;
end;

procedure Tform_rabota.BitBtn7Click(Sender: TObject);
begin
  dm.q_rabota.Last;
end;

procedure Tform_rabota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_rabota := nil;
end;

end.
