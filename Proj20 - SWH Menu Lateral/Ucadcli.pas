unit Ucadcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCadCli = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCli: TFrmCadCli;

implementation

uses
  Uprincipal;

{$R *.dfm}

procedure TFrmCadCli.Button1Click(Sender: TObject);
begin
  Close;
  FrmPrincipal.PnlMenu.Enabled := True;
end;

procedure TFrmCadCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
