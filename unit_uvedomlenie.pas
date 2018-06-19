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
     skrytPoverka : boolean;
  end;

implementation

uses unit_datamodule, unit_uvedomlenie_attestacia, Unit1,
  unit_uvedomlenie_rabota, unit_uvedomlenie_poverka;

procedure TUvedomlenie.pokazatUvedomlenie;
begin
  // уведомление об аттестациях
  if  not skrytAttestacia
      and not form_uvedomlenie_attestacia.Active
      and not form_uvedomlenie_rabota.Active
      and not form_uvedomlenie_poverka.Active then
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


  // уведомление о незавершенных работах
  if  not skrytRabota
      and not form_uvedomlenie_rabota.Active
      and not form_uvedomlenie_attestacia.Active
      and not form_uvedomlenie_poverka.Active then
  begin
    dm.q_uvedomlenie_rabota.SQL.Text := 'Select * '
                  +'From Rabota R left join naimenovanie_rabot as NR '
                  +'on NR.ID_naimenovanie = R.ID_naimenovanie '
                  +'Where (R.ID_vid_rabota = 1) and '
                  +'( (R.Okonchanie is null or R.Okonchanie <= Now()) and R.Vypolnena <> 1)';
    dm.q_uvedomlenie_rabota.Open;

    if dm.q_uvedomlenie_rabota.RecordCount > 0 then
    begin
      beep();
      form_uvedomlenie_rabota.Show;
    end;
  end;


  // уведомление о поверках
  if  not skrytPoverka
      and not form_uvedomlenie_rabota.Active
      and not form_uvedomlenie_attestacia.Active
      and not form_uvedomlenie_poverka.Active then
  begin
    dm.q_uvedomlenie_poverka.SQL.Text := 'Select * '
                          +'From sredstvo_izmerenia as SI left join '
                          +'(Select ID_sredstvo_izmerenia, max(Data_poverka) as MDP From Poverka Group by ID_sredstvo_izmerenia) as P '
                          +'on SI.ID_sredstvo_izmerenia = P.ID_sredstvo_izmerenia '
                          +'Where MDP is null or '
                          +'( (MDP + interval SI.Periodichnost_poverka month) < now())';
    dm.q_uvedomlenie_poverka.Open;

    if dm.q_uvedomlenie_poverka.RecordCount > 0 then
    begin
      beep();
      form_uvedomlenie_poverka.Show;
    end;
  end;
end;

procedure TUvedomlenie.Execute;
begin
  sleep(5000);

  while not terminated do
  begin
      Synchronize(pokazatUvedomlenie);

      sleep(15000);
  end;
end;

end.
