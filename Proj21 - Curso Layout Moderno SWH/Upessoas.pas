unit Upessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Ufuncoes, UPessoasCampo;

type
  TFrmClientes = class(TForm)
    PnlConsulta: TPanel;
    PnlPrincipalClientes: TPanel;
    LblTituloConsulta: TLabel;
    ImgConsulta: TImage;
    PnlBtnConsulta: TPanel;
    BtnConsulta: TSpeedButton;
    LblSubTituloConsulta: TLabel;
    ShpBtnConsulta: TShape;
    PnlCadCli: TPanel;
    LblCadCliTitulo: TLabel;
    ImgCadCli: TImage;
    LblCadCliSubTitulo: TLabel;
    PnlBtnCadCli: TPanel;
    ShpBtnCadCli: TShape;
    BtnCadCli: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure BtnCadCliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

uses
  Uconsultacli, Ucentral;

{$R *.dfm}

procedure TFrmClientes.BtnCadCliClick(Sender: TObject);
begin
  FrmPessoasCampos := TFrmPessoasCampos.Create(FrmClientes);
  FrmPessoasCampos.Parent := FrmClientes.Parent;
  FrmPessoasCampos.Show;
end;

procedure TFrmClientes.BtnConsultaClick(Sender: TObject);
begin
  FrmConsultaCli := TFrmConsultaCli.Create( FrmClientes );
  FrmConsultaCli.Parent := FrmClientes.Parent;

  FrmConsultaCli.Show;
end;

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmClientes.FormResize(Sender: TObject);
begin
  PrcArredondaPainel(PnlConsulta, 12);
  PrcArredondaPainel(PnlCadCli, 12);
  PrcArredondaPainel(PnlPrincipalClientes, 12);

  PnlPrincipalClientes.Top  := Round( FrmClientes.Height / 2 - PnlPrincipalClientes.Height / 2 );
  PnlPrincipalClientes.Left := Round( FrmClientes.Width /2 - PnlPrincipalClientes.Width / 2  );

end;

end.
