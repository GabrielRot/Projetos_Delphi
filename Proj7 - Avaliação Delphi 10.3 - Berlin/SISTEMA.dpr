program SISTEMA;

uses
  Vcl.Forms,
  UcadClientes in 'UcadClientes.pas' {FrmCadClientes},
  UrelClientes in 'UrelClientes.pas' {FrmRelClientes},
  UdmSistema in 'UdmSistema.pas' {DMSistema: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCadClientes, FrmCadClientes);
  Application.CreateForm(TDMSistema, DMSistema);
  Application.Run;
end.
