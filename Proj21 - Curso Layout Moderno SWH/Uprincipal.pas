unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Ucentral;

type
  TFrmPrincipal = class(TForm)
    PnlPrincipal: TPanel;
    PnlTop: TPanel;
    PnlDrawTop: TPanel;
    PnlCentral: TPanel;
    BtnFechar: TSpeedButton;
    PnlMenu: TPanel;
    BtnClientes: TSpeedButton;
    BtnProdutos: TSpeedButton;
    BtnVendas: TSpeedButton;
    BtnCaixa: TSpeedButton;
    BtnFinanceiro: TSpeedButton;
    PnlDrawBotao: TPanel;
    BtnConfig: TSpeedButton;
    BtnMinimize: TSpeedButton;
    BtnUser: TSpeedButton;
    PnlFastNewVendas: TPanel;
    LblAcessoRapido: TLabel;
    BtnFastVendas: TSpeedButton;
    ShpFastVendas: TShape;
    PnlFastNewCliente: TPanel;
    ShpFastNewCliente: TShape;
    BtnFastNewCliente: TSpeedButton;
    PnlFastNewEstoque: TPanel;
    ShpFastNewEstoque: TShape;
    BtnFastNewEstoque: TSpeedButton;
    PnlFastNewCaixa: TPanel;
    ShpFastNewCaixa: TShape;
    BtnFastNewCaixa: TSpeedButton;
    PnlFastNewContas: TPanel;
    ShpFastNewContas: TShape;
    BtnFastNewContas: TSpeedButton;
    LblPesquisar: TLabel;
    PnlPesquisar: TPanel;
    BtnPesquisa: TSpeedButton;
    ShpPesquisa: TShape;
    EdtPesquisa: TEdit;
    ImgLogo: TImage;
    Label1: TLabel;
    procedure FormResize(Sender: TObject);
    procedure BtnClientesMouseEnter(Sender: TObject);
    procedure BtnClientesMouseLeave(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnConfigClick(Sender: TObject);
    procedure BtnMinimizeClick(Sender: TObject);
    procedure BtnFastVendasMouseEnter(Sender: TObject);
    procedure BtnFastVendasMouseLeave(Sender: TObject);
    procedure BtnClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Ufuncoes;

{$R *.dfm}


procedure TFrmPrincipal.BtnClientesClick(Sender: TObject);
begin
  vGblModulo := 'CLIENTES';

  FrmCentral := TFrmCentral.Create( Self );
  FrmCentral.Show;

end;

procedure TFrmPrincipal.BtnClientesMouseEnter(Sender: TObject);
begin
  //Mostra a barra abaixo do botão que o mouse estiver em cima.
  PrcFocaBotao( PnlDrawBotao, ( TComponent ( Sender ) as TSpeedButton ),
                True, 'MENU');

end;

procedure TFrmPrincipal.BtnClientesMouseLeave(Sender: TObject);
begin
  //Esconde a barra abaixo do botão que o mouse não estiver mais em cima.
  PrcFocaBotao( PnlDrawBotao, ( TComponent ( Sender ) as TSpeedButton ),
                False, 'MENU' );

end;

procedure TFrmPrincipal.BtnConfigClick(Sender: TObject);
begin
  ShowMessage('                ⢀⡔⠋⢉⠩⡉⠛⠛⠛⠉⣉⣉⠒⠒⡦⣄⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⢀⠎⠀⠀⠠⢃⣉⣀⡀⠂⠀⠀⠄⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⡰⠟⣀⢀⣒⠐⠛⡛⠳⢭⠆⠀⠤⡶⠿⠛⠂⠀⢈⠳⡀⠀⠀⠀⠀ ⠀⠀⠀⠀⢸⢈⢘⢠⡶⢬⣉⠉⠀⠀⡤⠄⠀⠀⠣⣄⠐⠚⣍⠁⢘⡇⠀⠀⠀⠀ ⠀⠀⠀⠀⠈⢫⡊⠀⠹⡦⢼⣍⠓⢲⠥⢍⣁⣒⣊⣀⡬⢴⢿⠈⡜⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠹⡄⠀⠘⢾⡉⠙⡿⠶⢤⣷⣤⣧⣤⣷⣾⣿⠀⡇⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠘⠦⡠⢀⠍⡒⠧⢄⣀⣁⣀⣏⣽⣹⠽⠊⠀⡇');
end;

procedure TFrmPrincipal.BtnFastVendasMouseEnter(Sender: TObject);
begin
  PrcFocaBotao( PnlDrawBotao, ( TComponent ( Sender ) as TSpeedButton ), True, 'RAPIDO' );
end;

procedure TFrmPrincipal.BtnFastVendasMouseLeave(Sender: TObject);
begin
  PrcFocaBotao( PnlDrawBotao, ( TComponent ( Sender ) as TSpeedButton ), False, 'RAPIDO' );
end;

procedure TFrmPrincipal.BtnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.BtnMinimizeClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  PnlCentral.Top  := Round ( FrmPrincipal.Height / 2 - PnlCentral.Height / 2 ) - 70;
  PnlCentral.Left := Round ( FrmPrincipal.Width / 2  - PnlCentral.Width / 2);
end;

end.
