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
  unit_edit_sredstvo_izmerenia in 'unit_edit_sredstvo_izmerenia.pas' {form_edit_sredstvo_izmerenia},
  unit_ZIP in 'unit_ZIP.pas' {form_ZIP},
  unit_edit_ZIP in 'unit_edit_ZIP.pas' {form_edit_ZIP},
  unit_vydacha_ZIP in 'unit_vydacha_ZIP.pas' {form_vydacha_ZIP},
  unit_attestacia in 'unit_attestacia.pas' {form_attestacia},
  unit_edit_attestacia in 'unit_edit_attestacia.pas' {form_edit_attestacia},
  unit_vybor_sotrudnik_attestacia in 'unit_vybor_sotrudnik_attestacia.pas' {form_vybor_sotrudnik_attestacia},
  unit_MTO in 'unit_MTO.pas' {form_MTO},
  unit_edit_MTO in 'unit_edit_MTO.pas' {form_edit_MTO},
  unit_prihod_MTO in 'unit_prihod_MTO.pas' {form_prihod_MTO},
  unit_edit_prihod_MTO in 'unit_edit_prihod_MTO.pas' {form_edit_prihod_MTO},
  unit_GSM in 'unit_GSM.pas' {form_GSM},
  unit_edit_GSM in 'unit_edit_GSM.pas' {form_edit_GSM},
  unit_edit_prihod_GSM in 'unit_edit_prihod_GSM.pas' {form_edit_prihod_GSM},
  unit_prihod_GSM in 'unit_prihod_GSM.pas' {form_prihod_GSM},
  unit_pusk in 'unit_pusk.pas' {form_pusk},
  unit_edit_pusk in 'unit_edit_pusk.pas' {form_edit_pusk},
  unit_rabota in 'unit_rabota.pas' {form_rabota},
  unit_vid_rabota in 'unit_vid_rabota.pas' {form_vid_rabota},
  unit_edit_rabota in 'unit_edit_rabota.pas' {form_edit_rabota},
  unit_vybor_ispolnitel in 'unit_vybor_ispolnitel.pas' {form_vybor_ispolnitel},
  unit_vybor_material in 'unit_vybor_material.pas' {form_vybor_material},
  unit_vybor_GSM in 'unit_vybor_GSM.pas' {form_vybor_GSM},
  unit_uvedomlenie in 'unit_uvedomlenie.pas',
  unit_uvedomlenie_attestacia in 'unit_uvedomlenie_attestacia.pas' {form_uvedomlenie_attestacia},
  unit_naimenovanie_rabot in 'unit_naimenovanie_rabot.pas' {form_naimenovanie_rabot},
  unit_uvedomlenie_rabota in 'unit_uvedomlenie_rabota.pas' {form_uvedomlenie_rabota};

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
  Application.CreateForm(Tform_edit_sotrudnik, form_edit_sotrudnik);
  Application.CreateForm(Tform_edit_sooruzhenie, form_edit_sooruzhenie);
  Application.CreateForm(Tform_edit_oborudovanie, form_edit_oborudovanie);
  Application.CreateForm(Tform_narabotka, form_narabotka);
  Application.CreateForm(Tform_EI, form_EI);
  Application.CreateForm(Tform_edit_sredstvo_izmerenia, form_edit_sredstvo_izmerenia);
  Application.CreateForm(Tform_edit_ZIP, form_edit_ZIP);
  Application.CreateForm(Tform_vydacha_ZIP, form_vydacha_ZIP);
  Application.CreateForm(Tform_edit_attestacia, form_edit_attestacia);
  Application.CreateForm(Tform_vybor_sotrudnik_attestacia, form_vybor_sotrudnik_attestacia);
  Application.CreateForm(Tform_edit_MTO, form_edit_MTO);
  Application.CreateForm(Tform_prihod_MTO, form_prihod_MTO);
  Application.CreateForm(Tform_edit_prihod_MTO, form_edit_prihod_MTO);
  Application.CreateForm(Tform_edit_GSM, form_edit_GSM);
  Application.CreateForm(Tform_edit_prihod_GSM, form_edit_prihod_GSM);
  Application.CreateForm(Tform_prihod_GSM, form_prihod_GSM);
  Application.CreateForm(Tform_edit_pusk, form_edit_pusk);
  Application.CreateForm(Tform_vid_rabota, form_vid_rabota);
  Application.CreateForm(Tform_edit_rabota, form_edit_rabota);
  Application.CreateForm(Tform_vybor_ispolnitel, form_vybor_ispolnitel);
  Application.CreateForm(Tform_vybor_material, form_vybor_material);
  Application.CreateForm(Tform_vybor_GSM, form_vybor_GSM);
  Application.CreateForm(Tform_uvedomlenie_attestacia, form_uvedomlenie_attestacia);
  Application.CreateForm(Tform_naimenovanie_rabot, form_naimenovanie_rabot);
  Application.CreateForm(Tform_uvedomlenie_rabota, form_uvedomlenie_rabota);
  Application.Run;
end.
