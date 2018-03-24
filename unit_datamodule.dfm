object DM: TDM
  OldCreateOrder = False
  Height = 562
  Width = 808
  object conn_main: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.3 Unicode Driver;SERVER=localhost;UID=roo' +
      't;PWD=gdx4852T;DATABASE=db_etop;PORT=3306;COLUMN_SIZE_S32=1";Ini' +
      'tial Catalog=db_etop'
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object q_dolzhnost: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Dolzhnost')
    Left = 104
    Top = 24
  end
  object ds_dolzhnost: TDataSource
    DataSet = q_dolzhnost
    Left = 104
    Top = 72
  end
  object q_vid_attestacia: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Vid_attestacia')
    Left = 184
    Top = 24
  end
  object ds_vid_attestacia: TDataSource
    DataSet = q_vid_attestacia
    Left = 184
    Top = 72
  end
  object q_rezultat_attestacia: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Rezultat_attestacia')
    Left = 296
    Top = 24
  end
  object ds_rezultat_attestacia: TDataSource
    DataSet = q_rezultat_attestacia
    Left = 296
    Top = 72
  end
  object q_sostoianie: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Sostoianie')
    Left = 392
    Top = 24
  end
  object ds_sostoianie: TDataSource
    DataSet = q_sostoianie
    Left = 392
    Top = 72
  end
  object q_rezultat_poverka: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Rezultat_poverka')
    Left = 472
    Top = 24
  end
  object ds_rezultat_poverka: TDataSource
    DataSet = q_rezultat_poverka
    Left = 472
    Top = 72
  end
  object q_sotrudnik: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Sotrudnik'
      '')
    Left = 560
    Top = 24
    object q_sotrudnikID_sotrudnik: TAutoIncField
      FieldName = 'ID_sotrudnik'
      ReadOnly = True
    end
    object q_sotrudnikFIO: TWideStringField
      FieldName = 'FIO'
      Size = 256
    end
    object q_sotrudnikDolzhnost: TStringField
      FieldKind = fkLookup
      FieldName = 'Dolzhnost'
      LookupDataSet = q_dolzhnost
      LookupKeyFields = 'ID_dolzhnost'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_dolzhnost'
      Size = 255
      Lookup = True
    end
    object q_sotrudnikID_dolzhnost: TIntegerField
      FieldName = 'ID_dolzhnost'
    end
    object q_sotrudnikDR: TDateTimeField
      FieldName = 'DR'
    end
    object q_sotrudnikAdress: TWideStringField
      FieldName = 'Adress'
      Size = 256
    end
    object q_sotrudnikTelefon: TWideStringField
      FieldName = 'Telefon'
      Size = 256
    end
    object q_sotrudnikPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
  end
  object ds_sotrudnik: TDataSource
    DataSet = q_sotrudnik
    Left = 560
    Top = 72
  end
  object q_sooruzhenie: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Sooruzhenie')
    Left = 632
    Top = 24
    object q_sooruzhenieID_sooruzhenie: TAutoIncField
      FieldName = 'ID_sooruzhenie'
      ReadOnly = True
    end
    object q_sooruzhenieNomer: TWideStringField
      FieldName = 'Nomer'
      Size = 255
    end
    object q_sooruzheniePrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
  end
  object ds_sooruzhenie: TDataSource
    DataSet = q_sooruzhenie
    Left = 632
    Top = 72
  end
  object q_oborudovanie: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Oborudovanie')
    Left = 104
    Top = 160
    object q_oborudovanieID_oborudovanie: TAutoIncField
      FieldName = 'ID_oborudovanie'
      ReadOnly = True
    end
    object q_oborudovanieNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 255
    end
    object q_oborudovanieN_zavodskoi: TWideStringField
      FieldName = 'N_zavodskoi'
      Size = 64
    end
    object q_oborudovanieN_inventarnyi: TWideStringField
      FieldName = 'N_inventarnyi'
      Size = 64
    end
    object q_oborudovanieData_vvedeno: TDateTimeField
      FieldName = 'Data_vvedeno'
    end
    object q_oborudovaniePeriodichnost_TO: TWideStringField
      FieldName = 'Periodichnost_TO'
      Size = 255
    end
    object q_oborudovanieID_sostoianie: TIntegerField
      FieldName = 'ID_sostoianie'
    end
    object q_oborudovanieID_sooruzhenie: TIntegerField
      FieldName = 'ID_sooruzhenie'
    end
    object q_oborudovaniePrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object q_oborudovanieSostoianie: TStringField
      FieldKind = fkLookup
      FieldName = 'Sostoianie'
      LookupDataSet = q_sostoianie
      LookupKeyFields = 'ID_sostoianie'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_sostoianie'
      Size = 255
      Lookup = True
    end
    object q_oborudovanieSooruzhene: TStringField
      FieldKind = fkLookup
      FieldName = 'Sooruzhene'
      LookupDataSet = q_sooruzhenie
      LookupKeyFields = 'ID_sooruzhenie'
      LookupResultField = 'Nomer'
      KeyFields = 'ID_sooruzhenie'
      Size = 255
      Lookup = True
    end
  end
  object ds_oborudovanie: TDataSource
    DataSet = q_oborudovanie
    Left = 104
    Top = 208
  end
  object q_narabotka: TADOQuery
    Connection = conn_main
    CursorType = ctStatic
    BeforePost = q_narabotkaBeforePost
    DataSource = ds_oborudovanie
    Parameters = <
      item
        Name = 'ID_oborudovanie'
        DataType = ftInteger
        Value = 1
      end>
    SQL.Strings = (
      'Select * From Narabotka'
      'Where ID_oborudovanie = :ID_oborudovanie')
    Left = 184
    Top = 160
    object q_narabotkaID_narabotka: TAutoIncField
      FieldName = 'ID_narabotka'
      ReadOnly = True
    end
    object q_narabotkaID_oborudovanie: TIntegerField
      FieldName = 'ID_oborudovanie'
    end
    object q_narabotkaData_narabotka: TDateTimeField
      FieldName = 'Data_narabotka'
      DisplayFormat = 'dd.mm.yyyy hh:mm'
    end
    object q_narabotkaNarabotka: TFloatField
      FieldName = 'Narabotka'
    end
    object q_narabotkaID_EI: TIntegerField
      FieldName = 'ID_EI'
    end
    object q_narabotkaNarabotka_vsego: TFloatField
      FieldName = 'Narabotka_vsego'
    end
    object q_narabotkaPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object q_narabotkaEI: TStringField
      FieldKind = fkLookup
      FieldName = 'EI'
      LookupDataSet = q_EI
      LookupKeyFields = 'ID_EI'
      LookupResultField = 'Oboznachenie'
      KeyFields = 'ID_EI'
      Size = 64
      Lookup = True
    end
  end
  object ds_narabotka: TDataSource
    DataSet = q_narabotka
    Left = 184
    Top = 208
  end
  object q_EI: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Edinica_izmerenia')
    Left = 256
    Top = 160
  end
  object ds_EI: TDataSource
    DataSet = q_EI
    Left = 256
    Top = 208
  end
  object q_temp: TADOQuery
    Connection = conn_main
    Parameters = <>
    Left = 328
    Top = 160
  end
  object q_sredstvo_izmerenia: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Sredstvo_izmerenia')
    Left = 432
    Top = 160
    object q_sredstvo_izmereniaID_sredstvo_izmerenia: TAutoIncField
      FieldName = 'ID_sredstvo_izmerenia'
      ReadOnly = True
    end
    object q_sredstvo_izmereniaNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 255
    end
    object q_sredstvo_izmereniaN_zavodskoi: TWideStringField
      FieldName = 'N_zavodskoi'
      Size = 64
    end
    object q_sredstvo_izmereniaN_inventarnyi: TWideStringField
      FieldName = 'N_inventarnyi'
      Size = 64
    end
    object q_sredstvo_izmereniaSostoianie: TStringField
      FieldKind = fkLookup
      FieldName = 'Sostoianie'
      LookupDataSet = q_sostoianie
      LookupKeyFields = 'ID_sostoianie'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_sostoianie'
      Size = 255
      Lookup = True
    end
    object q_sredstvo_izmereniaData_vvedeno: TDateTimeField
      FieldName = 'Data_vvedeno'
    end
    object q_sredstvo_izmereniaPeriodichnost_poverka: TWideStringField
      FieldName = 'Periodichnost_poverka'
      Size = 255
    end
    object q_sredstvo_izmereniaID_sostoianie: TIntegerField
      FieldName = 'ID_sostoianie'
    end
    object q_sredstvo_izmereniaPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
  end
  object ds_sredstvo_izmerenia: TDataSource
    DataSet = q_sredstvo_izmerenia
    Left = 432
    Top = 208
  end
  object q_ZIP: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From ZIP')
    Left = 528
    Top = 160
    object q_ZIPID_ZIP: TAutoIncField
      FieldName = 'ID_ZIP'
      ReadOnly = True
    end
    object q_ZIPNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 255
    end
    object q_ZIPN_zavodskoi: TWideStringField
      FieldName = 'N_zavodskoi'
      Size = 255
    end
    object q_ZIPN_inventarnyi: TWideStringField
      FieldName = 'N_inventarnyi'
      Size = 255
    end
    object q_ZIPData_vvedeno: TDateTimeField
      FieldName = 'Data_vvedeno'
    end
    object q_ZIPSostoianie: TStringField
      FieldKind = fkLookup
      FieldName = 'Sostoianie'
      LookupDataSet = q_sostoianie
      LookupKeyFields = 'ID_sostoianie'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_sostoianie'
      Size = 255
      Lookup = True
    end
    object q_ZIPData_spisano: TDateTimeField
      FieldName = 'Data_spisano'
    end
    object q_ZIPID_sostoianie: TIntegerField
      FieldName = 'ID_sostoianie'
    end
    object q_ZIPPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
  end
  object q_vydacha_ZIP: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    DataSource = ds_ZIP
    Parameters = <
      item
        Name = 'ID_ZIP'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 24
        Precision = 255
        Value = 1
      end>
    SQL.Strings = (
      'Select * From Vydacha_ZIP'
      'Where ID_ZIP = :ID_ZIP')
    Left = 600
    Top = 160
  end
  object ds_ZIP: TDataSource
    DataSet = q_ZIP
    Left = 528
    Top = 208
  end
  object ds_vydacha_ZIP: TDataSource
    DataSet = q_vydacha_ZIP
    Left = 600
    Top = 208
  end
  object q_attestacia: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Attestacia')
    Left = 104
    Top = 288
    object q_attestaciaID_attestacia: TAutoIncField
      FieldName = 'ID_attestacia'
      ReadOnly = True
    end
    object q_attestaciaData_attestacia: TDateTimeField
      FieldName = 'Data_attestacia'
    end
    object q_attestaciaID_vid_attestacia: TIntegerField
      FieldName = 'ID_vid_attestacia'
    end
    object q_attestaciaPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object q_attestaciaVid_attestacia: TStringField
      FieldKind = fkLookup
      FieldName = 'Vid_attestacia'
      LookupDataSet = q_vid_attestacia
      LookupKeyFields = 'ID_vid_attestacia'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_vid_attestacia'
      Size = 255
      Lookup = True
    end
  end
  object ds_attestacia: TDataSource
    DataSet = q_attestacia
    Left = 104
    Top = 336
  end
  object q_zachet: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    DataSource = ds_attestacia
    Parameters = <
      item
        Name = 'ID_attestacia'
        DataType = ftInteger
        Value = 1
      end>
    SQL.Strings = (
      'Select * From Zachet'
      'Where ID_attestacia = :ID_attestacia')
    Left = 176
    Top = 288
    object q_zachetID_zachet: TAutoIncField
      FieldName = 'ID_zachet'
      ReadOnly = True
    end
    object q_zachetID_attestacia: TIntegerField
      FieldName = 'ID_attestacia'
    end
    object q_zachetID_sotrudnik: TIntegerField
      FieldName = 'ID_sotrudnik'
    end
    object q_zachetID_rezultat_attestacia: TIntegerField
      FieldName = 'ID_rezultat_attestacia'
    end
    object q_zachetPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object q_zachetSotrudnik: TStringField
      FieldKind = fkLookup
      FieldName = 'Sotrudnik'
      LookupDataSet = q_sotrudnik
      LookupKeyFields = 'ID_sotrudnik'
      LookupResultField = 'FIO'
      KeyFields = 'ID_sotrudnik'
      Size = 255
      Lookup = True
    end
    object q_zachetRezultat: TStringField
      FieldKind = fkLookup
      FieldName = 'Rezultat'
      LookupDataSet = q_rezultat_attestacia
      LookupKeyFields = 'ID_rezultat_attestacia'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_rezultat_attestacia'
      Size = 255
      Lookup = True
    end
  end
  object ds_zachet: TDataSource
    DataSet = q_zachet
    Left = 176
    Top = 336
  end
  object q_vybor_sotrudnik_attestacia: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Filter = 'Vybran <> true'
    Parameters = <>
    SQL.Strings = (
      'Select * From Vybor')
    Left = 288
    Top = 288
    object q_vybor_sotrudnik_attestaciaID_vybor: TAutoIncField
      FieldName = 'ID_vybor'
      ReadOnly = True
    end
    object q_vybor_sotrudnik_attestaciaID_sotrudnik: TIntegerField
      FieldName = 'ID_sotrudnik'
    end
    object q_vybor_sotrudnik_attestaciaID_dolzhnost: TIntegerField
      FieldName = 'ID_dolzhnost'
    end
    object q_vybor_sotrudnik_attestaciaVybran: TSmallintField
      FieldName = 'Vybran'
    end
    object q_vybor_sotrudnik_attestaciaSotrudnik: TStringField
      FieldKind = fkLookup
      FieldName = 'Sotrudnik'
      LookupDataSet = q_sotrudnik
      LookupKeyFields = 'ID_sotrudnik'
      LookupResultField = 'FIO'
      KeyFields = 'ID_sotrudnik'
      Size = 255
      Lookup = True
    end
    object q_vybor_sotrudnik_attestaciaDolzhnost: TStringField
      FieldKind = fkLookup
      FieldName = 'Dolzhnost'
      LookupDataSet = q_dolzhnost
      LookupKeyFields = 'ID_dolzhnost'
      LookupResultField = 'Naimenovanie'
      KeyFields = 'ID_dolzhnost'
      Size = 255
      Lookup = True
    end
  end
  object ds_vybor_sotrudnik_attestacia: TDataSource
    DataSet = q_vybor_sotrudnik_attestacia
    Left = 288
    Top = 336
  end
  object q_MTO: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From MTO')
    Left = 416
    Top = 288
    object q_MTOID_MTO: TAutoIncField
      FieldName = 'ID_MTO'
      ReadOnly = True
    end
    object q_MTOKolichestvo: TFloatField
      FieldName = 'Kolichestvo'
    end
    object q_MTOID_EI: TIntegerField
      FieldName = 'ID_EI'
    end
    object q_MTOPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
    object q_MTOEI: TStringField
      FieldKind = fkLookup
      FieldName = 'EI'
      LookupDataSet = q_EI
      LookupKeyFields = 'ID_EI'
      LookupResultField = 'Oboznachenie'
      KeyFields = 'ID_EI'
      Size = 64
      Lookup = True
    end
    object q_MTONaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 255
    end
  end
  object ds_MTO: TDataSource
    DataSet = q_MTO
    Left = 416
    Top = 336
  end
  object q_list_MTO: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From MTO')
    Left = 480
    Top = 288
  end
  object ds_list_MTO: TDataSource
    DataSet = q_list_MTO
    Left = 480
    Top = 336
  end
  object q_prihod_MTO: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    BeforePost = q_prihod_MTOBeforePost
    DataSource = ds_MTO
    Parameters = <
      item
        Name = 'ID_MTO'
        DataType = ftInteger
        Value = 1
      end>
    SQL.Strings = (
      'Select * From Prihod_MTO'
      'Where ID_MTO = :ID_MTO')
    Left = 560
    Top = 288
    object q_prihod_MTOID_prihod_MTO: TAutoIncField
      FieldName = 'ID_prihod_MTO'
      ReadOnly = True
    end
    object q_prihod_MTOID_MTO: TIntegerField
      FieldName = 'ID_MTO'
    end
    object q_prihod_MTOData_prihod: TDateTimeField
      FieldName = 'Data_prihod'
    end
    object q_prihod_MTOPriniato_kem: TWideStringField
      FieldName = 'Priniato_kem'
      Size = 64
    end
    object q_prihod_MTOKolichestvo: TFloatField
      FieldName = 'Kolichestvo'
    end
    object q_prihod_MTOEI: TStringField
      FieldKind = fkLookup
      FieldName = 'EI'
      LookupDataSet = q_EI
      LookupKeyFields = 'ID_EI'
      LookupResultField = 'Oboznachenie'
      KeyFields = 'ID_EI'
      Size = 64
      Lookup = True
    end
    object q_prihod_MTOID_EI: TIntegerField
      FieldName = 'ID_EI'
    end
    object q_prihod_MTOPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
  end
  object ds_prihod_MTO: TDataSource
    DataSet = q_prihod_MTO
    Left = 560
    Top = 336
  end
  object q_GSM: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From GSM')
    Left = 648
    Top = 288
    object q_GSMID_GSM: TAutoIncField
      FieldName = 'ID_GSM'
      ReadOnly = True
    end
    object q_GSMNaimenovanie: TWideStringField
      FieldName = 'Naimenovanie'
      Size = 255
    end
    object q_GSMKolichestvo: TFloatField
      FieldName = 'Kolichestvo'
    end
    object q_GSMEI: TStringField
      FieldKind = fkLookup
      FieldName = 'EI'
      LookupDataSet = q_EI
      LookupKeyFields = 'ID_EI'
      LookupResultField = 'Oboznachenie'
      KeyFields = 'ID_EI'
      Size = 64
      Lookup = True
    end
    object q_GSMKriticheskoe_kolichestvo: TFloatField
      FieldName = 'Kriticheskoe_kolichestvo'
    end
    object q_GSMID_EI: TIntegerField
      FieldName = 'ID_EI'
    end
    object q_GSMPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
  end
  object ds_GSM: TDataSource
    DataSet = q_GSM
    Left = 648
    Top = 336
  end
  object ds_prihod_GSM: TDataSource
    DataSet = q_prihod_GSM
    Left = 712
    Top = 336
  end
  object q_prihod_GSM: TADOQuery
    Active = True
    Connection = conn_main
    CursorType = ctStatic
    BeforePost = q_prihod_GSMBeforePost
    DataSource = ds_GSM
    Parameters = <
      item
        Name = 'ID_GSM'
        DataType = ftInteger
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Prihod_GSM'
      'Where ID_GSM = :ID_GSM')
    Left = 712
    Top = 288
    object q_prihod_GSMID_prihod_GSM: TAutoIncField
      FieldName = 'ID_prihod_GSM'
      ReadOnly = True
    end
    object q_prihod_GSMID_GSM: TIntegerField
      FieldName = 'ID_GSM'
    end
    object q_prihod_GSMData_priniato: TDateTimeField
      FieldName = 'Data_priniato'
    end
    object q_prihod_GSMPrinial: TWideStringField
      FieldName = 'Prinial'
      Size = 255
    end
    object q_prihod_GSMKolichestvo: TFloatField
      FieldName = 'Kolichestvo'
    end
    object q_prihod_GSMEI: TStringField
      FieldKind = fkLookup
      FieldName = 'EI'
      LookupDataSet = q_EI
      LookupKeyFields = 'ID_EI'
      LookupResultField = 'Oboznachenie'
      KeyFields = 'ID_EI'
      Size = 64
      Lookup = True
    end
    object q_prihod_GSMID_EI: TIntegerField
      FieldName = 'ID_EI'
    end
    object q_prihod_GSMPrimechanie: TWideMemoField
      FieldName = 'Primechanie'
      BlobType = ftWideMemo
    end
  end
end
