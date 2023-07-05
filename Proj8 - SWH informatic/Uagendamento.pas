unit Uagendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SWHEdit, Vcl.Mask,
  SWHMaskEdit, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls, Uprincipal, Ufuncoes;

type
  TFrmAgendamento = class(TForm)
    PnlFundo: TPanel;
    LblProfissionais: TLabel;
    DBLCmBProfissionais: TDBLookupComboBox;
    BtnProfissional: TSpeedButton;
    BtnDataHora: TSpeedButton;
    LblDiaHorario: TLabel;
    DBMEdtData: TSWHMaskEdit;
    DBMEdtHora: TSWHMaskEdit;
    BtnBuscaCliente: TSpeedButton;
    LblCliente: TLabel;
    EdtCliente: TSWHEdit;
    LblTelefone: TLabel;
    LblCelular: TLabel;
    DBMEdtTelefone: TSWHMaskEdit;
    DBMEdtCelular: TSWHMaskEdit;
    LblObs: TLabel;
    DBEdtObs: TSWHEdit;
    PnlBtns: TPanel;
    PnlBotaoConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    PnlBotaoCancela: TPanel;
    BtnCancela: TSpeedButton;
    procedure BtnCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnProfissionalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgendamento: TFrmAgendamento;

implementation

uses
  Uprofissionais;

{$R *.dfm}

procedure TFrmAgendamento.BtnCancelaClick(Sender: TObject);
begin
  FrmPrincipal.PnlBotoes.Enabled := True;
  Close;
end;

procedure TFrmAgendamento.BtnProfissionalClick(Sender: TObject);
begin
  try
    FrmProfissionais := TFrmProfissionais.Create( Self );
    fRmProfissionais.ShowModal;
  finally
    FrmProfissionais.Free;
  end;
end;

procedure TFrmAgendamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
