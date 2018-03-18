program ARM_VS_ETOP;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {form_main},
  unit_datamodule in 'unit_datamodule.pas' {DataModule2: TDataModule},
  unit_dolzhnost in 'unit_dolzhnost.pas' {form_dolzhnost};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_main, form_main);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(Tform_dolzhnost, form_dolzhnost);
  Application.Run;
end.
