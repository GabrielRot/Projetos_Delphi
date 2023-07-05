unit Uprofile;

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
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtDlgs,
  JvExStdCtrls,
  JvShapedButton,
  RzButton,
  dxGDIPlusClasses;

type
  TFrmProfile = class(TForm)
    PnlTop: TPanel;
    PnlProfilePic: TPanel;
    ShpProfilePic: TShape;
    ImgProfilePic: TImage;
    LblName: TLabel;
    EdtName: TEdit;
    BtnEdit: TSpeedButton;
    BtnReturn: TSpeedButton;
    LblProfile: TLabel;
    PnlDrawRight: TPanel;
    BtnConfirm: TSpeedButton;
    PnlDrawText: TPanel;
    LblAlteraFt: TLabel;
    SavePictureDialog: TSavePictureDialog;
    OpenPictureDialog: TOpenPictureDialog;
    BtnMudaFt: TSpeedButton;
    procedure BtnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnReturnClick(Sender: TObject);
    procedure BtnConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImgProfilePicMouseEnter(Sender: TObject);
    procedure ImgProfilePicMouseLeave(Sender: TObject);
    procedure LblAlteraFtMouseEnter(Sender: TObject);
    procedure ImgProfilePicDblClick(Sender: TObject);
    procedure BtnMudaFtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Var
    Nick : String;
  end;

var
  FrmProfile: TFrmProfile;

implementation

uses
  Uprincipal;

{$R *.dfm}

procedure TFrmProfile.BtnEditClick(Sender: TObject);
begin
  PnlDrawText.Visible := True;

  EdtName.Enabled     := True;
  EdtName.ReadOnly    := False;

  BtnEdit.Enabled     := False;
  BtnEdit.Visible     := False;

  BtnConfirm.Enabled  := True;
  BtnConfirm.Visible  := True;

    if EdtName.Text    = 'Digite seu Nome' then
    EdtName.Text      := '';

    EdtName.SetFocus;

end;

procedure TFrmProfile.BtnMudaFtClick(Sender: TObject);
begin
  if SavePictureDialog.Execute = true then
    if FileExists( SavePictureDialog.FileName ) then
      ImgProfilePic.Picture.LoadFromFile( SavePictureDialog.FileName );
      //ImgProfilePic.Picture.SaveToFile( SavePictureDialog.FileName );

end;

procedure TFrmProfile.BtnReturnClick(Sender: TObject);
begin
  AnimateWindow( FrmProfile.Handle, 200, AW_HOR_NEGATIVE );

  Close;
end;

procedure TFrmProfile.EdtNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    BtnConfirmClick( Self );
end;

procedure TFrmProfile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPrincipal.Nick := FrmProfile.Nick;

  Action := caFree;

end;

procedure TFrmProfile.FormShow(Sender: TObject);
begin
  ImgProfilePic.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + '\Imagens\PNG\warning92x92.png' );

  BtnMudaFt.Height := ImgProfilePic.Height;
  BtnMudaFt.Width  := ImgProfilePic.Width;

  Nick := FrmPrincipal.Nick;

  if Nick = ''  then
    EdtName.Text := 'Digite seu Nome'
  else
    EdtName.Text := FrmPrincipal.Nick;

end;

procedure TFrmProfile.ImgProfilePicDblClick(Sender: TObject);
begin
  if SavePictureDialog.Execute = true then
    if FileExists( SavePictureDialog.FileName ) then
      ImgProfilePic.Picture.LoadFromFile( SavePictureDialog.FileName );
    //raise Exception.Create('Não foi possível abrir o arquivo');

end;

procedure TFrmProfile.ImgProfilePicMouseEnter(Sender: TObject);
begin
  LblAlteraFt.Visible := True;
end;

procedure TFrmProfile.ImgProfilePicMouseLeave(Sender: TObject);
begin
  LblAlteraFt.Visible := False
end;

procedure TFrmProfile.LblAlteraFtMouseEnter(Sender: TObject);
begin
  LblAlteraFt.Visible := True;
end;

procedure TFrmProfile.BtnConfirmClick(Sender: TObject);
begin
  PnlDrawText.Visible := False;

  Nick                := EdtName.Text;

  BtnConfirm.Enabled  := False;
  BtnConfirm.Visible  := False;

  BtnEdit.Enabled     := True;
  BtnEdit.Visible     := True;

  EdtName.Enabled     := False;
  EdtName.ReadOnly    := False;

end;

end.
