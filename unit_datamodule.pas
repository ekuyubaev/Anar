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
    q_attestacia: TADOQuery;
    ds_attestacia: TDataSource;
    q_attestaciaID_attestacia: TAutoIncField;
    q_attestaciaData_attestacia: TDateTimeField;
    q_attestaciaID_vid_attestacia: TIntegerField;
    q_attestaciaPrimechanie: TWideMemoField;
    q_attestaciaVid_attestacia: TStringField;
    q_zachet: TADOQuery;
    ds_zachet: TDataSource;
    q_zachetID_zachet: TAutoIncField;
    q_zachetID_attestacia: TIntegerField;
    q_zachetID_sotrudnik: TIntegerField;
    q_zachetID_rezultat_attestacia: TIntegerField;
    q_zachetPrimechanie: TWideMemoField;
    q_zachetSotrudnik: TStringField;
    q_zachetRezultat: TStringField;
    q_vybor_sotrudnik_attestacia: TADOQuery;
    ds_vybor_sotrudnik_attestacia: TDataSource;
    q_vybor_sotrudnik_attestaciaID_vybor: TAutoIncField;
    q_vybor_sotrudnik_attestaciaID_sotrudnik: TIntegerField;
    q_vybor_sotrudnik_attestaciaID_dolzhnost: TIntegerField;
    q_vybor_sotrudnik_attestaciaVybran: TSmallintField;
    q_vybor_sotrudnik_attestaciaSotrudnik: TStringField;
    q_vybor_sotrudnik_attestaciaDolzhnost: TStringField;
    q_MTO: TADOQuery;
    ds_MTO: TDataSource;
    q_MTOID_MTO: TAutoIncField;
    q_MTOKolichestvo: TFloatField;
    q_MTOID_EI: TIntegerField;
    q_MTOPrimechanie: TWideMemoField;
    q_MTOEI: TStringField;
    q_MTONaimenovanie: TWideStringField;
    q_list_MTO: TADOQuery;
    ds_list_MTO: TDataSource;
    q_prihod_MTO: TADOQuery;
    ds_prihod_MTO: TDataSource;
    q_prihod_MTOID_prihod_MTO: TAutoIncField;
    q_prihod_MTOID_MTO: TIntegerField;
    q_prihod_MTOData_prihod: TDateTimeField;
    q_prihod_MTOPriniato_kem: TWideStringField;
    q_prihod_MTOKolichestvo: TFloatField;
    q_prihod_MTOID_EI: TIntegerField;
    q_prihod_MTOPrimechanie: TWideMemoField;
    q_prihod_MTOEI: TStringField;
    q_GSM: TADOQuery;
    ds_GSM: TDataSource;
    ds_prihod_GSM: TDataSource;
    q_prihod_GSM: TADOQuery;
    q_GSMID_GSM: TAutoIncField;
    q_GSMKolichestvo: TFloatField;
    q_GSMKriticheskoe_kolichestvo: TFloatField;
    q_GSMID_EI: TIntegerField;
    q_GSMPrimechanie: TWideMemoField;
    q_GSMEI: TStringField;
    q_prihod_GSMID_prihod_GSM: TAutoIncField;
    q_prihod_GSMID_GSM: TIntegerField;
    q_prihod_GSMData_priniato: TDateTimeField;
    q_prihod_GSMPrinial: TWideStringField;
    q_prihod_GSMKolichestvo: TFloatField;
    q_prihod_GSMID_EI: TIntegerField;
    q_prihod_GSMPrimechanie: TWideMemoField;
    q_prihod_GSMEI: TStringField;
    q_GSMNaimenovanie: TWideStringField;
    q_pusk: TADOQuery;
    ds_pusk: TDataSource;
    q_puskID_pusk: TAutoIncField;
    q_puskNaimenovanie: TWideStringField;
    q_puskData_nachalo: TDateTimeField;
    q_puskData_okonchanie: TDateTimeField;
    q_puskPrimechanie: TWideMemoField;
    q_rabota: TADOQuery;
    q_rashod_MTO: TADOQuery;
    q_rashod_GSM: TADOQuery;
    q_ispolnitel: TADOQuery;
    ds_rabota: TDataSource;
    ds_rashod_MTO: TDataSource;
    ds_rashod_GSM: TDataSource;
    ds_ispolnitel: TDataSource;
    q_rabotaID_rabota: TAutoIncField;
    q_rabotaID_oborudovanie: TIntegerField;
    q_rabotaNachalo: TDateTimeField;
    q_rabotaOkonchanie: TDateTimeField;
    q_rabotaProdlen_po: TDateTimeField;
    q_rabotaPo_rasporiazheniu: TBooleanField;
    q_rabotaPo_nariadu_dopusku: TBooleanField;
    q_rabotaVypolnena: TBooleanField;
    q_rabotaPrimechanie: TWideMemoField;
    q_rabotaOborudovanie: TStringField;
    q_rashod_MTOID_rashod_MTO: TAutoIncField;
    q_rashod_MTOID_rabota: TIntegerField;
    q_rashod_MTOID_MTO: TIntegerField;
    q_rashod_MTOKolichestvo: TFloatField;
    q_rashod_MTOData_vydano: TDateTimeField;
    q_rashod_MTOID_EI: TIntegerField;
    q_rashod_MTOVydano_komu: TWideStringField;
    q_rashod_MTOPrimechanie: TWideMemoField;
    q_rashod_MTOMTO: TStringField;
    q_rashod_GSMID_rashod_GSM: TAutoIncField;
    q_rashod_GSMID_rabota: TIntegerField;
    q_rashod_GSMID_GSM: TIntegerField;
    q_rashod_GSMKolichestvo: TFloatField;
    q_rashod_GSMData_vydano: TDateTimeField;
    q_rashod_GSMPrimechanie: TWideMemoField;
    q_rashod_GSMID_EI: TIntegerField;
    q_rashod_GSMGSM: TStringField;
    q_ispolnitelID_ispolnitel: TAutoIncField;
    q_ispolnitelID_rabota: TIntegerField;
    q_ispolnitelID_sotrudnik: TIntegerField;
    q_ispolnitelID_dolzhnost: TIntegerField;
    q_ispolnitelPrimechanie: TWideMemoField;
    q_ispolnitelSotrudnik: TStringField;
    q_ispolnitelDolzhnost: TStringField;
    q_rashod_GSMEI: TStringField;
    q_rashod_MTOEI: TStringField;
    q_rabotaID_vid_rabota: TIntegerField;
    q_vid_rabota: TADOQuery;
    ds_vid_rabota: TDataSource;
    q_rabotaVid_rabota: TStringField;
    q_vybor_ispolnitel: TADOQuery;
    ds_vybor_ispolnitel: TDataSource;
    q_vybor_ispolnitelID_vybor: TAutoIncField;
    q_vybor_ispolnitelID_sotrudnik: TIntegerField;
    q_vybor_ispolnitelID_dolzhnost: TIntegerField;
    q_vybor_ispolnitelVybran: TSmallintField;
    q_vybor_ispolnitelSotrudnik: TStringField;
    q_vybor_ispolnitelDolzhnost: TStringField;
    q_uvedomlenie: TADOQuery;
    ds_uvedomlenie: TDataSource;
    q_rabotaNomer_rasporiazhenie: TWideStringField;
    q_rabotaNomer_nariad: TWideStringField;
    q_sredstvo_izmereniaTip: TWideStringField;
    q_sredstvo_izmereniaPeriodichnost_poverka: TIntegerField;
    q_sredstvo_izmereniaDiapazon: TWideStringField;
    q_sredstvo_izmereniaPogreshnost: TWideStringField;
    q_poverka: TADOQuery;
    ds_poverka: TDataSource;
    q_naimenovanie_rabot: TADOQuery;
    ds_naimenovanie_rabot: TDataSource;
    q_rabotaID_naimenovanie: TIntegerField;
    q_rabotaPeriodichnost: TIntegerField;
    q_uvedomlenie_rabota: TADOQuery;
    ds_uvedomlenie_rabota: TDataSource;
    q_uvedomlenie_poverka: TADOQuery;
    ds_uvedomlenie_poverka: TDataSource;
    procedure q_narabotkaBeforePost(DataSet: TDataSet);
    procedure q_prihod_MTOBeforePost(DataSet: TDataSet);
    procedure q_prihod_GSMBeforePost(DataSet: TDataSet);
    procedure q_rashod_MTOBeforePost(DataSet: TDataSet);
    procedure q_rashod_GSMBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure connect();
    Procedure refresh_MTO();
    Procedure refresh_GSM();
    Procedure refresh_dolzhnost();
    Procedure refresh_rabota();
    Procedure refresh_naimenovanie_rabot();
  end;

var
  DM: TDM;
  index: integer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
Procedure TDM.connect();
begin
  if not self.conn_main.Connected then  self.conn_main.Open();

  if not q_dolzhnost.Active then q_dolzhnost.Open;
  if not q_vid_attestacia.Active then q_vid_attestacia.Open;
  if not q_rezultat_attestacia.Active then q_rezultat_attestacia.Open;
  if not q_sostoianie.Active then q_sostoianie.Open;
  if not q_rezultat_poverka.Active then q_rezultat_poverka.Open;
  if not q_sotrudnik.Active then q_sotrudnik.Open;
  if not q_sooruzhenie.Active then  q_sooruzhenie.Open;
  if not q_oborudovanie.Active then  q_oborudovanie.Open;
  if not q_narabotka.Active then  q_narabotka.Open;
  if not q_EI.Active then q_EI.Open;
  if not q_sredstvo_izmerenia.Active then q_sredstvo_izmerenia.Open;
  if not q_ZIP.Active then q_ZIP.Open;
  if not q_vydacha_ZIP.Active then q_vydacha_ZIP.Open;
  if not q_attestacia.Active then q_attestacia.Open;
  if not q_zachet.Active then q_zachet.Open;
  if not q_MTO.Active then q_MTO.Open;
  if not q_list_MTO.Active then q_list_MTO.Open;
  if not q_prihod_MTO.Active then q_prihod_MTO.Open;
  if not q_GSM.Active then q_GSM.Open;
  if not q_prihod_GSM.Active then q_prihod_GSM.Open;
  if not q_pusk.Active then q_pusk.Open;
  if not q_rabota.Active then q_rabota.Open;
  if not q_rashod_MTO.Active then q_rashod_MTO.Open;
  if not q_rashod_GSM.Active then q_rashod_GSM.Open;
  if not q_ispolnitel.Active then q_ispolnitel.Open;
  if not q_vybor_ispolnitel.Active then q_vybor_ispolnitel.Open;
  if not q_vid_rabota.Active then q_vid_rabota.Open;
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

procedure TDM.q_prihod_GSMBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
  begin
      if q_temp.Active then q_temp.Close;
      q_temp.SQL.Text := 'Update GSM Set Kolichestvo = Kolichestvo + '
                      + DataSet.FieldByName('Kolichestvo').AsString
                      + ' Where ID_GSM = ' + q_GSM.FieldByName('ID_GSM').AsString;
      q_temp.ExecSQL;
  end;
end;

procedure TDM.q_prihod_MTOBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
  begin
      if q_temp.Active then q_temp.Close;
      q_temp.SQL.Text := 'Update MTO Set Kolichestvo = Kolichestvo + '
                      + DataSet.FieldByName('Kolichestvo').AsString
                      + ' Where ID_MTO = ' + q_MTO.FieldByName('ID_MTO').AsString;
      q_temp.ExecSQL;
  end;
end;

procedure TDM.q_rashod_GSMBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
  begin
    if q_temp.Active then q_temp.Close;
    q_temp.SQL.Text := 'Update GSM Set Kolichestvo = Kolichestvo - '
                    + DataSet.FieldByName('Kolichestvo').AsString
                    + ' Where ID_GSM = ' + DataSet.FieldByName('ID_GSM').AsString;
    q_temp.ExecSQL;
  end;
end;

procedure TDM.q_rashod_MTOBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
  begin
    if q_temp.Active then q_temp.Close;
    q_temp.SQL.Text := 'Update MTO Set Kolichestvo = Kolichestvo - '
                    + DataSet.FieldByName('Kolichestvo').AsString
                    + ' Where ID_MTO = ' + DataSet.FieldByName('ID_MTO').AsString;
    q_temp.ExecSQL;
  end;
end;

Procedure TDM.refresh_MTO;
begin
  if q_MTO.Active then
  begin
    index := q_MTO.RecNo;
    q_MTO.Close;
  end;
  q_MTO.Open;
  q_MTO.RecNo := index;
end;

Procedure TDM.refresh_GSM;
begin
  if q_GSM.Active then
  begin
    index := q_GSM.RecNo;
    q_GSM.Close;
  end;
  q_GSM.Open;
  q_GSM.RecNo := index;
end;

Procedure TDM.refresh_rabota;
begin
  if q_rabota.Active then
  begin
    index := q_rabota.RecNo;
    q_rabota.Close;
  end;
  q_rabota.Open;
  q_rabota.RecNo := index;
end;

Procedure TDM.refresh_naimenovanie_rabot;
begin
  if q_naimenovanie_rabot.Active
      then q_naimenovanie_rabot.Close;
  q_naimenovanie_rabot.Open;
end;

Procedure TDM.refresh_dolzhnost;
begin
  if q_dolzhnost.Active then q_dolzhnost.Close;
  q_dolzhnost.Open;
end;

end.
