unit unit_gant;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.Series, VCLTee.GanttCh, DateUtils;

type
  Tform_gant = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Chart1: TChart;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Series1: TGanttSeries;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_gant: Tform_gant;

implementation

{$R *.dfm}

uses unit_datamodule, Unit1;

procedure Tform_gant.BitBtn1Click(Sender: TObject);
var series : TGanttSeries;
  i, launchCount: Integer;
  jobName, launchName : String;
begin
  Chart1.ClearChart;
  series := TGanttSeries.Create(chart1);
  series.ParentChart := chart1;

  if (dm.q_temp.Active) then dm.q_temp.Close;

  dm.q_temp.SQL.Text := 'Select * From Pusk ' +
                        'Where (Data_nachalo between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') or (Data_okonchanie between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ')';
  dm.q_temp.Open;

  for i := 1 to dm.q_temp.RecordCount do
  begin
    dm.q_temp.RecNo := i;

    launchName := dm.q_temp.FieldByName('Naimenovanie').AsString;
    if Length(launchName) < 1 then launchName := 'Без наименования';

    Series.AddGanttColor(dm.q_temp.FieldByName('Data_nachalo').AsDateTime,
                          dm.q_temp.FieldByName('Data_okonchanie').AsDateTime,
                          i, launchName, clRed );
  end;

  launchCount := dm.q_temp.RecordCount;

  if (dm.q_temp.Active) then dm.q_temp.Close;

  dm.q_temp.SQL.Text := 'Select * From Rabota R left outer join Naimenovanie_rabot NR ' +
                        'ON R.ID_naimenovanie = NR.ID_naimenovanie ' +
                        'Where ID_vid_rabota = 1 and (' +
                        '(Nachalo between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') or (Okonchanie between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') )';
  dm.q_temp.Open;

  for i := 1 to dm.q_temp.RecordCount do
  begin
      dm.q_temp.RecNo := i;

      jobName := dm.q_temp.FieldByName('Naimnovanie').AsString;
      if Length(jobName) < 1 then jobName := 'Без наименования';

      Series.AddGanttColor(dm.q_temp.FieldByName('Nachalo').AsDateTime,
                          dm.q_temp.FieldByName('Okonchanie').AsDateTime,
                          i+launchCount, jobName, clYellow );
  end;

  Chart1.Legend.Visible := false;
  Chart1.View3D := false;
  Chart1.Title.Caption := 'Диаграмма Ганта для пусков и работ по ТО';
  Chart1.BottomAxis.Title.Caption := 'Время';
  Chart1.LeftAxis.Title.Caption := 'Работы и пуски';

  BitBtn3.Visible := false;
end;

procedure Tform_gant.BitBtn2Click(Sender: TObject);
var  i: Integer;
  isOverlaps :boolean;
  j: Integer;
begin
  isOverlaps := false;

  if (dm.qTempLaunches.Active) then dm.qTempLaunches.Close;
  dm.qTempLaunches.SQL.Text := 'Select * From Pusk ' +
                        'Where (Data_nachalo between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') or (Data_okonchanie between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ')';
  dm.qTempLaunches.Open;

  if (dm.qTempJobs.Active) then dm.qTempJobs.Close;

  dm.qTempJobs.SQL.Text := 'Select * From Rabota R left outer join Naimenovanie_rabot NR ' +
                        'ON R.ID_naimenovanie = NR.ID_naimenovanie ' +
                        'Where ID_vid_rabota = 1 and (' +
                        '(Nachalo between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') or (Okonchanie between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') )';
  dm.qTempJobs.Open;

  for i := 1 to dm.qTempJobs.RecordCount do
  begin
    dm.qTempJobs.RecNo := i;

    for j := 1 to dm.qTempLaunches.RecordCount do
    begin
      dm.qTempLaunches.RecNo := j;

      if ((dm.qTempJobs.FieldByName('Nachalo').AsDateTime >= dm.qTempLaunches.FieldByName('Data_nachalo').AsDateTime)
        and  (dm.qTempJobs.FieldByName('Nachalo').AsDateTime <= dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime))
        or ((dm.qTempJobs.FieldByName('Okonchanie').AsDateTime >= dm.qTempLaunches.FieldByName('Data_nachalo').AsDateTime)
        and  (dm.qTempJobs.FieldByName('Okonchanie').AsDateTime <= dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime))
        or ((dm.qTempJobs.FieldByName('Nachalo').AsDateTime <= dm.qTempLaunches.FieldByName('Data_nachalo').AsDateTime)
        and  (dm.qTempJobs.FieldByName('Okonchanie').AsDateTime >= dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime)) then
      begin
        isOverlaps := true;
      end;

    end;
  end;

  if isOverlaps then
  begin
    ShowMessage('Есть наложения по датам.');
    BitBtn3.Visible := true;
  end
    else ShowMessage('наложений по датам нет.');
end;


procedure Tform_gant.BitBtn3Click(Sender: TObject);
var  i: Integer;
  isOverlaps :boolean;
  j, launchCount: Integer;
  minDate, maxDate :TDate;
  series : TGanttSeries;
  launchName, jobName : String;
  shiftDays : integer;
begin
  isOverlaps := false;

  if (dm.qTempLaunches.Active) then dm.qTempLaunches.Close;
  dm.qTempLaunches.SQL.Text := 'Select * From Pusk ' +
                        'Where (Data_nachalo between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') or (Data_okonchanie between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ')';
  dm.qTempLaunches.Open;

  if (dm.qTempJobs.Active) then dm.qTempJobs.Close;

  dm.qTempJobs.SQL.Text := 'Select * From Rabota R left outer join Naimenovanie_rabot NR ' +
                        'ON R.ID_naimenovanie = NR.ID_naimenovanie ' +
                        'Where ID_vid_rabota = 1 and (' +
                        '(Nachalo between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') or (Okonchanie between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)) +
                                        ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)) +
                        ') )';
  dm.qTempJobs.Open;

  for i := 1 to dm.qTempJobs.RecordCount do
  begin
    dm.qTempJobs.RecNo := i;

    for j := 1 to dm.qTempLaunches.RecordCount do
    begin
      dm.qTempLaunches.RecNo := j;

      if ((dm.qTempJobs.FieldByName('Nachalo').AsDateTime >= dm.qTempLaunches.FieldByName('Data_nachalo').AsDateTime)
        and  (dm.qTempJobs.FieldByName('Nachalo').AsDateTime <= dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime))
        or ((dm.qTempJobs.FieldByName('Okonchanie').AsDateTime >= dm.qTempLaunches.FieldByName('Data_nachalo').AsDateTime)
        and  (dm.qTempJobs.FieldByName('Okonchanie').AsDateTime <= dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime))  then
      begin
        if not isOverlaps then
        begin
          minDate := dm.qTempJobs.FieldByName('Nachalo').AsDateTime;
          maxDate := dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime;
          isOverlaps := true;
        end
        else
        begin
            if minDate > dm.qTempJobs.FieldByName('Nachalo').AsDateTime
                    then minDate := dm.qTempJobs.FieldByName('Nachalo').AsDateTime;
            if maxDate < dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime
                    then maxDate := dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime;
        end;
      end;
    end;
  end;

  Chart1.ClearChart;
  series := TGanttSeries.Create(chart1);
  series.ParentChart := chart1;

  for i := 1 to dm.qTempLaunches.RecordCount do
  begin
    dm.qTempLaunches.RecNo := i;

    launchName := dm.qTempLaunches.FieldByName('Naimenovanie').AsString;
    if Length(launchName) < 1 then launchName := 'Без наименования';

    Series.AddGanttColor(dm.qTempLaunches.FieldByName('Data_nachalo').AsDateTime,
                          dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime,
                          i, launchName, clRed );
  end;

  launchCount := dm.qTempLaunches.RecordCount;
  shiftDays := DaysBetween(minDate, maxDate);
  Inc(shiftDays);

  for i := 1 to dm.qTempJobs.RecordCount do
  begin
    dm.qTempJobs.RecNo := i;

    for j := 1 to dm.qTempLaunches.RecordCount do
    begin
      dm.qTempLaunches.RecNo := j;

      if ((dm.qTempJobs.FieldByName('Nachalo').AsDateTime >= dm.qTempLaunches.FieldByName('Data_nachalo').AsDateTime)
        and  (dm.qTempJobs.FieldByName('Nachalo').AsDateTime <= dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime))
        or ((dm.qTempJobs.FieldByName('Okonchanie').AsDateTime >= dm.qTempLaunches.FieldByName('Data_nachalo').AsDateTime)
        and  (dm.qTempJobs.FieldByName('Okonchanie').AsDateTime <= dm.qTempLaunches.FieldByName('Data_okonchanie').AsDateTime))  then
      begin
        dm.qTempJobs.Edit;
        dm.qTempJobs.FieldByName('Nachalo').AsDateTime := IncDay(dm.qTempJobs.FieldByName('Nachalo').AsDateTime, shiftDays);
        dm.qTempJobs.FieldByName('Okonchanie').AsDateTime := IncDay(dm.qTempJobs.FieldByName('Okonchanie').AsDateTime, shiftDays);
        dm.qTempJobs.Post;

        jobName := dm.q_temp.FieldByName('Naimnovanie').AsString;
        if Length(jobName) < 1 then jobName := 'Без наименования';
        Series.AddGanttColor(dm.qTempJobs.FieldByName('Nachalo').AsDateTime,
                          dm.qTempJobs.FieldByName('Okonchanie').AsDateTime,
                          i+launchCount, jobName, clBlue );
      end
        else
      begin
        jobName := dm.q_temp.FieldByName('Naimnovanie').AsString;
        if Length(jobName) < 1 then jobName := 'Без наименования';
        Series.AddGanttColor(dm.qTempJobs.FieldByName('Nachalo').AsDateTime,
                          dm.qTempJobs.FieldByName('Okonchanie').AsDateTime,
                          i+launchCount, jobName, clYellow);
      end;
    end;
  end;

  Chart1.Legend.Visible := false;
  Chart1.View3D := false;
  Chart1.Title.Caption := 'Пересчитанная диаграмма Ганта для пусков и работ по ТО';
  Chart1.BottomAxis.Title.Caption := 'Время';
  Chart1.LeftAxis.Title.Caption := 'Работы и пуски';

  BitBtn3.Visible := false;
end;

procedure Tform_gant.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_gant := nil;
end;

end.
