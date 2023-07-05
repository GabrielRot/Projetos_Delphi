unit DelphiToHero.View.Pages.Template;

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
  Router4D.Interfaces, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons,
  JvExControls, JvSpeedButton, AeroButtons, AdvGlowButton;

type
  TFrmTemplate = class(TForm, iRouter4DComponent)
    PnlFundo: TPanel;
    PnlTopo: TPanel;
    PnlPrincipal: TPanel;
    PnlCbc: TPanel;
    LblCbc: TLabel;
    JvSpeedButton1: TJvSpeedButton;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyStyle;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  FrmTemplate: TFrmTemplate;

implementation

uses
  StylesColor;

{$R *.dfm}

{ TFrmTemplate }

procedure TFrmTemplate.ApplyStyle;
begin
  PnlFundo.Color      := COLOR_BACKGROUND;
  PnlTopo.Color       := COLOR_C1;
  PnlPrincipal.Color  := COLOR_BACKGROUND;
  pnlCbc.Color        := COLOR_C1;

  LblCbc.Font.Size    := FONT_H5;
  LblCbc.Font.Color   := FONT_COLOR3;
  LblCbc.Font.Name    := 'Segoe UI';

end;

procedure TFrmTemplate.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TFrmTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFrmTemplate.UnRender;
begin

end;

end.
