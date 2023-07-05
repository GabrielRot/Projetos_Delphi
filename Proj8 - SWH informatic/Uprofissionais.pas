unit Uprofissionais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, SWHEdit,
  Vcl.Mask, SWHMaskEdit, Vcl.ExtCtrls;

type
  TFrmProfissionais = class(TForm)
    PnlFundo: TPanel;
    LblProfissional: TLabel;
    LblEspecialidade: TLabel;
    LblContato: TLabel;
    DBMEdtContato: TSWHMaskEdit;
    DBEdtEspecialidade: TSWHEdit;
    PnlBtns: TPanel;
    PnlBotaoConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    PnlBotaoCancela: TPanel;
    BtnCancela: TSpeedButton;
    DBEdtNome: TSWHEdit;
    PnlDraw: TPanel;
    LblTittle: TLabel;
    procedure BtnCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProfissionais: TFrmProfissionais;

implementation

{$R *.dfm}

procedure TFrmProfissionais.BtnCancelaClick(Sender: TObject);
begin
  Close;
end;

end.
