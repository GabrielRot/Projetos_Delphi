program ProjetoConversor;

uses
  Vcl.Forms,
  Uconversor in 'Uconversor.pas' {FrmConversor},
  Usobre in 'Usobre.pas' {FrmSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmConversor, FrmConversor);
  Application.CreateForm(TFrmSobre, FrmSobre);
  Application.Run;
end.
