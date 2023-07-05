unit UDMConnxPai;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr;

type
  TDMConnxPai = class(TDataModule)
    ConexaoPai: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConnxPai: TDMConnxPai;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
