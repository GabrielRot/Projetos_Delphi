unit Ufuncoes;

interface

uses
  Vcl.Forms, Winapi.Windows, System.SysUtils, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Graphics, Vcl.ComCtrls, FireDac.Stan.Param, System.Classes, SWHDBEdit, Vcl.DBCtrls,
  FireDAC.Comp.Client;

function Criptografia( Senha, Chave : String ) : String;

function FncProximoCodigo( Tabela, Campo : String ) : Integer;

function FncCriaMSG (TituloAtencao, TituloMSG, MSG, Icone, Tipo : String) : Boolean;

procedure PrcValidaCampo( Form : TForm);

function FncRemoveChar(AString : String): String;

implementation

uses Umensagens, Vcl.Dialogs, SWHEdit, UdmSistema;

function FncProximoCodigo( Tabela, Campo : String ) : Integer;
var
  QryConsulta : TFDQuery;

begin
  Result := 1;

  try
    DMSistema.FBConexao.Connected := False;
    DMSistema.FBConexao.Connected := True;

    QryConsulta := TFDQuery.Create( nil );
    QryConsulta.Connection := DMSistema.FBConexao;

    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.Add( 'SELECT MAX ( '+Campo+' ) AS CODIGO FROM' + Tabela );
    QryConsulta.Open;

    //if QryConsulta.FieldByName('CODIGO').AsString <> '' then
      //Result := QryConsulta.FieldByName('CODIGO').AsString + 1;

  finally
    QryConsulta.Destroy;
  
  end;

end;

function Criptografia( Senha, Chave: String ): String;
var
  x, y      : Integer;
  NovaSenha : String;
begin
  for x := 1 to Length ( Chave ) do
  begin
    NovaSenha := '';

    for y := 1 to Length ( Senha ) do
    begin
      NovaSenha := NovaSenha + chr( ( Ord( Chave[x] ) xor Ord( Senha [y] ) ) );
    end;

    Senha := NovaSenha;
  end;

  result := Senha
end;

function FncRemoveChar(AString : String): String;
var
  I : integer;
  Limpos : String;
begin

  Limpos := '';

  for I := 1 to Length(AString) do
  begin
    if Pos ( Copy( AString, I, 1 ), '"!%$#@&¨*().,;:/<>[]{}=+-_\|') = 0 then
      Limpos := Limpos + Copy(AString, i, 1);
  end;

  Result := Limpos;
end;

procedure PrcValidaCampo( Form : TForm);
var
i : integer;


begin

  for i := 0 to Form.ComponentCount -1 do
  begin
    if Form.Components[i].Tag = 5 then
    begin
      //Verifica se é TEdit
      if Form.Components[i] is TSWHEdit then
       if  ( ( Form.Components[i] as TSWHEdit ).Hint <> '') and
           ( ( Form.Components[i] as TSWHEdit ).Visible   ) and
           (  Trim  ( FncRemoveChar ( ( Form.Components[i] as TSWHEdit ).text ) ) = '' ) then
           begin
            FncCriaMSG( 'ERROR DATABASE',
                        'Aviso de DADOS OBRIGATÓRIOS',
                        'Não foi feito o Preenchimento do Campo: ' + (Form.Components[i] as TSWHEdit).Hint,
                        ExtractFilePath(Application.ExeName) + '..\Images\Png\warning92x92.png',
                        'OK');
            if (Form.Components[i] As TSWHEdit).Enabled then
               (Form.Components[i] as TSWHEdit).SetFocus;
            Abort;
          end;
    end;
  end;
end;


function FncCriaMSG (TituloAtencao, TituloMSG, MSG, Icone, Tipo : String) : Boolean;
  begin

    Result := False;

    FrmMensagens                 := TFrmMensagens.Create(nil);

    FrmMensagens.sTituloAtencao  := TituloAtencao;
    FrmMensagens.sTituloMSG      := TituloMSG;
    FrmMensagens.sMSG            := MSG;
    FrmMensagens.sCaminhoIcone   := Icone;
    FrmMensagens.sTipo           := Tipo;

    FrmMensagens.ShowModal;
    Result := FrmMensagens.bRespostaMSG;

  end;

end.
