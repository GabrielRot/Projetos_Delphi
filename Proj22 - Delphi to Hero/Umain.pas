unit Umain;

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
  Vcl.ExtCtrls,
  JvExControls,
  JvSpeedButton,
  Vcl.StdCtrls,
  DelphiToHero.View.Pages.Principal;

type
  TFrmPrincipal = class(TForm)
    PnlMain: TPanel;
    PnlMenu: TPanel;
    PnlHome: TPanel;
    PnlTop: TPanel;
    PnlPrincipal: TPanel;
    PnlLogo: TPanel;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure JvSpeedButton2Click(Sender: TObject);
    procedure JvSpeedButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure ApplyStyle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Router4D,
  StylesColor;

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  ApplyStyle;

  TRouter4D.Render<TFrmPagPrincipal>.SetElement( PnlPrincipal, PnlMain  );


end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  Label1.Caption := IntToStr(FrmPrincipal.Width);
  Label2.Caption := IntToStr(FrmPrincipal.Height);
end;

procedure TFrmPrincipal.JvSpeedButton1Click(Sender: TObject);
begin
  TRouter4D.Link.&To('Principal');
end;

procedure TFrmPrincipal.JvSpeedButton2Click(Sender: TObject);
begin
  TRouter4D.Link.&To('Usuarios');
end;

procedure TFrmPrincipal.ApplyStyle;
begin
  PnlPrincipal.Color := COLOR_BACKGROUND;
  PnlTop.Color := COLOR_BACKGROUND_TOP;
  PnlLogo.Color := COLOR_BACKGROUND_DESTAK;
  PnlMenu.Color := COLOR_BACKGROUND_MENU;
  Self.Font.Color := FONT_COLOR;
  Self.Font.Size := FONT_H6;
end;

end.
