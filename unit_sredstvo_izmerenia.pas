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
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ComboBox1: TComboBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_sredstvo_izmerenia: Tform_sredstvo_izmerenia;

implementation

{$R *.dfm}

uses unit_datamodule, unit_edit_sredstvo_izmerenia, Unit1, unit_otchety;

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

procedure Tform_sredstvo_izmerenia.BitBtn4Click(Sender: TObject);
begin
  dm.q_sredstvo_izmerenia.First;
end;

procedure Tform_sredstvo_izmerenia.BitBtn5Click(Sender: TObject);
begin
  dm.q_sredstvo_izmerenia.Prior;
end;

procedure Tform_sredstvo_izmerenia.BitBtn6Click(Sender: TObject);
begin
  dm.q_sredstvo_izmerenia.Next;
end;

procedure Tform_sredstvo_izmerenia.BitBtn7Click(Sender: TObject);
begin
  dm.q_sredstvo_izmerenia.Last;
end;

procedure Tform_sredstvo_izmerenia.BitBtn8Click(Sender: TObject);
begin
  form_otchety.GrafikPoverki(StrToInt(ComboBox1.Text));
end;

procedure Tform_sredstvo_izmerenia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_sredstvo_izmerenia := nil;
end;

end.
