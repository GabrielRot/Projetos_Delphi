unit UdmSistema;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider;

type
  TDMSistema = class(TDataModule)
    Conexao: TSQLConnection;
    DspPesqCli: TDataSetProvider;
    CdsPesqCli: TClientDataSet;
    DsPesqCli: TDataSource;
    QryPesqCli: TSQLQuery;
    CdsPesqCliCOD_PAGAMENTO: TIntegerField;
    CdsPesqCliDES_PAGAMENTO: TStringField;
    CdsPesqCliVAL_PAGAMENTO: TFloatField;
    CdsPesqCliFLG_PAG_MENSAL: TStringField;
    CdsPesqCliDTA_PAGAMENTO: TSQLTimeStampField;
    CdsPesqCliDTA_INCLUSAO: TSQLTimeStampField;
    CdsPesqCliDTA_ALTERACAO: TSQLTimeStampField;
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

end.
