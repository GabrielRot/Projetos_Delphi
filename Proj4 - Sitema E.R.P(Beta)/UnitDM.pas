unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    TAB_AGENDAMENTO: TFDTable;
    DS_FORNECEDORES: TDataSource;
    DS_AGENDAMENTO: TDataSource;
    TAB_FORNECEDORES: TFDTable;
    TAB_FORNECEDORESid: TFDAutoIncField;
    TAB_FORNECEDORESNOME_CLI: TStringField;
    TAB_FORNECEDORESFONE_CLI: TStringField;
    TAB_FORNECEDORESDATA_CADASTRO_CLI: TDateField;
    TAB_FORNECEDORESSEG_FONE_CLI: TStringField;
    TAB_FORNECEDORESCNPJ_FORN: TStringField;
    procedure TAB_FORNECEDORESAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.TAB_FORNECEDORESAfterInsert(DataSet: TDataSet);
begin
 TAB_FORNECEDORESDATA_CADASTRO_CLI.Value := Date();
end;

end.
