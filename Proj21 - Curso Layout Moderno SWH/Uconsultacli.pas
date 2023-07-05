unit Uconsultacli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, uFuncoes,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmConsultaCli = class(TForm)
    PnlFundo: TPanel;
    PnlTopo: TPanel;
    PnlGrid: TPanel;
    PnlPesquisa: TPanel;
    PnlPesquisar: TPanel;
    ShpPesquisa: TShape;
    BtnPesquisa: TSpeedButton;
    EdtPesquisa: TEdit;
    LblPesquisar: TLabel;
    DBGClientes: TDBGrid;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaCli: TFrmConsultaCli;

implementation

{$R *.dfm}

procedure TFrmConsultaCli.FormResize(Sender: TObject);
begin
  //Posiciona o painel de pesquisa no centro
  PnlPesquisa.Left := Round ( FrmConsultaCli.Width/2 - PnlPesquisa.Width/2 );

  PrcArredondaPainel( PnlTopo, 12 );
  PrcArredondaPainel( PnlGrid, 12 );

end;

end.
