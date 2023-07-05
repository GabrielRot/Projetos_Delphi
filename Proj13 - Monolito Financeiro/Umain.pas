unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, RzButton,
  JvExControls, JvSpeedButton, Vcl.Buttons;

type
  TFrmPrincipal = class(TForm)
    PnlTopo: TPanel;
    SpeedButton1: TSpeedButton;
    JvSpeedButton1: TJvSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

end.
