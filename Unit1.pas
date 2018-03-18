unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

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
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
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
  unit_sostoianie, unit_rezultat_poverka;

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
