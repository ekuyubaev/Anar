unit unit_datamodule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
