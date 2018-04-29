unit unit_otchety;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, ComObj;

type
  Tform_otchety = class(TForm)
    PageControl1: TPageControl;
    ts_TO: TTabSheet;
    ComboBox1: TComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_otchety: Tform_otchety;

implementation

{$R *.dfm}

uses unit_datamodule, Unit1, DateUtils;



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
