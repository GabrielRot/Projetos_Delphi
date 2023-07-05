unit UcadPacientes;

interface

uses
  Winapi.Windows, UDmSistema, UpesqPacientes, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFCadPct = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPct: TFCadPct;
  Tela, i : integer;

implementation

{$R *.dfm}

procedure TFCadPct.Button1Click(Sender: TObject);
begin
  DMSistema.CdsCadPct.Insert;
end;

procedure TFCadPct.Button2Click(Sender: TObject);
begin
  DMSistema.CdsCadPct.Cancel;
end;

procedure TFCadPct.Button3Click(Sender: TObject);
begin
  DMSistema.CdsCadPct.Delete
end;

procedure TFCadPct.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TFCadPct.Button5Click(Sender: TObject);
begin
  Tela :=-1;
    for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] is TfrmPesqPacientes then
      Tela := I;
    if Tela >= 0 then
      Screen.Forms[Tela].SetFocus
    else
      frmPesqPacientes := TfrmPesqPacientes.Create(Self);
end;

procedure TFCadPct.Button6Click(Sender: TObject);
begin
  DMSistema.CdsCadPct.Post;
end;

procedure TFCadPct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
