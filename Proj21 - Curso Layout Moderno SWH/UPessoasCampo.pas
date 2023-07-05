unit UPessoasCampo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Ufuncoes;

type
  TFrmPessoasCampos = class(TForm)
    PnlFundo: TPanel;
    PgcPessoas: TPageControl;
    TBSDadosGerais: TTabSheet;
    TBSEndereco: TTabSheet;
    PnlTopo: TPanel;
    PnlBotoes: TPanel;
    PnlBtns: TPanel;
    PnlBotaoCancela: TPanel;
    LblCancela: TLabel;
    BtnCancela: TSpeedButton;
    PnlBotaoConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    LblConfirma: TLabel;
    BtnEndereco: TSpeedButton;
    BtnDadosGerais: TSpeedButton;
    PnlDrawBotao: TPanel;

    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnDadosGeraisMouseEnter(Sender: TObject);
    procedure BtnDadosGeraisMouseLeave(Sender: TObject);
    procedure BtnDadosGeraisClick(Sender: TObject);
    procedure BtnEnderecoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPessoasCampos: TFrmPessoasCampos;

implementation

{$R *.dfm}

procedure TFrmPessoasCampos.BtnConfirmaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPessoasCampos.BtnDadosGeraisClick(Sender: TObject);
begin
  PGCPessoas.ActivePage := TBSDadosGerais;
end;

procedure TFrmPessoasCampos.BtnDadosGeraisMouseEnter(Sender: TObject);
begin
  PrcFocaBotao( PnlDrawBotao, ( TComponent ( Sender ) as TSpeedButton ),
                True, 'PAGECONTROL');
end;

procedure TFrmPessoasCampos.BtnDadosGeraisMouseLeave(Sender: TObject);
begin
  PrcFocaBotao( PnlDrawBotao, ( TComponent ( Sender ) as TSpeedButton ),
                False, 'PAGECONTROL' );
end;

procedure TFrmPessoasCampos.BtnEnderecoClick(Sender: TObject);
begin
  PGCPessoas.ActivePage := TBSEndereco;
end;

procedure TFrmPessoasCampos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPessoasCampos.FormShow(Sender: TObject);
begin
  PrcOcultarTabs(PgcPessoas);
end;

procedure TFrmPessoasCampos.BtnCancelaClick(Sender: TObject);
begin
  Close;
end;

end.
