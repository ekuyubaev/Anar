program ARM_VS_ETOP;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {form_main},
  unit_datamodule in 'unit_datamodule.pas' {DataModule2: TDataModule},
  unit_dolzhnost in 'unit_dolzhnost.pas' {form_dolzhnost},
  unit_vid_attestacia in 'unit_vid_attestacia.pas' {form_vid_attestacia},
  unit_rezultat_attestacia in 'unit_rezultat_attestacia.pas' {form_rezultat_attestacia},
  unit_sostoianie in 'unit_sostoianie.pas' {form_sostoianie},
  unit_rezultat_poverka in 'unit_rezultat_poverka.pas' {form_rezultat_poverka};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_main, form_main);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(Tform_dolzhnost, form_dolzhnost);
  Application.CreateForm(Tform_vid_attestacia, form_vid_attestacia);
  Application.CreateForm(Tform_rezultat_attestacia, form_rezultat_attestacia);
  Application.CreateForm(Tform_sostoianie, form_sostoianie);
  Application.CreateForm(Tform_rezultat_poverka, form_rezultat_poverka);
  Application.Run;
end.
