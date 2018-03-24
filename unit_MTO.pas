unit unit_MTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  Tform_MTO = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_MTO: Tform_MTO;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_MTO, unit_prihod_MTO, Unit1;

procedure Tform_MTO.BitBtn1Click(Sender: TObject);
begin
  DM.q_MTO.Insert;
  form_edit_MTO.ShowModal;
end;

procedure Tform_MTO.BitBtn2Click(Sender: TObject);
begin
  DM.q_MTO.Edit;
  form_edit_MTO.ShowModal;
end;

procedure Tform_MTO.BitBtn4Click(Sender: TObject);
begin
  form_prihod_MTO.ShowModal;
end;

procedure Tform_MTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_MTO := nil;
end;

end.
