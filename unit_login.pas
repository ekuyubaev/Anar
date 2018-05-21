unit unit_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tform_login = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;

implementation

uses IniFiles, unit_datamodule, Unit1, unit_uvedomlenie;

{$R *.dfm}
var settings: TIniFile;
    server, user, pass : String;

procedure Tform_login.BitBtn1Click(Sender: TObject);
var i:integer;
begin
  settings := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'settings.ini');
  server := settings.ReadString('database','server','localhost');
  user := settings.ReadString('database','user','root');
  pass := settings.ReadString('database','pass','gdx4852T');

  if dm.conn_main.Connected then dm.conn_main.Close;


  dm.conn_main.ConnectionString := 'Provider=MSDASQL.1;'
                                +'Password='+pass+';'
                                +'Persist Security Info=True;'
                                +'User ID='+ user +';'
                                +'Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode Driver};'
                                +'UID='+ user +';'
                                +'PWD='+ pass +';'
                                +'SERVER='+ server +';'
                                +'DATABASE=db_etop;'
                                +'PORT=3306;'
                                +'COLUMN_SIZE_S32=1;";'
                                +'Initial Catalog=db_etop;OPTION=2';
  try
    dm.connect;

    uvedomlenie :=TUvedomlenie.Create(true);
    uvedomlenie.FreeOnTerminate:=true;
    uvedomlenie.Priority:=tpLowest;
    uvedomlenie.skrytAttestacia := false;
    uvedomlenie.skrytRabota := false;
    uvedomlenie.skrytPoverka := false;
    uvedomlenie.Resume;

    for i := 0 to form_main.MainMenu1.Items.Count-1 do
      form_main.MainMenu1.Items.Items[i].Enabled := true;

    close;
  except
    ShowMessage('Не удалось установить связь с БД.');
    exit;
  end;
end;

procedure Tform_login.BitBtn2Click(Sender: TObject);
begin
  settings := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'settings.ini');
  server := settings.ReadString('database','server','localhost');
  user := settings.ReadString('database','user','root');
  pass := settings.ReadString('database','pass','gdx4852T');

  Edit3.Text := server;
  Edit4.Text := user;
  Edit5.Text := pass;

  self.Height := 312;
end;

procedure Tform_login.BitBtn3Click(Sender: TObject);
begin
  self.Height := 175;
end;

procedure Tform_login.BitBtn4Click(Sender: TObject);
begin
  settings := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'settings.ini');
  settings.WriteString('database','server',Edit3.Text);
  settings.WriteString('database','user',Edit4.Text);
  settings.WriteString('database','pass',Edit5.Text);
  self.Height := 175;
end;

procedure Tform_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  unit1.form_login := nil;
end;

end.
