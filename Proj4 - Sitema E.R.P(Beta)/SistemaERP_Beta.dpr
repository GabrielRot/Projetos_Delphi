program SistemaERP_Beta;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadForn in 'UnitCadForn.pas' {FormCadForn},
  UnitCadAgend in 'UnitCadAgend.pas' {FormCadAgend},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadForn, FormCadForn);
  Application.CreateForm(TFormCadAgend, FormCadAgend);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
