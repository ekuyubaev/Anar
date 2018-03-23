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
    procedure q_narabotkaBeforePost(DataSet: TDataSet);
    procedure q_prihod_MTOBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure connect();
    Procedure refresh_MTO();
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

procedure TDM.q_prihod_MTOBeforePost(DataSet: TDataSet);
begin
  if q_temp.Active then q_temp.Close;
  q_temp.SQL.Text := 'Update MTO Set Kolichestvo = Kolichestvo + '
                  + DataSet.FieldByName('Kolichestvo').AsString
                  + ' Where ID_MTO = ' + q_MTO.FieldByName('ID_MTO').AsString;
  q_temp.ExecSQL;
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

end.
