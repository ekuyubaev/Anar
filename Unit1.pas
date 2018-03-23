unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  Tform_main = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_main: Tform_main;

implementation

{$R *.dfm}

uses unit_dolzhnost, unit_vid_attestacia, unit_rezultat_attestacia,
  unit_sostoianie, unit_rezultat_poverka, unit_sotrudnik, unit_datamodule,
  unit_sooruzhenie, unit_oborudovanie, unit_EI, unit_sredstvo_izmerenia,
  unit_ZIP, unit_attestacia;

procedure Tform_main.FormActivate(Sender: TObject);
begin
  DM.connect;
end;

procedure Tform_main.N10Click(Sender: TObject);
begin
  form_sotrudnik.ShowModal;
end;

procedure Tform_main.N11Click(Sender: TObject);
begin
  form_sooruzhenie.ShowModal;
end;

procedure Tform_main.N12Click(Sender: TObject);
begin
  form_oborudovanie.ShowModal;
end;

procedure Tform_main.N13Click(Sender: TObject);
begin
  form_EI.ShowModal;
end;

procedure Tform_main.N14Click(Sender: TObject);
begin
  form_sredstvo_izmerenia.ShowModal;
end;

procedure Tform_main.N15Click(Sender: TObject);
begin
  form_ZIP.ShowModal;
end;

procedure Tform_main.N16Click(Sender: TObject);
begin
  form_attestacia.ShowModal;
end;

procedure Tform_main.N4Click(Sender: TObject);
begin
  form_dolzhnost.ShowModal;
end;

procedure Tform_main.N5Click(Sender: TObject);
begin
  form_vid_attestacia.ShowModal;
end;

procedure Tform_main.N6Click(Sender: TObject);
begin
  form_rezultat_attestacia.ShowModal;
end;

procedure Tform_main.N7Click(Sender: TObject);
begin
  form_sostoianie.ShowModal;
end;

procedure Tform_main.N8Click(Sender: TObject);
begin
  form_rezultat_poverka.ShowModal;
end;

end.
