unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient;

type
  TFrmPrincipal = class(TForm)
    PnlFundo: TPanel;
    PnlMenuLateral: TPanel;
    BtnCaixa: TSpeedButton;
    BtnEmpresa: TSpeedButton;
    BtnFuncionarios: TSpeedButton;
    BtnFornecedores: TSpeedButton;
    BtnClientes: TSpeedButton;
    BtnSair: TSpeedButton;
    BtnEstoque: TSpeedButton;
    PnlTopo: TPanel;
    BtnMinimize: TSpeedButton;
    BtnRestore: TSpeedButton;
    BtnClose: TSpeedButton;
    PnlDrawTopo: TPanel;
    ImgLogo: TImage;
    LblTitulo: TLabel;
    PnlMenu: TPanel;
    BtnTopSuporte: TSpeedButton;
    BtnTopConfig: TSpeedButton;
    BtnTopUsers: TSpeedButton;
    BntMenu: TSpeedButton;
    BtnServico: TSpeedButton;
    BtnVendas: TSpeedButton;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel3: TPanel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel4: TPanel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Timer: TTimer;
    LblHora: TLabel;
    Panel5: TPanel;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    PnlForms: TPanel;
    PnlSubMenus: TPanel;
    LblTituloSubMenu: TLabel;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1COD_COLUNA: TIntegerField;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnRestoreClick(Sender: TObject);
    procedure BtnMinimizeClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PnlFundoMouseEnter(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure BntMenuMouseEnter(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure PnlFormsMouseEnter(Sender: TObject);
    procedure BtnClientesMouseEnter(Sender: TObject);
    procedure PnlMenuMouseEnter(Sender: TObject);
  private
    { Private declarations }
    procedure PrcControlarMenu ( Botao: TSpeedButton; Ativar : Boolean );
    procedure PrcControlarSubMenu ( Botao: TSpeedButton);
    procedure PrcCriaOpcao( Titulo : String; PosLeft, PosTop : Integer );
    procedure PrcDestroiOpcao;
  public
    { Public declarations }
  end;

var
  FrmPrincipal : TFrmPrincipal;
  bExpandido   : Boolean;

implementation

uses
  Ucadcli;

{$R *.dfm}

procedure TFrmPrincipal.PrcCriaOpcao(Titulo: string; PosLeft: Integer; PosTop: Integer);
Var
  ItemLabel : TLabel;
begin
  ItemLabel         := TLabel.Create( FrmPrincipal );
  ItemLabel.Parent  := PnlSubMenus;
  ItemLabel.Left    := PosLeft;
  ItemLabel.Top     := PosTop;
  ItemLabel.Caption := Titulo;
  ItemLabel.Tag     := 5;

end;

procedure TFrmPrincipal.PrcDestroiOpcao;
Var
  I : Integer;
  
begin

  for I := FrmPrincipal.ComponentCount -1 downto 0 do
  begin
    if ( FrmPrincipal.Components[i] is TLabel) and
       ( ( FrmPrincipal.Components[i] as TLabel ).Tag = 5 ) then
       ( FrmPrincipal.Components[i] as TLabel ).Free;
  
  end;

end;

procedure TFrmPrincipal.PrcControlarSubMenu( Botao : TSpeedButton );
begin
  PnlSubMenus.Visible := True;
  LblTituloSubMenu.Caption := 'Opções Relacionadas: ' + Botao.Caption;


end;

procedure TFrmPrincipal.PrcControlarMenu( Botao: TSpeedButton; Ativar : Boolean);
Var
  I : Integer;

begin
  if Ativar then
  begin
    //Percorrer todos os componentes do form
    for I := 0 to FrmPrincipal.ComponentCount -1 do
    begin
      //Testa se o componente é painel e se for tag <> 0 então é um painel de menu
      if ( FrmPrincipal.Components[i] is TPanel ) and
         ( ( FrmPrincipal.Components[i] as TPanel ).Tag <> 0 ) then
         begin
          //Testa se o painel é o associado ao botão que foi passado por parâmetro
          if ( FrmPrincipal.Components[i] as TPanel ).Tag = Botao.Tag then
            begin
              //Mostra o painel associado ao botao
              ( FrmPrincipal.Components[i] as TPanel ).Visible := True;
              ( FrmPrincipal.Components[i] as TPanel ).Left    := Botao.Left;

            end else
            //Se não for o painel associado ao botao que o mouse esta, entao eu escondo
              ( FrmPrincipal.Components[i] as TPanel ).Visible := False;


         end;

    end; //Fim do For


  end else //Fim do Ativar = true
    begin
      //Percorrer todos os components do form
      for I := 0 to FrmPrincipal.ComponentCount -1 do
      begin
        //Testa se o Componente é painel e se for tag <>  então é um painel de menu
        if ( FrmPrincipal.Components[i] is Tpanel ) and
           ( ( FrmPrincipal.Components[i] as TPanel ).Tag <> 0 ) then
           ( FrmPrincipal.Components[i] as TPanel ).Visible := False;

      end; //Fim do For

    end;

end;

procedure TFrmPrincipal.SpeedButton17Click(Sender: TObject);
begin
  FrmCadCli        := TFrmCadCli.Create( Self );
  FrmCadCli.Parent := FrmPrincipal.PnlForms;

  PrcControlarMenu ( nil, false );
  PnlMenu.Enabled := False;
  FrmCadCli.Show;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PnlMenuLateral.Width := 169;
end;

procedure TFrmPrincipal.PnlFormsMouseEnter(Sender: TObject);
begin
  PnlSubMenus.Visible := False;
end;

procedure TFrmPrincipal.PnlFundoMouseEnter(Sender: TObject);
begin
  PrcControlarMenu ( nil, False );
end;

procedure TFrmPrincipal.PnlMenuMouseEnter(Sender: TObject);
begin
  PrcControlarMenu( nil, false );
  PnlSubMenus.Visible := False;
end;

procedure TFrmPrincipal.TimerTimer(Sender: TObject);
begin
  LblHora.Caption := DateTimeToStr( Now );
end;

procedure TFrmPrincipal.BtnRestoreClick(Sender: TObject);
begin
  Application.Restore;
end;

procedure TFrmPrincipal.BntMenuMouseEnter(Sender: TObject);
begin
  PrcControlarMenu ( TComponent ( Sender ) as TSpeedButton , true );
  PrcControlarSubMenu( TComponent ( Sender ) as TSpeedButton );
  PnlSubMenus.Visible := False;

end;

procedure TFrmPrincipal.BtnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.BtnSairClick(Sender: TObject);
begin
  Application.Terminate
end;

procedure TFrmPrincipal.BtnClientesMouseEnter(Sender: TObject);
begin
  PrcControlarSubMenu( TComponent( Sender ) as TSpeedButton );

  PrcDestroiOpcao;

  if ( TComponent( Sender ) as TSpeedButton ).Caption = 'Clientes' then
  begin

    PrcCriaOpcao('Opcao de Clientes N° 1', 4, 36);
    PrcCriaOpcao('Opcao de Clientes N° 2', 4, 56);
    PrcCriaOpcao('Opcao de Clientes N° 3', 4, 76);

    PrcCriaOpcao('Relatorio de Clientes N° 1', 180, 36);
    PrcCriaOpcao('Relatorio de Clientes N° 2', 180, 56);
    PrcCriaOpcao('Relatorio de Clientes N° 3', 180, 76);
    PrcCriaOpcao('Relatorio de Clientes N° 4', 180, 96);
    PrcCriaOpcao('Relatorio de Clientes N° 5', 180, 116);

  end;
  
end;

procedure TFrmPrincipal.BtnMinimizeClick(Sender: TObject);
begin
  Application.Minimize;
end;

end.
