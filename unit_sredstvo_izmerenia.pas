unit unit_sredstvo_izmerenia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_sredstvo_izmerenia = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridEh1: TDBGridEh;
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
  form_sredstvo_izmerenia: Tform_sredstvo_izmerenia;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_sredstvo_izmerenia, Unit1;

procedure Tform_sredstvo_izmerenia.BitBtn1Click(Sender: TObject);
begin
  DM.q_sredstvo_izmerenia.Insert;
  form_edit_sredstvo_izmerenia.ShowModal;
end;

procedure Tform_sredstvo_izmerenia.BitBtn2Click(Sender: TObject);
begin
  DM.q_sredstvo_izmerenia.Edit;
  form_edit_sredstvo_izmerenia.ShowModal;
end;

procedure Tform_sredstvo_izmerenia.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Удалить запись?', mtConfirmation, [mbYes,mbNo], 0) = mrYes)
    then DM.q_sredstvo_izmerenia.Delete;
end;

procedure Tform_sredstvo_izmerenia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_sredstvo_izmerenia := nil;
end;

end.
