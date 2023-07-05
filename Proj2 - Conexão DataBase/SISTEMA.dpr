program SISTEMA;

uses
  Vcl.Forms,
  UMenu in 'UMenu.pas' {FMenu},
  UDmSistema in 'UDmSistema.pas' {DMSistema: TDataModule},
  UcadClientes in 'UcadClientes.pas' {FCadClientes},
  UpesquisaClientes in 'UpesquisaClientes.pas' {FrmPesqClientes},
  UrelClientes in 'UrelClientes.pas' {FrmRelClientes},
  UcadProdutos in 'UcadProdutos.pas' {FCadProdutos},
  UrelProdutos in 'UrelProdutos.pas' {FrmRelProdutos},
  UpesqProdutos in 'UpesqProdutos.pas' {FrmPesqProdutos},
  UDMVendas in 'UDMVendas.pas' {DmVendas: TDataModule},
  UVendas in 'UVendas.pas' {FrmVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TDMSistema, DMSistema);
  Application.CreateForm(TFrmPesqClientes, FrmPesqClientes);
  Application.CreateForm(TFrmPesqProdutos, FrmPesqProdutos);
  Application.CreateForm(TDmVendas, DmVendas);
  Application.Run;
end.
