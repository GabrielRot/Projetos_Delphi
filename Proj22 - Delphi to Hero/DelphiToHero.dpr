program DelphiToHero;

uses
  Vcl.Forms,
  Umain in 'View\Umain.pas' {FrmPrincipal},
  StylesColor in 'View\Styles\StylesColor.pas',
  DelphiToHero.View.Pages.Principal in 'View\Pages\DelphiToHero.View.Pages.Principal.pas' {FrmPagPrincipal},
  DelphiToHero.View.Routers in 'View\Routers\DelphiToHero.View.Routers.pas',
  DelphiToHero.View.Pages.Template in 'View\Pages\DelphiToHero.View.Pages.Template.pas' {FrmTemplate},
  DelphiToHero.View.Pages.Usuarios in 'View\Pages\DelphiToHero.View.Pages.Usuarios.pas' {FrmPagUsuarios};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown   := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
