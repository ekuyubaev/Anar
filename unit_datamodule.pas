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
end;

end.
