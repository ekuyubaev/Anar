object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 416
  Width = 463
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
end
