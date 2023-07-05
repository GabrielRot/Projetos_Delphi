program BatePapo;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  Uprofile in 'Uprofile.pas' {FrmProfile},
  Uconexão in 'Uconexão.pas' {FrmConexao},
  Uclasses in 'Uclasses.pas',
  Umensagens in 'Umensagens.pas' {FrmMensagens},
  Uprocurachat in 'Uprocurachat.pas' {FrmProcuraChat},
  UentrarChat in 'UentrarChat.pas' {FrmEntraChat},
  Uajuda in 'Uajuda.pas' {FrmAjuda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmProfile, FrmProfile);
  Application.CreateForm(TFrmConexao, FrmConexao);
  Application.CreateForm(TFrmMensagens, FrmMensagens);
  Application.CreateForm(TFrmProcuraChat, FrmProcuraChat);
  Application.CreateForm(TFrmEntraChat, FrmEntraChat);
  Application.CreateForm(TFrmAjuda, FrmAjuda);
  Application.Run;
end.
