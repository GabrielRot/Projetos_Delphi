unit Uconexão;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  SWHEdit,
  IdBaseComponent,
  IdComponent,
  IdIPWatch;

type
  TFrmConexao = class(TForm)
    PnlFundo: TPanel;
    PnlTopo: TPanel;
    PnlCadastro: TPanel;
    ShpFundo: TShape;
    ImgTitulo: TImage;
    LblTitulo: TLabel;
    LblSubTitulo: TLabel;
    PnlButtons: TPanel;
    PnlConfirmar: TPanel;
    BtnConfirmar: TSpeedButton;
    PnlCancel: TPanel;
    BtnCancel: TSpeedButton;
    LblTituloCadastro: TLabel;
    PnlDrawCadastro: TPanel;
    LblSSNewPort: TLabel;
    EdtSSNewPort: TSWHEdit;
    LblSCNewPort: TLabel;
    EdtSCNewPort: TSWHEdit;
    PnlCurrent: TPanel;
    LblAtualTitulo: TLabel;
    LblCurrentSSPort: TLabel;
    LblCurrentSCPort: TLabel;
    PnlDrawAtual: TPanel;
    EdtSSCurrentPort: TSWHEdit;
    EdtSCCurrentPort: TSWHEdit;
    PnlTop: TPanel;
    BtnClose: TSpeedButton;
    LblCurrentIP: TLabel;
    EdtCurrentIP: TSWHEdit;
    IPWatch: TIdIPWatch;
    LblNewIP: TLabel;
    EdtNewIP: TSWHEdit;
    SpeedButton1: TSpeedButton;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      SSPort : String;
      SCPort : String;
      Gulag  : String;
  end;

var
  FrmConexao: TFrmConexao;

implementation

uses
  Uprincipal, Uclasses;

{$R *.dfm}

procedure TFrmConexao.BtnCancelClick(Sender: TObject);
begin
  EdtSSNewPort.Text := '';
  EdtSCNewPort.Text := '';
  EdtNewIp.Text     := '';

  SSPort := '';
  SCPort := '';
  Gulag  := '';

  EdtSSCurrentPort.Text := SSPort;
  EdtSCCurrentPort.Text := SCPort;
  EdtCurrentIP.Text     := Gulag;
end;

procedure TFrmConexao.BtnConfirmarClick(Sender: TObject);
begin

  if ( ( EdtSSNewPort ).Text = '' ) then
    PrcValidaCampo( FrmConexao );

  if ( ( EdtSCNewPort ).Text = '' ) then
    PrcValidaCampo( FrmConexao );

  if ( ( EdtNewIP ).Text = '' ) then
    PrcValidaCampo( FrmConexao )
  else
  begin
    SSPort := EdtSSNewPort.Text;
    SCPort := EdtSCNewPort.Text;
    Gulag  := EdtNewIP.Text;

    EdtSSCurrentPort.Text := SSPort;
    EdtSCCurrentPort.Text := SCPort;
    EdtCurrentIP.Text     := Gulag;

    FncCriaMSG( 'CONNECTION SUCESSFULLY','AVISO DE CONEXÃO',
                'Dados de Conexão Salvos com Sucesso!',
                ExtractFilePath( Application.ExeName ) + '\Imagens\PNG\check96x96.png',
                'OK' );

    PrcGravaInfo;

  end;

end;

procedure TFrmConexao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := TCloseAction.caFree;

      if SSPort <> '' then
      begin
      FrmPrincipal.SSPort  := SSPort;
      end;
      if SCPort <> '' then
      FrmPrincipal.SCPort  := SCPort;
      if Gulag  <> '' then
      FrmPrincipal.IP      := Gulag;

end;

procedure TFrmConexao.FormResize(Sender: TObject);
begin
  PrcArredondaPainel( PnlTopo, 12 );
  PrcArredondaPainel( PnlCadastro, 12 );
  PrcArredondaPainel( PnlCurrent, 12 );
  PrcArredondaPainel( PnlButtons, 10 );
end;

procedure TFrmConexao.FormShow(Sender: TObject);
begin
  if SSPort = '' then
    SSPort := FrmPrincipal.SSPort;
  if SCPort = '' then
    SCPort := FrmPrincipal.SCPort;
  if Gulag = '' then

  begin
    Gulag := FrmPrincipal.IP;

    EdtSSCurrentPort.Text := SSPort;
    EdtSCCurrentPort.Text := SCPort;
    EdtCurrentIp.Text     := Gulag;

  End;

end;

procedure TFrmConexao.SpeedButton1Click(Sender: TObject);
begin
  EdtSSNewPort.Text := '7777';
  EdtSCNewPort.Text := '7777';
  EdtNewIP.Text     := '127.0.0.1';
end;

procedure TFrmConexao.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
