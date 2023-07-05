program SISTEMA;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  Ufuncoes in 'Ufuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
