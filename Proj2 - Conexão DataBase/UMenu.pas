unit UMenu;

interface

uses
  Winapi.Windows,Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.WinXCtrls;

type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Image1: TImage;
    Clientes2: TMenuItem;
    Relatrio1: TMenuItem;
    Panel1: TPanel;
    SWDarkMode: TToggleSwitch;
    Image2: TImage;
    Produtos1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    RelatriodeProdutos1: TMenuItem;
    Movimento1: TMenuItem;
    Movimento2: TMenuItem;
    procedure Clientes2Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure SWDarkModeClick(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure RelatriodeProdutos1Click(Sender: TObject);
    procedure Movimento2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;
  Existe, i:integer;
  Relatorio, y: integer;

    


implementation
  Uses UcadClientes, UrelClientes, UcadProdutos, UrelProdutos, UVendas;
{$R *.dfm}


procedure TFMenu.CadastrodeProdutos1Click(Sender: TObject);
begin
  Existe :=-1;
  for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] is TFCadClientes then
      Existe := I;
    if Existe >= 0 then
      Screen.Forms[Existe].SetFocus
    else
      FCadProdutos := TFCadProdutos.Create(Self);
end;

procedure TFMenu.Clientes2Click(Sender: TObject);
begin
  Existe :=-1;
  for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] is TFCadClientes then
      Existe := I;
    if Existe >= 0 then
      Screen.Forms[Existe].SetFocus
    else
      FcadClientes := TFCadClientes.Create(Self);
end;

procedure TFMenu.Movimento2Click(Sender: TObject);
begin
  Existe := -1;
  for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] is TFrmVendas then
      Existe := I;
    if Existe >= 0 then
      Screen.Forms[Existe].SetFocus
    else
      FrmVendas := TFrmVendas.Create(Self);
end;

procedure TFMenu.Relatrio1Click(Sender: TObject);
begin
 Relatorio :=-1;
  for Y := 0 to Screen.FormCount -1 do
    if Screen.Forms[y] is TFrmRelClientes then
      Relatorio := Y;
    if Relatorio >= 0 then
      Screen.Forms[Relatorio].SetFocus
    else
      FrmRelClientes := TFrmRelClientes.Create(Self);
end;

procedure TFMenu.RelatriodeProdutos1Click(Sender: TObject);
begin
 Existe := -1;
 for I := 0 to Screen.FormCount -1 do
  if Screen.Forms[i] is TFrmRelProdutos then
    Existe := I;
  if Existe >= 0 then
    Screen.Forms[Existe].SetFocus
  else
    FrmRelProdutos := TFrmRelProdutos.Create(Self);
end;

procedure TFMenu.SWDarkModeClick(Sender: TObject);
begin
  if SWDarkMode.State = tssON then
  begin
    FMenu.Color := $00555555;
    Image1.Picture.LoadFromFile('DarkPicture.jpg');
    Image2.Picture.LoadFromFile('DmIco.png');
    SWDarkMode.font.color := clWhite;
    Panel1.Color := $00363636;
  end
  else
  begin
    FMenu.Color := clWhite;
    Image1.Picture.LoadFromFile('LightPicture.jpeg');
    Image2.Picture.LoadFromFile('LmIco.png');
    SWDarkMode.font.color := clBlack;
    Panel1.Color := $00F0F0F0;
  end;
end;

end.
