unit UCriaMensagem;

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
  Vcl.StdCtrls,
  Vcl.Buttons;

type
  TFrmCriaMsg = class(TForm)
    PnlFundo: TPanel;
    PnlTop: TPanel;
    PnlDrawTop: TPanel;
    BtnClose: TSpeedButton;
    LblProgramName: TLabel;
    ImgCriaMsg: TImage;
    LblTituloMsg: TLabel;
    LblDesMsg: TLabel;
    PnlBtns: TPanel;
    PnlBotaoConfirma: TPanel;
    PnlBotaoCancela: TPanel;
    BtnCancela: TSpeedButton;
    ShpFundo: TShape;
    PnlPrincipal: TPanel;
    BtnConfirma: TSpeedButton;
    LblConfirma: TLabel;
    ShpTop: TShape;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bRespostaMsg : Boolean;
    sTituloTop, sTitulo, sMSG, sIcone, sTipo : String;
  end;

var
  FrmCriaMsg: TFrmCriaMsg;

implementation

{$R *.dfm}

procedure TFrmCriaMsg.BtnCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCriaMsg.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCriaMsg.BtnConfirmaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCriaMsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCriaMsg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    BtnConfirma.Click
  else if key = VK_ESCAPE then
    BtnCancela.Click
end;

procedure TFrmCriaMsg.FormShow(Sender: TObject);
begin
  bRespostaMSG := False;

  LblProgramName.Caption := sTituloTop;
  LblTituloMsg.Caption   := sTitulo;
  LblDesMsg.Caption      := sMSG;
  ImgCriaMsg.Picture.LoadFromFile(sIcone);

  if sTipo = 'OK' then
    begin
      PnlBotaoCancela.Visible := False;
      LblConfirma.Caption     := 'OK ( ENTER )';
    end;
  
end;

end.
