unit unit_prognoz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCLTee.TeEngine, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls, Vcl.Buttons, VCLTee.Series, DateUtils,
  ComObj, Vcl.ComCtrls;

type
  Tform_prognoz = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Chart1: TChart;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Series1: TLineSeries;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_prognoz: Tform_prognoz;

implementation

{$R *.dfm}

uses unit_datamodule, Unit1;


procedure Tform_prognoz.BitBtn1Click(Sender: TObject);
var
  Series: TLineSeries;
  i, j, k: Integer;
  errMessage : String;
  sklSrd, meanErr: real;
  myDate : TDateTime;
  labels : array of String;
  mas : array of array of real;
  intSgl, rzmVyb, grzPrg : integer;

begin
  Chart1.ClearChart;
  errMessage := '';

  intSgl := StrToInt(ComboBox2.Text);
  rzmVyb := StrToInt(ComboBox1.Text);
  grzPrg := StrToInt(ComboBox3.Text);

  if (intSgl > rzmVyb) then
  begin
    ShowMessage('Размер интервала сглаживания не может быть больше чем размер выборки');
    Exit;
  end;

  SetLength(mas, 3, rzmVyb + grzPrg );
  SetLength(labels, rzmVyb + grzPrg);

  if (dm.q_prognoz_GSM.Active) then dm.q_prognoz_GSM.Close;
  dm.q_prognoz_GSM.SQL.Text := 'Select * From GSM';
  dm.q_prognoz_GSM.Open;

  for i := 1 to dm.q_prognoz_gsm.RecordCount do
  begin
      dm.q_prognoz_gsm.RecNo := i;

      Series := TLineSeries.Create(Chart1);
      Series.Title := dm.q_prognoz_GSM.FieldByName('Naimenovanie').AsString;

      dm.q_prognoz.SQL.Text := 'Select year(Data_vydano) as god, '
                        + 'month(Data_vydano) as mec, sum(kolichestvo) as sumKol '
                        + 'From rashod_GSM '
                        + 'Where (ID_GSM = ' + dm.q_prognoz_gsm.FieldByName('ID_GSM').AsString
                        + ') and (month(Data_vydano) != month(now()) or year(Data_vydano) != year(now())) '
                        + '	and (Data_vydano < now()) '
                        + 'Group by ID_GSM, month(Data_vydano) '
                        + 'Order by Data_vydano desc '
                        + 'Limit ' + IntToStr(rzmVyb);
      dm.q_prognoz.Open;

      if (dm.q_prognoz.RecordCount < rzmVyb) then
      begin
        errMessage := errMessage + ', ' + dm.q_prognoz_gsm.FieldByName('Naimenovanie').AsString;
        continue;
      end;

      myDate := Now();
      myDate := IncMonth(myDate, -(rzmVyb+1));

      for j := 1 to rzmVyb do
      begin
          myDate := IncMonth(myDate);

          if (i = 1) then labels[j-1] := IntToStr(YearOf(myDate)) + '-' + IntToStr(MonthOf(myDate));

          if ( dm.q_prognoz.Locate('god;mec',VarArrayOf([YearOf(myDate),MonthOf(myDate)]),[]) ) then
          begin
            mas[0, j-1] := dm.q_prognoz.FieldByName('sumKol').AsFloat;
          end
            else mas[0, j-1] := 0;

          if j >= intSgl then
          begin
            sklSrd := 0;
            for k := j - (intSgl - 1) to j do
              sklSrd := sklSrd + mas[0, k-1];
            sklSrd := sklSrd / intSgl;
            mas[1, j-1] := sklSrd;
            if (mas[0, j-1] <> 0) then mas[2, j-1] := ( abs(sklSrd - mas[0, j-1]) / mas[0, j-1] ) * 100
            else mas[2, j-1] := 100;
          end;

          Series.AddXY(j, mas[0, j-1], labels[j-1] );
      end;

      meanErr := 0;
      for j := intSgl to rzmVyb do meanErr := meanErr + mas[2, j-1];
      meanErr := meanErr / (rzmVyb - intSgl + 1);
      Edit1.Text := FloatToStrF(meanErr, ffFixed, 6, 1) + '%';

      for j := rzmVyb + 1 to rzmVyb + grzPrg do
      begin
          myDate := IncMonth(myDate);

          if (i = 1) then labels[j-1] := IntToStr(YearOf(myDate)) + '-' + IntToStr(MonthOf(myDate));

          mas[0, j-1] := mas[1, j-2] + (mas[0,j-2] - mas[0, j-3]) / intSgl;

          if j >= intSgl then
          begin
            sklSrd := 0;
            for k := j - (intSgl - 1) to j do
              sklSrd := sklSrd + mas[0, k-1];
            sklSrd := sklSrd / intSgl;
            mas[1, j-1] := sklSrd;
            if (mas[2, j-1] <> 0) then mas[2, j-1] := ( abs(sklSrd - mas[0, j-1]) / mas[0, j-1] ) * 100
            else mas[2, j-1] := 100;
          end;

          Series.AddXY(j, mas[0, j-1], labels[j-1], clRed );
      end;

      Chart1.AddSeries(Series);
  end;

  Chart1.View3D := false;
  Chart1.Legend.LegendStyle := TLegendStyle(1);

  if (length(errMessage) > 0) then
  begin
    errMessage := copy(errMessage, 2, length(errMessage));
    ShowMessage('Не удалось выполнить прогнозирование из-за нехватки данных для следующих ГСМ: ' + errMessage);
  end
end;


procedure Tform_prognoz.BitBtn2Click(Sender: TObject);
var
  i, j, k: Integer;
  sklSrd, meanErr: real;
  myDate : TDateTime;
  labels : array of String;
  mas : array of array of real;
  intSgl, rzmVyb, grzPrg : integer;
  excel: Variant;
  templatePath :string;
  currentRow : integer;
  bigStep, tinyStep : integer;

begin
  intSgl := StrToInt(ComboBox2.Text);
  rzmVyb := StrToInt(ComboBox1.Text);
  grzPrg := StrToInt(ComboBox3.Text);

  self.ProgressBar1.Position := 0;


  if (intSgl > rzmVyb) then
  begin
    ShowMessage('Размер интервала сглаживания не может быть больше чем размер выборки');
    Exit;
  end;

  SetLength(mas, 3, rzmVyb + grzPrg );
  SetLength(labels, rzmVyb + grzPrg);

  if (dm.q_prognoz_GSM.Active) then dm.q_prognoz_GSM.Close;
  dm.q_prognoz_GSM.SQL.Text := 'Select * From GSM';
  dm.q_prognoz_GSM.Open;

  bigStep := Round(ProgressBar1.Max / dm.q_prognoz_gsm.RecordCount);

  excel := CreateOleObject('Excel.Application');
  templatePath := ExtractFilePath(Application.ExeName)+'otchety\Прогноз.xlt';
  excel.Workbooks.Open[templatePath];

  currentRow := 9;

  for i := 1 to dm.q_prognoz_gsm.RecordCount do
  begin
      dm.q_prognoz_gsm.RecNo := i;
      Inc(currentRow);

      excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(currentRow)+':'+'O'+IntToStr(currentRow)].Select;
      excel.Selection.HorizontalAlignment := 3;
      excel.Selection.Font.Bold := true;
      excel.Selection.Merge;
      excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(currentRow)]
              := dm.q_prognoz_GSM.FieldByName('Naimenovanie').AsString;
      Inc(currentRow);

      dm.q_prognoz.SQL.Text := 'Select year(Data_vydano) as god, '
                        + 'month(Data_vydano) as mec, sum(kolichestvo) as sumKol '
                        + 'From rashod_GSM '
                        + 'Where (ID_GSM = ' + dm.q_prognoz_gsm.FieldByName('ID_GSM').AsString
                        + ') and (month(Data_vydano) != month(now()) or year(Data_vydano) != year(now())) '
                        + '	and (Data_vydano < now()) '
                        + 'Group by ID_GSM, month(Data_vydano) '
                        + 'Order by Data_vydano desc '
                        + 'Limit ' + IntToStr(rzmVyb);
      dm.q_prognoz.Open;

      if (dm.q_prognoz.RecordCount < rzmVyb) then
      begin
        excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(currentRow)+':'+'O'+IntToStr(currentRow)].Select;
        excel.Selection.HorizontalAlignment := 3;
        excel.Selection.Font.Bold := false;
        excel.Selection.Merge;
        excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(currentRow)]
              := 'Недостаточно данных';
        Inc(currentRow);
        self.ProgressBar1.Position := self.ProgressBar1.Position + bigStep;
        continue;
      end;

      tinyStep := Round(bigStep/dm.q_prognoz.RecordCount);

      myDate := Now();
      myDate := IncMonth(myDate, -(rzmVyb+1));

      for j := 1 to rzmVyb do
      begin
          myDate := IncMonth(myDate);

          if (i = 1) then labels[j-1] := IntToStr(YearOf(myDate)) + '-' + IntToStr(MonthOf(myDate));

          excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(currentRow)+':'+'C'+IntToStr(currentRow)].Select;
          excel.Selection.HorizontalAlignment := 3;
          excel.Selection.Font.Bold := false;
          excel.Selection.Merge;
          excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(currentRow)]
              := labels[j-1];


          if ( dm.q_prognoz.Locate('god;mec',VarArrayOf([YearOf(myDate),MonthOf(myDate)]),[]) ) then
          begin
            mas[0, j-1] := dm.q_prognoz.FieldByName('sumKol').AsFloat;
          end
            else mas[0, j-1] := 0;

          excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(currentRow)+':'+'G'+IntToStr(currentRow)].Select;
          excel.Selection.HorizontalAlignment := 3;
          excel.Selection.Font.Bold := false;
          excel.Selection.Merge;
          excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(currentRow)]
              := FloatToStrF(mas[0, j-1], fffixed, 6, 1);

          if j >= intSgl then
          begin
            sklSrd := 0;
            for k := j - (intSgl - 1) to j do
              sklSrd := sklSrd + mas[0, k-1];
            sklSrd := sklSrd / intSgl;
            mas[1, j-1] := sklSrd;
            if (mas[0, j-1] <> 0) then mas[2, j-1] := ( abs(sklSrd - mas[0, j-1]) / mas[0, j-1] ) * 100
            else mas[2, j-1] := 100;
          end;

          excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(currentRow)+':'+'K'+IntToStr(currentRow)].Select;
          excel.Selection.HorizontalAlignment := 3;
          excel.Selection.Font.Bold := false;
          excel.Selection.Merge;
          excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(currentRow)]
              := FloatToStrF(mas[1, j-1], fffixed, 6, 1);

          excel.Workbooks[1].Worksheets[1].Range['L'+IntToStr(currentRow)+':'+'O'+IntToStr(currentRow)].Select;
          excel.Selection.HorizontalAlignment := 3;
          excel.Selection.Font.Bold := false;
          excel.Selection.Merge;
          excel.Workbooks[1].Worksheets[1].Range['L'+IntToStr(currentRow)]
              := FloatToStrF(mas[2, j-1], fffixed, 6, 1);

          Inc(currentRow);
          self.ProgressBar1.Position := self.ProgressBar1.Position + tinyStep;
      end;

      meanErr := 0;
      for j := intSgl to rzmVyb do meanErr := meanErr + mas[2, j-1];
      meanErr := meanErr / (rzmVyb - intSgl + 1);
      excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(currentRow)+':'+'K'+IntToStr(currentRow)].Select;
      excel.Selection.HorizontalAlignment := 3;
      excel.Selection.Font.Bold := true;
      excel.Selection.Merge;
      excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(currentRow)]
          := 'Сред. относительная ошибка';

      excel.Workbooks[1].Worksheets[1].Range['L'+IntToStr(currentRow)+':'+'O'+IntToStr(currentRow)].Select;
      excel.Selection.HorizontalAlignment := 3;
      excel.Selection.Font.Bold := false;
      excel.Selection.Merge;
      excel.Workbooks[1].Worksheets[1].Range['L'+IntToStr(currentRow)]
          := FloatToStrF(meanErr, fffixed, 6, 1);
      Inc(currentRow);

      for j := rzmVyb + 1 to rzmVyb + grzPrg do
      begin
          myDate := IncMonth(myDate);

          if (i = 1) then labels[j-1] := IntToStr(YearOf(myDate)) + '-' + IntToStr(MonthOf(myDate));

          excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(currentRow)+':'+'C'+IntToStr(currentRow)].Select;
          excel.Selection.HorizontalAlignment := 3;
          excel.Selection.Font.Bold := false;
          excel.Selection.Merge;
          excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(currentRow)]
              := labels[j-1];

          mas[0, j-1] := mas[1, j-2] + (mas[0,j-2] - mas[0, j-3]) / intSgl;

          if j >= intSgl then
          begin
            sklSrd := 0;
            for k := j - (intSgl - 1) to j do
              sklSrd := sklSrd + mas[0, k-1];
            sklSrd := sklSrd / intSgl;
            mas[1, j-1] := sklSrd;
          end;

          excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(currentRow)+':'+'K'+IntToStr(currentRow)].Select;
          excel.Selection.HorizontalAlignment := 3;
          excel.Selection.Font.Bold := false;
          excel.Selection.Merge;
          excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(currentRow)]
              := FloatToStrF(mas[1, j-1], fffixed, 6, 1);

          Inc(currentRow);
      end;
  end;


  Excel.Workbooks[1].Worksheets[1].activate;
  Excel.Visible := True;
end;


procedure Tform_prognoz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_prognoz := nil;
end;

end.
