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
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
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

procedure Tform_sotrudnik.BitBtn4Click(Sender: TObject);
begin
  dm.q_sotrudnik.First;
end;

procedure Tform_sotrudnik.BitBtn5Click(Sender: TObject);
begin
  dm.q_sotrudnik.Prior;
end;

procedure Tform_sotrudnik.BitBtn6Click(Sender: TObject);
begin
  dm.q_sotrudnik.Next;
end;

procedure Tform_sotrudnik.BitBtn7Click(Sender: TObject);
begin
  dm.q_sotrudnik.Last;
end;

procedure Tform_sotrudnik.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_sotrudnik := nil;
end;

end.
