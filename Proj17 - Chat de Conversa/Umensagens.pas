unit Umensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmMensagens = class(TForm)
    PnlFundo: TPanel;
    ShpFundo: TShape;
    LblAtencao: TLabel;
    PnlDraw: TPanel;
    ImgIcone: TImage;
    LblTitulo: TLabel;
    LblMensagem: TLabel;
    PnlBtns: TPanel;
    PnlBotaoConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    PnlBotaoCancela: TPanel;
    BtnCancela: TSpeedButton;

    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    bRespostaMSG : Boolean;
    sTituloAtencao, sTituloMSG, sMSG, sCaminhoIcone, sTipo : String;
  end;

var
  FrmMensagens: TFrmMensagens;

implementation

uses
  Uconexão, Uprincipal;

{$R *.dfm}


procedure TFrmMensagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmMensagens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    BtnConfirmaClick( Self )
  else if key = VK_ESCAPE then
    BtnCancelaClick( Self )
end;

procedure TFrmMensagens.FormShow(Sender: TObject);
begin
  bRespostaMSG := False;

  LblAtencao.Caption  := sTituloAtencao;
  LblTitulo.Caption   := sTituloMSG;
  LblMensagem.Caption := sMSG;
  ImgIcone.Picture.LoadFromFile( sCaminhoIcone );

  if sTipo = 'OK' then
  begin
    PnlBotaoCancela.Visible := False;
    BtnConfirma.Caption     := 'OK ( ENTER )';
  end

end;

procedure TFrmMensagens.BtnCancelaClick(Sender: TObject);
begin
  //bRespostaMSG := False;

  Close;
end;

procedure TFrmMensagens.BtnConfirmaClick(Sender: TObject);
begin
 // bRespostaMSG := True;

  Close;
end;

end.
