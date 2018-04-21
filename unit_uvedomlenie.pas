unit unit_uvedomlenie;

interface

uses
  Classes, SysUtils, DateUtils, StdCtrls, Dialogs, ADODB, Vcl.Graphics;

type
  TUvedomlenie = class(TThread)
    private
      { Private declarations }
      procedure pokazatUvedomlenie();
    protected
      procedure Execute; override;
    public
     skrytAttestacia : boolean;
     skrytRabota : boolean;
  end;

implementation

uses unit_datamodule, unit_uvedomlenie_attestacia, Unit1,
  unit_uvedomlenie_rabota;

procedure TUvedomlenie.pokazatUvedomlenie;
begin
  if not form_uvedomlenie_attestacia.Active
      and not skrytAttestacia
      and not form_uvedomlenie_rabota.Active then
  begin
    dm.q_uvedomlenie.SQL.Text := 'Select * From Zachet Z inner join Attestacia A '
                              + 'on Z.ID_attestacia = A.ID_attestacia '
                              + 'Where (Z.ID_rezultat_attestacia is NULL or '
                              + 'Z.ID_rezultat_attestacia <> 1) '
                              + 'and A.Data_attestacia < Now()';
    dm.q_uvedomlenie.Open;

    if dm.q_uvedomlenie.RecordCount > 0 then
    begin
      beep();
      form_uvedomlenie_attestacia.Show;
    end;
  end;

  if not form_uvedomlenie_rabota.Active
      and not skrytRabota
      and not form_uvedomlenie_attestacia.Active then
  begin
    dm.q_uvedomlenie_rabota.SQL.Text := 'Select * From Rabota as R left join Naimenovanie_rabot as NR '
                              + 'on NR.ID_naimenovanie = R.ID_naimenovanie '
                              + 'Where ( (R.Okonchanie is null or R.Okonchanie <= Now()) and R.Vypolnena <> 1) '
                              + 'or ( ((Select max(okonchanie) from Rabota as R2 Where R2.ID_naimenovanie = R.ID_naimenovanie))) '
                              + 'and ((Select max(okonchanie) from Rabota as R2 Where R2.ID_naimenovanie = R.ID_naimenovanie) = R.Okonchanie)';
    dm.q_uvedomlenie_rabota.Open;

    if dm.q_uvedomlenie_rabota.RecordCount > 0 then
    begin
      beep();
      form_uvedomlenie_rabota.Show;
    end;
  end;
end;

procedure TUvedomlenie.Execute;
begin
  { Place thread code here }

  sleep(5000);

  while not terminated do
  begin
      Synchronize(pokazatUvedomlenie);

      sleep(15000);
  end;
end;

end.
