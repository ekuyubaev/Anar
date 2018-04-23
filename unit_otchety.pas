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

uses unit_datamodule, Unit1;

procedure Tform_otchety.BitBtn1Click(Sender: TObject);
var excel: Variant;
  templatePath :string;
  I: Integer;
begin
  DM.q_otchety.SQL.Text := 'Select O.Naimenovanie From Oborudovanie O '
                        +'left join Rabota R '
                        +'on O.ID_oborudovanie = R.ID_oborudovanie '
                        +'left join Naimenovanie_rabot NR '
                        +'on R.ID_naimenovanie = NR.ID_naimenovanie '
                        +'Where (ID_vid_rabota = 1) and (Year(R.Nachalo)='+ ComboBox1.Text +') '
                        +'Order by O.Naimenovanie, NR.Naimnovanie';
  DM.q_otchety.Open;

  if DM.q_otchety.RecordCount > 0 then
  begin
      excel := CreateOleObject('Excel.Application');

      templatePath := ExtractFilePath(Application.ExeName)+'otchety\TO.xlt';

      excel.Workbooks.Open[templatePath];

      for I := 1 to DM.q_otchety.RecordCount do
      begin
          DM.q_otchety.RecNo := i;
          ShowMessage(DM.q_otchety.FieldByName('Naimenovanie').AsString);
          excel.Workbooks[1].Worksheets[1].Range['A'+IntToStr(11+i)]
              := DM.q_otchety.FieldByName('Naimenovanie').AsString;
      end;

      Excel.Workbooks[1].Worksheets[1].activate;
      Excel.Visible := True;
  end
      else
  begin
    ShowMessage('В БД нет записей о ТО за выбранный период!');
  end;
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
