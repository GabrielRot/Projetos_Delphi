unit UMain;

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
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  UProcs,
  Vcl.Imaging.pngimage;

type
  TFrmPrincipal = class(TForm)
    PnlTopo: TPanel;
    BtnFechaApp: TSpeedButton;
    BtnConfigApp: TSpeedButton;
    BtnMinApp: TSpeedButton;
    PnlMenu: TPanel;
    BtnDrawer: TSpeedButton;
    PnlDrawer: TPanel;
    PnlDrawMenu: TPanel;
    PnlDrawDrawer: TPanel;
    PnlPrincipal: TPanel;
    PnlPositDrawer: TPanel;
    BtnFinanceiro: TSpeedButton;
    PnlMenuFin: TPanel;
    BtnCadPagamento: TSpeedButton;
    PnlCadPagemento: TPanel;
    PnlBotCadPag: TPanel;
    PnlFundo: TPanel;
    PnlDrawBotao: TPanel;
    Legenda: TLabel;
    PnlFinanceiro: TPanel;
    procedure BtnFechaAppClick(Sender: TObject);
    procedure BtnMinAppClick(Sender: TObject);
    procedure FormMouseEnter(Sender: TObject);
    procedure BtnFinanceiroClick(Sender: TObject);
    procedure BtnCadPagamentoClick(Sender: TObject);
    procedure PnlMenuFinMouseLeave(Sender: TObject);
    procedure PnlDrawerMouseLeave(Sender: TObject);
    procedure BtnConfigAppClick(Sender: TObject);
    procedure BtnDrawerClick(Sender: TObject);
    procedure BtnFinanceiroMouseEnter(Sender: TObject);
    procedure BtnFinanceiroMouseLeave(Sender: TObject);
    procedure BtnCadPagamentoMouseEnter(Sender: TObject);
    procedure BtnCadPagamentoMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  UCadPag;

{$R *.dfm}


procedure TFrmPrincipal.BtnCadPagamentoClick(Sender: TObject);
begin
  if Assigned (FrmCadPag) then
    begin
      FrmCadPag.Parent := PnlPrincipal;
      FrmCadPag.Show;
    end
  Else
    begin
      FrmCadPag := TFrmCadPag.Create(FrmPrincipal);
      FrmCadPag.Parent := PnlPrincipal;
      FrmCadPag.Show;
    end;
  PnlMenuFin.Visible := False
end;

procedure TFrmPrincipal.BtnCadPagamentoMouseEnter(Sender: TObject);
begin
  PrcFocaBotao( PnlDrawBotao, ( TComponent(Sender) as  TSpeedButton), Legenda,
                  True, 'MENU', 'Cadastro de Pagamentos');
end;

procedure TFrmPrincipal.BtnCadPagamentoMouseLeave(Sender: TObject);
begin
  PrcFocaBotao( PnlDrawBotao, ( TComponent(Sender) as  TSpeedButton), Legenda,
                  False, 'RAPIDO', 'Cadastro de Pagamentos');

  PnlDrawMenu.Visible := False;
end;

procedure TFrmPrincipal.BtnConfigAppClick(Sender: TObject);
begin
  CriaMSG(
            'CONFIG MESSAGE',
            'CONFIG UwU',
            'E-está configurado One-Chan',
            ExtractFilePath(Application.ExeName) + 'Assets\Images\PNG\loli96x96.png',
            'OK'
         );
  Application.Terminate;
end;

procedure TFrmPrincipal.BtnDrawerClick(Sender: TObject);
begin
  PnlDrawer.Visible := True;
end;

procedure TFrmPrincipal.BtnFechaAppClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.BtnMinAppClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFrmPrincipal.FormMouseEnter(Sender: TObject);
begin
  PnlDrawer.Visible := False;
end;

procedure TFrmPrincipal.PnlDrawerMouseLeave(Sender: TObject);
begin
  PnlDrawer.Visible := False;
end;

procedure TFrmPrincipal.PnlMenuFinMouseLeave(Sender: TObject);
begin
  PnlMenuFin.Visible := False;
end;

procedure TFrmPrincipal.BtnFinanceiroClick(Sender: TObject);
begin
  PnlMenuFin.Visible := True;
end;

procedure TFrmPrincipal.BtnFinanceiroMouseEnter(Sender: TObject);
begin
  //Mostra a Barra Abaixo Que o Mouse Estiver em Cima.
    PrcFocaBotao( PnlDrawBotao, ( TComponent(Sender) as  TSpeedButton), Legenda,
                  True, 'MENU', 'teste');
end;

procedure TFrmPrincipal.BtnFinanceiroMouseLeave(Sender: TObject);
begin
  //Some Com a Barra Abaixo Que o Mouse Esteve em Cima
  PrcFocaBotao( PnlDrawBotao, (TComponent(Sender) as TSpeedButton), Legenda,
                False, 'MENU', 'teste');
end;

end.
