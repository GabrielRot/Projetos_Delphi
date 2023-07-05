unit UclasseConexao;

interface

uses
 Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Intf, System.SysUtils, System.IniFiles,
  Vcl.Forms, Ufuncoes;

type
  TConexao = class
    private

    FServidor : String;
    FMsgErro  : String;
    FSenha    : String;
    FBase     : String;
    FLogin    : String;
    FPorta    : String;
    FConexao  : TFDConnection;

    public
      function FncLerArquivoINI : Boolean;
      constructor Create ( NomeConexao : TFDConnection);
      destructor Destroy; override;

      function FncConectaBanco: boolean;
      procedure PrcGravarArquivoINI;

      property Conexao : TFDConnection Read FConexao Write FConexao;
      property Servidor: String Read FServidor Write FServidor;
      property Base    : String Read FBase Write FBase;
      property Login   : String Read FLogin Write FLogin;
      property Senha   : String Read FSenha Write FSenha;
      property Porta   : String Read FPorta Write FPorta;
      property MsgErro : String Read FMsgErro Write FMsgErro;
  end;

implementation


constructor Tconexao.Create(NomeConexao: TFDConnection);
begin
  FConexao := NomeConexao;
end;

destructor Tconexao.Destroy;
begin
  FConexao.Connected := false;

  inherited;
end;

function Tconexao.FncConectaBanco : boolean;
begin
  Result := True;

  FConexao.Params.Clear;

  if not FncLerArquivoINI then
  begin
    Result   := False;
    FMSGErro := 'O Arquivo de Configuração não foi Encontrado!';
  
  end else
  begin

    FConexao.Params.Add('Server=' + FServidor);
    FConexao.Params.Add('User_Name=' + FLogin);
    FConexao.Params.Add('Password=' + FSenha);
    FConexao.Params.Add('port=' + FPorta);
    FConexao.Params.Add('Database=' + FBase);
    FConexao.Params.Add('DriverID=' + 'FB' );

    try
      FConexao.Connected := True;
    Except
      on e:Exception do
      begin
        FMsgErro := e.Message;
        Result   := false
      end;
      
    end;
    
  end;

end;

procedure TConexao.PrcGravarArquivoINI;
var
  IniFile : String;
  Ini     : TiniFile;

begin

  IniFile := ChangeFileExt( Application.ExeName, '.ini');
  Ini     := TIniFile.Create( IniFile );

  Try
   Ini.WriteString('Configuracao','Servidor',FServidor);
   Ini.WriteString('Configuracao','Base',FBase);
   Ini.WriteString('Configuracao','Porta',FPorta);
   Ini.WriteString('Acesso','Login', Criptografia (FLogin, '12LoremIpsumDolorSitAmet34'));
   Ini.WriteString('Acesso','Senha', Criptografia (FSenha, '12LoremIpsumDolorSitAmet34'));

  Finally
   Ini.Free;
  End;

end;

function TConexao.FncLerArquivoINI : Boolean;
var
  IniFile : String;
  Ini     : TiniFile;

begin

  IniFile := ChangeFileExt( Application.ExeName, '.ini');
  Ini     := TIniFile.Create( IniFile );


    if not fileexists (IniFile) then
    Result := False
  else
  begin

    Try
     FServidor := Ini.ReadString('Configuracao','Servidor', '' );
     FBase     := Ini.ReadString('Configuracao','Base', '' );
     FPorta    := Ini.ReadString('Configuracao','Porta','' );
     FLogin    := Ini.ReadString('Acesso','Login', ''  );
     FLogin    := Criptografia  (FLogin, '12LoremIpsumDolorSitAmet34');
     FSenha    := Ini.ReadString('Acesso','Senha', ''  );
     FSenha    := Criptografia  (FSenha, '12LoremIpsumDolorSitAmet34');

    Finally
     Result := True;
     Ini.Free;
    End;

  end;

end;


end.
