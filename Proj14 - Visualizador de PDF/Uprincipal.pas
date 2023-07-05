unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    OpenDialog: TOpenDialog;
    WBPDF: TWebBrowser;
    PnlBotao: TPanel;
    BtnLerPDF: TSpeedButton;
    procedure BtnLerPDFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnLerPDFClick(Sender: TObject);
begin
  {if OpenDialog.Execute then
    WBPDF.Navigate( OpenDialog.FileName );}

   WBPDF.Navigate('https://www.google.com');

end;

end.
