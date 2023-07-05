program SISTEMA;

uses
  Vcl.Forms,
  UcadClientes in 'UcadClientes.pas' {FrmCadClientes},
  UDmSistema in 'UDmSistema.pas' {DMSistema: TDataModule},
  UrelClientes in 'UrelClientes.pas' {FrmRelClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCadClientes, FrmCadClientes);
  Application.CreateForm(TDMSistema, DMSistema);
  Application.Run;
end.
