unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmPrincipal = class(TForm)
    LblTopLogo: TLabel;
    PnlFundo: TPanel;
    LblUsuário: TLabel;
    PnlDrawTop: TPanel;
    PnlLogo: TPanel;
    PnlBtns: TPanel;
    ImgLogo: TImage;
    ImgTopIcone: TImage;
    BtnMinimize: TSpeedButton;
    BtnClose: TSpeedButton;
    PnlDrawBotom: TPanel;
    LblDesc: TLabel;
    PnlSideDraw: TPanel;
    PnlBotoes: TPanel;
    LblBtns: TLabel;
    LblTittle: TLabel;
    PnlAgendamento: TPanel;
    ShpAgendamento: TShape;
    BtnAgendamento: TSpeedButton;
    PnlClients: TPanel;
    ShpClients: TShape;
    BtnClients: TSpeedButton;
    PnlProducts: TPanel;
    ShpProducts: TShape;
    BtnProducts: TSpeedButton;
    PnlRelatorio: TPanel;
    ShpRelatorio: TShape;
    BtnRelatorio: TSpeedButton;
    PnlServer: TPanel;
    ShpServer: TShape;
    BtnServer: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnMinimizeClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtnServerClick(Sender: TObject);
    procedure BtnAgendamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}
uses Ufuncoes, UconfigServ, Uagendamento;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  if FncCriaMSG('CONFIRMAÇÃO',
            'Tem Certeza que deseja Continuar?',
            'Deseja inserir esses dados?',
            ExtractFilePath(Application.ExeName) + '..\Images\Png\warning92x92.png',
            'CONFIRMA') then
    ShowMessage('Sim')
  else
    ShowMessage('Não')

end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  PnlFundo.Top  := Round ( ( FrmPrincipal.Height - PnlFundo.Height ) / 2 );
  PnlFundo.Left := Round ( ( FrmPrincipal.Width - PnlFundo.Width ) / 2 );
end;

procedure TFrmPrincipal.BtnMinimizeClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFrmPrincipal.BtnServerClick(Sender: TObject);
begin
  try

    FrmConfigServ := TFrmConfigServ.Create( Self );
    FrmConfigServ.ShowModal;

  finally
    FrmConfigServ.Free;
  end;
end;

procedure TFrmPrincipal.BtnAgendamentoClick(Sender: TObject);
begin
    FrmAgendamento        := TFrmAgendamento.Create( Self );
    FrmAgendamento.Parent := PnlLogo;

    PnlBotoes.Enabled := False;
    FrmAgendamento.Show;

end;

procedure TFrmPrincipal.BtnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
