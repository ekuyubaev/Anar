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
     skrytDoSledRaza : boolean;
  end;

implementation

uses unit_datamodule, unit_uvedomlenie_attestacia, Unit1;

procedure TUvedomlenie.pokazatUvedomlenie;
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
    form_uvedomlenie_attestacia.ShowModal;
  end;
end;


procedure TUvedomlenie.Execute;
begin
  { Place thread code here }

  sleep(5000);

  while not terminated do
  begin
      if skrytDoSledRaza then
      begin
        self.Terminate;
        continue;
      end;

      Synchronize(pokazatUvedomlenie);
      sleep(60000);
  end;
end;

end.
