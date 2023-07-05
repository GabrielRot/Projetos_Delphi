unit Uconversor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.ExtDlgs,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, JPEG, Usobre;

type
  TFrmConversor = class(TForm)
    ImageList1: TImageList;
    PPMenu: TPopupMenu;
    ActionManager1: TActionManager;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    AcAbrir: TAction;
    AcBMPtoPNG: TAction;
    AcBMPtoJPG: TAction;
    AcPrintTela: TAction;
    AcAbout: TAction;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    OPDArquivos: TOpenPictureDialog;
    LBArquivos: TListBox;
    Shape1: TShape;
    Label1: TLabel;
    LblQtd: TLabel;
    PBConvert: TProgressBar;
    Remover1: TMenuItem;
    PnlLBArquivos: TPanel;
    procedure AcAbrirExecute(Sender: TObject);
    procedure AcBMPtoPNGExecute(Sender: TObject);
    procedure AcBMPtoJPGExecute(Sender: TObject);
    procedure AcPrintTelaExecute(Sender: TObject);
    procedure AcAboutExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Remover1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConversor: TFrmConversor;

implementation

{$R *.dfm}

procedure TFrmConversor.AcAboutExecute(Sender: TObject);
begin
    FrmSobre        := TFrmSobre.Create( Self );
    FrmSobre.Parent := PnlLBArquivos;

    ToolBar1.GradientStartColor := $00DFDFDF;
    ToolBar1.GradientEndColor := $00DFDFDF;
    ToolBar1.Enabled := False;
    FrmSobre.Show;
end;

procedure TFrmConversor.AcAbrirExecute(Sender: TObject);
var
  I : integer;
  
begin
  LBArquivos.Clear;
  LblQtd.Caption     := IntToStr( LBArquivos.Count );
  PBConvert.position := 0;

  //Abre o Dialog para pegar os Arquivos
  if OPDArquivos.Execute then
  begin
  
    for I := 0 to OPDArquivos.Files.Count -1 do
    begin
    
      //Adiciona os Itens Selecionados pelo OpenDialog ao ListBox
      LBArquivos.Items.Add( OPDArquivos.Files[i] );
      
      //Soma a Quantidade de Itens Adicionados 
      LblQtd.Caption := IntToStr( LBArquivos.Count );

    end;


  end;
  
end;

procedure TFrmConversor.AcBMPtoJPGExecute(Sender: TObject);
var
  I   : Integer;
  BMP : TBitMap;
  JPG : TJpegImage;
  PathArquivos, RecebeArquivo : String;
begin
  if LBArquivos.Items.Count = 0 then
  begin
    MessageBox( handle, 'Selecione um ou mais Arquivos!!!', 'Conversor de Imagens', MB_ICONINFORMATION+MB_OK );
    Exit;
  end;

  for I := 0 to LBArquivos.Count -1 do
  begin

    PBConvert.Min      := 0;
    PBConvert.Max      := LBArquivos.Items.Count -1;
    PBConvert.Position := PBConvert.Position +1;

    RecebeArquivo := LBArquivos.Items.Strings[i];
    PathArquivos  := ChangeFileExt( RecebeArquivo, '.jpg' );

    BMP := (nil);
    JPG := (nil);

    BMP := TBitMap.Create;
    JPG := TJpegImage.Create;

    BMP.LoadFromFile( RecebeArquivo );

    JPG.Assign( BMP );
    JPG.SaveToFile( PathArquivos );

    BMP.Free;
    JPG.Free;
  
  end;
  
end;

procedure TFrmConversor.AcBMPtoPNGExecute(Sender: TObject);
var
  I   : Integer;
  BMP : TBitMap;
  PNG : TPngImage;
  PathArquivos, RecebeArquivo : String;
begin
  if LBArquivos.items.Count = 0 then
    begin
      //MessageDlg( 'Selecione um ou mais Arquivos!!!', MtWarning, [mbOK], 0 );
      MessageBox( handle, 'Selecione um ou mais Arquivos!!!', 'Conversor de Imagens', MB_ICONINFORMATION+MB_OK);
      Exit;
    
    end;

  for I := 0 to LBArquivos.Count -1 do
  begin

    PBConvert.Min      := 0;
    PBConvert.Max      := LBArquivos.Items.Count -1;
    PBConvert.Position := PBConvert.Position +1;

    RecebeArquivo := LBArquivos.Items.Strings[i];
    PathArquivos  := ChangeFileExt( RecebeArquivo, '.png' );

    BMP := (nil);
    PNG := (nil);

    BMP := TBitMap.Create;
    PNG := TPngImage.Create;

    BMP.LoadFromFile( RecebeArquivo );

    PNG.Assign( BMP );
    PNG.SaveToFile( PathArquivos );

    BMP.Free;
    PNG.Free;

  end;


end;

procedure TFrmConversor.AcPrintTelaExecute(Sender: TObject);
var
  BMP           : TBitMap;
  PNG           : TpngImage;
  DCApi         : hdc;
  DeskTopArea   : Trect;
  DeskTopCanvas : TCanvas;
  DataHora      : String;
begin

  try

    if not DirectoryExists( 'C:\Users\admin\Pictures\Delphi Print' ) then
      ForceDirectories( 'C:\Users\admin\Pictures\Delphi Print' );

      AnimateWindow( Handle, 0, AW_SLIDE or AW_HIDE or AW_BLEND );

      DCApi    := GetDC( GetDesktopWindow );
      DataHora := 'Captura de Tela ' + FormatDateTime( 'dd-mm-yyyy hh.mm.ss', Now() );

      PNG                  := ( nil );
      BMP                  := ( nil );
      DeskTopCanvas        := ( nil );

      DeskTopCanvas        := TCanvas.Create;
      BMP                  := TBitMap.Create;
      PNG                  := TPngImage.Create;

      BMP.Width            := Screen.Width;
      BMP.Height           := Screen.Height;
      DeskTopCanvas.Handle := DCApi;
      DeskTopArea          := Rect( 0, 0, Screen.Width, Screen.Height );

      BMP.Canvas.CopyRect( DeskTopArea, DeskTopCanvas, DeskTopArea );
      PNG.Assign(BMP);

      PNG.SaveToFile( Format( 'C:\Users\admin\Pictures\Delphi Print\%s.png', [DataHora] ) );

  finally

    BMP.Free;
    PNG.Free;
    DeskTopCanvas.Free;

  end;

  AnimateWindow(Handle, 0, AW_BLEND);
  MessageBox(Handle, 'Captura de Tela Salva na Pasta C:\Users\admin\Pictures\Delphi Print', 'Conversor de Imagens', MB_ICONINFORMATION+MB_OK);

end;

procedure TFrmConversor.Button1Click(Sender: TObject);
var
  I : integer;
begin
  LBArquivos.Clear;
  LblQtd.Caption := IntToStr( LBArquivos.Count );
  PBConvert.position := 0;
 if OPDArquivos.Execute then
  begin
    for I := 0 to OPDArquivos.Files.Count -1 do
    begin
      LBArquivos.Items.Add( OPDArquivos.Files[i] );
      LblQtd.Caption := IntToStr( LBArquivos.Count );

    end;


  end;
end;

procedure TFrmConversor.Remover1Click(Sender: TObject);
var
  I : Integer;
begin

  if LBArquivos.Items.Count = 0 then
    begin
      Application.MessageBox( 'Não Existe Arquivo(s) Selecionado(s)',
        'Conversor de Imagem', MB_ICONWARNING+MB_OK );

    end
  else
    begin
      for I := LBArquivos.Items.Count -1 downto 0 do
      if LBArquivos.Selected[i] then
        LBArquivos.Items.Delete(i);
        LblQtd.Caption := IntToStr( LBArquivos.Items.Count );
    end;

  if LBArquivos.Items.Count = 0 then
    begin
      LBArquivos.Enabled  := false;
      LBArquivos.ShowHint := false;
      PPMenu.AutoPopup    := false;


    end;


end;

end.
