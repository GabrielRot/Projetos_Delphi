unit Uprincipa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, SWHEdit;

type
  TFrmCalculadora = class(TForm)
    PnlFundoBtns: TPanel;
    PnlPorcentagem: TPanel;
    BtnPorcentagem: TSpeedButton;
    PnlLimpa: TPanel;
    BtnLimpa: TSpeedButton;
    PnlLimpaTudo: TPanel;
    BtnLimpaTudo: TSpeedButton;
    PnlApagar: TPanel;
    BtnApagar: TSpeedButton;
    PnlDividir: TPanel;
    BtnDividir: TSpeedButton;
    PnlMultiplicar: TPanel;
    BtnMultiplicar: TSpeedButton;
    PnlSubtrair: TPanel;
    BtnSubtrair: TSpeedButton;
    PnlSomar: TPanel;
    BtnSomar: TSpeedButton;
    PnlTotal: TPanel;
    BtnTotal: TSpeedButton;
    PnlUm: TPanel;
    BtnUm: TSpeedButton;
    PnlDois: TPanel;
    SpeedButton10: TSpeedButton;
    PnlTres: TPanel;
    BtnTres: TSpeedButton;
    PnlQuatro: TPanel;
    BtnQuatro: TSpeedButton;
    PnlCinco: TPanel;
    BtnCinco: TSpeedButton;
    PnlSeis: TPanel;
    BtnSeis: TSpeedButton;
    PnlSete: TPanel;
    BtnSete: TSpeedButton;
    PnlOito: TPanel;
    BtnOito: TSpeedButton;
    PnlNove: TPanel;
    BtnNove: TSpeedButton;
    PnlZero: TPanel;
    BtnZero: TSpeedButton;
    PnlVirgula: TPanel;
    BtnVirgula: TSpeedButton;
    PnlLblText: TPanel;
    Edit1: TEdit;
    PnlResult: TPanel;
    LblText: TEdit;
    LblPrimeiroValor: TLabel;
    LblSegundoValor: TLabel;
    LblTipoCalc: TLabel;
    LblEqual: TLabel;
    procedure SpeedButton10Click(Sender: TObject);
    procedure BtnUmClick(Sender: TObject);
    procedure BtnTotalClick(Sender: TObject);
    procedure BtnTresClick(Sender: TObject);
    procedure BtnQuatroClick(Sender: TObject);
    procedure BtnCincoClick(Sender: TObject);
    procedure BtnSeisClick(Sender: TObject);
    procedure BtnSeteClick(Sender: TObject);
    procedure BtnOitoClick(Sender: TObject);
    procedure BtnNoveClick(Sender: TObject);
    procedure BtnVirgulaClick(Sender: TObject);
    procedure BtnLimpaClick(Sender: TObject);
    procedure BtnZeroClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnMultiplicarClick(Sender: TObject);
    procedure BtnSomarClick(Sender: TObject);
    procedure BtnLimpaTudoClick(Sender: TObject);
    procedure BtnSubtrairClick(Sender: TObject);
    procedure BtnDividirClick(Sender: TObject);
    procedure BtnPorcentagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  var
  Resultado, Valor1, Valor2 : Real;
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

{$R *.dfm}

procedure TFrmCalculadora.BtnApagarClick(Sender: TObject);
begin

  if LblText.SelStart = 0 then
    Exit;
  LblText.SelStart  := LblText.SelStart -1;
  LblText.SelLength := 1;
  LblText.SelText   := '';

end;

procedure TFrmCalculadora.BtnCincoClick(Sender: TObject);
var
  NumeroCinco : String;

begin
  NumeroCinco := '5';

  if LblText.Text = '0' then
  LblText.Text := '';
  LblText.Text:= LblText.Text + ( NumeroCinco );
end;

procedure TFrmCalculadora.BtnDividirClick(Sender: TObject);
begin
  LblPrimeiroValor.Caption := LblText.Text;
  LblText.Text := '';

  LblTipoCalc.Caption := '÷';
end;

procedure TFrmCalculadora.BtnLimpaClick(Sender: TObject);
begin
  LblText.Text := '0';

end;

procedure TFrmCalculadora.BtnLimpaTudoClick(Sender: TObject);
begin
  LblText.Text             := '0';
  LblPrimeiroValor.Caption := 'ㅤ';
  LblSegundoValor.Caption  := 'ㅤ';
  LblEqual.Caption         := 'ㅤ';
  LblTipoCalc.Caption      := 'ㅤ';
end;

procedure TFrmCalculadora.BtnMultiplicarClick(Sender: TObject);
begin
  LblPrimeiroValor.Caption := LblText.Text;
  LblText.Text := '';

  LblTipoCalc.Caption := 'x';
end;

procedure TFrmCalculadora.BtnNoveClick(Sender: TObject);
var
  NumeroNove : String;

begin
  NumeroNove := '9';

  if LblText.Text = '0' then
  LblText.Text := '';
  LblText.Text := LblText.Text + ( NumeroNove );
end;

procedure TFrmCalculadora.BtnOitoClick(Sender: TObject);
var
  NumeroOito : String;

begin
  NumeroOito := '8';

  if LblText.Text = '0' then
    LblText.Text := '';
    LblText.Text := LblText.Text + ( NumeroOito );
end;

procedure TFrmCalculadora.BtnPorcentagemClick(Sender: TObject);
begin


  if LblTipoCalc.Caption = 'ㅤ' then
    LblText.Text := '0'
  else if LblTipoCalc.Caption = '+' then
    begin
      LblEqual.Caption        := '=';
      LblSegundoValor.Caption := LblText.Text;
      Valor1                  := StrToFloat ( LblPrimeiroValor.Caption );
      Valor2                  := StrToFloat ( LblSegundoValor.Caption );
      Resultado               := Valor1 * Valor2;
      Resultado               := Resultado / 100;
      LblText.Text            := FloatToStr (Resultado)

    end
  else if LblTipoCalc.Caption = 'x' then
    begin
      LblEqual.Caption        := '=';
      LblSegundoValor.Caption := LblText.Text;
      Valor1                  := StrToFloat ( LblPrimeiroValor.Caption );
      Valor2                  := StrToFloat ( LblSegundoValor.Caption );
      Resultado               := Valor2 / 100;
      LblText.Text            := FloatToStr ( Resultado )

    end
  else if LblTipoCalc.Caption = '÷' then
     begin
      LblEqual.Caption        := '=';
      LblSegundoValor.Caption := LblText.Text;
      Valor1                  := StrToFloat ( LblPrimeiroValor.Caption );
      Valor2                  := StrToFloat ( LblSegundoValor.Caption );
      Resultado               := Valor2 / 100;
      LblText.Text            := FloatToStr ( Resultado )

    end;




end;

procedure TFrmCalculadora.BtnQuatroClick(Sender: TObject);
var
  NumeroQuatro : String;

begin
  NumeroQuatro := '4';

  if LblText.Text = '0' then
  LblText.Text := '';
  LblText.Text := LblText.Text + ( NumeroQuatro );
end;

procedure TFrmCalculadora.BtnSeisClick(Sender: TObject);
var
  NumeroSeis : String;

begin
  NumeroSeis := '6';

  if LblText.Text = '0' then
  LblText.Text := '';
  LblText.Text := LblText.Text + ( NumeroSeis );
end;

procedure TFrmCalculadora.BtnSeteClick(Sender: TObject);
var
  NumeroSete : String;

begin
  NumeroSete := '7';

  if LblText.Text = '0' then
  LblText.Text := '';
  LblText.Text := LblText.Text + ( NumeroSete );
end;

procedure TFrmCalculadora.BtnSomarClick(Sender: TObject);
begin
LblPrimeiroValor.Caption := LblText.Text;
  LblText.Text := '';

  LblTipoCalc.Caption := '+';
end;

procedure TFrmCalculadora.BtnSubtrairClick(Sender: TObject);
begin
  LblPrimeiroValor.Caption := LblText.Text;
  LblText.Text := '';

  LblTipoCalc.Caption := '-';
end;

procedure TFrmCalculadora.BtnTotalClick(Sender: TObject);
begin
  LblSegundoValor.Caption := LblText.Text;
  LblEqual.Caption := '=';

  Valor1    := StrToFloat ( LblPrimeiroValor.Caption );
  Valor2    := StrToFloat ( LblSegundoValor.Caption );

  if LblTipoCalc.Caption      = 'x'  then
  Resultado := Valor1 * Valor2
  else if LblTipoCalc.Caption = '+'  then
  Resultado := Valor1 + Valor2
  else if LblTipoCalc.Caption = '-'  then
  Resultado := Valor1 - Valor2
  else if LblTipoCalc.Caption = '÷'  then
  Resultado := Valor1 / Valor2;
  LblText.Text := FloatToStr( Resultado );

end;

procedure TFrmCalculadora.BtnTresClick(Sender: TObject);
var
  NumeroTres : String;

begin
  NumeroTres := '3';

  if LblText.Text = '0' then
  LblText.Text := '';
  LblText.Text := LblText.Text + ( NumeroTres );
end;

procedure TFrmCalculadora.BtnUmClick(Sender: TObject);
var
  NumeroUm : String;
begin
  NumeroUm := '1';

  if LblText.Text = '0' then
  LblText.Text := '';
  LblText.Text := LblText.Text + ( NumeroUm );

end;

procedure TFrmCalculadora.BtnVirgulaClick(Sender: TObject);
var
  Virgula : String;
  I       : Integer;

begin
  Virgula := ',';

  LblText.Text := LblText.Text + ( Virgula );

  BtnVirgula.Enabled := False;
end;

procedure TFrmCalculadora.BtnZeroClick(Sender: TObject);
var
  NumeroZero : String;

begin

  NumeroZero := '0';
  LblText.Text := LblText.Text + ( NumeroZero );

end;

procedure TFrmCalculadora.SpeedButton10Click(Sender: TObject);
var
  NumeroDois : String;
begin
  NumeroDois := '2';

  if LblText.Text = '0' then
  LblText.Text := '';
  LblText.Text := LblText.Text + ( NumeroDois );
end;

end.
