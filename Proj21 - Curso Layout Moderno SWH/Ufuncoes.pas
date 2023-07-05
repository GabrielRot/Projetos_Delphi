unit Ufuncoes;

interface

uses
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls;

  procedure PrcArredondaPainel( Painel : TPanel; Tamanho : Integer );
  procedure PrcFocaBotao( PnlDrawBotao : TPanel; Botao : TSpeedButton;
                            Focar : Boolean; Local : String );
  procedure PrcOcultarTabs( PageControl : TPageControl);

var
  vGblModulo : String;


implementation

uses
  Winapi.Windows, Vcl.Graphics;

procedure PrcOcultarTabs( PageControl : TPageControl);
var
  page : integer;

begin
   {função que percorre o PageControl passado por parametro e escondendo todas 
      as abas}
  for page := 0 to PageControl.PageCount -1 do
  begin
    PageControl.Pages[page].TabVisible := False;
  end;

end;

procedure PrcFocaBotao( PnlDrawBotao : TPanel; Botao : TSpeedButton;
                                      Focar : Boolean; Local : String );
begin
  if Focar then // se focar = True então a barra aparece.
  begin
    if local = 'MENU' then
      Botao.Font.Color    := $000080FF
    //Botao.Font.Style    := [fsBold];
    else
    if local = 'RAPIDO' then
      Botao.Font.Color    := $000080FF
    else
    if local = 'PAGECONTROL' then
      begin
        Botao.Font.Color    := $000080FF;
        Botao.Font.Style    := [fsBold];
      end;


    PnlDrawBotao.Parent := Botao.Parent;
    PnlDrawBotao.BringToFront;

    PnlDrawBotao.Left    := Botao.Left;
    PnlDrawBotao.Top     := Botao.Top + ( Botao.Height - 1 );
    PnlDrawBotao.Width   := Botao.Width;
    PnlDrawBotao.Visible := True;


  end else // se focar = false então a barra desaparece.
  begin
    if local = 'MENU' then
        Botao.Font.Color := clGray
      //Botao.Font.Style := [];
    else
    if local = 'RAPIDO' then
        Botao.Font.Color := clGray
    else
    if local = 'PAGECONTROL' then
      begin
        Botao.Font.Color := clGray;
        Botao.Font.Style := [];
      end;

    PnlDrawBotao.Visible := False;

  end;

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

end.
