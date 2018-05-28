unit unit_GSM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  Tform_GSM = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridEh1: TDBGridEh;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_GSM: Tform_GSM;

implementation

{$R *.dfm}

uses Unit1, unit_datamodule, unit_edit_GSM, unit_prihod_GSM, unit_otchety;

procedure Tform_GSM.BitBtn1Click(Sender: TObject);
begin
  DM.q_GSM.Insert;
  form_edit_GSM.state := 'insert';
  form_edit_GSM.ShowModal;
end;

procedure Tform_GSM.BitBtn2Click(Sender: TObject);
begin
  DM.q_GSM.Edit;
  form_edit_GSM.state := 'edit';
  form_edit_GSM.ShowModal;
end;

procedure Tform_GSM.BitBtn3Click(Sender: TObject);
begin
  form_prihod_GSM.ShowModal;
end;

procedure Tform_GSM.BitBtn4Click(Sender: TObject);
begin
  dm.q_GSM.First;
end;

procedure Tform_GSM.BitBtn5Click(Sender: TObject);
begin
  dm.q_GSM.Prior;
end;

procedure Tform_GSM.BitBtn6Click(Sender: TObject);
begin
  dm.q_GSM.Next;
end;

procedure Tform_GSM.BitBtn7Click(Sender: TObject);
begin
  dm.q_GSM.Last;
end;

procedure Tform_GSM.BitBtn8Click(Sender: TObject);
begin
  form_otchety.Zaiavka_GSM;
end;

procedure Tform_GSM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_GSM := nil;
end;

end.
