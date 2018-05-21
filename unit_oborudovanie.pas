unit unit_oborudovanie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_oborudovanie = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGridEh1: TDBGridEh;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_oborudovanie: Tform_oborudovanie;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_oborudovanie, unit_narabotka, Unit1;

procedure Tform_oborudovanie.BitBtn1Click(Sender: TObject);
begin
  DM.q_oborudovanie.Insert;
  form_edit_oborudovanie.ShowModal;
end;

procedure Tform_oborudovanie.BitBtn2Click(Sender: TObject);
begin
  DM.q_oborudovanie.Edit;
  form_edit_oborudovanie.ShowModal;
end;

procedure Tform_oborudovanie.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_oborudovanie.Delete;
end;

procedure Tform_oborudovanie.BitBtn4Click(Sender: TObject);
begin
  form_narabotka.ShowModal;
end;

procedure Tform_oborudovanie.BitBtn5Click(Sender: TObject);
begin
  dm.q_oborudovanie.First;
end;

procedure Tform_oborudovanie.BitBtn6Click(Sender: TObject);
begin
  dm.q_oborudovanie.Prior;
end;

procedure Tform_oborudovanie.BitBtn7Click(Sender: TObject);
begin
  dm.q_oborudovanie.Next;
end;

procedure Tform_oborudovanie.BitBtn8Click(Sender: TObject);
begin
  dm.q_oborudovanie.Last;
end;

procedure Tform_oborudovanie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_oborudovanie := nil;
end;

end.
