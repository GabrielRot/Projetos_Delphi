program SWHEscola;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  Ucadcli in 'Ucadcli.pas' {FrmCadCli};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadCli, FrmCadCli);
  Application.Run;
end.
