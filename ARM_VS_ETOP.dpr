program ARM_VS_ETOP;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {form_main},
  unit_datamodule in 'unit_datamodule.pas' {DM: TDataModule},
  unit_dolzhnost in 'unit_dolzhnost.pas' {form_dolzhnost},
  unit_vid_attestacia in 'unit_vid_attestacia.pas' {form_vid_attestacia},
  unit_rezultat_attestacia in 'unit_rezultat_attestacia.pas' {form_rezultat_attestacia},
  unit_sostoianie in 'unit_sostoianie.pas' {form_sostoianie},
  unit_rezultat_poverka in 'unit_rezultat_poverka.pas' {form_rezultat_poverka},
  unit_sotrudnik in 'unit_sotrudnik.pas' {form_sotrudnik},
  unit_edit_sotrudnik in 'unit_edit_sotrudnik.pas' {form_edit_sotrudnik},
  unit_sooruzhenie in 'unit_sooruzhenie.pas' {form_sooruzhenie},
  unit_edit_sooruzhenie in 'unit_edit_sooruzhenie.pas' {form_edit_sooruzhenie},
  unit_oborudovanie in 'unit_oborudovanie.pas' {form_oborudovanie},
  unit_edit_oborudovanie in 'unit_edit_oborudovanie.pas' {form_edit_oborudovanie},
  unit_narabotka in 'unit_narabotka.pas' {form_narabotka},
  unit_EI in 'unit_EI.pas' {form_EI},
  unit_sredstvo_izmerenia in 'unit_sredstvo_izmerenia.pas' {form_sredstvo_izmerenia},
  unit_edit_sredstvo_izmerenia in 'unit_edit_sredstvo_izmerenia.pas' {form_edit_sredstvo_izmerenia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_main, form_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tform_dolzhnost, form_dolzhnost);
  Application.CreateForm(Tform_vid_attestacia, form_vid_attestacia);
  Application.CreateForm(Tform_rezultat_attestacia, form_rezultat_attestacia);
  Application.CreateForm(Tform_sostoianie, form_sostoianie);
  Application.CreateForm(Tform_rezultat_poverka, form_rezultat_poverka);
  Application.CreateForm(Tform_sotrudnik, form_sotrudnik);
  Application.CreateForm(Tform_edit_sotrudnik, form_edit_sotrudnik);
  Application.CreateForm(Tform_sooruzhenie, form_sooruzhenie);
  Application.CreateForm(Tform_edit_sooruzhenie, form_edit_sooruzhenie);
  Application.CreateForm(Tform_oborudovanie, form_oborudovanie);
  Application.CreateForm(Tform_edit_oborudovanie, form_edit_oborudovanie);
  Application.CreateForm(Tform_narabotka, form_narabotka);
  Application.CreateForm(Tform_EI, form_EI);
  Application.CreateForm(Tform_sredstvo_izmerenia, form_sredstvo_izmerenia);
  Application.CreateForm(Tform_edit_sredstvo_izmerenia, form_edit_sredstvo_izmerenia);
  Application.Run;
end.
