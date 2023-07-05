program SISTEMA;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  UdmSistema in 'UdmSistema.pas' {DMSistema: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDMSistema, DMSistema);
  Application.Run;
end.
