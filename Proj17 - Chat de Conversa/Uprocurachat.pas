unit Uprocurachat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, System.Win.ScktComp, Uclasses,
  Uprincipal, JvExControls, JvAnimatedImage, JvGIFCtrl;

type
  TFrmProcuraChat = class(TForm)
    PnlFundoChat: TPanel;
    BtnSend: TSpeedButton;
    PnlText: TPanel;
    EdtMensagem: TEdit;
    PnlTitulo: TPanel;
    ImgTitulo: TImage;
    BtnReturn: TSpeedButton;
    LblTitulo: TLabel;
    LblSubTitulo: TLabel;
    PnlBtns: TPanel;
    PnlBtnInterrompe: TPanel;
    BtnInterrompe: TSpeedButton;
    PnlBtnIncia: TPanel;
    BtnInicia: TSpeedButton;
    LVConexoes: TListView;
    MChat: TMemo;
    SS: TServerSocket;
    GifWifiAnim: TJvGIFAnimator;

    procedure BtnIniciaClick(Sender: TObject);
    procedure BtnInterrompeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SSClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure SSClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure SSClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure BtnSendClick(Sender: TObject);
    procedure BtnReturnClick(Sender: TObject);
    procedure EdtMensagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure EdtMensagemEnter(Sender: TObject);
    procedure EdtMensagemExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Nick : String;
  end;

var
  FrmProcuraChat: TFrmProcuraChat;

implementation

uses
  Uconexão, UentrarChat;

{$R *.dfm}

procedure TFrmProcuraChat.BtnIniciaClick(Sender: TObject);
begin
  SS.Active := True;
  GifWifiAnim.Animate := True;

  FncCriaMSG('AVISO DE CONEXÃO', 'BUSCANDO POR SERVIDORES', 'Rastreiando por Servidores...',
             ExtractFilePath(Application.ExeName) + '\Imagens\PNG\Cloud92x92.png', 'OK');

end;

procedure TFrmProcuraChat.BtnInterrompeClick(Sender: TObject);
begin
  SS.Active := False;
  GifWifiAnim.Animate := False;
  GifWifiAnim.Image.LoadFromFile('Imagens\PNG\WifiOFF92x92.png');

  FncCriaMSG('AVISO DE CONEXÃO','INTERROMPENDO A BUSCA','Interrompendo a Busca e Conexão com Outros Servidores',
             ExtractFilePath(Application.ExeName) + '\Imagens\PNG\WifiOFF92x92.png','OK');


end;

procedure TFrmProcuraChat.BtnReturnClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmProcuraChat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmProcuraChat.FormResize(Sender: TObject);
begin
  PrcArredondaPainel( PnlText, 12 );
  PrcArredondaPainel( PnlBtnIncia, 12 );
  PrcArredondaPainel( PnlBtnInterrompe, 12 )
end;

procedure TFrmProcuraChat.FormShow(Sender: TObject);
begin
   //Nick := FrmPrincipal.Nick;

  if SS.Port = 0 then
  if FrmPrincipal.SSPort = '' then
  begin
    FncCriaMSG('AVISO DE CONEXÃO','ERRO AO RECEBER PORTA',
    'Não há Porta Cadastrada na Conexão, Por Favor escolha a Opção Definir Conexão e Defina uma Porta.',
    ExtractFilePath(Application.ExeName) + '\Imagens\PNG\warning92x92.png', 'OK');

    FrmProcuraChat.Close;  

  end else           
  SS.Port := StrToInt ( FrmPrincipal.SSPort );

  if Nick = '' then
  if FrmPrincipal.Nick = '' then
  begin
    FncCriaMSG( 'AVISO DE CONEXÃO','ERRO AO RECEBER NOME',
    'Não há Nenhum Nome Cadastrado na Aplicação, Por Favor Escolha a Opção Configurar Perfil e Defina um Nome Para seu Perfil ',
    ExtractFilePath( Application.ExeName ) + '\Imagens\PNG\warning92x92.png', 'OK' );

    FrmProcuraChat.Close;
  
  end else     
  Nick := FrmPrincipal.Nick;
  
end;

procedure TFrmProcuraChat.BtnSendClick(Sender: TObject);
begin

  if not assigned( LVConexoes.Selected ) then exit;
  SS.Socket.Connections[ LVConexoes.ItemIndex ].SendText( Nick + ': ' + EdtMensagem.Text );
  MChat.Lines.Add( Nick + ': ' + EdtMensagem.Text );
  SS.Socket.Connections[ LVConexoes.ItemIndex ].SendText( FrmEntraChat.HoraTime );
  MChat.Lines.Add( FrmEntraChat.HoraTime );
  EdtMensagem.Clear;
  EdtMensagem.Text := 'Mensagem';

end;

procedure TFrmProcuraChat.EdtMensagemEnter(Sender: TObject);
begin
  EdtMensagem.Text := ''
end;

procedure TFrmProcuraChat.EdtMensagemExit(Sender: TObject);
begin
  EdtMensagem.Text := '   Mensagem'
end;

procedure TFrmProcuraChat.EdtMensagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    BtnSendClick( Self );

end;

procedure TFrmProcuraChat.SSClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
  //Adicionar endereço de IP e Host ao ListView
Var
  L : TListItem;
begin
  L := LVConexoes.Items.Add;
  L.Caption := IntToStr( Socket.Handle );
  L.SubItems.Add( Socket.RemoteHost );
  L.SubItems.Add( Socket.RemoteAddress );
  L.Data := Socket.Data;

end;

procedure TFrmProcuraChat.SSClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
  //Iniciar eventos ao Desconectar
Var
  L : TListItem;
begin
  L := LVConexoes.FindCaption( 0, IntToStr ( Socket.Handle ), false, true, false );
  if L <> nil then L.Delete;

end;

procedure TFrmProcuraChat.SSClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
  //Vai fazer com a String que as linhas do TMemo receber sejá como Mensagem
Var
  TextoRec : String;
begin
  TextoRec := Socket.ReceiveText;
  MChat.Lines.Add( TextoRec );

end;

end.
