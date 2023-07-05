program Animacao;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {Form1},
  Usecundario in 'Usecundario.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
