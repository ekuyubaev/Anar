unit unit_otchety;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, ComObj,
  Vcl.Mask, DBCtrlsEh, DBGridEh, DBLookupEh;

type
  Tform_otchety = class(TForm)
    PageControl1: TPageControl;
    ts_TO: TTabSheet;
    ComboBox1: TComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    ts_attest: TTabSheet;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    BitBtn2: TBitBtn;
    ProgressBar2: TProgressBar;
    Label3: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    Label4: TLabel;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GrafikPoverki(repYear : integer);
    procedure Zaiavka_GSM;
    procedure Zaiavka_MTO;
    procedure Zaiavka_attestacia;
  end;


implementation

{$R *.dfm}

uses unit_datamodule, Unit1, DateUtils;


procedure Tform_otchety.Zaiavka_attestacia;

begin

end;


procedure Tform_otchety.Zaiavka_GSM;
var excel: Variant;
  templatePath :string;
  i, j, rowNum : Integer;
  monthChar : char;
  temp : Variant;
begin
  excel := CreateOleObject('Excel.Application');
  templatePath := ExtractFilePath(Application.ExeName)+'otchety\Заявка ГСМ.xlt';
  excel.Workbooks.Open[templatePath];

  Excel.Workbooks[1].Worksheets[1].activate;

  rowNum := 7;

  for j := 1 to 4 do
  begin
      Excel.ActiveSheet.Rows[rowNum].Insert;

      excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)+':'+'J'+IntToStr(rowNum)].Select;
      excel.Selection.HorizontalAlignment := 3;
      excel.Selection.Font.Bold := true;
      excel.Selection.Merge;

      excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
              := IntToStr(j) + ' квартал';
      Inc(rowNum);

      for i := 1 to dm.q_GSM.RecordCount do
      begin
          dm.q_GSM.RecNo := i;

          Excel.ActiveSheet.Rows[rowNum].Insert;

          excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)+':'+'J'+IntToStr(rowNum)].Select;
          excel.Selection.HorizontalAlignment := 3;
          excel.Selection.Font.Bold := false;

          excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
              := IntToStr(i);
          excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(rowNum)]
              := dm.q_GSM.FieldByName('Naimenovanie').AsString;
          excel.Workbooks[1].Worksheets[1].Range['C'+IntToStr(rowNum)]
              := dm.q_GSM.FieldByName('Tip').AsString;
          excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(rowNum)]
              := dm.q_GSM.FieldByName('GOST').AsString;
          temp := dm.q_EI.Lookup('ID_EI', dm.q_GSM.FieldByName('ID_EI').AsInteger, 'Oboznachenie');
          if temp <> null then excel.Workbooks[1].Worksheets[1].Range['F'+IntToStr(rowNum)]
              := temp;
          excel.Workbooks[1].Worksheets[1].Range['I'+IntToStr(rowNum)]
              := 'ЭСТОП';
          Inc(rowNum);
      end;
  end;


  Excel.ActiveSheet.Rows[rowNum].Insert;

  excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)+':'+'J'+IntToStr(rowNum)].Select;
  excel.Selection.HorizontalAlignment := 3;
  excel.Selection.Font.Bold := true;
  excel.Selection.Merge;

  excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
          := ' Итого на ' + IntToStr(YearOf(IncYear(now)));
  Inc(rowNum);

  for i := 1 to dm.q_GSM.RecordCount do
  begin
      dm.q_GSM.RecNo := i;

      Excel.ActiveSheet.Rows[rowNum].Insert;

      excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)+':'+'J'+IntToStr(rowNum)].Select;
      excel.Selection.HorizontalAlignment := 3;
      excel.Selection.Font.Bold := false;

      excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
          := IntToStr(i);
      excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(rowNum)]
          := dm.q_GSM.FieldByName('Naimenovanie').AsString;
      excel.Workbooks[1].Worksheets[1].Range['C'+IntToStr(rowNum)]
          := dm.q_GSM.FieldByName('Tip').AsString;
      excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(rowNum)]
          := dm.q_GSM.FieldByName('GOST').AsString;
      temp := dm.q_EI.Lookup('ID_EI', dm.q_GSM.FieldByName('ID_EI').AsInteger, 'Oboznachenie');
      if temp <> null then excel.Workbooks[1].Worksheets[1].Range['F'+IntToStr(rowNum)]
          := temp;
      excel.Workbooks[1].Worksheets[1].Range['I'+IntToStr(rowNum)]
          := 'ЭСТОП';
      Inc(rowNum);
  end;

  Excel.Visible := True;
end;


procedure Tform_otchety.Zaiavka_MTO;
var excel: Variant;
  templatePath :string;
  i, j, rowNum : Integer;
  monthChar : char;
  temp : Variant;
begin
  excel := CreateOleObject('Excel.Application');
  templatePath := ExtractFilePath(Application.ExeName)+'otchety\Заявка МТО.xlt';
  excel.Workbooks.Open[templatePath];

  Excel.Workbooks[1].Worksheets[1].activate;

  rowNum := 7;

  for j := 1 to 4 do
  begin
      Excel.ActiveSheet.Rows[rowNum].Insert;

      excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)+':'+'J'+IntToStr(rowNum)].Select;
      excel.Selection.HorizontalAlignment := 3;
      excel.Selection.Font.Bold := true;
      excel.Selection.Merge;

      excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
              := IntToStr(j) + ' квартал';
      Inc(rowNum);

      for i := 1 to dm.q_MTO.RecordCount do
      begin
          dm.q_MTO.RecNo := i;

          Excel.ActiveSheet.Rows[rowNum].Insert;

          excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)+':'+'J'+IntToStr(rowNum)].Select;
          excel.Selection.HorizontalAlignment := 3;
          excel.Selection.Font.Bold := false;

          excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
              := IntToStr(i);
          excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(rowNum)]
              := dm.q_MTO.FieldByName('Naimenovanie').AsString;
          excel.Workbooks[1].Worksheets[1].Range['C'+IntToStr(rowNum)]
              := dm.q_MTO.FieldByName('Tip').AsString;
          excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(rowNum)]
              := dm.q_MTO.FieldByName('GOST').AsString;
          temp := dm.q_EI.Lookup('ID_EI', dm.q_MTO.FieldByName('ID_EI').AsInteger, 'Oboznachenie');
          if temp <> null then excel.Workbooks[1].Worksheets[1].Range['F'+IntToStr(rowNum)]
              := temp;
          excel.Workbooks[1].Worksheets[1].Range['I'+IntToStr(rowNum)]
              := 'ЭСТОП';
          Inc(rowNum);
      end;
  end;


  Excel.ActiveSheet.Rows[rowNum].Insert;

  excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)+':'+'J'+IntToStr(rowNum)].Select;
  excel.Selection.HorizontalAlignment := 3;
  excel.Selection.Font.Bold := true;
  excel.Selection.Merge;

  excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
          := ' Итого на ' + IntToStr(YearOf(IncYear(now)));
  Inc(rowNum);

  for i := 1 to dm.q_MTO.RecordCount do
  begin
      dm.q_MTO.RecNo := i;

      Excel.ActiveSheet.Rows[rowNum].Insert;

      excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)+':'+'J'+IntToStr(rowNum)].Select;
      excel.Selection.HorizontalAlignment := 3;
      excel.Selection.Font.Bold := false;

      excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
          := IntToStr(i);
      excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(rowNum)]
          := dm.q_MTO.FieldByName('Naimenovanie').AsString;
      excel.Workbooks[1].Worksheets[1].Range['C'+IntToStr(rowNum)]
          := dm.q_MTO.FieldByName('Tip').AsString;
      excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(rowNum)]
          := dm.q_MTO.FieldByName('GOST').AsString;
      temp := dm.q_EI.Lookup('ID_EI', dm.q_MTO.FieldByName('ID_EI').AsInteger, 'Oboznachenie');
      if temp <> null then excel.Workbooks[1].Worksheets[1].Range['F'+IntToStr(rowNum)]
          := temp;
      excel.Workbooks[1].Worksheets[1].Range['I'+IntToStr(rowNum)]
          := 'ЭСТОП';
      Inc(rowNum);
  end;

  Excel.Visible := True;
end;


procedure Tform_otchety.GrafikPoverki(repYear : integer);
var excel: Variant;
  templatePath :string;
  i, j, rowNum : Integer;
  monthChar : char;
  temp : Variant;
begin
  excel := CreateOleObject('Excel.Application');
  templatePath := ExtractFilePath(Application.ExeName)+'otchety\График поверки.xlt';
  excel.Workbooks.Open[templatePath];

  rowNum := 6;

  for i := 1 to dm.q_sredstvo_izmerenia.RecordCount do
  begin
    DM.q_sredstvo_izmerenia.RecNo := i;

    excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(rowNum)]
              := IntToStr(i);
    excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(rowNum)]
              := DM.q_sredstvo_izmerenia.FieldByName('Naimenovanie').AsString;
    excel.Workbooks[1].Worksheets[1].Range['C'+IntToStr(rowNum)]
              := DM.q_sredstvo_izmerenia.FieldByName('Tip').AsString;
    excel.Workbooks[1].Worksheets[1].Range['D'+IntToStr(rowNum)]
              := DM.q_sredstvo_izmerenia.FieldByName('N_zavodskoi').AsString;
    excel.Workbooks[1].Worksheets[1].Range['E'+IntToStr(rowNum)]
              := DM.q_sredstvo_izmerenia.FieldByName('N_inventarnyi').AsString;
    excel.Workbooks[1].Worksheets[1].Range['F'+IntToStr(rowNum)]
              := IntToStr(YearOf(DM.q_sredstvo_izmerenia.FieldByName('Data_vvedeno').AsDateTime));
    excel.Workbooks[1].Worksheets[1].Range['G'+IntToStr(rowNum)]
              := DM.q_sredstvo_izmerenia.FieldByName('Izgotovitel').AsString;

    if dm.q_poverka.Active then dm.q_poverka.Close;
    dm.q_poverka.Open;
    dm.q_poverka.Last;

    if YearOf(dm.q_poverka.FieldByName('Data_poverka').AsDateTime) = repYear then
    begin
        excel.Workbooks[1].Worksheets[1].Range['I'+IntToStr(rowNum)]
                  := dm.q_poverka.FieldByName('Data_poverka').AsString;
        temp := dm.q_rezultat_poverka.Lookup('ID_rezultat_poverka',
                  dm.q_poverka.FieldByName('ID_rezultat_poverka').AsInteger,'Naimenovanie');
        if temp <> null then excel.Workbooks[1].Worksheets[1].Range['J'+IntToStr(rowNum)]
                  := temp;
        dm.q_poverka.Prior;
        excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(rowNum)]
                  := dm.q_poverka.FieldByName('Data_poverka').AsString;
    end
    else if YearOf(dm.q_poverka.FieldByName('Data_poverka').AsDateTime) = (repYear -1) then
    begin
        excel.Workbooks[1].Worksheets[1].Range['H'+IntToStr(rowNum)]
                  := dm.q_poverka.FieldByName('Data_poverka').AsString;
        excel.Workbooks[1].Worksheets[1].Range['I'+IntToStr(rowNum)]
                  := 'НЕ задано';
    end;


    excel.Workbooks[1].Worksheets[1].Range['K'+IntToStr(rowNum)]
              := DM.q_sredstvo_izmerenia.FieldByName('Otvetstvennyi').AsString;
    Inc(rowNum);
  end;

  Excel.Workbooks[1].Worksheets[1].activate;
  Excel.Visible := True;
end;


procedure Tform_otchety.BitBtn1Click(Sender: TObject);
function IfNull(const value:Variant):Variant;
begin
  if value = NULL then Result := 'is null'
  else Result := '= '+ IntToStr(value);
end;

var excel: Variant;
  templatePath :string;
  i,j : Integer;
  monthChar : char;
begin
  DM.q_otchety.SQL.Text := 'Select O.Naimenovanie as N_raboty, NR.Naimnovanie as N_vid_raboty, '
                        +'NR.Periodichnost, R.ID_naimenovanie, R.ID_vid_rabota, R.ID_oborudovanie '
                        +'From Oborudovanie O '
                        +'left join Rabota R '
                        +'on O.ID_oborudovanie = R.ID_oborudovanie '
                        +'left join Naimenovanie_rabot NR '
                        +'on R.ID_naimenovanie = NR.ID_naimenovanie '
                        +'Where (ID_vid_rabota = 1) and (Year(R.Nachalo)='+ ComboBox1.Text +') '
                        +'Group by O.Naimenovanie, NR.Periodichnost, R.ID_oborudovanie '
                        +'Order by O.Naimenovanie, NR.Naimnovanie, NR.Periodichnost';
  DM.q_otchety.Open;

  if DM.q_otchety.RecordCount > 0 then
  begin
      excel := CreateOleObject('Excel.Application');

      templatePath := ExtractFilePath(Application.ExeName)+'otchety\TO.xlt';

      excel.Workbooks.Open[templatePath];

      for i := 1 to DM.q_otchety.RecordCount do
      begin
          DM.q_otchety.RecNo := i;
          excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(11+i)]
              := DM.q_otchety.FieldByName('N_raboty').AsString;
          excel.Workbooks[1].Worksheets[1].Range['B'+IntToStr(11+i)]
              := DM.q_otchety.FieldByName('N_vid_raboty').AsString;
          excel.Workbooks[1].Worksheets[1].Range['C'+IntToStr(11+i)]
              := DM.q_otchety.FieldByName('Periodichnost').AsString + ' дней';

          // находим все работы этого типа и вида и на этом оборудовании
          dm.q_temp_reps.SQL.Text := 'select * From Rabota '
                +'Where ID_naimenovanie ' + IfNull(dm.q_otchety.FieldByName('ID_naimenovanie').AsVariant)
                +' and ID_vid_rabota =' + dm.q_otchety.FieldByName('ID_vid_rabota').AsString
                +' and ID_oborudovanie = ' + dm.q_otchety.FieldByName('ID_oborudovanie').AsString
                +' Order by Nachalo, Okonchanie';
          dm.q_temp_reps.Open;
          for j := 1 to dm.q_temp_reps.RecordCount do
          begin
            dm.q_temp_reps.RecNo := j;
            monthChar := Chr(MonthOf(dm.q_temp_reps.FieldByName('Nachalo').AsDateTime) + 67);
            excel.Workbooks[1].Worksheets[1].Range[monthChar+IntToStr(11+i)]
              := '+';
          end;
      end;

      Excel.Workbooks[1].Worksheets[1].activate;
      Excel.Visible := True;
  end
      else
  begin
    ShowMessage('В БД нет записей о ТО за выбранный период!');
  end;

  close;
end;


procedure Tform_otchety.BitBtn2Click(Sender: TObject);
var MSWord, bookmarks: Variant;
    pathToTemplate, attestDateStr, ID_vid_attestacia, ID_napravlenie : String;
    attestDate : TDateTime;
    i : integer;
    step : real;
    totalStep : real;
    rowShift : integer;

begin
  if DBLookupComboboxEh1.IsEmpty or DBLookupComboboxEh2.IsEmpty then
  begin
    ShowMessage('Выберите вид и направление аттестации');
    Exit;
  end;

  attestDate := DateTimePicker1.DateTime;
  attestDateStr := FormatDateTime('yyyy-mm-dd', attestDate);
  ID_vid_attestacia := IntToStr(DBLookupComboboxEh1.KeyValue);
  ID_napravlenie := IntToStr(DBLookupComboboxEh2.KeyValue);

  if dm.q_otchety.Active then dm.q_otchety.Close;
  dm.q_otchety.SQL.Text := 'Select * '
                      +' From Sotrudnik S left join Dolzhnost D '
                      +' ON S.ID_dolzhnost = D.ID_dolzhnost '
                      +' Where ID_sotrudnik not in '
                      +' (Select Distinct ID_sotrudnik'
                      +' From Zachet Z inner join Attestacia A'
                      +' on Z.ID_attestacia = A.ID_attestacia'
                      +' Where A.Data_attestacia > ADDDATE('+ QuotedStr(attestDateStr) +',INTERVAL -12 MONTH)'
                      +' and A.ID_vid_attestacia = '+ ID_vid_attestacia
                      +' and A.ID_napravlenie = ' + ID_napravlenie + ')';
  dm.q_otchety.Open;


  if dm.q_otchety.RecordCount > 0 then
  begin
      MsWord := CreateOleObject('Word.Application');

      pathToTemplate := ExtractFilePath(Application.ExeName) + 'otchety\График аттестации.dot';
      MsWord.Documents.Add(pathToTemplate);

      step := self.ProgressBar2.Max / dm.q_otchety.RecordCount;
      totalStep := 0;
      rowShift := 2;

      for i := 1 to dm.q_otchety.RecordCount do
        begin
            dm.q_otchety.RecNo := i;

            MsWord.ActiveDocument.Tables.Item(2).Rows.Add(EmptyParam);

            MsWord.ActiveDocument.Tables.Item(2).Cell(i+rowShift,1).Range.Text := IntToStr(i);
            MsWord.ActiveDocument.Tables.Item(2).Cell(i+rowShift,2).Range.Text := dm.q_otchety.FieldByName('FIO').AsString;
            MsWord.ActiveDocument.Tables.Item(2).Cell(i+rowShift,3).Range.Text := dm.q_otchety.FieldByName('Naimenovanie').AsString;
            MsWord.ActiveDocument.Tables.Item(2).Cell(i+rowShift,4).Range.Text := FormatDateTime('dd.mm.yyyy', DateTimePicker1.DateTime);

            totalStep := totalStep + step;
            self.ProgressBar2.Position := Round(totalStep);
        end;

        //MsWord.ActiveDocument.Tables.Item(1).Rows.Item(1).Select;
        //MsWord.Selection.Font.Bold := 1;


        //bookmarks := MsWord.ActiveDocument.Bookmarks;
        //SetBmText(bookmarks, 'startDate', sDate);
        //SetBmText(bookmarks, 'endDate', eDate);

        MsWord.ActiveDocument.Range(0, 0).Select;

        self.Close;

        MsWord.Visible := True;
  end
    else ShowMessage('Нет сотрудников подлежащих аттестации на выбранную дату!');
end;

procedure Tform_otchety.FormActivate(Sender: TObject);
var i: integer;
begin
  for I := 0 to PageControl1.PageCount-1 do
      PageControl1.Pages[i].TabVisible := false;
end;

procedure Tform_otchety.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_otchety := nil;
end;

end.
