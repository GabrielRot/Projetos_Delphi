unit UentrarChat;

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
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  System.Win.ScktComp,
  Uclasses;

type
  TFrmEntraChat = class(TForm)
    PnlTitulo: TPanel;
    ImgTitulo: TImage;
    BtnReturn: TSpeedButton;
    LblTitulo: TLabel;
    LblTime: TLabel;
    Timer: TTimer;
    PnlFundoChat: TPanel;
    BtnSend: TSpeedButton;
    PnlText: TPanel;
    ShpText: TShape;
    EdtMensagem: TEdit;
    MChat: TMemo;
    SC: TClientSocket;
    PnlBtns: TPanel;
    PnlBtnInterrompe: TPanel;
    BtnInterrompe: TSpeedButton;
    PnlBtnIncia: TPanel;
    BtnInicia: TSpeedButton;
    Timer1: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure BtnReturnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SCError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure SCRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure BtnSendClick(Sender: TObject);
    procedure BtnIniciaClick(Sender: TObject);
    procedure BtnInterrompeClick(Sender: TObject);
    procedure EdtMensagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure EdtMensagemEnter(Sender: TObject);
    procedure EdtMensagemExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    Nick : String;
    IP   : String;
    HoraTime : String;
  end;

var
  FrmEntraChat: TFrmEntraChat;

implementation

uses
  Uprincipal, Uprocurachat;

{$R *.dfm}

procedure TFrmEntraChat.BtnIniciaClick(Sender: TObject);
begin
  SC.Active := True;

  FncCriaMSG('AVISO DE CONEXÃO', 'BUSCANDO POR CONVERSAS', 'Entrando em Servidores...',
             ExtractFilePath(Application.ExeName) + '\Imagens\PNG\Cloud92x92.png', 'OK');


end;

procedure TFrmEntraChat.BtnInterrompeClick(Sender: TObject);
begin
  SC.Active := False;

  FncCriaMSG('AVISO DE CONEXÃO','INTERROMPENDO A BUSCA','Interrompendo a Busca e Conexão com Outros Servidores.',
             ExtractFilePath(Application.ExeName) + '\Imagens\PNG\WifiOFF92x92.png','OK');

end;

procedure TFrmEntraChat.BtnReturnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEntraChat.BtnSendClick(Sender: TObject);
//Vai fazer com que o TMemo receba o Texto enviado com o Apelido e a Mensagem junto.
begin

  SC.Socket.SendText( Nick + ': ' + EdtMensagem.Text  );
  MChat.Lines.Add( Nick + ': ' + EdtMensagem.Text );
  SC.Socket.SendText( HoraTime );
  MChat.Lines.Add( HoraTime );
  EdtMensagem.Clear;
  EdtMensagem.Text := 'Mensagem';

end;

procedure TFrmEntraChat.EdtMensagemEnter(Sender: TObject);
begin
  EdtMensagem.Text := ''
end;

procedure TFrmEntraChat.EdtMensagemExit(Sender: TObject);
begin
  EdtMensagem.Text := '   Mensagem'
end;

procedure TFrmEntraChat.EdtMensagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_RETURN then
      BtnSendClick( Self );

end;

procedure TFrmEntraChat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEntraChat.FormResize(Sender: TObject);
begin
  PrcArredondaPainel( PnlText, 12 );
  PrcArredondaPainel( PnlBtnIncia, 12 );
  PrcArredondaPainel( PnlBtnInterrompe, 12 );
end;

procedure TFrmEntraChat.FormShow(Sender: TObject);
begin
  if SC.Port = 0 then
  if FrmPrincipal.SCPort = '' then
  begin
    FncCriaMSG('AVISO DE CONEXÃO','ERRO AO RECEBER PORTA',
    'Não há Porta Cadastrada na Conexão, Por Favor escolha a Opção Definir Conexão e Defina uma Porta.',
    ExtractFilePath(Application.ExeName) + '\Imagens\PNG\warning92x92.png', 'OK');

    FrmEntraChat.Close;

  end else
  SC.Port := StrToInt ( FrmPrincipal.SSPort );

  if Nick = '' then
  if FrmPrincipal.Nick = '' then
  begin
    FncCriaMSG( 'AVISO DE CONEXÃO','ERRO AO RECEBER NOME',
    'Não há Nenhum Nome Cadastrado na Aplicação, Por Favor Escolha a Opção Configurar Perfil e Defina um Nome Para seu Perfil ',
    ExtractFilePath( Application.ExeName ) + '\Imagens\PNG\warning92x92.png', 'OK' );

    FrmEntraChat.Close;

  end else
  Nick := FrmPrincipal.Nick;

  if SC.Host = '0' then
  if FrmPrincipal.IP = '' then
  begin
    FncCriaMSG( 'AVISO DE CONEXÃO','ERRO AO RECEBER IP',
    'Não há Nenhum IP Cadastrado na Aplicação, Por Favor Escolha a Opção Definir Conexão e Defina um IP ',
    ExtractFilePath( Application.ExeName ) + '\Imagens\PNG\warning92x92.png', 'OK' );

    FrmEntraChat.Close;

  end else
  SC.Host := FrmPrincipal.IP;
end;

procedure TFrmEntraChat.SCError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
  //Define o código de erro do Client para 0
begin
  ErrorCode := 0;
end;

procedure TFrmEntraChat.SCRead(Sender: TObject; Socket: TCustomWinSocket);
//Recebe o texto enviado pelo Client
Var
  Recebe : String;
begin
  Recebe := Socket.ReceiveText;
  MChat.Lines.Add( Recebe );

end;

procedure TFrmEntraChat.Timer1Timer(Sender: TObject);
begin
  HoraTime  := TimeToStr( Now );
end;

procedure TFrmEntraChat.TimerTimer(Sender: TObject);
begin
  LblTime.Caption := DateTimeToStr( Now );
end;

end.
