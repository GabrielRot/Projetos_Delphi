unit Ulogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmLogin = class(TForm)
    PnlFundo: TPanel;
    PnlLateral: TPanel;
    LblBemVindos: TLabel;
    LblSistema: TLabel;
    LblAutor: TLabel;
    LblVersao: TLabel;
    ImgLogo: TImage;
    LblDigite: TLabel;
    LblUsuario: TLabel;
    PnlUsuario: TPanel;
    EdtUsuario: TEdit;
    PnlDrawUsuario: TPanel;
    PnlBotao: TPanel;
    BtnConfirma: TSpeedButton;
    PnlSenha: TPanel;
    LblSenha: TLabel;
    EdtSenha: TEdit;
    PnlDrawSenha: TPanel;
    BtnEncerrar: TSpeedButton;
    procedure BtnEncerrarClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.BtnConfirmaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLogin.BtnEncerrarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.FormActivate(Sender: TObject);
begin
  PnlFundo.Left := Round ((FrmLogin.Width - PnlFundo.Width) / 2) ;
  PnlFundo.Top  := Round ((FrmLogin.Height - PnlFundo.Height) / 2) ;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
