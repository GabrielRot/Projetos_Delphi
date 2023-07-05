program SISTEMA;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  Ulogin in 'Ulogin.pas' {FrmLogin},
  UdmSistema in 'UdmSistema.pas' {DMSistema: TDataModule},
  UconfigServ in 'Fontes\UconfigServ.pas' {FrmConfigServ},
  Umensagens in 'Umensagens.pas' {FrmMensagens},
  Ufuncoes in 'Ufuncoes.pas',
  UclasseConexao in 'UclasseConexao.pas',
  System.SysUtils,
  Uagendamento in 'Uagendamento.pas' {FrmAgendamento},
  Uprofissionais in 'Uprofissionais.pas' {FrmProfissionais},
  UclasseProfissionais in 'UclasseProfissionais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(TDMSistema, DMSistema);
  //Application.CreateForm(TFrmProfissionais, FrmProfissionais);

  if DMSistema.Conexao.FncConectaBanco then
  begin
  FrmLogin := TFrmLogin.Create(nil);
  FrmLogin.ShowModal;

  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  //Application.CreateForm(TFrmConfigServ, FrmConfigServ);

   FrmLogin.Hide;
   FrmLogin.Free;

  Application.Run;
  end else
  begin
    FncCriaMSG('CONEXÃO AO BANCO DE DADOS',
               'FALHA NA CONEXÃO COM O BANCO DE DADOS',
               'Não foi Possível conectar ao Banco de Dados, possível causa: ' +
               DMSistema.Conexao.MsgErro,
               ExtractFilePath(Application.ExeName) + '..\Images\Png\Error96x96.png',
               'OK');

    Application.CreateForm(TFrmConfigServ, FrmConfigServ);
    FrmConfigServ.ShowModal;
  end;

end.
