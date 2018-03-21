object DM: TDM
  OldCreateOrder = False
  Height = 416
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
    Left = 344
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
end
