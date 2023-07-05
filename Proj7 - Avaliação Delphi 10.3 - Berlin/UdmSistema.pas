unit UdmSistema;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TDMSistema = class(TDataModule)
    Conexao: TSQLConnection;
    QryCadCli: TSQLQuery;
    QryPesqCli: TSQLQuery;
    QryRelCli: TSQLQuery;
    DspCadCli: TDataSetProvider;
    CdsCadCli: TClientDataSet;
    DsCadCli: TDataSource;
    DspPesqCli: TDataSetProvider;
    CdsPesqCli: TClientDataSet;
    DsPesqCli: TDataSource;
    DsRelCli: TDataSource;
    CdsRelCli: TClientDataSet;
    DspRelCli: TDataSetProvider;
    CdsCadCliCOD_CLIENTE: TIntegerField;
    CdsCadCliDES_CLIENTE: TStringField;
    CdsCadCliDTA_CADASTRO: TSQLTimeStampField;
    CdsPesqCliDES_CLIENTE: TStringField;
    CdsPesqCliCOD_CLIENTE: TIntegerField;
    CdsPesqCliDTA_CADASTRO: TSQLTimeStampField;
    CdsRelCliDES_CLIENTE: TStringField;
    CdsRelCliCOD_CLIENTE: TIntegerField;
    CdsRelCliDTA_CADASTRO: TSQLTimeStampField;
    procedure CdsCadCliAfterPost(DataSet: TDataSet);
    procedure CdsCadCliAfterDelete(DataSet: TDataSet);
    procedure CdsCadCliNewRecord(DataSet: TDataSet);
    procedure CdsCadCliCOD_CLIENTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSistema: TDMSistema;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMSistema.CdsCadCliAfterDelete(DataSet: TDataSet);
begin
  CdsCadCli.ApplyUpdates(0);
end;

procedure TDMSistema.CdsCadCliAfterPost(DataSet: TDataSet);
begin
  CdsCadCli.ApplyUpdates(0);
end;

procedure TDMSistema.CdsCadCliCOD_CLIENTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if sender.asinteger = -1 then
    text := ''
  else
    text := sender.AsString;
end;

procedure TDMSistema.CdsCadCliNewRecord(DataSet: TDataSet);
begin
  CdsCadCliCOD_CLIENTE.AsInteger := -1;
end;

end.
