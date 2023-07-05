program Calculadora;

uses
  Vcl.Forms,
  Uprincipa in 'Uprincipa.pas' {FrmCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.Run;
end.
