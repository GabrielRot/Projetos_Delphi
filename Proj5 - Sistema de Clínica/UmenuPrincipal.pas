unit UmenuPrincipal;

interface

uses
  Winapi.Windows, UcadPacientes, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, UcadAgendamentos,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    C1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sistema2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Existe, i: Integer;
  FmMenu: TFmMenu;

implementation

{$R *.dfm}

procedure TFmMenu.Agendamentos1Click(Sender: TObject);
begin
  Existe := -1;
  for I :=0 to Screen.FormCount -1 do
    if Screen.Forms[i] is TFCadAgnd then
      Existe := I;
    if Existe >= 0 then
      Screen.Forms[Existe].SetFocus
    else
      FcadAgnd := TFCadAgnd.Create(Self);
end;

procedure TFmMenu.BitBtn1Click(Sender: TObject);
begin
   Existe := -1;
   for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] is TFCadPct then
      Existe := I;
    if Existe >= 0 then
      Screen.Forms[Existe].SetFocus
    else
      FCadPct:= TFCadPct.Create(Self);
end;

procedure TFmMenu.BitBtn2Click(Sender: TObject);
begin
  Existe := -1;
  for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] is TFCadAgnd then
      Existe := I;
    if Existe >= 0 then    
      Screen.Forms[Existe].SetFocus
    else
      FCadAgnd := TFCadAgnd.Create(Self);
end;

procedure TFmMenu.Pacientes1Click(Sender: TObject);
begin
  Existe := -1;
  for I := 0 to Screen.FormCount -1 do
  if Screen.Forms[i] is TFCadPct then
    Existe := I;
  if Existe >= 0 then
    Screen.Forms[Existe].SetFocus
  else
    FCadPct := TFCadPct.Create(Self);
end;

procedure TFmMenu.Sistema2Click(Sender: TObject);
begin
   Application.Terminate;
end;

end.
