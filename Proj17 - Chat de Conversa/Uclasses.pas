unit Uclasses;

interface
uses
  Vcl.Forms,
  Winapi.Windows,
  System.SysUtils,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Graphics,
  Vcl.ComCtrls,
  FireDac.Stan.Param,
  System.Classes,
  SWHEdit,
  System.IniFiles;

function FncCriaMSG( TituloAtencao, TituloMSG, MSG, Icone, Tipo : String ): Boolean;

procedure PrcValidaCampo ( Form : TForm );

procedure PrcArredondaPainel( Painel : TPanel; Tamanho : Integer );

function FncRemoveChar( AsString : String ): String;

procedure PrcGravaInfo;

procedure PrcLerInfo;

const
  ARQ_INI = 'Config.ini';

implementation

uses
  Umensagens, Vcl.Dialogs, Uconexão, Uprofile, Uprincipal;

function FncRemoveChar( AsString : String ): String;
Var
  I      : Integer;
  Limpos : String;
begin

  Limpos := ''; 

  for I := 1 to Length( AsString ) do
  begin
    if Pos ( Copy ( AsString, I, 1 ), '"!%$#@&¨*().,;:/<>[]{}=+-_\|' ) = 0 then
      Limpos := Limpos + Copy( AsString, I, 1 );
  end;

end;
  

procedure PrcValidaCampo( Form : TForm);
Var
  I : Integer;
Begin
  for I := 0 to Form.ComponentCount -1 do
  
  begin
    if Form.Components[I].Tag = 5 then
    
    begin
      //verifica se é TEdit
      if Form.Components[i] is TSWHEdit then
        if ( ( Form.Components[i] as TSWHEdit).Hint <> '') and
           ( ( Form.Components[i] as TSWHEdit ).Visible ) and
           ( Trim ( FncRemoveChar ( ( Form.Components[i] as TSWHEdit ).Text ) ) = '') then
             begin  
                FncCriaMSG ( ' CONNECTION ERROR', 'Aviso de DADOS OBRIGATÓRIOS',
                           'Não foi feito o Preenchimento do Campo: ' + ( Form.Components[i] as TSWHEdit ).Hint,
                            ExtractFilePath(Application.ExeName) + '\Imagens\PNG\warning92x92.png',
                           'OK' );
                  if (Form.Components[i] as TSWHEdit).Enabled then
                     (Form.Components[i] as TSWHEdit).SetFocus;
                     Abort;
              end;
       
      
    end;

  end;

End;

Function FncCriaMSG( TituloAtencao, TituloMSG, MSG, Icone, Tipo : String ): Boolean;
begin 

  Result := False;

  FrmMensagens  := TFrmMensagens.Create( nil ); 

  FrmMensagens.sTituloAtencao := TituloAtencao;
  FrmMensagens.sTituloMSG     := TituloMSG;
  FrmMensagens.sMSG           := MSG;
  FrmMensagens.sCaminhoIcone  := Icone;
  FrmMensagens.sTipo          := Tipo;

  FrmMensagens.ShowModal;
  Result := FrmMensagens.bRespostaMSG;

end;

procedure PrcArredondaPainel( Painel : TPanel; Tamanho : Integer );
Var
  rgn : HRGN;
  dc  : HDC;

begin
  rgn := createRoundRectRgn( 0, 0, Painel.Width, Painel.Height, Tamanho, Tamanho );
  dc  := GetDc( Painel.Handle );
  SetWindowRgn( Painel.Handle, rgn, True );
  ReleaseDC   ( Painel.Handle, DC );
  DeleteObject( rgn )

end;

procedure PrcGravaInfo;
Var
  ArquINI : TIniFile;
begin
  ArquIni := TIniFile.Create( ExtractFilePath( ParamStr ( 0 ) ) + ARQ_INI );

  ArquINI.WriteString('Conexão', 'SocketServer Porta ', FrmConexao.EdtSSNewPort.Text);
  ArquINI.WriteString('Conexão', 'SocketClient Porta ', FrmConexao.EdtSCNewPort.Text);
  ArquINI.WriteString('Conexão', 'SocketCliet Host ',   FrmConexao.EdtNewIP.Text);
  ArquINI.WriteString('Nickname', 'Nome de Usuário', FrmPrincipal.Nick );
end;

procedure PrcLerInfo;
Var
 ArquINI : TIniFile;
begin
 ArquINI := TIniFile.Create( ExtractFilePath( ParamStr ( 0 ) ) + ARQ_INI );
 try
 FrmPrincipal.SSPort := ArquINI.ReadString('Conexão', 'SocketServer Porta ', '' );
 FrmPrincipal.SCPort := ArquINI.ReadString('Conexão', 'SocketClient Porta ', '' );
 FrmPrincipal.IP     := ArquINI.ReadString('Conexão', 'SocketCliet Host ', '' );
 FrmPrincipal.Nick   := ArquINI.ReadString('Nickname', 'Nome de Usuário', '' );
 finally
  FreeAndNil (ArquINI );
 end;

end;

end.
