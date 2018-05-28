unit unit_gant;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.Series, VCLTee.GanttCh;

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
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

    Series.AddGantt(dm.q_temp.FieldByName('Nachalo').AsDateTime,
                          dm.q_temp.FieldByName('Okonchanie').AsDateTime,
                          i+launchCount, jobName );

  end;

  Chart1.Legend.Visible := false;
  Chart1.View3D := false;
end;

procedure Tform_gant.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_gant := nil;
end;

end.
