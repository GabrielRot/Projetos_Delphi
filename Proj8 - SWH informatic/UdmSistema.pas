unit UdmSistema;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Comp.Client, Data.DB, Data.SqlExpr,
  UclasseConexao;

type
  TDMSistema = class(TDataModule)
    FBConexao: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    Conexao : Tconexao;
  end;

var
  DMSistema: TDMSistema;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMSistema.DataModuleCreate(Sender: TObject);
begin
  Conexao := Tconexao.Create( FBConexao );
end;

procedure TDMSistema.DataModuleDestroy(Sender: TObject);
begin
  Conexao.Destroy;
end;

end.
