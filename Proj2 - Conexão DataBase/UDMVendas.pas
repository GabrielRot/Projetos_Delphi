unit UDMVendas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, Datasnap.Provider, Datasnap.DBClient;

type
  TDmVendas = class(TDataModule)
    Conexao: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    QryListaCli: TFDQuery;
    QryListaProd: TFDQuery;
    QryVendas: TFDQuery;
    QryProdPed: TFDQuery;
    QryProxVenda: TFDQuery;
    DspListaCli: TDataSetProvider;
    DspListaProd: TDataSetProvider;
    DspVendas: TDataSetProvider;
    CdsProdPed: TClientDataSet;
    DsProdPed: TDataSource;
    DsProdPedido: TDataSource;
    CdsVendas: TClientDataSet;
    CdsListaProd: TClientDataSet;
    CdsListaCli: TClientDataSet;
    DsListaProd: TDataSource;
    DsListaCli: TDataSource;
    DsVendas: TDataSource;
    CdsListaCliCOD_CLIENTE: TIntegerField;
    CdsListaCliNOME_CLIENTE: TStringField;
    CdsListaProdCOD_PRODUTO: TIntegerField;
    CdsListaProdDES_PRODUTO: TStringField;
    QryVendasCOD_VENDA: TIntegerField;
    QryVendasDTA_VENDA: TSQLTimeStampField;
    QryVendasTOTAL_VENDA: TCurrencyField;
    QryProdPedCOD_VENDA: TIntegerField;
    QryProdPedCOD_PRODUTO: TIntegerField;
    QryProdPedQUANTIDADE: TFloatField;
    QryProdPedVALOR: TCurrencyField;
    CdsProdPedCOD_VENDA: TIntegerField;
    CdsProdPedCOD_PRODUTO: TIntegerField;
    CdsProdPedQUANTIDADE: TFloatField;
    CdsProdPedVALOR: TCurrencyField;
    CdsProdPedNomeProduto: TStringField;
    CdsProdPedTotalItem: TFloatField;
    CdsProdPedTotalGeral: TAggregateField;
    CdsVendasCOD_VENDA: TIntegerField;
    CdsVendasCOD_CLIENTE: TIntegerField;
    CdsVendasDTA_VENDA: TSQLTimeStampField;
    CdsVendasTOTAL_VENDA: TCurrencyField;
    QryVendasCOD_CLIENTE: TIntegerField;
    CdsVendasNOME_CLIENTE: TStringField;
    QryVendasNOME_CLIENTE: TStringField;
    procedure CdsProdPedCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmVendas: TDmVendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmVendas.CdsProdPedCalcFields(DataSet: TDataSet);
begin
 CdsProdPedTotalItem.Value := CdsProdPedQUANTIDADE.AsFloat *
 CdsProdPedValor.AsFloat;
end;

end.
