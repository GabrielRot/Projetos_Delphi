unit UDmSistema;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.FBDef, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.DBXCommon, IPPeerClient,
  Data.SqlExpr, Data.DBXInterBase, Data.FMTBcd;

type
  TDMSistema = class(TDataModule)
    Conexao: TFDConnection;
    QryCadCli: TFDQuery;
    QryRelCli: TFDQuery;
    FBDriverLink: TFDPhysFBDriverLink;
    DspCadCli: TDataSetProvider;
    CdsCadCli: TClientDataSet;
    DspRelCli: TDataSetProvider;
    CdsRelCli: TClientDataSet;
    DsCadCli: TDataSource;
    DsRelCli: TDataSource;
    CdsCadCliCOD_CLIENTE: TIntegerField;
    CdsCadCliDES_CLIENTE: TStringField;
    CdsCadCliDTA_CADASTRO: TSQLTimeStampField;
    QryPesqCli: TFDQuery;
    DspPesqCli: TDataSetProvider;
    DsPesqCli: TDataSource;
    CdsPesqCli: TClientDataSet;
    CdsRelCliDES_CLIENTE: TStringField;
    CdsRelCliCOD_CLIENTE: TIntegerField;
    CdsRelCliDTA_CADASTRO: TSQLTimeStampField;
    CdsPesqCliCOD_CLIENTE: TIntegerField;
    CdsPesqCliDES_CLIENTE: TStringField;
    CdsPesqCliDTA_CADASTRO: TSQLTimeStampField;
    QryCadCliCOD_CLIENTE: TIntegerField;
    QryCadCliDES_CLIENTE: TStringField;
    QryCadCliDTA_CADASTRO: TSQLTimeStampField;
    QryPesqCliCOD_CLIENTE: TIntegerField;
    QryPesqCliDES_CLIENTE: TStringField;
    QryPesqCliDTA_CADASTRO: TSQLTimeStampField;
    CURSO: TSQLConnection;
    SQLQuery1: TSQLQuery;
    SQLConnection1: TSQLConnection;
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
    text :=''
  else
    text := sender.AsString;
end;

procedure TDMSistema.CdsCadCliNewRecord(DataSet: TDataSet);
begin
  CdsCadCliCOD_CLIENTE.AsInteger :=-1;
end;

end.
