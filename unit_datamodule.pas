unit unit_datamodule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    conn_main: TADOConnection;
    q_dolzhnost: TADOQuery;
    ds_dolzhnost: TDataSource;
    q_vid_attestacia: TADOQuery;
    ds_vid_attestacia: TDataSource;
    q_rezultat_attestacia: TADOQuery;
    ds_rezultat_attestacia: TDataSource;
    q_sostoianie: TADOQuery;
    ds_sostoianie: TDataSource;
    q_rezultat_poverka: TADOQuery;
    ds_rezultat_poverka: TDataSource;
    q_sotrudnik: TADOQuery;
    ds_sotrudnik: TDataSource;
    q_sotrudnikID_sotrudnik: TAutoIncField;
    q_sotrudnikFIO: TWideStringField;
    q_sotrudnikID_dolzhnost: TIntegerField;
    q_sotrudnikDR: TDateTimeField;
    q_sotrudnikAdress: TWideStringField;
    q_sotrudnikTelefon: TWideStringField;
    q_sotrudnikPrimechanie: TWideMemoField;
    q_sotrudnikDolzhnost: TStringField;
    q_sooruzhenie: TADOQuery;
    ds_sooruzhenie: TDataSource;
    q_sooruzhenieID_sooruzhenie: TAutoIncField;
    q_sooruzhenieNomer: TWideStringField;
    q_sooruzheniePrimechanie: TWideMemoField;
    q_oborudovanie: TADOQuery;
    ds_oborudovanie: TDataSource;
    q_narabotka: TADOQuery;
    ds_narabotka: TDataSource;
    q_oborudovanieID_oborudovanie: TAutoIncField;
    q_oborudovanieNaimenovanie: TWideStringField;
    q_oborudovanieN_zavodskoi: TWideStringField;
    q_oborudovanieN_inventarnyi: TWideStringField;
    q_oborudovanieData_vvedeno: TDateTimeField;
    q_oborudovaniePeriodichnost_TO: TWideStringField;
    q_oborudovanieID_sostoianie: TIntegerField;
    q_oborudovanieID_sooruzhenie: TIntegerField;
    q_oborudovaniePrimechanie: TWideMemoField;
    q_oborudovanieSostoianie: TStringField;
    q_oborudovanieSooruzhene: TStringField;
    q_narabotkaID_narabotka: TAutoIncField;
    q_narabotkaID_oborudovanie: TIntegerField;
    q_narabotkaData_narabotka: TDateTimeField;
    q_narabotkaNarabotka: TFloatField;
    q_narabotkaID_EI: TIntegerField;
    q_narabotkaNarabotka_vsego: TFloatField;
    q_narabotkaPrimechanie: TWideMemoField;
    q_EI: TADOQuery;
    ds_EI: TDataSource;
    q_narabotkaEI: TStringField;
    q_temp: TADOQuery;
    q_sredstvo_izmerenia: TADOQuery;
    ds_sredstvo_izmerenia: TDataSource;
    q_sredstvo_izmereniaID_sredstvo_izmerenia: TAutoIncField;
    q_sredstvo_izmereniaNaimenovanie: TWideStringField;
    q_sredstvo_izmereniaN_zavodskoi: TWideStringField;
    q_sredstvo_izmereniaN_inventarnyi: TWideStringField;
    q_sredstvo_izmereniaData_vvedeno: TDateTimeField;
    q_sredstvo_izmereniaPeriodichnost_poverka: TWideStringField;
    q_sredstvo_izmereniaID_sostoianie: TIntegerField;
    q_sredstvo_izmereniaPrimechanie: TWideMemoField;
    q_sredstvo_izmereniaSostoianie: TStringField;
    q_ZIP: TADOQuery;
    q_vydacha_ZIP: TADOQuery;
    ds_ZIP: TDataSource;
    ds_vydacha_ZIP: TDataSource;
    q_ZIPID_ZIP: TAutoIncField;
    q_ZIPNaimenovanie: TWideStringField;
    q_ZIPData_vvedeno: TDateTimeField;
    q_ZIPData_spisano: TDateTimeField;
    q_ZIPN_zavodskoi: TWideStringField;
    q_ZIPN_inventarnyi: TWideStringField;
    q_ZIPID_sostoianie: TIntegerField;
    q_ZIPPrimechanie: TWideMemoField;
    q_ZIPSostoianie: TStringField;
    procedure q_narabotkaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure connect();
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
Procedure TDM.connect();
begin
  if not self.conn_main.Connected then  self.conn_main.Open();

  if not self.q_dolzhnost.Active then self.q_dolzhnost.Open;
  if not self.q_vid_attestacia.Active then self.q_vid_attestacia.Open;
  if not self.q_rezultat_attestacia.Active then self.q_rezultat_attestacia.Open;
  if not self.q_sostoianie.Active then self.q_sostoianie.Open;
  if not self.q_rezultat_poverka.Active then self.q_rezultat_poverka.Open;
  if not self.q_sotrudnik.Active then self.q_sotrudnik.Open;
  if not self.q_sooruzhenie.Active then  self.q_sooruzhenie.Open;
  if not self.q_oborudovanie.Active then  self.q_oborudovanie.Open;
  if not self.q_narabotka.Active then  self.q_narabotka.Open;
  if not self.q_EI.Active then self.q_EI.Open;
  if not self.q_sredstvo_izmerenia.Active then self.q_sredstvo_izmerenia.Open;
  if not self.q_ZIP.Active then self.q_ZIP.Open;
  if not self.q_vydacha_ZIP.Active then self.q_vydacha_ZIP.Open;
end;

procedure TDM.q_narabotkaBeforePost(DataSet: TDataSet);
begin
  if self.q_temp.Active then q_temp.Close;
  q_temp.SQL.Text := 'Select Narabotka_vsego From Narabotka Where ID_narabotka ='
                  + '(Select max(ID_narabotka) From Narabotka Where ID_oborudovanie = '
                  + DataSet.FieldByName('ID_oborudovanie').AsString +')';
  q_temp.Open;
  DataSet.FieldByName('Narabotka_vsego').Value := q_temp.FieldByName('Narabotka_vsego').AsFloat
                  + DataSet.FieldByName('Narabotka').AsFloat;
end;

end.
