unit unit_sotrudnik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Buttons;

type
  Tform_sotrudnik = class(TForm)
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_sotrudnik: Tform_sotrudnik;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_sotrudnik, Unit1;

procedure Tform_sotrudnik.BitBtn1Click(Sender: TObject);
begin
  DM.q_sotrudnik.Insert;
  form_edit_sotrudnik.ShowModal;
end;

procedure Tform_sotrudnik.BitBtn2Click(Sender: TObject);
begin
  DM.q_sotrudnik.Edit;
  form_edit_sotrudnik.ShowModal;
end;

procedure Tform_sotrudnik.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_sotrudnik.Delete;
end;

procedure Tform_sotrudnik.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_sotrudnik := nil;
end;

end.
