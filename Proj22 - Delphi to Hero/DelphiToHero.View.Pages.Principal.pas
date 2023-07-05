unit DelphiToHero.View.Pages.Principal;

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
  Router4D.Interfaces, JvExControls, JvSpeedButton;

type
  TFrmPagPrincipal = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
    procedure JvSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  FrmPagPrincipal: TFrmPagPrincipal;

implementation

uses
  StylesColor;

{$R *.dfm}

{ TFrmPagPrincipal }

procedure TFrmPagPrincipal.JvSpeedButton1Click(Sender: TObject);
begin
  Close;
end;

function TFrmPagPrincipal.Render: TForm;
begin
  Result := Self;

  Panel1.Color := COLOR_BACKGROUND;
end;

procedure TFrmPagPrincipal.UnRender;
begin

end;

end.
