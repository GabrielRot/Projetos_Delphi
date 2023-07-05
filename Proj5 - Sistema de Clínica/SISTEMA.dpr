program SISTEMA;

uses
  Vcl.Forms,
  UmenuPrincipal in 'UmenuPrincipal.pas' {FmMenu},
  UcadPacientes in 'UcadPacientes.pas' {FCadPct},
  UcadAgendamentos in 'UcadAgendamentos.pas' {FCadAgnd},
  UDmSistema in 'UDmSistema.pas' {DMSistema: TDataModule},
  UpesqPacientes in 'UpesqPacientes.pas' {FrmPesqPacientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmMenu, FmMenu);
  Application.CreateForm(TDMSistema, DMSistema);
  Application.Run;
end.
