unit DelphiToHero.View.Pages.Usuarios;

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
  DelphiToHero.View.Pages.Template, Vcl.StdCtrls, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, JvExControls, JvSpeedButton;

type
  TFrmPagUsuarios = class(TFrmTemplate)
    JvSpeedButton3: TJvSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagUsuarios: TFrmPagUsuarios;

implementation

{$R *.dfm}

end.
