unit UDmSistema;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXInterBase,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, FireDAC.Stan.Param, FireDAC.Comp.DataSet,
  Datasnap.Provider, Datasnap.DBClient;

type
  TDMSistema = class(TDataModule)
    Conexao: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    DsCadCli: TDataSource;
    CdsCadCli: TClientDataSet;
    DspCadCli: TDataSetProvider;
    QryCadCli: TFDQuery;
    CdsCadCliCOD_CLIENTE: TIntegerField;
    CdsCadCliNOME_CLIENTE: TStringField;
    CdsCadCliCPF_CLIENTE: TStringField;
    CdsCadCliRG_CLIENTE: TStringField;
    CdsCadCliENDERECO_CLIENTE: TStringField;
    CdsCadCliBAIRRO_CLIENTE: TStringField;
    CdsCadCliCEP_CLIENTE: TStringField;
    CdsCadCliCIDADE_CLIENTE: TStringField;
    CdsCadCliUF_CLIENTE: TStringField;
    CdsCadCliFONE_CLIENTE: TStringField;
    QryPesqCli: TFDQuery;
    DsPesqCli: TDataSource;
    CdsPesqCli: TClientDataSet;
    DspPesqCli: TDataSetProvider;
    CdsPesqCliCOD_CLIENTE: TIntegerField;
    CdsPesqCliNOME_CLIENTE: TStringField;
    CdsPesqCliFONE_CLIENTE: TStringField;
    QryRelCli: TFDQuery;
    DspRelCli: TDataSetProvider;
    CdsRelCli: TClientDataSet;
    DsRelCli: TDataSource;
    CdsRelCliNOME_CLIENTE: TStringField;
    CdsRelCliCOD_CLIENTE: TIntegerField;
    CdsRelCliFONE_CLIENTE: TStringField;
    CdsRelCliDTA_CLIENTE: TSQLTimeStampField;
    CdsRelCliCIDADE_CLIENTE: TStringField;
    QryCadProd: TFDQuery;
    QryPesqProd: TFDQuery;
    QryRelProd: TFDQuery;
    DspCadProd: TDataSetProvider;
    DspPesqProd: TDataSetProvider;
    DspRelProd: TDataSetProvider;
    CdsCadProd: TClientDataSet;
    CdsPesqProd: TClientDataSet;
    CdsRelProd: TClientDataSet;
    DsCadProd: TDataSetProvider;
    DsPesqProd: TDataSource;
    DsRelProd: TDataSource;
    CdsCadProdCOD_PRODUTO: TIntegerField;
    CdsCadProdDES_PRODUTO: TStringField;
    CdsCadProdCUSTO: TFloatField;
    CdsCadProdVENDA: TFloatField;
    CdsCadProdESTOQUE: TFloatField;
    CdsCadProdLOG_PRODUTO: TStringField;
    CdsCadProdDTA_PRODUTO: TSQLTimeStampField;
    CdsCadCliDTA_CLIENTE: TSQLTimeStampField;
    CdsPesqProdCOD_PRODUTO: TIntegerField;
    CdsPesqProdDES_PRODUTO: TStringField;
    CdsRelProdCOD_PRODUTO: TIntegerField;
    CdsRelProdDES_PRODUTO: TStringField;
    CdsRelProdCUSTO: TFloatField;
    CdsRelProdVENDA: TFloatField;
    CdsRelProdESTOQUE: TFloatField;
    CdsRelProdDTA_PRODUTO: TSQLTimeStampField;
    procedure CdsCadCliAfterPost(DataSet: TDataSet);
    procedure CdsCadCliAfterDelete(DataSet: TDataSet);
    procedure CdsCadCliNewRecord(DataSet: TDataSet);
    procedure CdsCadCliCOD_CLIENTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsCadProdNewRecord(DataSet: TDataSet);
    procedure CdsCadProdCOD_PRODUTOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CdsCadProdAfterPost(DataSet: TDataSet);
    procedure CdsCadProdAfterDelete(DataSet: TDataSet);
   private
    { Private declarations }
  end;

var
  DMSistema: TDMSistema;

implementation

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

procedure TDMSistema.CdsCadProdAfterDelete(DataSet: TDataSet);
begin
  CdsCadProd.ApplyUpdates(0);
end;

procedure TDMSistema.CdsCadProdAfterPost(DataSet: TDataSet);
begin
  CdsCadProd.ApplyUpdates(0);
end;

procedure TDMSistema.CdsCadProdCOD_PRODUTOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if sender.asinteger = -1 then
    text := ''
  else
  text := sender.AsString;
end;

procedure TDMSistema.CdsCadProdNewRecord(DataSet: TDataSet);
begin
  CdsCadProdCOD_PRODUTO.AsInteger := -1;
end;

end.
