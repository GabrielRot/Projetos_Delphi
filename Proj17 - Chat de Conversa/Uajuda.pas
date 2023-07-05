unit Uajuda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmAjuda = class(TForm)
    PnlTitulo: TPanel;
    BtnReturn: TSpeedButton;
    LblTitulo: TLabel;
    LblSubTitulo: TLabel;
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Image3: TImage;
    Image4: TImage;
    procedure ScrollBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAjuda: TFrmAjuda;

implementation

{$R *.dfm}

procedure TFrmAjuda.ScrollBar1Change(Sender: TObject);
begin
 // Panel1.Top := ScrollBar1.Position;
end;

end.
