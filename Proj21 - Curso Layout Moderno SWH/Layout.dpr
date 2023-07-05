program Layout;

uses
  Vcl.Forms,
  Uprincipal in 'Fontes\Uprincipal.pas' {FrmPrincipal},
  Ucentral in 'Fontes\Ucentral.pas' {FrmCentral},
  Ufuncoes in 'Fontes\Ufuncoes.pas',
  Upessoas in 'Fontes\Upessoas.pas' {FrmClientes},
  Uconsultacli in 'Fontes\Uconsultacli.pas' {FrmConsultaCli},
  UPessoasCampo in 'Fontes\UPessoasCampo.pas' {FrmPessoasCampos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmConsultaCli, FrmConsultaCli);
  Application.CreateForm(TFrmPessoasCampos, FrmPessoasCampos);
  Application.Run;
end.
