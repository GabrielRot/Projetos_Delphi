unit UProcs;

interface

uses
  Data.SqlExpr,
  UDMConnxPai,
  System.SysUtils,
  UCriaMensagem,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.StdCtrls;

procedure RecriaSQLQry(var Qry: TSQLQuery); overload;
procedure LimpaSQLQry(var Qry: TSQLQuery); overload;
procedure CriaSQLQry(var Qry: TSQLQuery; AConexao: TSQLConnection = nil); overload;
procedure PrcFocaBotao( PnlDrawBotao : TPanel; Botao : TSpeedButton; Legenda : TLabel;
                            Focar : Boolean; Local : String; LegendaTxt : String );
//procedure CriaSQLQry(var Qry: TFDQuery; AConexao: TFDConnection = nil); overload;
function SimNao(Verdadeiro: Boolean): Char;
function SimNaoBoo(Verdadeiro: Char): Boolean;
function SimNaoBooStr(Verdadeiro: String): Boolean;
function CriaMsg(TituloTop, Titulo, Msg, Icone, Tipo : String): Boolean;

implementation

uses
  Vcl.Graphics;

procedure PrcFocaBotao( PnlDrawBotao : TPanel; Botao : TSpeedButton;
                          Legenda : TLabel; Focar : Boolean; Local : String; LegendaTxt : String);
begin
  if Focar then //Se Focar = True Então a Barra Aparece
  begin
    if Local = 'MENU' then
      begin
        Botao.Font.Color := clNavy;
        Botao.Font.Style := [FsBold];

        Legenda.Font.Color := clNavy;
        Legenda.Font.Style := [FsBold];
      end
    else if Local = 'RAPIDO' then
      Botao.Font.Color := $000080FF;
      Legenda.Font.Color := clNavy;
       Legenda.Font.Style := [FsBold];

    PnlDrawBotao.Parent := Botao.Parent;
    PnlDrawBotao.BringToFront;

    PnlDrawBotao.Left    := Botao.Left;
    PnlDrawBotao.Top     := Botao.Top + (Botao.Height - 1);
    PnlDrawBotao.Width   := Botao.Width;
    PnlDrawBotao.Visible := True;

    Legenda.Parent := Botao.Parent;
    Legenda.SendToBack;

    Legenda.Left    := Botao.Left;
    Legenda.Top     := Botao.Top;
    Legenda.Width   := Botao.Width;
    Legenda.Visible := True;
    Botao.Caption   := '';
    Legenda.Caption := LegendaTxt;

  end else // Se Focar = False Então a Barra Desaparece
    begin
      if local = 'MENU' then
        begin
          Botao.Font.Color := clGray;
          Botao.Font.Style := [];

          Legenda.Font.Color := clGray;
          Legenda.Font.Style := [];
        end
      else if Local = 'RAPIDO' then
        Botao.Font.Color := clGray;

        Legenda.Font.Color := clGray;
        Legenda.Caption    := LegendaTxt;

    PnlDrawBotao.Visible := False;
    Legenda.Visible := False;
    Botao.Caption   := LegendaTxt;

  end;
end;

function CriaMsg(TituloTop, Titulo, Msg, Icone, Tipo : String): Boolean;
begin
  Result := False;

  FrmCriaMSG := TFrmCriaMSG.Create(Nil);

  FrmCriaMSG.sTituloTop := TituloTop;
  FrmCriaMSG.sTitulo    := Titulo;
  FrmCriaMSG.sMSG       := MSG;
  FrmCriaMSG.sIcone     := Icone;
  FrmCriaMSG.sTipo      := Tipo;

  FrmCriaMSG.ShowModal;
  Result := FrmCriaMSG.bRespostaMSG;

end;

function SimNaoBooStr(Verdadeiro: String): Boolean;
begin
  if (Verdadeiro = 'T') or (Verdadeiro = 'S') then
    Result := True
  else
    Result := False;
end;

function SimNaoBoo(Verdadeiro: Char): Boolean;
begin
  if (Verdadeiro = 'T') or (Verdadeiro = 'S') then
    Result := True
  else
    Result := False;
end;

function SimNao(Verdadeiro: Boolean): Char;
begin
  if Verdadeiro then
    Result := 'S'
  else
    Result := 'N'
end;

procedure LimpaSQLQry(Var Qry: TSQLQuery);
begin
  FreeAndNil(Qry);
end;

procedure CriaSQLQry(var Qry: TSQLQuery; AConexao: TSQLConnection = nil);
begin
  LimpaSQLQry(Qry);
  Qry := TSQLQuery.Create(nil);

  if AConexao = nil then
    Qry.SQLConnection := DMConnxPai.ConexaoPai
  else
    Qry.SQLConnection := AConexao;
end;

procedure RecriaSQLQry(var Qry: TSQLQuery);
begin
  CriaSQLQry(Qry);
end;

end.
