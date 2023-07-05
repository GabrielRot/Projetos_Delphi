unit Ucentral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Upessoas;

type
  TFrmCentral = class(TForm)
    PnlTopo: TPanel;
    PnlPrincipal: TPanel;
    PnlBottom: TPanel;
    ImgLogo: TImage;
    BtnFechar: TSpeedButton;
    LblCentral: TLabel;
    LblTextoCentral: TLabel;
    LblNomeCentral: TLabel;
    LblCentralAjuda: TLabel;
    LblTextoAjuda: TLabel;
    ImgAjuda: TImage;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LblTextoAjudaMouseEnter(Sender: TObject);
    procedure LblTextoAjudaMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCentral: TFrmCentral;

implementation

uses
  Ufuncoes;

{$R *.dfm}

procedure TFrmCentral.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCentral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCentral.FormResize(Sender: TObject);
begin
  PrcArredondaPainel( PnlTopo, 12 );
  PrcArredondaPainel( PnlPrincipal, 12 );
  PrcArredondaPainel( PnlBottom, 12 );
end;

procedure TFrmCentral.FormShow(Sender: TObject);
begin
 if vGblModulo = 'CLIENTES' then
 begin
 //Abre o Módulo de Pessoas
  FrmClientes := TFrmClientes.Create( FrmCentral );
  FrmClientes.Parent := PnlPrincipal;

  FrmClientes.Show;

  LblNomeCentral.Caption := 'Clientes'

 end;
end;

procedure TFrmCentral.LblTextoAjudaMouseEnter(Sender: TObject);
begin
  LblTextoAjuda.Font.Color := $00FDFD00;
end;

procedure TFrmCentral.LblTextoAjudaMouseLeave(Sender: TObject);
begin
  LblTextOAjuda.Font.Color := clWindowText;
end;

end.
