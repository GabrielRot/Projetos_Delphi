program CDG_ERP;

uses
  Vcl.Forms,
  UMain in 'Views\UMain.pas' {FrmPrincipal},
  UCadPag in 'Views\Financeiro\UCadPag.pas' {FrmCadPag},
  UDMConnxPai in 'Views\Conexão\UDMConnxPai.pas' {DMConnxPai: TDataModule},
  UValidPag in 'Views\Financeiro\UValidPag.pas' {FrmConstPag},
  UProcs in 'Units\UProcs.pas',
  UCriaMensagem in 'Views\Base\UCriaMensagem.pas' {FrmCriaMsg},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDMConnxPai, DMConnxPai);
  Application.CreateForm(TFrmConstPag, FrmConstPag);
  Application.CreateForm(TFrmCriaMsg, FrmCriaMsg);
  Application.Run;
end.
