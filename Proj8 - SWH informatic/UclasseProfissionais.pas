unit UclasseProfissionais;

interface

uses
  FireDAC.Comp.Client, Ufuncoes, Vcl.Forms, UdmSistema;

Type
  TProfissionais = Class
    private
      FConexao           : TFDConnection;
      FCOD_PROFISSIONAL  : Integer;
      FDES_PROFISSIONAL  : String;
      FDES_ESPECIALIDADE : String;
      FNMR_CONTATO       : String;
    public
      property Conexao           : TFDConnection read FConexao write FConexao;
      property COD_PROFISSIONAL  : Integer read FCOD_PROFISSIONAL write FCOD_PROFISSIONAL;
      property DES_PROFISSIONAL  : String read FDES_PROFISSIONAL write FDES_PROFISSIONAL;
      property DES_ESPECIALIDADE : String read FDES_ESPECIALIDADE write FDES_ESPECIALIDADE;
      property NMR_CONTATO       : String read FNMR_CONTATO write FNMR_CONTATO;
      constructor Create( Conexao : TFDConnection);
      destructor  Destroy; Override;

      function FncInserirAlterar ( TipoOperacao : String; out Erro : String ) : boolean;
//      procedure PrcDeleta ( COD_PROFISSIONAL    : Integer );
      function FncConsulta ( Texto : String )   : TFDQuery;

  End;

  var
  QryConsulta : TFDQuery;

implementation

uses
  System.SysUtils;

constructor TProfissionais.Create(Conexao: TFDConnection);
begin
  FConexao := Conexao;

  QryConsulta := TFDQuery.Create( nil );
    QryConsulta.Connection := FConexao;
end;

destructor TProfissionais.Destroy;
begin

end;

function TProfissionais.FncInserirAlterar ( TipoOperacao : String;
out Erro : String ) : boolean;
var QryInserir : TFDQuery;

begin
  try
    try
      FConexao.Connected := False;
      FConexao.Connected := True;

      QryInserir := TFDQuery.Create( nil );
      QryInserir.Connection := FConexao;

      QryInserir.Close;
      QryInserir.SQL.Clear;

      if TipoOperacao = 'INSERIR' then
      begin

        QryInserir.SQL.Add('INSERT INTO TAB_PROFISSIONAIS');
        QryInserir.SQL.Add('(COD_PROFISSIONAL,');
        QryInserir.SQL.Add('DES_PROFISSIONAL,');
        QryInserir.SQL.Add('DES_ESPECIALIDADE,');
        QryInserir.SQL.Add('NMR_CONTATO)');
        QryInserir.SQL.Add('VALUES');
        QryInserir.SQL.Add('(:CODIGO,');
        QryInserir.SQL.Add(':PDES_PROFISSIONAL,');
        QryInserir.SQL.Add(':PDES_ESPECIALIDADE,');
        QryInserir.SQL.Add(':PNMR_CONTATO)');

        QryInserir.ParamByName('CODIGO').AsInteger :=
        FncProximoCodigo ( 'TAB_PROFISSIONAIS', 'COD_PROFISSIONAIS' ) ;


      end else //UPDATE
      begin

        QryInserir.SQL.Add('UPDATE INTO TAB_PROFISSIONAIS SET');
        QryInserir.SQL.Add('DES_PROFISSIONAL  = :PDES_PROFISSIONAL,');
        QryInserir.SQL.Add('DES_ESPECIALIDADE = :PDES_ESPECIALIDADE,');
        QryInserir.SQL.Add('NMR_CONTATO       = :PNMR_CONTATO');
        QryInserir.SQL.Add('WHERE');
        QryInserir.SQL.Add('COD_PROFISSIONAL  = CODIGO');

      end;

      QryInserir.ParamByName('CODIGO').AsInteger := FCOD_PROFISSIONAL;
      QryInserir.ParamByName('PDES_PROFISSIONAL').AsString  := FDES_PROFISSIONAL;
      QryInserir.ParamByName('PDES_ESPECIALIDADE').AsString := FDES_ESPECIALIDADE;
      QryInserir.ParamByName('PNMR_CONTATO').AsString       := FNMR_CONTATO;
      QryInserir.ExecSQL;

      Result := True;
    except
      on E: Exception do
      begin
        Erro := E.Message;
        Result := False;
      end;

    end;
  finally
    QryInserir.Destroy;
  end;
end;

{procedure TProfissionais.PrcDeleta ( COD_PROFISSINAL : Integer);
begin
  if FncCriaMSG ( 'Confirmação', ' Excluir Dados',
  'Tem Certeza que deseja EXCLUIR esse PROFISSIONAL?',
  ExtractFilePath( Application.ExeName ) + '..\Images\Png\warning92x92.png',
  'CONFIRMA') then

  begin

    FConexao.Connected := False;
    FConexao.Connected := True;

    FConexao.ExecSQL('DELETE FROM TAB_PROFISSIONAIS WHERE COD_PROFISSIONAL =  :CODIGO',
    [COD_PROFISSIONAL])

  end;

end;  }

function TProfissionais.FncConsulta ( Texto : String ) : TFDQuery;
begin
  try
    FConexao.Connected := False;
    FConexao.Connected := True;

    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.Add('SELECT');
    QryConsulta.SQL.Add('COD_PROFISSIONAL,');
    QryConsulta.SQL.Add('DES_PROFISSIONAL,');
    QryConsulta.SQL.Add('DES_ESPECIALIDADE,');
    QryConsulta.SQL.Add('NMR_CONTATO');
    QryConsulta.SQL.Add('FROM');
    QryConsulta.SQL.Add('TAB_PROFISSIONAIS');
    QryConsulta.SQL.Add('WHERE');
    QryConsulta.SQL.Add('DES_PROFISSIONAL');
    QryConsulta.SQL.Add('LIKE :PROFISSIONAL');
    QryConsulta.ParamByName('PROFISSIONAL').AsString := '%'+texto+'%';
    QryConsulta.Open;
  finally
    Result := QryConsulta;
  end;
end;

end.
