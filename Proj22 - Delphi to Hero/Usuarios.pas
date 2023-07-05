unit Usuarios;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Router4D.Interfaces;

type
  TFrmPagUsuarios = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  function Render : TForm;
  procedure UnRender;
  public
    { Public declarations }
  end;

var
  FrmPagUsuarios: TFrmPagUsuarios;

implementation

uses
  StylesColor;

{$R *.dfm}

{ TFrmPagUsuarios }

function TFrmPagUsuarios.Render: TForm;
begin
  Result := Self;

  Panel1.Color := COLOR_BACKGROUND;
end;

procedure TFrmPagUsuarios.UnRender;
begin

end;

end.
