unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, unit_attestacia, unit_oborudovanie, unit_sotrudnik, unit_sooruzhenie,
  unit_sredstvo_izmerenia, unit_ZIP, unit_MTO, unit_GSM, unit_pusk, unit_rabota,
  unit_uvedomlenie_attestacia, unit_uvedomlenie, unit_otchety, unit_login;

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
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
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
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N24Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_main: Tform_main;
  form_attestacia: Tform_attestacia;
  form_oborudovanie: Tform_oborudovanie;
  form_sotrudnik: Tform_sotrudnik;
  form_sooruzhenie: Tform_sooruzhenie;
  form_sredstvo_izmerenia: Tform_sredstvo_izmerenia;
  form_ZIP: Tform_ZIP;
  form_MTO: Tform_MTO;
  form_GSM: Tform_GSM;
  form_pusk: Tform_pusk;
  form_rabota: Tform_rabota;
  form_otchety: Tform_otchety;
  uvedomlenie: TUvedomlenie;
  form_login: Tform_login;

implementation

{$R *.dfm}

uses unit_dolzhnost, unit_vid_attestacia, unit_rezultat_attestacia,
  unit_sostoianie, unit_rezultat_poverka, unit_datamodule,
  unit_EI, unit_vid_rabota, unit_naimenovanie_rabot;

procedure Tform_main.FormActivate(Sender: TObject);
begin
  if form_login = nil then
  begin
    form_login := Tform_login.Create(Application);
    form_login.Show;
  end;
end;

procedure Tform_main.FormCreate(Sender: TObject);
var i:integer;
begin
  for i := 0 to MainMenu1.Items.Count-1 do
      MainMenu1.Items.Items[i].Enabled := false;
end;

procedure Tform_main.N10Click(Sender: TObject);
begin
  if form_sotrudnik = nil then
  begin
    form_sotrudnik := Tform_sotrudnik.Create(Application);
    form_sotrudnik.Show;
  end;
end;

procedure Tform_main.N11Click(Sender: TObject);
begin
  if form_sooruzhenie = nil then
  begin
    form_sooruzhenie := Tform_sooruzhenie.Create(Application);
    form_sooruzhenie.Show;
  end;
end;

procedure Tform_main.N12Click(Sender: TObject);
begin
  if form_oborudovanie = nil then
  begin
    form_oborudovanie := Tform_oborudovanie.Create(Application);
    form_oborudovanie.Show;
  end;
end;

procedure Tform_main.N13Click(Sender: TObject);
begin
  form_EI.ShowModal;
end;

procedure Tform_main.N14Click(Sender: TObject);
begin
  if form_sredstvo_izmerenia = nil then
  begin
    form_sredstvo_izmerenia := Tform_sredstvo_izmerenia.Create(Application);
    form_sredstvo_izmerenia.Show;
  end;
end;

procedure Tform_main.N15Click(Sender: TObject);
begin
  if form_ZIP = nil then
  begin
    form_ZIP := Tform_ZIP.Create(Application);
    form_ZIP.Show;
  end;
end;

procedure Tform_main.N16Click(Sender: TObject);
begin
  if form_attestacia = nil then
  begin
    form_attestacia := Tform_attestacia.Create(Application);
    form_attestacia.Show;
  end;
end;

procedure Tform_main.N17Click(Sender: TObject);
begin
  if form_MTO = nil then
  begin
    form_MTO := Tform_MTO.Create(Application);
    form_MTO.Show;
  end;
end;

procedure Tform_main.N18Click(Sender: TObject);
begin
  if form_GSM = nil then
  begin
    form_GSM := Tform_GSM.Create(Application);
    form_GSM.Show;
  end;
end;

procedure Tform_main.N19Click(Sender: TObject);
begin
  if form_pusk = nil then
  begin
    form_pusk := Tform_pusk.Create(Application);
    form_pusk.Show;
  end;
end;

procedure Tform_main.N20Click(Sender: TObject);
begin
  if form_rabota = nil then
  begin
    form_rabota := Tform_rabota.Create(Application);
    form_rabota.Show;
  end;
end;

procedure Tform_main.N21Click(Sender: TObject);
begin
  form_vid_rabota.ShowModal;
end;

procedure Tform_main.N22Click(Sender: TObject);
begin
  form_naimenovanie_rabot.ShowModal;
end;

procedure Tform_main.N24Click(Sender: TObject);
begin
  if form_otchety = nil then
  begin
    form_otchety := Tform_otchety.Create(Application);
    form_otchety.Show;
    form_otchety.PageControl1.ActivePage := form_otchety.ts_TO;
  end;
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
