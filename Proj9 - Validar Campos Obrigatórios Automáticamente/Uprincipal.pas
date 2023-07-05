unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Ufuncoes;

type
  TFrmPrincipal = class(TForm)
    BtnConfirma: TButton;
    BtnCancela: TButton;
    EdtCódigo: TEdit;
    CmbCategoria: TComboBox;
    EdtNome: TEdit;
    EdtDescricao: TEdit;
    LblCódigo: TLabel;
    LblCategoria: TLabel;
    LblData: TLabel;
    LblNome: TLabel;
    LblDescricao: TLabel;
    MEdtData: TMaskEdit;
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.BtnConfirmaClick(Sender: TObject);
begin
  PrcValidaCampo(FrmPrincipal);

  ShowMessage ('Campos Validados com Sucesso!');
end;

end.
