object DataModule2: TDataModule2
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
end
