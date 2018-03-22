unit unit_ZIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Buttons;

type
  Tform_ZIP = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_ZIP: Tform_ZIP;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_ZIP, unit_vydacha_ZIP;

procedure Tform_ZIP.BitBtn1Click(Sender: TObject);
begin
  DM.q_ZIP.Insert;
  form_edit_ZIP.ShowModal;
end;

procedure Tform_ZIP.BitBtn2Click(Sender: TObject);
begin
  DM.q_ZIP.Edit;
  form_edit_ZIP.ShowModal;
end;

procedure Tform_ZIP.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('������� ������?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_ZIP.Delete;
end;

procedure Tform_ZIP.BitBtn4Click(Sender: TObject);
begin
  form_vydacha_ZIP.ShowModal;
end;

end.
