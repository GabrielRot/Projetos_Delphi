unit Uprincipal;

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
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  System.Win.ScktComp,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Uajuda,
  Uclasses,
  System.IniFiles;

type
  TFrmPrincipal = class(TForm)
    PnlMenu: TPanel;
    PnlProfileBtn: TPanel;
    ShpProfileBtn: TShape;
    BtnProfile: TSpeedButton;
    PnlProfileImg: TPanel;
    ImgProfile: TImage;
    ShpProfileImg: TShape;
    PnlDefiniConexao: TPanel;
    ShpBtnConexao: TShape;
    BtnDefineConexao: TSpeedButton;
    PnlImagemConexao: TPanel;
    ImgConexao: TImage;
    ShpImgConexao: TShape;
    PnlProcuraChat: TPanel;
    ShpPnlProcuraChat: TShape;
    BtnProcuraChat: TSpeedButton;
    PnlImgProcuraChat: TPanel;
    ImgProcuraChat: TImage;
    ShpImgProcuraChat: TShape;
    PnlEntraChat: TPanel;
    ShpPnlEntraChat: TShape;
    BtnEntraChat: TSpeedButton;
    PnlImgEntraChat: TPanel;
    ImgEntraChat: TImage;
    ShpImgEntraChat: TShape;
    BtnAjuda: TSpeedButton;
    PnlPrincipal: TPanel;
    ImgBackground: TImage;
    procedure BtnProfileClick(Sender: TObject);
    procedure BtnDefineConexaoClick(Sender: TObject);
    procedure BtnProcuraChatClick(Sender: TObject);
    procedure BtnEntraChatClick(Sender: TObject);
    procedure BtnAjudaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Var
    Nick   : String;
    SSPort : String;
    SCPort : String;
    IP     : String;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Uprofile, Uconexão, Uprocurachat, UentrarChat;

{$R *.dfm}

procedure TFrmPrincipal.BtnProfileClick(Sender: TObject);
begin
  FrmProfile        := TFrmProfile.Create( Self );
  FrmProfile.Parent := PnlMenu;

  AnimateWindow( FrmProfile.Handle, 200, AW_HOR_POSITIVE );
  FrmProfile.Show;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PrcLerInfo;
end;

procedure TFrmPrincipal.BtnAjudaClick(Sender: TObject);
begin
  FrmAjuda        := TFrmAjuda.Create( Self );
  FrmAjuda.Parent := PnlPrincipal;

  FrmAjuda.Show;

end;

procedure TFrmPrincipal.BtnDefineConexaoClick(Sender: TObject);
begin
  FrmConexao  := TFrmConexao.Create( Self );
  FrmConexao.Parent := PnlPrincipal;

  FrmConexao.Show;

end;

procedure TFrmPrincipal.BtnEntraChatClick(Sender: TObject);
begin
  FrmEntraChat        := TFrmEntraChat.Create( Self );
  FrmEntraChat.Parent := PnlPrincipal;

  FrmEntraChat.Show;

end;

procedure TFrmPrincipal.BtnProcuraChatClick(Sender: TObject);
begin
  FrmProcuraChat        := TFrmProcuraChat.Create( Self );
  FrmProcuraChat.Parent := PnlPrincipal;

  FrmProcuraChat.Show;
end;

end.
