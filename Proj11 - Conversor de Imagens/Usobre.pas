unit Usobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmSobre = class(TForm)
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Label5: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSobre: TFrmSobre;

implementation

uses
  Uconversor;

{$R *.dfm}

procedure TFrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSobre.SpeedButton1Click(Sender: TObject);
begin
  FrmConversor.ToolBar1.Enabled            := true;
  FrmConversor.ToolBar1.GradientStartColor := $00F2F2F2;
  FrmConversor.ToolBar1.GradientEndColor   := $00F2F2F2;

  Close;
end;

end.
